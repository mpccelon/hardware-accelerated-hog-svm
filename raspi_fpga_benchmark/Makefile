
all:	fpga_accuracy_benchmark fpga_perf_benchmark opencv_window_benchmark
clean:
	rm -f fpga_accuracy_benchmark fpga_perf_benchmark

CC			= $(CXX)
CXXFLAGS	= $(shell pkg-config --libs --cflags opencv)
CXXFLAGS	+= -pthread -std=c++14
CXXFLAGS	+= -O3 # -Wall -Wextra -pedantic -Werror 

fpga_accuracy_benchmark: fpga_accuracy_benchmark.cpp
	$(CXX) fpga_accuracy_benchmark.cpp -o fpga_accuracy_benchmark $(CXXFLAGS)

fpga_perf_benchmark: fpga_perf_benchmark.cpp
	$(CXX) fpga_perf_benchmark.cpp -o fpga_perf_benchmark $(CXXFLAGS)

opencv_window_benchmark: opencv_window_benchmark.cpp
	$(CXX) opencv_window_benchmark.cpp -o opencv_window_benchmark $(CXXFLAGS)
