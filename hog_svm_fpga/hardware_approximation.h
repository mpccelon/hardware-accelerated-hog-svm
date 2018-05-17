#ifndef HARDWARE_APPROXIMATION_H
#define HARDWARE_APPROXIMATION_H

#include "hls_hog.h"

bool quadrant(int gradX, int gradY);
byte find_bin(int gradX, int gradY);

fixed_point sqrt_approx(int dx, int dy);

//converts float into its IEEE-754 format and vice versa
unsigned int float_to_decimal(float &x);
float decimal_to_float(unsigned int &x);

fixed_point fast_inv_sqrt(double_fixed_point sum_of_squares);

#endif
