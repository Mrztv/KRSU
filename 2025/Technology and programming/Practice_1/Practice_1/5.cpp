#include <iostream>
#include <fstream>

int main() {
    std::ifstream input_file("matrix_for_5");
    int M, N;
    std::cout << "Read file" << std::endl;
    input_file >> M >> N;
    std::cout << "M: " << M << " N: " << N << std::endl;
    int count_of_positive = 0, max_of_positive = 0, index_of_column=-1;

    int** A = new int*[M];
    for (int i = 0; i < M; i++) {
        A[i] = new int[N];
    }

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            input_file >> A[i][j];
        }
    }
    std::cout << "Matrix: " << std::endl;
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            std::cout << A[i][j] << " ";
            // printf("%3d ", A[i][j]);
        }
        std::cout << std::endl;
    }


    for (int j = 0; j < N; j++) {
        count_of_positive = 0;
        for (int i = 0; i < M; i++) {
            if (A[i][j] > 0) {
                count_of_positive++;
            }
        }
        if (max_of_positive < count_of_positive) {
            max_of_positive = count_of_positive;
            index_of_column = j;
        }
    }


    if (index_of_column == -1) {
        std::cout << "Not possible" << std::endl;
    }
    else {
        std::cout << "Index of column: " << index_of_column << std::endl;
    }


    for (int i = 0; i < M; i++) {
        delete[] A[i];
    }
    delete [] A;



}
