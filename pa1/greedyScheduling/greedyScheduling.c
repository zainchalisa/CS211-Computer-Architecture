#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

// Selection sort based approach to sorting jobs

// create a linked list
// add the first job from the txt tile
// set the first job to a variable
// iterate throught the txt file setting the conditionals which were provided in the instructions
// complete by printing out the linked list with the jobs that build the optimal schedule

int main(int argc, char* argv[]) {

    // First peek at how many jobs and timeslots there are
    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        exit(EXIT_FAILURE);
    }

    char buf[256];

    // Read the number of jobs to be scheduled
    if (!fscanf(fp, "%s\n", buf)) {
        perror("reading the number of jobs failed");
        exit(EXIT_FAILURE);
    }
    int jobcount = atoi(buf); // size of the array

    int size= jobcount;

    char jobNames[size]; // array holding the job titles
    int startTimes[size]; // array holding the start times
    int endTimes[size]; // array holding the end times
    int index = 0;
    
    
    // Next read the maximum number of timeslots
    if (!fscanf(fp, "%s\n", buf)) {
        perror("reading the number of timeslots failed");
        exit(EXIT_FAILURE);
    }
    int timeslots = atoi(buf); // max hour which you have to look for

    
    // We've read the number of timeslots so close the file and start over
    fclose(fp);

    // unsigned int means that the integer can go from 0 above a signed int means that the integer can go into the negatives too
    // the unsigned int "slot" is the end time. It will keep iterating till it reaches the max time slots

    for (unsigned int slot=0; slot<timeslots; slot++) { 

        FILE* fp = fopen(argv[1], "r"); // "File* fp" --> is a file ptr, "fopen" --> is used to open a file, "argv[1]" --> is reading the txt file from terminal, "r" --> means read the file
        if (!fp) {
            perror("fopen failed");
            exit(EXIT_FAILURE);
        }

        char buf[256];

        // First read the number of jobs to be scheduled
        if (!fscanf(fp, "%s\n", buf)) {
            perror("reading the number of jobs failed");
            exit(EXIT_FAILURE);
        }

        // Next read the maximum number of timeslots
        if (!fscanf(fp, "%s\n", buf)) {
            perror("reading the number of timeslots failed");
            exit(EXIT_FAILURE);
        }

        // Now read the rest of the file
        for ( int line=0; line<jobcount; line++ ) { // iterates through all the jobs in the list (A,B,C, ...)

            if (!fgets(buf, 256, fp)) { 
                perror("reading a line for a job failed");
                exit(EXIT_FAILURE);
            }

            char job; // character of the job
            unsigned int start; //start time of the job
            unsigned int end; // end time of the job
            
            // takes from the txt file and adds it into the array as you iterate
            // fscanf(myFile, "%1d", &numberArray[i]);

            
            if (!sscanf(buf, "%c %d %d", &job, &start, &end)) {
                perror("parsing a line for a job failed");
                exit(EXIT_FAILURE);
            }

            if ( end==slot) {
                
                    if(start == 0){
                        size--;
                    } else{
                        jobNames[index] = job; // array holding the job titles
                        startTimes[index] = start; // array holding the start times
                        endTimes[index] = end; // array holding the end times
                        index++;
                    }

            }

        }

        fclose(fp);

    }//ends for loop


        int endTimeRef= endTimes[0];

        int finalSize= size;

        int indexFinal = 1;

        char finalArray[finalSize];
        finalArray[0] = jobNames[0];

        for(int i=1; i < size; i++){
            if(startTimes[i] > endTimeRef){
                finalArray[indexFinal] = jobNames[i];
                endTimeRef = endTimes[i];
                indexFinal++;
            } else{
                finalSize--;
            }
        }

        int refIndex= 0;


        for(int i=1; i < size; i++){
            if(endTimes[i] == endTimes[refIndex]){
                if(startTimes[i] < startTimes[refIndex] && startTimes[i] > endTimes[refIndex-1]){
                    finalArray[refIndex] = jobNames[i];
                    break;
                } else{
                    if(startTimes[i] == startTimes[refIndex]){
                        finalArray[refIndex] = jobNames[i];
                        break;
                    }
                }
            }
            refIndex++;

        }


        for(int i=0; i < finalSize; i++){
            printf("%c\n", finalArray[i]);
            
        }
        

    exit(EXIT_SUCCESS);
}
