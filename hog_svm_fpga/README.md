# HOG-SVM implementation on the Digilent ZYBO board
Implemented using the Xilinx Vivado HLS WebPACK 2018.1 IDE.  
The [Xillybus IP core](xillybus.com) was used for faster deployment, transforming data communication into 32-bit FIFOs.  
Final product takes in a 64x64 detection window, and returns a confidence value. A positive value implies the window contains a vehicle.  

# Step by step instructions for generating the bitstream 

1. Open this folder as a Vivado HLS project, and synthesize the Design Checkpoint (.dcp) file.
2. Open the Xillybus_bitstream folder in Vivado, and add the synthesized .dcp file as a source. It should load as all of the xillybus_wrapper modules.
3. Generate the bitstream.
