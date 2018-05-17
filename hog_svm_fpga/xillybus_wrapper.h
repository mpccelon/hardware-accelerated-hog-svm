#ifndef XILLYBUS_WRAPPER_H
#define XILLYBUS_WRAPPER_H

#include "hls_hog.h"
#include "hardware_approximation.h"

void compute_gradients(byte image[IMAGE_HEIGHT][IMAGE_WIDTH], gradient_vote grad_vote[IMAGE_HEIGHT][IMAGE_WIDTH]);
void initialize_cells(cell_histogram cells[IMAGE_HEIGHT/CELL_SIZE][IMAGE_WIDTH/CELL_SIZE]);
void compute_cells(gradient_vote grad_vote[IMAGE_HEIGHT][IMAGE_WIDTH], cell_histogram cells[IMAGE_HEIGHT/CELL_SIZE][IMAGE_WIDTH/CELL_SIZE]);
void compute_blocks(cell_histogram cells[IMAGE_HEIGHT/CELL_SIZE][IMAGE_WIDTH/CELL_SIZE], float hog[SVM_DESC_SIZE]);
float svm_detect(cell_histogram cells[IMAGE_HEIGHT/CELL_SIZE][IMAGE_WIDTH/CELL_SIZE]);

void xillybus_wrapper(int* in, int* out);

#endif
