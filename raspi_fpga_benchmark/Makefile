
all:	fpga_accuracy_benchmark fpga_perf_benchmark opencv_window_benchmark hog_svm_trainer hog_generator
clean:
	rm -f fpga_accuracy_benchmark fpga_perf_benchmark opencv_window_benchmark hog_svm_trainer hog_generator
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

hog_svm_trainer: hog_svm_trainer.cpp
	$(CXX) hog_svm_trainer.cpp -o hog_svm_trainer $(CXXFLAGS)

hog_generator: hog_generator.cpp
	$(CXX) hog_generator.cpp -o hog_generator $(CXXFLAGS)