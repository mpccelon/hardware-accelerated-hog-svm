#include <iostream>
#include <queue>
#include <mutex>
#include <thread>
#include <vector>
#include <utility>
#include <array>
#include <condition_variable>

#include "opencv2/opencv.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/ml.hpp"
#include "opencv2/objdetect.hpp"

#include "nms.h"

#include <cstdio>
#include <cstdlib>
#include <csignal>
#include <cassert>
#include <fcntl.h>
#include <netinet/in.h>
#include "unistd.h"
#include "sys/types.h"
#include "sys/socket.h"

#define IMAGE_HEIGHT 768
#define IMAGE_WIDTH 1024
#define DETECTION_THRESHOLD 0
#define WINDOW_SIZE 64

#define LANE_SIZE 3

//lock and condition variable for threading
std::mutex queue_lock;
std::condition_variable queue_condition;
bool is_running = true;
std::thread *downloader;

//socket C++ wrapper (sourced from: https://github.com/Loki-Astari/Examples)
#include "Socket.h"
#include "ProtocolSimple.h"

namespace Sock = ThorsAnvil::Socket;
//if acting as client
// Sock::ConnectSocket *connection;

//if acting as server
Sock::DataSocket *connection = NULL;
Sock::ServerSocket server(8080);

//image data and sliding window CHANGE CONTENTS DEPENDING ON PROTOCOL
typedef struct
{
	char time_recv[24];
	char lane;
	unsigned char data[IMAGE_WIDTH*IMAGE_HEIGHT];
} data;

typedef struct
{
	char time_recv[24];
	char lane;
	std::vector<cv::Rect> windows;
	cv::Mat cur_img;
} metadata;

typedef struct 
{
	char time_recv[24];
	char lane;
	unsigned int detections;
} send_back;

//data queue
std::queue <metadata> process_queue;

//fpga device file descriptors
int fpga_write, fpga_read;

int get_queue_size()
{
	int res;
	std::unique_lock <std::mutex> lk(queue_lock);
	res = process_queue.size();
	lk.unlock();

	return res;
}

void output_time()
{
	struct timespec ts;
	char time_buffer[100] = {};

	timespec_get(&ts, TIME_UTC);
	strftime(time_buffer, sizeof time_buffer, "%D %T", gmtime(&ts.tv_sec));
	printf("\t\t%s.%09ld UTC\n", time_buffer, ts.tv_nsec);
}

//sliding window lane descriptors (linear equations)
typedef struct
{
	float a;
	float b;
	float c;
} lane;

//LANE EQUATIONS FOR SETUP
//CHANGE IF USING DIFFERENT ROAD
lane road[] = {
	{-14.906, -1, 7414.76},
	{1, 0, -514},
	{13.2424, -1, -6980}
};

void exit_handler(int s = 99)
{
	std::cout << "EXIT CALLED: " << s << "\n";
	std::unique_lock <std::mutex> lk(queue_lock);
	is_running = false;
	lk.unlock();

	queue_condition.notify_all();

	//join thread
	downloader->join();

	//close file descriptors
	close(fpga_read);
	close(fpga_write);

	//terminate program
	exit(s); 
}

