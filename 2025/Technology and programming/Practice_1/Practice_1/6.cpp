#include <iostream>

int main() {
    double A[10] = {1, 2, 4, 1, 2, 4, 2, 7, 4, 3};
    double B[3][4] = {
        {2, 31, 2, 2},
        {1, 2, 3, 1},
        {5, 3, 2, 4}
    };
    std::cout << "A:" << std::endl;
    for (int i = 0; i < std::size(A); i++) {
        std::cout << A[i] << " ";
    }

    std::cout << std::endl;
    std::cout << "B:" << std::endl;
    for (int i = 0; i < std::size(B); i++) {
        for (int j = 0; j < std::size(B[i]); j++) {
            std::cout << B[i][j] << " ";
        }
        std::cout << std::endl;
    }
    double sum = 0;
    for (int i = 0; i < std::size(A); i++) {
        sum += A[i];
    }
    double avg = sum/10;
    std::cout << "AVG: " << avg << std::endl;

    for (int i = 0; i < std::size(B); i++) {
        for (int j = 0; j < std::size(B[i]); j++) {
            if ((i+j)%2 == 1 && B[i][j] > avg) {
                B[i][j] = 0;
            }
        }
    }



    std::cout << "Result:" << std::endl;
    for (int i = 0; i < std::size(B); i++) {
        for (int j = 0; j < std::size(B[i]); j++) {
            std::cout << B[i][j] << " ";
        }

        std::cout << std::endl;
    }

}