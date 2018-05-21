#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/ml.hpp"
#include "opencv2/objdetect.hpp"
#include "opencv2/core.hpp"
#include "opencv2/opencv.hpp"

#include <iostream>
#include <string>

using namespace cv;
using namespace cv::ml;
using namespace std;

void sample_neg(const String & dirname, vector< Mat > & neg_lst, const Size & size)
{
	vector< String > files;
	glob(dirname, files);
	cout << files.size() << " images found" << endl;

	Rect box;
	box.width = size.width;
	box.height = size.height;

	const int size_x = box.width;
	const int size_y = box.height;

	srand((unsigned int)time(NULL));

	Mat image;
	for (size_t i = 0; i < files.size(); i++)
	{
		image = imread(files[i]);
		if (image.cols >= box.width && image.rows >= box.height)
		{
			Mat temp = image;
			// resize(image, temp, Size(1920, 1080));
			box.x = rand() % (temp.cols - size_x);
			box.y = rand() % (temp.rows - size_y);
			Mat roi = temp(box);

			neg_lst.push_back(roi.clone());

			/*imshow("Sampling...", roi);
			waitKey(1);*/
		}
	}
}

void load_images(const String & dirname, vector< Mat > & img_lst, bool showImages = false)
{
	vector< String > files;
	glob(dirname, files);

	for (size_t i = 0; i < files.size(); ++i)
	{
		Mat img = imread(files[i]); // load the image
		if (img.empty())            // invalid image, skip it.
		{
			cout << files[i] << " is invalid!" << endl;
			continue;
		}
		;
		Mat resized_img;
		resize(img, resized_img, Size(96, 96), 0, 0, INTER_LINEAR_EXACT);

		if (showImages)
		{
			imshow("image", img);
			waitKey(1);
		}
		img_lst.push_back(img);
	}
}

int main(int argc, char **argv)
{
	const char* keys =
	{
		"{help h|       | show help message}"
		"{dir   |       | path of directory containing images to sample}"
		"{dw    |       | width of the sample window}"
		"{dh    |       | height of the sample window}"
		"{res   |       | folder of output samples}"
	};

	CommandLineParser parser(argc, argv, keys);

	if (argc < 2 || parser.has("help") || !parser.has("dw") || !parser.has("dh") || !parser.has("res") || !parser.has("dir"))
	{
		parser.printMessage();
		cout << argv[0] << " - Samples a random window within for every frame in the folder/video specified, and stores it in the destination folder." << endl;
		cout << "Example Usage: " << argv[0] << " -dir=C:/path/to/input/folder -dw=64 -dh=64 -res=C:/path/to/output/folder" << endl;
		exit(0);
	}

	String image_dir = parser.get< String >("dir");
	String out_dir = parser.get< String >("res");
	int win_height = parser.get< int >("dh");
	int win_width = parser.get< int >("dw");

	vector< Mat > pos_lst, full_neg_lst, neg_lst, gradient_lst;
	vector< int > labels;

	cout << "Starting sampling at " << image_dir << "..." << endl;
	sample_neg(image_dir, neg_lst, Size(win_width, win_height));

	for (int i = 0; i < neg_lst.size(); i++)
	{
		string dir = out_dir + "/file_";
		dir += to_string(i + 1) + ".png";

		imwrite(dir, neg_lst[i]);
		//cout << dir << endl;
	}

	cout << "Sampling finished." << endl << "Please check the output folder: " << out_dir << endl;
	return 0;
}