//get processed data, pop metadata and send back to client
void downstream()
{
	while(true)
	{
		std::cout << "Waiting for data...\n";
		std::unique_lock <std::mutex> lk(queue_lock);
		queue_condition.wait(lk, []{ return (is_running == false || process_queue.size() > 0); }) ;
		if(is_running == false)
			break;

		lk.unlock();

		std::cout << "fpga data in processing: " << get_queue_size() << std::endl;

		while(get_queue_size() > 0)
		{
			metadata temp;
			//get metadata from queue and unlock mutex
			std::unique_lock <std::mutex> lk(queue_lock);
			temp = process_queue.front();
			process_queue.pop();
			lk.unlock();

			// debug
			// cv::Mat colored_test_image;
			// cv::cvtColor(temp.cur_img, colored_test_image, cv::COLOR_GRAY2BGR);
			// cv::namedWindow("Test_Image", cv::WINDOW_AUTOSIZE);

			int size_bytes = temp.windows.size()*sizeof(float);
			// std::cout << "Receiving " << size_bytes << " bytes from fpga..." << std::endl;

			//get data from the fpga
			int donebytes = 0;
			float *confidences = new float[temp.windows.size()]();
			while(donebytes < size_bytes)
			{
				int read_bytes = read(fpga_read, ((char*) confidences) + donebytes, size_bytes - donebytes);

				if(read_bytes < 0 && errno == EINTR)
					continue;

				if(read_bytes < 0)
				{
					perror("read() failed");
					is_running = false;
					exit_handler(3);
				}

				donebytes += read_bytes;
				// std::cout << "Received " << donebytes << " bytes\n";
			}

			int vehicle_detections[LANE_SIZE] = {};
			size_t lane_windows_size = temp.windows.size()/LANE_SIZE;
			for(int i = 0; i < LANE_SIZE; i++)
			{
				//non maximum suppression
				std::vector< cv::Rect > bboxes;
				std::vector< cv::Rect > resboxes;

				for(size_t offset = lane_windows_size*i; offset < lane_windows_size*(i + 1); offset++)
				{
					// printf("\t%6f\n", confidences[i]);
					if(confidences[offset] > DETECTION_THRESHOLD)
					{
					// printf("\t%6f\n", confidences[i]);
						bboxes.push_back(temp.windows[offset]);

						// cv::rectangle(colored_test_image, temp.windows[offset], cv::Scalar(255,0,0), 1, 8, 0);
						// cv::imshow("Test_Image", colored_test_image);
						// cv::waitKey(0);
					}
				}
				nms(bboxes, resboxes, 0.05f, 0);
				
				// debug
				// for(size_t j = 0; j < resboxes.size(); j++)
				// {
				// 	cv::rectangle(colored_test_image, resboxes[j], cv::Scalar(255,0,0), 1, 8, 0);
				// 	// cv::imshow("Test_Image", colored_test_image);
				// 	// cv::waitKey(0);
				// }
				
				vehicle_detections[i] = resboxes.size();
			}

			output_time();
			// debug
			// printf("Detections for road %c:\n", temp.lane);
			// for(int i = 0; i < LANE_SIZE; i++)
			// {
			// 	printf("\tLane %d: %d\n", i + 1, vehicle_detections[i]);
			// }
			// cv::imshow("Test_Image", colored_test_image);
			// cv::waitKey(0);

			//check if connection is alive
			if(connection == NULL)
			{
				std::cout << "connection unexpectedly closed, emptying queue...\n";
				std::unique_lock <std::mutex> lk(queue_lock);
				while(process_queue.size() > 0)
				{
					process_queue.pop();
				}
				lk.unlock();
				break;
			}

			// send back data
			char send_back[256] = {};
			sprintf(send_back, "%d %d", vehicle_detections[0] + vehicle_detections[1], vehicle_detections[2]);
			printf("%s\n\n", send_back);
			connection->putMessageData(send_back, 256);
		}
	}
}

void init_signal()
{
	struct sigaction sigIntHandler;

	sigIntHandler.sa_handler = &exit_handler;
	sigemptyset(&sigIntHandler.sa_mask);
	sigIntHandler.sa_flags = 0;

	sigaction(SIGINT, &sigIntHandler, NULL);
}

//finds tentative ROI based on y midpoint, and on lane general form (line)
cv::Rect calcROI(float y, lane &l)
{
	float x = (y*l.b + l.c)/(-l.a);

	float ROI_area = ( 510 * pow(1.00347438, y));
	float width = ( 24.95601404 * pow(1.002257432, y));
	float length = ROI_area/width;

	float x_coord = x - (length/2);
	float y_coord = y - (width/2);

	return cv::Rect(x_coord, y_coord, length, width); 
}

//generate detection windows from image
void generateROIs(cv::Mat &img, std::vector <cv::Rect> &ROIs, std::vector< char > &windowData)
{
	//
	//Three linear equations describing three lanes
	//y = 13.2424x - 6980
	//x = 516
	//y = -14906x + 7414.76

	//area of car determined by exponential equation:
	//498.3742399*1.00347438^y_midpoint_of_car

	//debug
	cv::Mat colored_test_image;
	cv::cvtColor(img, colored_test_image, cv::COLOR_GRAY2BGR);
	cv::namedWindow("Test_Image", cv::WINDOW_AUTOSIZE);

	std::cout << "generating ROIs..." << std::endl;
	// start from top, y = 40
	float y_mid, width = 20, length = 27;
	for(int i = 0; i < LANE_SIZE; i++)
	{
		for(y_mid = 144; y_mid + width/2 <= img.rows; y_mid += width/4)
		{
			float x_mid = (y_mid*road[i].b + road[i].c)/(-road[i].a);
			float ROI_area = ( 510 * pow(1.00347438, y_mid));
			width = ( 24.95601404 * pow(1.002257432, y_mid));
			length = ROI_area/width;

			float x_coord = x_mid - (length/2);
			float y_coord = y_mid - (width/2);

			// std::cout << x_coord << " " << y_coord << " " << length << " " << width << std::endl;

			cv::Rect temp(x_coord, y_coord, length, width);
			ROIs.push_back(temp);

			cv::Mat roi = img(temp), resized;
			cv::resize(roi, resized, cv::Size(WINDOW_SIZE, WINDOW_SIZE));
			assert(resized.rows == 64 && resized.cols == 64);

			// cv::imshow("TIMCHOWA", resized);
			// cv::waitKey(10);

			// char img_name[100] = {};
			// sprintf(img_name, "./temp_window/img_%04u.png", windowData.size() + 1);
			// bool image_written = cv::imwrite(cv::String(img_name), resized);
			// assert(image_written == true);

			//pack window
			windowData.insert(windowData.end(), resized.data, resized.data + WINDOW_SIZE*WINDOW_SIZE);
		}
	}

	// for(size_t j = 0; j < ROIs.size(); j++)
	// {
	// 	cv::rectangle(colored_test_image, ROIs[j], cv::Scalar(255,0,0), 1, 8, 0);
	// 	cv::imshow("Test_Image", colored_test_image);
	// 	cv::waitKey(1);
	// }
	// cv::waitKey(0);
}

