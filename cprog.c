#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    int arraySize = argc - 1;
    int *myArray = (int *) malloc(arraySize * sizeof(int));

    // Read elements from command line and convert to integers
    for (int i = 1; i < argc; i++) {
        myArray[i - 1] = atoi(argv[i]);
    }

    // Threshold each element by 145
    for (int i = 0; i < arraySize; i++) {
        if (myArray[i] > 145) printf("%d ", 255);
        else printf("%d ", 0);
    }
    printf("\n");

    free(myArray);
}