#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

unsigned int cost (
    unsigned int matrixCount,
    unsigned int* rowSizes,
    unsigned int* colSizes
) {
    if ( matrixCount==1 ) { // Base case.
        return 0; // No multplication to be done.
    } else {

        unsigned int numPossibleSplits = matrixCount-1; // Think: if there are two matrices to multiply, there is one way to split.
        // AB: (A)(B)
        // ABC: (A)(BC) and (AB)(C)

        unsigned int costs[numPossibleSplits];
        for ( unsigned int split=0; split<numPossibleSplits; split++ ) {

            unsigned int l = rowSizes[0];
            assert ( colSizes[split] == rowSizes[split+1] );
            unsigned int m = colSizes[split];
            unsigned int n = colSizes[matrixCount-1];

            costs[split] =
                cost( split+1, rowSizes, colSizes ) + // cost of left subchain
                l * m * n + // cost of multiplying the two chains
                cost( matrixCount-split-1, rowSizes+split+1, colSizes+split+1 ); // cost of right subchain
        }

        unsigned int minCost = costs[0];
        for ( unsigned int split=1; split<numPossibleSplits; split++ ) {
            if ( costs[split]<minCost ) {
                minCost = costs[split];
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

    if (!fscanf(fp, "%d\n", &matrixCount)) { // reads the first line of the text file
        perror("reading the number of matrices failed");
        exit(EXIT_FAILURE);
    }

    rowSizes = calloc(matrixCount, sizeof(int));
    colSizes = calloc(matrixCount, sizeof(int)); 

    int*** matrix =calloc(matrixCount, sizeof(int**)); // creates 3d array

    for (unsigned int matIndex=0; matIndex<matrixCount; matIndex++) {

        unsigned int rows, cols;

        if (!fscanf(fp, "%d %d\n", &rows, &cols)) {
            perror("reading the dimensions of matrix failed");
            exit(EXIT_FAILURE);
        }

        rowSizes[matIndex] = rows;
        colSizes[matIndex] = cols;

        matrix[matIndex] = calloc(rows, sizeof(int*)); // allocates the number of rows

        for(unsigned int i=0; i < rows; i++){
            
            unsigned element;

            matrix[matIndex][i]= calloc(cols, sizeof(int)); // allocates the number of collumns
            
            for(unsigned int j=0; j < cols; j++){

                if( !fscanf(fp, "%d", &element)){
                    perror("reading the elements of matrix failed");
                    exit(EXIT_FAILURE);
                }

                matrix[matIndex][i][j]= element;

            }
        }
    }

    printf("%d\n", cost(matrixCount, rowSizes, colSizes) );

    int size = matrixCount -1;

    int** temp = calloc( rowSizes[0], sizeof(int*) );
    int** mulProduct = calloc( rowSizes[0], sizeof(int*) );
    for(int index= 1; index< matrixCount; index++){
        for ( unsigned int i=0; i<rowSizes[0]; i++ ) {
            mulProduct[i] = calloc(colSizes[index], sizeof(int));
            temp[i] = calloc(colSizes[index], sizeof(int));
        }
    }



// find the products of 2+ matricies

    for(unsigned int finder=1; finder < matrixCount; finder++){

        if(finder < 2){

            for(int bigMatrix=0; bigMatrix< matrixCount; bigMatrix++){
                for(int i=0; i< rowSizes[0]; i++){
                    for(int j=0; j < colSizes[finder]; j++){
                        mulProduct[i][j]=0;
                        for(int k=0; k < rowSizes[finder]; k++){
                            mulProduct[i][j] += matrix[0][i][k] * matrix[1][k][j];
                            temp[i][j]= mulProduct[i][j];
                        }
                    }
                }
            }
        }else{
            for(int i=0; i < rowSizes[0]; i++){ // the number of rows for product matrix
                for(int j=0; j < colSizes[finder]; j++){ // number of cols for the product matrix
                    mulProduct[i][j]= 0;
                    for(int k=0; k < rowSizes[finder]; k++){ // number in common between both matricies
                        mulProduct[i][j] += temp[i][k] * matrix[finder][k][j];
                    }
                }
            }
        }    
    }

    for ( unsigned int i=0; i<rowSizes[0]; i++ ) {
        for ( unsigned int k=0; k<colSizes[size]; k++) {
            printf ("%d ", mulProduct[i][k]);
        }
        printf ("\n");
    }
    
    for ( unsigned int i=0; i< rowSizes[0]; i++ ) {
        free(mulProduct[i]);
    }
    free(mulProduct);

    for ( unsigned int i=0; i< rowSizes[0]; i++ ) {
        free(temp[i]);
    }
    free(temp);


    for (unsigned int i = 0; i < matrixCount; i++){

        for (int j = 0; j < rowSizes[i]; j++) {

            free(matrix[i][j]);
        }

        free(matrix[i]);
    }
    free(matrix);

    free(colSizes);
    free(rowSizes);
    fclose(fp);

    exit(EXIT_SUCCESS);
}
