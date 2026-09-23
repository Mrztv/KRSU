#include <iostream>

//3n^2 - 730n < 0

int main() {
  int n = 1;
  while (3*n*n-730*n < 0) {
    std::cout << "N: " << n << " equation:" << 3*n*n-730*n << std::endl;
    n++;
  }
  std::cout << "max n: " << n << std::endl;

}
