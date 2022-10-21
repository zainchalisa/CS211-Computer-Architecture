#include <stdlib.h>
#include <stdio.h>

int main(int argc, char* argv[]) {

  // Open the filename given as the first command line argument for reading
  FILE* fp = fopen(argv[1], "r");
  if (!fp) {
    perror("fopen failed");
    return EXIT_FAILURE;
  }

  char buf[256];
  char* string = fgets(buf, 256, fp); // reads the first line
  int number = atoi(string); // The starting number for the Collatz sequence

  // Printing in C.
  // %d is the format specifier for integer numbers.
  // \n is the newline character

  printf( "%d\n", number);
    
    for(int i= number; i > 1; i= number) {

        int update;

        if (number%2 == 0){

            update = number/2;
            printf("%d\n", update);

        } else {

            update = 3 * number + 1;
            printf("%d\n", update);
        }
        number = update;
    }

  return EXIT_SUCCESS;
}
