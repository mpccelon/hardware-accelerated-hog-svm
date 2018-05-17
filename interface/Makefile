
all:	Socket.o Protocol.o ProtocolSimple.o vehicle_detector.o vehicle_detector 
clean:
	rm -f *.o client server

CC			= $(CXX)
CXXFLAGS	= $(shell pkg-config --libs --cflags opencv)
CXXFLAGS	+= -pthread -std=c++14
CXXFLAGS	+= -Wall -Wextra -pedantic -Werror -O3

vehicle_detector: vehicle_detector.o Socket.o Protocol.o ProtocolSimple.o
	$(CXX) vehicle_detector.o Socket.o Protocol.o ProtocolSimple.o -o vehicle_detector $(CXXFLAGS)

vehicle_detector.o: vehicle_detector.cpp
	$(CXX) -c vehicle_detector.cpp -o vehicle_detector.o $(CXXFLAGS)

Socket.o: Socket.h Socket.cpp Socket.tpp 

Protocol.o: Protocol.cpp Protocol.h

ProtocolSimple.o: ProtocolSimple.cpp ProtocolSimple.h

