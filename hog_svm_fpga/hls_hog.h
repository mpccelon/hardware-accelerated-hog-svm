/*
 * hls_hog.h
 *
 * Main header for the HLS implementation of the Histogram of Gradients algorithm
 */

#ifndef HLS_HOG_H
#define HLS_HOG_H

#include <stdint.h>
#include <hls_stream.h>
#include <hls_video.h>
#include <ap_int.h>

#define IMAGE_HEIGHT 	64
#define IMAGE_WIDTH 	64
#define WORD_SIZE		4

//assumes windows, cells, and blocks are square
//recalculate all values if changing one
#define WINDOW_SIZE			64
#define CELL_SIZE			8
#define BLOCK_SIZE			16
#define BLOCK_STRIDE		8

#define CELLS_PER_BLOCK		4
#define VBLOCKS_PER_WINDOW	7
#define HBLOCKS_PER_WINDOW	7

#define V_BLOCKS_PER_IMAGE	((IMAGE_HEIGHT - BLOCK_SIZE)/BLOCK_STRIDE + 1)
#define H_BLOCKS_PER_IMAGE	((IMAGE_WIDTH - BLOCK_SIZE)/BLOCK_STRIDE + 1)
#define BLOCKS_PER_IMAGE	(V_BLOCKS_PER_IMAGE*H_BLOCKS_PER_IMAGE)

#define BIN_SIZE		9
#define CELL_DESC_SIZE	CELLS_PER_BLOCK*BIN_SIZE
#define SVM_DESC_SIZE BLOCKS_PER_IMAGE*CELL_DESC_SIZE

typedef ap_uint<8> byte;
typedef ap_int<9> grad_value;

// fixed point approximation
#define NUM_WIDTH 32
#define INT_WIDTH 16

typedef ap_fixed<INT_WIDTH + 8, INT_WIDTH, AP_TRN, AP_WRAP> short_fixed_point;
typedef ap_fixed<NUM_WIDTH, INT_WIDTH, AP_TRN, AP_WRAP> fixed_point;
typedef ap_fixed<NUM_WIDTH*2, INT_WIDTH*2, AP_TRN, AP_WRAP> double_fixed_point;

#define TAN_0				0
#define TAN_10 				0.1763269807

struct image_line
{
	byte val[IMAGE_WIDTH];
};

struct gradient
{
	grad_value gradX;
	grad_value gradY;
};

struct gradient_packed
{
	gradient grad[WORD_SIZE];
};

struct binning
{
	byte bin;				//primary bin
	byte nearest_bin;		//secondary bin
};

struct gradient_vote
{
	fixed_point magnitude;	//magnitude
	byte bin;		//vote of gradient (split between primary bin and nearest bin)
};

struct gradient_vote_packed
{
	gradient_vote grad_vote[CELL_SIZE];
};

struct cell_histogram
{
	fixed_point bin[BIN_SIZE];
	double_fixed_point mag_sq;
};

struct block_histogram
{
	cell_histogram cell[CELLS_PER_BLOCK];
};

struct window_histogram
{
	block_histogram block[VBLOCKS_PER_WINDOW*HBLOCKS_PER_WINDOW];
};

#endif
