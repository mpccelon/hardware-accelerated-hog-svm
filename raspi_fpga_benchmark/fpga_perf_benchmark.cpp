#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/ml.hpp"
#include "opencv2/objdetect.hpp"

#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
#include <vector>

#include <errno.h>
#include <fcntl.h>
#include <csignal>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>
#include <assert.h>

#include <time.h>

#define SVM_DESC_SIZE 1764
#define IMG_HEI 64
#define IMG_WID 64
#define THRESHOLD 0


int main(int argc, char* argv[])
{
	if(argc != 2)
	{
		std::cout << "Usage: " << argv[0] << " \"64x64 Image Directory\"" << std::endl;
		return 1;
	}

	//get files
	std::vector <cv::String> files;
	cv::glob(argv[1], files);

	//open file descriptors
	int fpga_read = open("/dev/xillybus_read_32", O_RDONLY);
	int fpga_write = open("/dev/xillybus_write_32", O_WRONLY);

	struct timespec ts;
	char time_buffer[100] = {};

	//fork process
	pid_t pid = fork();

	if(pid == 0)
	{
		//child - read
		close(fpga_write);

		//setup output file
		// std::ofstream output_file (argv[2], std::ofstream::out);
		// std::stringstream output_buffer;

		// std::cout << "Reading " << sizeof(float)*files.size() << " bytes\n" << std::endl;
		float results[files.size()];
		int done_bytes = 0;
		while(done_bytes < sizeof(float)*files.size())
		{
			//read from fpga
			int read_bytes = read(fpga_read, ((char*) &results) + done_bytes, sizeof(float)*files.size() - done_bytes);

			//check for interrupt
			if(read_bytes < 0 && errno == EINTR)
				continue;

			//else error
			if(read_bytes < 0)
			{
				printf("ERROR!\n");
				perror("read() failed");
				exit(1);
			}

			done_bytes += read_bytes;
			// std::cout << "Read " << done_bytes << std::endl;
		}

		timespec_get(&ts, TIME_UTC);
		strftime(time_buffer, sizeof time_buffer, "%D %T", gmtime(&ts.tv_sec));
    	printf("Read data: %s.%09ld\n", time_buffer, ts.tv_nsec);

    	int counter = 0;
		for(int i = 0; i < files.size(); i++)
		{
			// std::cout << results[i] << std::endl;
			// output_file << results[i] << "\n";
			if(results[i] > THRESHOLD)
				counter++;
		}

		printf("Detected %d out of %d windows.\nAccuracy: %.6lf\n", counter, files.size(), ((float) counter)/((float) files.size()));

		close(fpga_read);
		return 0;
	}
	else
	{
		//parent - write
		close(fpga_read);

		std::vector<char> data;

	    for(int i = 0; i < files.size(); i++)
	    {
	    	cv::Mat image = imread(files[i], cv::IMREAD_GRAYSCALE);
	    	if(image.empty())
	    	{
	    		std::cout << "File read failed: " << files[i] << std::endl;
	    		kill(pid, SIGKILL);
	    		return 0;
	    	}
	    	cv::resize(image, image, cv::Size(64,64));
	    	assert(image.rows == 64 && image.cols == 64);
	    	
	    	data.insert(data.end(), image.data, image.data + 4096);
	    }

		timespec_get(&ts, TIME_UTC);
		strftime(time_buffer, sizeof time_buffer, "%D %T", gmtime(&ts.tv_sec));
    	printf("Writing data: %s.%09ld\n", time_buffer, ts.tv_nsec);

	    int done_bytes = 0;
    	while(done_bytes < data.size())
    	{
    		//write to fpga
    		int write_bytes = write(fpga_write, data.data() + done_bytes, data.size() - done_bytes);

    		//check for interrupt
    		if(write_bytes < 0 && errno == EINTR)
    			continue;

    		//else error
    		if(write_bytes < 0)
    		{
    			perror("write() failed");
    			exit(1);
    		}

    		done_bytes += write_bytes;
    	}

  //   	printf("Uploaded %d images\n", files.size());
		// printf("waiting: %d\n", wait(NULL));
  //   	printf("Closing upstream...\n");
    	wait(NULL);
		close(fpga_write);
		return 0;
	}
}