#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define EXP_SZ 8
#define FRAC_SZ 23

// double is 64 BIT in binary
// float is 32 BIT in binary


int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the binary number representation of float point number
    
    
    char buff;
    //unsigned int binary = 0;
    
   double binaryValues[32];
   

    for (int i=EXP_SZ+FRAC_SZ; 0 <= i; i--) { // read MSB(most significant bit) first as that is what comes first in the file
        fscanf(fp, "%c", &buff);
        if(buff == '1'){
            binaryValues[i] = 1.0;
        } else{
            binaryValues[i] = 0.0;
        }
    }


    // float number = *(float *)&binary; // you are not allowed to do this.

    bool sign = binaryValues[31];

    // E
    double e = 0;
    int j=0;
    for(int i=23; i < 31; i++){
        e += binaryValues[i] * (pow(2, j));
        j++;
    }

    e = e - 127; // e - ebias

    // M
    double m = 1;
    signed int ex= -1;
    for(int i= 22; 0<= i; i--){
        m += binaryValues[i] * (pow(2, ex));
        ex --;
    }



    // https://www.tutorialspoint.com/c_standard_library/c_function_ldexp.htm
    double number = ldexp ( m, e );
    number = sign ? -number : number;
    printf("%f\n", number);

    return EXIT_SUCCESS;

}
