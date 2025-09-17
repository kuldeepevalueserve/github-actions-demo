#include "sum.h"
#include <cassert>
#include <iostream>

int main() {
    assert(sum(2, 3) == 5);
    assert(sum(-1, 1) == 0);
    std::cout << "All tests passed!\n";
    return 0;
}