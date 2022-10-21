#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

/*


**** NOTES *****

 -Two cases in recursion. The base case and the conjunction case
    - The base case for this program is when you run into two matricies which need to 
      mulitply to one another you know that you can calc the cost you need m * n * l
    - 
*/



unsigned int cost (
    unsigned int matrixCount, // number of matricies
    unsigned int* rowSizes, // row size
    unsigned int* colSizes // col sizes
) {
    if ( matrixCount==1 ) { // Base case.
        return 0; // No multplication to be done.
    } else {
        // how ever many matricies there are thats how many ways you can split - 1
        unsigned int numPossibleSplits = matrixCount-1; // Think: if there are two matrices to multiply, there is one way to split.
        // AB: (A)(B)
        // ABC: (A)(BC) and (AB)(C)

        unsigned int costs[numPossibleSplits];

        // this piece is finding the cost of the different ways which it is multiplying
        for ( unsigned int split=0; split<numPossibleSplits; split++ ) {

            unsigned int l = rowSizes[0]; // row dimension of the first matric
            assert ( colSizes[split] == rowSizes[split+1] );    
            unsigned int m = colSizes[split]; // col dimension of where you split
            unsigned int n = colSizes[matrixCount-1]; // col dimension of the last matrix

            costs[split] =
                cost( split+1, rowSizes, colSizes ) + // cost of left subchain
                l * m * n + // cost of multiplying the two chains
                cost( matrixCount-split-1, rowSizes+split+1, colSizes+split+1 ); // cost of right subchain
        }

        // finding the min element of a array. Once found then return it
        unsigned int minCost = costs[0];
        unsigned int bestSplit = 0;
        for ( unsigned int split=1; split<numPossibleSplits; split++ ) {
            if ( costs[split]<minCost ) {
                minCost = costs[split];
                bestSplit = split;
            }
        }

        return minCost;
    }
}

int main(int argc, char* argv[]) {

    unsigned int matrixCount;
    unsigned int* rowSizes;
    unsigned int* colSizes;

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        exit(EXIT_FAILURE);
    }

    if (!fscanf(fp, "%d\n", &matrixCount)) { // how many matrixs are in the file
        perror("reading the number of matrices failed");
        exit(EXIT_FAILURE);
    }

    rowSizes = calloc( matrixCount, sizeof(int) );
    colSizes = calloc( matrixCount, sizeof(int) );

    for (unsigned int matIndex=0; matIndex<matrixCount; matIndex++) {

        unsigned int rows, cols;
        if (!fscanf(fp, "%d %d\n", &rows, &cols)) {
            perror("reading the dimensions of matrix failed");
            exit(EXIT_FAILURE);
        }
        rowSizes[matIndex] = rows; // loads the dimensions into the arrays
        colSizes[matIndex] = cols; // loads the dimensions into the arrays

    }

    printf("%d\n", cost(matrixCount, rowSizes, colSizes));

    free(colSizes);
    free(rowSizes);
    fclose(fp);

    exit(EXIT_SUCCESS);
}
