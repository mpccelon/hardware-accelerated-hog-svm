// SVM_trainer.cpp : Defines the entry point for the console application.
//

#include "opencv2/opencv.hpp"
#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/ml.hpp"
#include "opencv2/objdetect.hpp"

#include <iostream>
#include <fstream>
#include <time.h>

using namespace cv;
using namespace cv::ml;
using namespace std;

#define DESCRIPTOR_SIZE 1764

vector< float > get_svm_detector(const Ptr< SVM >& svm)
{
	// get the support vectors
	Mat sv = svm->getSupportVectors();
	const int sv_total = sv.rows;
	// get the decision function
	Mat alpha, svidx;
	double rho = svm->getDecisionFunction(0, alpha, svidx);

	CV_Assert(alpha.total() == 1 && svidx.total() == 1 && sv_total == 1);
	CV_Assert((alpha.type() == CV_64F && alpha.at<double>(0) == 1.) ||
		(alpha.type() == CV_32F && alpha.at<float>(0) == 1.f));
	CV_Assert(sv.type() == CV_32F);

	vector< float > hog_detector(sv.cols + 1);
	memcpy(&hog_detector[0], sv.ptr(), sv.cols * sizeof(hog_detector[0]));
	hog_detector[sv.cols] = (float)-rho;
	return hog_detector;
}

int main(int argc, char** argv)
{
	const char* keys =
	{
		"{help h|     | show help message}"
		"{pt    |     | [required] path of text file containing positive HOGs}"
		"{nt    |     | [required] path of text file containing negative HOGs}"
		"{ps    |     | [required] number of positive samples}"
		"{ns    |     | [required] number of negative samples}"
		"{ds    |	  | descriptor size}"
		"{out   |output.txt| output file}"
	};

	cv::CommandLineParser parser(argc, argv, keys);

	if (parser.has("help"))
	{
		parser.printMessage();
		exit(0);
	}


	cv::String positive_file = parser.get<cv::String>("pt");
	cv::String negative_file = parser.get<cv::String>("nt");
	cv::String output_file = parser.get<cv::String>("out");
	int desc_size = DESCRIPTOR_SIZE;

	if (negative_file.empty() || positive_file.empty() || !parser.has("ps") || !parser.has("ns"))
	{
		cout << "Wrong parameters.\n\n";
		parser.printMessage();
		exit(0);
	}

	int pos_size = parser.get<int>("ps");
	int neg_size = parser.get<int>("ns");

	std::vector< std::vector<float> > descriptor_array;
	cv::Mat trainData = Mat(pos_size + neg_size, desc_size, CV_32FC1);

	std::vector<int> label;

	std::fstream pos_input(positive_file, std::fstream::in);
	std::fstream neg_input(negative_file, std::fstream::in);
	std::fstream output(output_file, std::fstream::out);
	std::cout << "Successfully loaded files:" << std::endl;
	std::cout << positive_file << std::endl;
	std::cout << negative_file << std::endl;


	int index = 0;
	for (int i = 0; i < pos_size; i++, index++)
	{
		for (int j = 0; j < desc_size; j++)
		{
			float temp;
			pos_input >> temp;

			trainData.at<float>(index, j) = temp;
		}

		label.push_back(1);
	}

	for (int i = 0; i < neg_size; i++, index++)
	{
		for (int j = 0; j < desc_size; j++)
		{
			float temp;
			neg_input >> temp;

			trainData.at<float>(index, j) = temp;
		}

		label.push_back(-1);
	}

	cout << label.size() << endl;

	std::cout << "Training SVM..." << std::endl;
	cv::Ptr< cv::ml::SVM > svm = cv::ml::SVM::create();

	/* Default values to train SVM */
	svm->setCoef0(0.0);
	svm->setDegree(3);
	svm->setTermCriteria(TermCriteria(TermCriteria::MAX_ITER + TermCriteria::EPS, 1000, 1e-3));
	svm->setGamma(0);
	svm->setKernel(SVM::LINEAR);
	svm->setNu(0.5);
	svm->setP(0.1); // for EPSILON_SVR, epsilon in loss function?
	svm->setC(0.01); // From paper, soft classifier
	svm->setType(SVM::EPS_SVR); // C_SVC; // EPSILON_SVR; // may be also NU_SVR; // do regression task

	svm->train(trainData, cv::ml::ROW_SAMPLE, label);

	vector <float> final_descriptors = get_svm_detector(svm);
	for (int i = 0; i < final_descriptors.size() - 1; i++)
	{
		output << final_descriptors[i] << ", ";
	}
	output << "\n";
	output << final_descriptors[final_descriptors.size() - 1] << std::endl;

	return 0;
}

