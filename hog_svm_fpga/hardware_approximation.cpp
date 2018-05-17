#include "hardware_approximation.h"

bool quadrant(int gradX, int gradY)
{
#pragma HLS inline
	bool flagX = (gradX < 0) ? true : false;
	bool flagY = (gradY < 0) ? true : false;

	return (flagX != flagY) ? true : false;
}

//returns the index corresponding to the two bin votes of the gradient
/*
 * 0 = {8, 0}		(0, 10) or (170, 180)
 * 1 = {0, 1}		(10, 30)
 * 2 = {1, 2}		(30, 50)
 * 3 = {2, 3}		(50, 70)
 * 4 = {3, 4}		(70, 90)
 * 5 = {4, 5}		(90, 110)
 * 6 = {5, 6}		(110, 130)
 * 7 = {6, 7}		(130, 150)
 * 8 = {7, 8}		(150, 170)
 */
byte find_bin(int gradX, int gradY)
{
//#pragma HLS inline
	bool quad = quadrant(gradX, gradY);

	fixed_point dx, dy;
	if(gradX < 0)
		dx = 0 - gradX;
	else
		dx = gradX;

	if(gradY < 0)
		dy = 0 - gradY;
	else
		dy = gradY;

	fixed_point xtan00 = 0;
	fixed_point xtan10 = (dx>>3) + (dx>>4);
	fixed_point xtan20 = (dx>>2) + (dx>>3);
	fixed_point xtan30 = (dx>>1) + (dx>>4) + (dx>>6);
	fixed_point xtan40 = (dx>>1) + (dx>>2) + (dx>>4);
	fixed_point xtan50 = 1 + (dx>>3) + (dx>>4);
	fixed_point xtan60 = 1 + (dx>>1) + (dx>>2);
	fixed_point xtan70 = 2 + (dx>>1) + (dx>>2);
	fixed_point xtan80 = 5 + (dx>>1) + (dx>>3) + (dx>>5);

	unsigned short bin, nearest_bin;

	if(xtan00 <= dy && dy <= xtan10)
	{
		bin = 0;
	}
	else if(dy <= xtan30)
	{
		bin = quad ? 8 : 1;
	}
	else if(dy <= xtan50)
	{
		bin = quad ? 7 : 2;
	}
	else if(dy <= xtan70)
	{
		bin = quad ? 6 : 3;
	}
	else
	{
		bin = quad ? 5 : 4;
	}

	return bin;
}

fixed_point sqrt_approx(int dx, int dy)
{
#pragma HLS inline
	fixed_point a = ((float) (dx > dy) ? dx : dy);
	fixed_point b = ((float) (dx > dy) ? dy : dx);

	fixed_point a3 = a>>3;
	fixed_point a2 = a>>2;
	fixed_point a1 = a>>1;
	fixed_point b1 = b>>1;

	fixed_point r1 = (a3 + a2 + a1 + b1);
	return (r1 > a) ? r1 : a;
}

unsigned int float_to_decimal(float &x)
{
#pragma HLS inline
	return *((int *) &x);
}

float decimal_to_float(unsigned int &x)
{
#pragma HLS inline
	return *((float *) &x);
}

fixed_point fast_inv_sqrt(double_fixed_point sum_of_squares)
{
#pragma HLS inline
	float f; //for easy conversion between float and int
	unsigned int i;

	f = sum_of_squares; //convert input to floating point representation
	i = float_to_decimal(f);
	i = ((unsigned int) 0x5f3759df) - (i >> 1); //find first iteration of Newton Raphson

	float yn = decimal_to_float(i);
	float  x = sum_of_squares;
	float yn_sq = yn*yn;
	float yn_sq_x = yn_sq*x;
	fixed_point result = yn*(3 - yn_sq_x);

	return (result>>1);
}

//double_fixed_point fast_inv_sqrt(double_fixed_point sum_of_squares)
//{
////#pragma HLS inline
//	//pseudocode taken from https://en.wikipedia.org/wiki/Fast_inverse_square_root#Overview_of_the_code
//	union
//	{
//		float f;
//		unsigned int i;
//	}
//	conv; //for easy conversion between float and int
//
//	float x2 = sum_of_squares*0.5F;
//	float threehalfs = 1.5F;
//	conv.f = sum_of_squares;
//	conv.i = 0x5f3759df - (conv.i>>1);
//	conv.f = conv.f * (threehalfs - (x2 * conv.f * conv.f));
//	return conv.f;
//}
