#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

// Selection sort based approach to sorting jobs

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
    int jobcount = atoi(buf); // scans first line which is the job count

    // Next read the maximum number of timeslots
    if (!fscanf(fp, "%s\n", buf)) {
        perror("reading the number of timeslots failed");
        exit(EXIT_FAILURE);
    }
    int timeslots = atoi(buf); // scans the second line which is the maximum time

    // We've read the number of timeslots so close the file and start over
    fclose(fp);

    for (unsigned int slot=0; slot<timeslots; slot++) { // reads all the jobs but it takes 40 times because it is fetching every time slot

        FILE* fp = fopen(argv[1], "r");
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
        for ( int line=0; line<jobcount; line++ ) {

            if (!fgets(buf, 256, fp)) {
                perror("reading a line for a job failed");
                exit(EXIT_FAILURE);
            }

            char job;
            unsigned int end;
            if (!sscanf(buf, "%c %d", &job, &end)) {
                perror("parsing a line for a job failed");
                exit(EXIT_FAILURE);
            }

            if ( end==slot ) { // if the end time matches the current time slot then it prints the job. That way it prints the smallest end time first ro rhw largest end time
                printf("%c\n", job);
            }

        }

        fclose(fp);

        

    }

    exit(EXIT_SUCCESS);
}
