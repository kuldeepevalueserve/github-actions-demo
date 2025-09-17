CXX = g++
CXXFLAGS = -Wall -std=c++11

all: test_sum

sum.o: sum.cpp sum.h
	$(CXX) $(CXXFLAGS) -c sum.cpp

test_sum.o: test_sum.cpp
	$(CXX) $(CXXFLAGS) -c test_sum.cpp

test_sum: sum.o test_sum.o
	$(CXX) $(CXXFLAGS) -o test_sum sum.o test_sum.o

clean:
	rm -f *.o test_sum
