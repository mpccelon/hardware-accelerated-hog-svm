# hardware-accelerated-hog-svm
An implementation of the [Histogram of Oriented Gradients](https://en.wikipedia.org/wiki/Histogram_of_oriented_gradients) algorithm, along with [Support Vector Machine](https://en.wikipedia.org/wiki/Support_vector_machine) classification model.  
Created for our undergraduate thesis project dealing with dynamic traffic management based on embedded hardware-accelerated vehicle detection with SUMo and Unity simulations.

# Results
The FPGA hardware acceleration achieves a **13x** speedup compared to the software Raspberry Pi implementation. While this does result in decreased robustness (decrease in F1/MCC scores), the throughput increase in the resulting [dynamic traffic managment simulation](https://gitlab.com/pgilaga/ITMS-UCL04) is still maintained.

Implemented using the ff:
* [Digilent Zybo with Zynq 7000 All-Programmable SoC](https://reference.digilentinc.com/reference/programmable-logic/zybo/start)
* [Raspberry Pi 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/)

## datasets
Contains the datasets used for training and testing. Increasing sampled dataset as of May 17, 2018.

## hog_svm_fpga
The hardware implementation of the HOG-SVM algorithm, done in HLS C++. Vivado HLS WebPACK 2018.1 project.

## interface
The software wrapper for the Zybo, along with interaction with the rest of the traffic management network

## opencv_benchmark
Implementation, training, and testing of the HOG-SVM algorithm for deskops. Visual Studio 2017 solution.

## benchmark
Benchmarking of the hardware implementation of the HOG-SVM algorithm. Includes benchmarking for RasPi embedded systems  

## results
Results collated so far, along with the draft of the overall thesis project.  