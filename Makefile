CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11

TARGET = test_sum
OBJS = sum.o test_sum.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

sum.o: sum.cpp sum.h
	$(CXX) $(CXXFLAGS) -c sum.cpp

test_sum.o: test_sum.cpp sum.h
	$(CXX) $(CXXFLAGS) -c test_sum.cpp

clean:
	rm -f $(TARGET) *.o
