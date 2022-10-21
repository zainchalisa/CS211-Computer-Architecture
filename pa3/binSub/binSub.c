#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the minuend (number to be subtracted from)
    char buff;
    bool minuend[8]; // suggested that you store bits as array of bools; minuend[0] is the LSB
    for (int i=7; 0<=i; i--) { // read MSB first as that is what comes first in the file
        fscanf(fp, "%c", &buff);
        if(buff == '1'){
            minuend[i] = true;
        } else{
            minuend[i] = false;
        }
    }


    // notice that you are reading two different lines; caution with reading
    // second, read the subtrahend (number to subtract)
    bool subtrahend[8]; // suggested that you store bits as array of bools; subtrahend[0] is the LSB
    fscanf(fp, "\n%c", &buff);
        if(buff == '1'){
            subtrahend[7] = true;
        } else{
            subtrahend[7] = false;
        }
    
    for (int i=6; 0<=i; i--) { // read MSB first as that is what comes first in the file
        fscanf(fp, "%c", &buff);
        if(buff == '1'){
            subtrahend[i] = true;
        } else{
            subtrahend[i] = false;
        }
    }


    // WE WILL DO SUBTRACTION BY NEGATING THE SUBTRAHEND AND ADD THAT TO THE MINUEND

    // Negate the subtrahend
    // flip all bits
    
    for (int i=7; 0<=i; i--){
        if(subtrahend[i] == true){
            subtrahend[i] = false;
        }else{
            subtrahend[i] = true;
        }    
    }




    // add one
    bool carry = true; // to implement the 'add one' logic, we do binary addition logic with carry set to true at the beginning
    for (int i=0; i<8; i++) { // iterate from LSB to MSB
        if( subtrahend[i] == true && carry == true){
            subtrahend[i] = false;
            carry = true;
        } else{

            if(subtrahend[i] == false && carry == false){
                subtrahend[i] = false;
                carry = false;
            } else{

                if(subtrahend[i] == true && carry == false){
                    subtrahend[i] = true;
                    carry = false;
                }else{

                    if(subtrahend[i] == false && carry == true){
                        subtrahend[i] = true;
                        carry = false;
                    }
                }
            }
        } 
    }
        

    // Add the minuend and the negated subtrahend
    
   
    carry = false;
    bool difference[8];
    for (int i=0; i<8; i++) {
        if(subtrahend[i] == true && minuend[i] == true && carry == true){
            difference[i] = true;
            carry = true;
         } else
            if(subtrahend[i] == true && minuend[i] == false && carry == true){
                difference[i] = false;
                carry = true;
            } else
                if(subtrahend[i] == false && minuend[i] == true && carry == true){
                    difference[i] = false;
                    carry = true;
                } else
                    if(subtrahend[i] == false && minuend[i] == false && carry == true){
                        difference[i] = true;
                        carry = false;
                    } else
                        if(subtrahend[i] == false && minuend[i] == true && carry == false){
                            difference[i] = true;
                            carry = false;
                        } else
                            if(subtrahend[i] == true && minuend[i] == true && carry == false){
                                difference[i] = false;
                                carry = true;
                            } else
                                if(subtrahend[i] == true && minuend[i] == false && carry == false){
                                    difference[i] = true;
                                    carry = false;
                                } else
                                    if(subtrahend[i] == false && minuend[i] == false && carry == false){
                                        difference[i] = false;
                                        carry = false;
                            }
                        

    }

    printf("\n");


    // print the difference bit string
    for (int i=7; 0<=i; i--){
        printf("%d",difference[i]);
    }
    return EXIT_SUCCESS;

}
