#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>

// void is when you don't want to return something

// Struct to hold the open and close braces and the pointer to the next element.
struct element {
    //char open; // not needed
    char close;
    struct element* next;
};



// Append the new element to the start of the stack
// This is one potential way to write this function signature
// You have to return the same data type as the beginning of the method

struct element* push (struct element* paramRoot, char close) {
    
    struct element* newElement = malloc (sizeof(struct element));
    newElement-> close = close;
    newElement-> next= paramRoot;
    paramRoot = newElement;
    return paramRoot;
}

// Remove element from the top of the stack
char pop (struct element** paramRoot ) {

    if (*paramRoot != NULL) {
        struct element* temp = *paramRoot;
        int close = temp -> close;
        *paramRoot = temp-> next;
        free(temp);
        return close;
    } else {
        perror("Empty Stack");
        return (0);
    }
}

int main(int argc, char* argv[]){

    FILE* fp = fopen(argv[1], "r"); // takes in the txt file name
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    int counter = 0;
    struct element* root = NULL;
    bool balanced= true;
    //bool notBalanced = false;

    char buff; // reads for the different types of strings "<>{}()[]"
    while ( fscanf(fp, "%c", &buff)==1 ) {

        switch(buff) { // switch is a type of if/then statement. It provides different cases which the program will do if it approaches the case.
            case '<' :
                root = push(root, '<');
                counter++;
                break;
            case '(' :
                root = push(root, '(');
                counter++;
                break;
            case '[' :
                root = push(root, '[');
                counter++;
                break;
            case '{' :
                root = push(root, '{');
                counter++;
                break;
            case '>' :
                if(root == NULL){
                balanced = false;
                break;
            } else{
                pop(&root);
                counter--;
                break;
            }
            case ')' :
                if(root == NULL){
                balanced = false;
                break;
            } else{
                pop(&root);
                counter--;
                break;
            }
            case ']' :
                if(root == NULL){
                balanced = false;
                break;
            } else{
                pop(&root);
                counter--;
                break;
            }
            case '}' :
                if(root == NULL){
                    balanced = false;
                    break;
                } else{
                    pop(&root);
                    counter--;
                    break;
                }
            default :
                printf("Invalid character\n" );
        }
    }

    if(counter > 0){
        balanced = false;
    }

    // if the stack is not empty after the switch statement it is FALSE if it is empty it is TRUE
    printf(balanced ? "yes" : "no");
    fclose(fp);
    return 0;
}

