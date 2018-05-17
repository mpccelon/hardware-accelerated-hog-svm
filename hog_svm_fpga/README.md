# HOG-SVM implementation on the Digilent ZYBO board
Implemented using the Xilinx Vivado HLS WebPACK 2018.1 IDE.  
The [Xillybus IP core](xillybus.com) was used for faster deployment, transforming data communication into 32-bit FIFOs.  
Final product takes in a 64x64 detection window, and returns a confidence value. A positive value implies the window contains a vehicle.