int main(int argc, char* argv[])
{
	if(argc != 3)
	{
		std::cout << "Usage: " << argv[0] << " <IP> " << " <port> \n";
		return 1;
	}

	//set signal handler
	init_signal();

	//set up file descriptors
	fpga_read = open("/dev/xillybus_read_32", O_RDONLY);
	fpga_write = open("/dev/xillybus_write_32", O_WRONLY);

	//start downstream function
	downloader = new std::thread(downstream);

	//if as client
	//set up connection with wrapper
	// connection = new Sock::ConnectSocket(argv[1], atoi(argv[2]));

	//if as server
	//set up accept() connection
	std::cout << "Waiting for connections..." << std::endl;
	Sock::DataSocket newCon = server.accept();
	connection = &newCon;

	std::cout << "Connected successfully!" << std::endl;

	//run recv
	while(true)
	{
		if(connection == NULL)
		{
			//if as client
			//set up connection with wrapper
			// connection = new Sock::ConnectSocket(argv[1], atoi(argv[2]));

			//if as server
			//set up accept() connection
			std::cout << "Waiting for connections..." << std::endl;
			newCon = server.accept();
			connection = &newCon;

			std::cout << "Connected successfully!" << std::endl;
		}

		//receive packed struct
		data temp;
		std::size_t data_get = 0;
		try
		{
			data_get = connection->getMessageData(((char*) &temp), sizeof(temp), [](std::size_t){return false;});
		}
		catch(std::exception &e)
		{
			std::cout << e.what() << std::endl;
			std::cout << "Closing connection due to error...\n";
			connection->close();
			connection = NULL;
			continue;	
		}
		//check if socket closed normally (EOF)
		if(data_get == 0)
		{
			std::cout << "Connection finished...\n";
			connection->close();
			connection = NULL;
			continue;
		}

		std::cout << "Got " << data_get << " bytes from controller.\n";
		

		//generate ROIs
		std::vector <cv::Rect> ROIs;
		std::vector < char > windowData;
		cv::Mat image(IMAGE_HEIGHT,IMAGE_WIDTH,CV_8UC1,temp.data);
		std::cout << image.size() << std::endl;

		std::cout << "\tGenerating windows for lane " << temp.lane << std::endl;
		generateROIs(image, ROIs, windowData);
		assert(windowData.size() > 0);
		int size_bytes = windowData.size();

		//generate metadata
		metadata image_data;
		memcpy(image_data.time_recv, temp.time_recv, sizeof(temp.time_recv));
		image_data.lane = temp.lane;
		image_data.windows = ROIs;
		image_data.cur_img = image;

		//push metadata onto queue
		std::unique_lock <std::mutex> lk(queue_lock);
		process_queue.push(image_data);
		lk.unlock();

		// std::cout << "sending " << size_bytes << " bytes...\n";

		output_time();
		//send windowData to fpga
		int donebytes = 0;
		while(donebytes < size_bytes)
		{
			int write_bytes = write(fpga_write, (windowData.data()) + donebytes, (donebytes + WINDOW_SIZE*WINDOW_SIZE < size_bytes) ? WINDOW_SIZE*WINDOW_SIZE : (size_bytes - donebytes));
			// int write_bytes = write(fpga_write, (windowData.data()->data()) + donebytes, (size_bytes - donebytes));

			if(write_bytes < 0 && errno == EINTR)
				continue;

			if(write_bytes < 0)
			{
				perror("write() failed");
				exit_handler(2);
			}

			donebytes += write_bytes;
			// std::cout << "sent " << donebytes << " bytes\n";
		}

		//notify handler
		queue_condition.notify_all();

		// cv::imshow("TIMCHOWA", image);
		// cv::waitKey(0);
	}

	exit_handler(0);
}