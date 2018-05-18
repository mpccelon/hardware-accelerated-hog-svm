#include "hls_hog.h"
#include "xillybus_wrapper.h"

#include "stdio.h"
#include "stdlib.h"

#include <iostream>
#include <fstream>

using namespace std;

int main()
{
//	unsigned char *image = (unsigned char *) malloc(IMAGE_HEIGHT*IMAGE_WIDTH*sizeof(unsigned char));
//	memset(image, 0, IMAGE_HEIGHT*IMAGE_WIDTH*sizeof(unsigned char));

	ifstream data;
#ifdef SVM
	data.open("test_pos.txt");
#endif

#ifdef HOG
	data.open("vehicle.txt");
#endif

	unsigned char image[IMAGE_HEIGHT][IMAGE_WIDTH] = {};
	float descriptor[SVM_DESC_SIZE] = {};

//	for(int n = 0; n < size; n++)
	while(data.good())
	{
		for(int i = 0; i < IMAGE_HEIGHT; i++)
		{
			for(int j = 0; j < IMAGE_WIDTH; j++)
			{
				int x;
				data >> x;
				image[i][j] = x;
			}
		}
#ifdef SVM
		float result = 0;
		xillybus_wrapper((int *) image, (int*) &result);
		printf("%lf\n", result);
#endif

#ifdef HOG
		float result[SVM_DESC_SIZE] = {};
		xillybus_wrapper((int *) image, (int *) result);

		for(int i = 0; i < SVM_DESC_SIZE; i++)
		{
			printf("%lf\n", result[i]);
		}
#endif
	}

	return 0;
}
