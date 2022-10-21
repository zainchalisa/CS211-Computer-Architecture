#include <stdbool.h>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <assert.h>
#include <math.h>

#define EXP_SZ 11
#define FRAC_SZ 52

int main(int argc, char *argv[]) {

    // SETUP

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return 0;
    }

    // first, read the number
    double value; // reads the double in the file provided
    fscanf(fp, "%lf", &value);

    // the reference solution ('the easy way')
    // you are not allowed to print from this casted 'ref_bits' variable below
    // but, it is helpful for validating your solution
    //unsigned long int ref_bits = *(unsigned long int*) &value;

    

    // THE SIGN BIT
    bool sign = value<0.0; // it will tell you if the double which you are converting will be negative or positive ie. true or false
    //when it is -0.0
    if(value == 0.0){
        if(atan2(value, value) < 0){ // differentiate the two zeros (-0.0 and 0.0) ARCTAN :)
            sign = true;
        } else{
            sign = false;
        }
    }

    // this does not work because in programming C registers -0 and 0 as the same
    /*if(value == -0.0){
        sign = true;
    } else{
        sign = false;
    }
    }*/

    printf("%d_",sign);
    //assert (sign == (1&ref_bits>>(EXP_SZ+FRAC_SZ))); // validate your result against the reference


    // THE EXP FIELD
    // find the exponent E such that the fraction will be a canonical fraction:
    // 1.0 <= fraction < 2.0

    double fraction = sign ? -value : value; // this is the value in the txt file

    signed short trial_exp=0; // start by assuming largest possible exp (before infinity)
    // do trial division until the proper exponent E is found

    // 2^e - 1023 * 1

    double constant = fraction *2; // keeps as constant to override the over dividing error

    while ( fraction >= 2.0 || fraction < 1.0){
        if( fraction == 0.0){
            trial_exp = -1023;
            break;
        }
        else if (fraction >= 2.0){
            trial_exp++;
            fraction = constant / (2* pow(2, trial_exp));
            //printf("exp: %d ", trial_exp);
            //printf("frac: %f\n", fraction);
        }
        else if (fraction < 1.0){
            trial_exp--;
            fraction = constant / (2* pow(2, trial_exp));
            //printf("exp: %d ", trial_exp);
            //printf("frac: %f\n", fraction);
        }
    }


    // comparing the exponent and it will print it out if the exponent you found is correct
    unsigned short bias = (1<<(EXP_SZ-1))-1;
    signed short exp = trial_exp + bias; // bias is set to 1023

   for ( int exp_index=EXP_SZ-1; 0<=exp_index; exp_index-- ) {
        bool exp_bit = 1&exp>>exp_index;
        printf("%d",exp_bit);
        //assert (exp_bit == (1&ref_bits>>(exp_index+FRAC_SZ))); // validate your result against the reference
    }


    printf("_");
    // you get partial credit by getting the exp field correct
    // even if you print zeros for the frac field next
    // you should be able to pass test cases 0, 1, 2, 3

    // THE FRAC FIELD
    // prepare the canonical fraction such that:
    // 1.0 <= fraction < 2.0
    
    fraction -= 1; // .25 test case

    int expFrac =-1;
    
    bool frac_array[FRAC_SZ+1]; // one extra LSB bit for rounding
    for ( int frac_index=1; frac_index <= FRAC_SZ; frac_index++) {
        //frac_array[frac_index] = false; // frac set to zero to enable partial credit
        // what I did in bin to Float but now you iterate to find the binary instead of the value
       double cmp= pow(2, expFrac);
       if(fraction>= cmp){
            frac_array[frac_index] = true;
            fraction = fraction - pow(2, expFrac);
        } else{
            frac_array[frac_index] = false;
        }

        expFrac--;
    }

    // rounding
    /* ... */

    for ( int frac_index=0; frac_index < FRAC_SZ; frac_index++) {
        bool frac_bit = frac_array[frac_index+1]; // skipping the extra LSB bit for rounding
        printf("%d", frac_bit);
        //assert (frac_bit == (1&ref_bits>>frac_index)); // validate your result against the reference
    }

}
