#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <math.h>

#define EXP_SZ 8
#define FRAC_SZ 23

int main(int argc, char *argv[]) {

    // float value = *(float *) &binary; // you are not allowed to do this.
    // unsigned int binary = *(unsigned int*) &value; // you are not allowed to do this.

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the binary number representation of multiplier
    char buff;
    bool firstBin[32]; // suggested that you store bits as array of bools; minuend[0] is the LSB
    for (int i=31; 0<=i; i--) { // read MSB first as that is what comes first in the file
        fscanf(fp, "%c", &buff);
        if(buff == '1'){
            firstBin[i] = true;
        } else{
            firstBin[i] = false;
        }
    }

    for(int i=31; 0 <= i; i--){
        //printf("%d", firstBin[i]);
    }

    //printf("\n");

    // notice that you are reading two different lines; caution with reading

    // first, read the binary number representation of multiplcand
    bool secondBin[32]; // suggested that you store bits as array of bools; minuend[0] is the LSB
    fscanf(fp, "\n%c", &buff);
        if(buff == '1'){
            secondBin[31] = true;
        } else{
            secondBin[31] = false;
        }
    
    for (int i=30; 0<=i; i--) { // read MSB first as that is what comes first in the file
        fscanf(fp, "%c", &buff);
        if(buff == '1'){
            secondBin[i] = true;
        } else{
            secondBin[i] = false;
        }
    }

    for(int i=31; 0 <= i; i--){
       // printf("%d", secondBin[i]);
    }

    //printf("\n");
   

    //float product = *(float *) &multiplier * *(float *) &multiplicand; // you are not allowed to print from this.
    //unsigned int ref_bits = *(unsigned int *) &product; // you are not allowed to print from this. But you can use it to validate your solution.

    // SIGN
    bool sign = firstBin[31] ^ secondBin[31];
    printf("%d_",sign);
    //assert (sign == (1&ref_bits>>(EXP_SZ+FRAC_SZ)));

    // EXP
    bool carry = false;
    int index =7;
    bool difference[8];
    for(int i=23; i <= 30; i++) {
        if(firstBin[i] == true && secondBin[i] == true && carry == true){
            difference[index] = true;
            carry = true;
            //printf("first: %d + second: %d = %d \n", firstBin[i], secondBin[i], difference[index]);
            index--;
         } else
            if(firstBin[i] == true && secondBin[i] == false && carry == true){
                difference[index] = false;
                carry = true;
                //printf("first: %d + second: %d = %d\n ", firstBin[i], secondBin[i], difference[index]);
                index--;
            } else
                if(firstBin[i] == false && secondBin[i] == true && carry == true){
                    difference[index] = false;
                    carry = true;
                    //printf("first: %d + second: %d = %d\n ", firstBin[i], secondBin[i], difference[index]);
                    index--;
                } else
                    if(firstBin[i] == false && secondBin[i] == false && carry == true){
                        difference[index] = true;
                        carry = false;
                        //printf("first: %d + second: %d = %d \n", firstBin[i], secondBin[i], difference[index]);
                        index--;
                    } else
                        if(firstBin[i] == false && secondBin[i] == true && carry == false){
                            difference[index] = true;
                            carry = false;
                            //printf("first: %d + second: %d = %d\n ", firstBin[i], secondBin[i], difference[index]);
                            index--;
                        } else
                            if(firstBin[i] == true && secondBin[i] == true && carry == false){
                                difference[index] = false;
                                carry = true;
                                //printf("first: %d + second: %d = %d\n ", firstBin[i], secondBin[i], difference[index]);
                                index--;
                            } else
                                if(firstBin[i] == true && secondBin[i] == false && carry == false){
                                    difference[index] = true;
                                    carry = false;
                                    //printf("first: %d + second: %d = %d\n ", firstBin[i], secondBin[i], difference[index]);
                                    index--;
                                } else
                                    if(firstBin[i] == false && secondBin[i] == false && carry == false){
                                        difference[index] = false;
                                        carry = false;
                                        //printf("first: %d + second: %d = %d\n ", firstBin[i], secondBin[i], difference[index]);
                                        index--;
                            }
                        

    }
    // subtract bias
    int e = 0;
    int j=0;
    for(int i=7; i >= 0; i--){
        e += difference[i] * (pow(2, j));
        //printf("exponent: %d\n", e);
        j++;
    }

    e = e - 127; // e - ebias

    //printf("exponent: %d\n", e);




    // FRAC
    // get the frac field of the multiplier and multiplicand
    /* ... */
    // assuming that the input numbers are normalized floating point numbers, add back the implied leading 1 in the mantissa
    /* ... */
    // multiply the mantissas
    double m1 =1;
    double m2 =1;
    signed int ex= -1;
    for(int i= 22; 0<= i; i--){
        m1 += firstBin[i] * (pow(2, ex)); 
        m2 += secondBin[i]* (pow(2, ex));
        ex --;
    }

    double master = m1* m2;

    // overflow and normalize
    while( master >= 2.0 || master < 1.0){
        if (master >= 2.0){
            master = master/2;
            e++;
        }
        if(master < 1.0){
            master= master*2;
            e--;
        }
    }

    // rounding
    /* ... */ // binSub add one. if it is a one round up by moving it to the nearest 0 to the left and if the 23rd digit is 0 then you don't have to round

    
    int carr2=1;
    if(firstBin[0] == 1){
        for(int i=0; i <= 22; i++){
            if(carr2 == 1){
                //printf("here");
                if(firstBin[i] == 0){
                    firstBin[i] = carr2;
                    carr2--;
                }
            }
        }
    }

    int carr=1;
    if(secondBin[0] == 1){
        for(int i=0; i <= 22; i++){
            if (carr == 1){
                //printf("here1");
                if(secondBin[i] == 0){
                    secondBin[i] = carr;
                    carr--;
                }
            }
        }
    }
    


    // move decimal point
    master = master -1; //subtract the final mantissa by 1

   //printf("%f\n", master);

    int expFrac =-1;
    bool frac_array[FRAC_SZ]; // one extra LSB bit for rounding
    for ( int frac_index=FRAC_SZ-1; frac_index >= 0; frac_index--) {
        //frac_array[frac_index] = false; // frac set to zero to enable partial credit
        
       if(master>= pow(2, expFrac)){
            frac_array[frac_index] = true;
            master = master - pow(2, expFrac);
            //printf("%f\n", master);
        } else{
            frac_array[frac_index] = false;
        }

        expFrac--;
    }




    // PRINTING
    // print exp
    for ( int bit_index=EXP_SZ-1; 0<=bit_index; bit_index-- ) {
        bool trial_bit = 1&e>>bit_index;
        printf("%d",trial_bit);
        //assert (trial_bit == (1&ref_bits>>(bit_index+FRAC_SZ)));
    }
    printf("_");

    // print frac
    for ( int bit_index=FRAC_SZ-1; 0<=bit_index; bit_index-- ) {
        bool trial_bit = frac_array[bit_index]; // stored in an array to help with rounding
        printf("%d",trial_bit);
        //assert (trial_bit == (1&ref_bits>>(bit_index)));
    }

    return(EXIT_SUCCESS);

}
