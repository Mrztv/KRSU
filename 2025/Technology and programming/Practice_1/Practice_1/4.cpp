#include <iostream>

int main() {
    double A[5][5] = {
        {1, 2, 3, 4, 5},
        {6, 7, 8, 9, 10},
        {11, 12, 13, 14, 15},
        {16, 17, 18, 19, 20},
        {21, 22, 23, 24, 25}
    };

    double max, min;
    max = A[0][0];
    min = A[0][0];
    int index_of_max_column = 0, index_of_min_column = 0;

    for (int i = 0; i < std::size(A); i++) {
        for (int j = 0; j < std::size(A[i]); j++) {
            std::cout << A[i][j] << " ";
        }
        std::cout << std::endl;
    }

    for (int i = 0; i < std::size(A); i++) {
        for (int j = 0; j < std::size(A[i]); j++) {
            if (A[i][j] > max) {
                max = A[i][j];
                index_of_max_column = j;
            }
            if (A[i][j] < min) {
                min = A[i][j];
                index_of_min_column = j;
            }
        }
    }

    for (int i = 0; i < std::size(A); i++) {
        double tmp;
        tmp = A[i][index_of_max_column];
        A[i][index_of_max_column] = A[i][index_of_min_column];
        A[i][index_of_min_column] = tmp;
    }

    std::cout << std::endl;

    for (int i = 0; i < std::size(A); i++) {
        for (int j = 0; j < std::size(A[i]); j++) {
            std::cout << A[i][j] << " ";
        }
        std::cout << std::endl;
    }

}