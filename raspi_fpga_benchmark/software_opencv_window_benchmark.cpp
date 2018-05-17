#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <ctime>

void output_time()
{
	struct timespec ts;
	char time_buffer[100] = {};

	timespec_get(&ts, TIME_UTC);
	strftime(time_buffer, sizeof time_buffer, "%D %T", gmtime(&ts.tv_sec));
	printf("\t\t%s.%09ld UTC\n", time_buffer, ts.tv_nsec);
}

using namespace cv;
using namespace std;

int main(int argc, char** argv)
{
	const char* keys =
	{
		"{help h|       | show help message}"
		"{dir   |       | path of directory containing images to test}"
		"{hog   |       | hog_descriptor used}"
	};

	CommandLineParser parser(argc, argv, keys);

	if (argc < 2 || parser.has("help") || parser.has("h") || !parser.has("dir") || !parser.has("hog"))
	{
		//print help
		parser.printMessage();
		exit(0);
	}

	String directory = parser.get<String>("dir");
	String hog_file = parser.get<String>("hog");

	HOGDescriptor cpu_hog;
	cpu_hog.load(hog_file);

	vector<String> file_names;
	glob(directory, file_names);

	vector<Mat> image_vec;

	cout << "Starting testing for directory " << directory << endl;
	int count_images = 0, detected_vehicles = 0;
	for (int i = 0; i < file_names.size(); i++)
	{
		Mat image = imread(file_names[i], IMREAD_GRAYSCALE);

		if (image.empty())
		{
			//continue
			continue;
		}

		Mat resized_img;
		resize(image, resized_img, Size(64, 64));
		image_vec.push_back(resized_img);
	}
	cout << "Loaded " << image_vec.size() << " windows. Processing..." << endl;

	output_time();
	for(int i = 0; i < image_vec.size(); i++)
	{
		vector<Point> detections;
		vector<double> found_weights;
		cpu_hog.detect(image_vec[i], detections, found_weights);

		detected_vehicles += detections.size() == 0 ? 0 : 1;
		count_images++;
	}
	output_time();

	cout << "Detected " << detected_vehicles << " out of " << count_images << " processed." << endl;
	cout << "HIT RATE: " << (double)detected_vehicles / count_images << endl;
	return 0;
}

