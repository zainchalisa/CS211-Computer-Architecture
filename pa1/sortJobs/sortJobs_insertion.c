// C program to print a list of jobs sorted according to time
// Sorting is done using insertion sort
// Jobs are stored in sorted order using linked list

#include <stdio.h>
#include <stdlib.h>

struct node { // because of padding this is 16 bytes
    int time; // The time of the job, this is the index by which we will sort
    char job; // The letter name of the job
    struct node* next;
};

struct node* sorted_list_of_jobs = NULL;

void sorted_insert (
    unsigned int time,
    char job
) {

    // Allocate node
    struct node* new_node = (struct node*) malloc (sizeof(struct node));
    new_node->time = time;
    new_node->job = job;

    // Special case for empty list or if new node should be at front because it is the smallest time
    if ( sorted_list_of_jobs == NULL || time < sorted_list_of_jobs->time ) {
        // if the linked list is empty or if the node has to go at the beginning of the linked list
        new_node->next = sorted_list_of_jobs; // the -> derefrences 
        sorted_list_of_jobs = new_node;

    } else {

        struct node* current_node = sorted_list_of_jobs;

        // Locate the node before the point of insertion
        // Compare values of time
        while ( current_node->next!=NULL && current_node->next->time <= time ) {
            current_node = current_node->next;
        }
        // removes the node and inserts the new one in its position
        new_node->next = current_node->next;
        current_node->next = new_node;

    }
}

// Driver program to test above functions
int main(int argc, char* argv[])
{
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
    int jobcount = atoi(buf);

    // Next read the maximum number of timeslots
    if (!fscanf(fp, "%s\n", buf)) {
        perror("reading the number of timeslots failed");
        exit(EXIT_FAILURE);
    }
    // int timeslots = atoi(buf) // unused metadata

    // Now read the rest of the file
    for ( int line=0; line<jobcount; line++ ) {

        if (!fgets(buf, 256, fp)) {
            perror("reading a line for a job failed");
            exit(EXIT_FAILURE);
        }

        char job;
        unsigned int time;
        if (!sscanf(buf, "%c %d", &job, &time)) {
            perror("parsing a line for a job failed");
            exit(EXIT_FAILURE);
        }

        // add job and time to sorted linked list
        sorted_insert ( time, job );

    }

    // traverse as you go through the linked list and print as you go through
    struct node* current_node = sorted_list_of_jobs;

    while (current_node!=NULL) {
        struct node* temp = current_node;
        printf( "%c\n", temp->job );
        current_node = temp->next;
        free(temp);
    }

    fclose(fp);

    exit(EXIT_SUCCESS);
}


/*

**** NOTES****

Garabge Collector in Java vs Memory Storage in C
- The garbabge collector basically removes the memory from variables which don't have reference anymore (JAVA)
- In C since it doesn't have the system for garbage collection you need to free the variable or you will have memory leaks
- To do a memory check you can use the command valgrind "execute program"

*/
