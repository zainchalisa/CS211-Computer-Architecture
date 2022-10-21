#include "../graphutils.h" // header for functions to load and free adjacencyList

// A program to solve a maze that may contain cycles using BFS

// BFS requires using a queue data structure
typedef struct QueueNode {
    graphNode_t graphNode;
    struct QueueNode* next;
} QueueNode;

struct Queue {
    struct QueueNode* front; // front (head) of the queue
    struct QueueNode* back; // back (tail) of the queue
};
typedef struct Queue Queue;

// Append the new node to the back of the queue
void enqueue ( Queue* queue, unsigned char data ) {
    QueueNode* queueNode = malloc(sizeof(QueueNode));
    queueNode -> data = data;
    queueNode -> next = NULL; // At back of the queue, there is no next node.

    if (queue->back==NULL) { // If the Queue is currently empty
        queue->front = queueNode;
        queue->back = queueNode;
    } else {
        queue->back->next = queueNode;
        queue->back = queueNode;
    }

    return;
}

// Remove a QueueNode from the front of the Queue
graphNode_t dequeue ( Queue* queue ) {

    if (queue->front==NULL) { // If the Queue is currently empty
        return '\0';
    } else {

        // The QueueNode at front of the queue to be removed
        QueueNode* temp = queue->front;
        graphNode_t data = temp->data;

        queue->front = temp->next;
        if (queue->back==temp) { // If the Queue will become empty
            queue->back = NULL;
        }

        free(temp);
        return data;
    }
}

int main ( int argc, char* argv[] ) {

    // First, read the query file to get the source and target nodes in the maze
    /* ... */

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode* adjacencyList = NULL;
    size_t numNodes = adjMatrixToList (arg[1], &adjacencyList);

    // USE A QUEUE TO PERFORM BFS
    Queue queue = { .front=NULL, .back=NULL };

    // An array that keeps track of who is the parent node of each graph node we visit
    graphNode_t* parents = calloc( numNodes, sizeof(graphNode_t) );
    for (size_t i=0; i<graphNodeCount; i++) {
        parents[i] = -1; // -1 indicates that a nodes is not yet visited
    }

    graphNode_t current = source;

    while ( current != target ) {

        // so long as we haven't found the target node yet, iterate through the adjacency list
        // add each neighbor that has not been visited yet (has no parents) to the queue of nodes to visit
        /* ... */
        AdjecencyListNode* neighbor = adjacencyList[current].next;
        while( neighbor){

            if(parents[neighbor] != -1){
                parents[neighbor->graphNode] = current;
                enqueue(&queue, neighbor->graphNode);
            }

            parents[neighbor->graphNode] = current; // gets the parent by using current since that is the node you are traversing through
            enqueue(&queue, neighbor-> graphNode); // put the elements on the queue and keeps track of what you have to visit
            neighbor = neighbor->next;
        }

        // Visit the next node at the front of the queue of nodes to visit
        /* ... */

        current = dequeue(&queue);

    }

    // Now that we've found the target graph node, use the parent array to print maze solution
    // Print the sequence of edges that takes us from the source to the target node
    /* ... */

    while (){
        graphNode_t theParent= parents[current];
        printf("%d\n", theParent);
        current = theParent;
    }

    // free any queued graph nodes that we never visited because we already solved the maze
    while ( queue.front ) {
        dequeue(&queue);
    }
    free (parents);
    freeAdjList ( graphNodeCount, adjacencyList );

    return EXIT_SUCCESS;
}
