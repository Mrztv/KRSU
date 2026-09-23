#include <iostream>
#include <ctime>

int main() {
    srand(time(NULL));
    int A[10];
    int B[3][4];

    for (int i = 0; i < 10; i++) {
        A[i] = rand() % 100;
    }
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 4; j++) {
            B[i][j] = rand() % 100;
        }
    }

    for (int i = 0; i < 10; i++) {
        printf("%d ", A[i]);
    }
    printf("\n\n");

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 4; j++) {
            printf("%2d ", B[i][j]);
        }
        printf("\n");
    }

    int sum = 0;

    for (int i = 0; i < 10; i++) {
        sum += A[i];
    }

    double average = (double)sum/10;
    printf("Average is %.1f\n\n", average);

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 4; j++) {
            if ((i+j) % 2 == 1 && B[i][j] > average) {
                B[i][j] = 0;
            }
        }
    }

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 4; j++) {
            printf("%2d ", B[i][j]);
        }
        printf("\n");
    }
    printf("\n");


    return 0;
}