# hardware-accelerated-hog-svm
An implementation of the [Histogram of Oriented Gradients](https://en.wikipedia.org/wiki/Histogram_of_oriented_gradients) algorithm, along with [Support Vector Machine](https://en.wikipedia.org/wiki/Support_vector_machine) classification model.  
Created for our undergraduate thesis project dealing with dynamic traffic management based on embedded hardware-accelerated vehicle detection with SUMo and Unity simulations.

# Results
The FPGA hardware acceleration achieves a **13x** speedup compared to the software Raspberry Pi implementation. While this does result in decreased robustness (decrease in F1/MCC scores), the throughput increase in the resulting [dynamic traffic managment simulation](https://gitlab.com/pgilaga/ITMS-UCL04) is still maintained.

# Details

Implemented using the ff:
* [Digilent Zybo with Zynq 7000 All-Programmable SoC](https://reference.digilentinc.com/reference/programmable-logic/zybo/start)
* [Raspberry Pi 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/)

## datasets
Contains the datasets used for training and testing. Increasing sampled dataset as of May 17, 2018.

## hog_svm_fpga
The hardware implementation of the HOG-SVM algorithm, done in HLS C++. Vivado HLS WebPACK 2018.1 project. The integrated Xillybus IP core is also included, in a Vivado project folder. 

## interface
The software wrapper for the Zybo, along with interaction with the rest of the traffic management network

## opencv_benchmark
Implementation, training, and testing of the HOG-SVM algorithm for deskops. Visual Studio 2017 solution.

## benchmark
Benchmarking of the hardware implementation of the HOG-SVM algorithm. Includes benchmarking for RasPi embedded systems  

## results
Results collated so far, along with the draft of the overall thesis project.  

# Step by Step Guide

1. Install [Vivado HLS](https://www.xilinx.com/products/design-tools/vivado/vivado-webpack.html). The WebPACK edition is fine, if you're using boards like the Zybo.
2. Install [Xillinux](http://xillybus.com/downloads/doc/xillybus_getting_started_zynq.pdf) for the Zynq Zybo, or the Zynq board of your choice. If not using a Zynq board, refer to the [Xillybus Documentation](http://xillybus.com/doc) for information on the specific board.
3. Compile [OpenCV 3.4.1](https://opencv.org/releases.html) for both the PC and the Zynq board. CUDA support is optional for the PC, but very helpful when trying out different features. If using Windows, also install [Visual Studio](https://www.visualstudio.com/) the benchmark tools are in a Visual Studio solution. Read the [Windows](https://docs.opencv.org/3.4/d3/d52/tutorial_windows_install.html) or [Linux](https://docs.opencv.org/trunk/d7/d9f/tutorial_linux_install.html) compile instructions.
4. Follow the [co-processing guide](http://xillybus.com/tutorials/vivado-hls-c-fpga-howto-1) for generating the bitstream. The [Vivado HLS project folder](hog_svm_fpga/README.md) and the [Xillybus Vivado project folder](hog_svm_fpga/Xillybus_bitstream) is already included in the project.
5. Load the custom bitstream to the Zynq board.
6. Compile the [interface program](interface/vehicle_detector.cpp). Use the Makefile provided. Note that it uses the C++ 2014 standard.
7. Run the interface program to connect with the rest of the program.