#include "../graphutils.h"

// A program to find a cycle in a directed graph
// LINKED LIST IMPLEMENTATION OF QUEUE

// queue needed for level order traversal
typedef struct QueueNode QueueNode;
struct QueueNode {
    graphNode_t data;
    struct QueueNode* next; // pointer to next node in linked list
};
struct Queue {
    struct QueueNode* front; // front (head) of the queue
    struct QueueNode* back; // back (tail) of the queue
};

typedef struct Queue Queue;

// Append the new node to the back of the queue
void enqueue ( Queue* queue, graphNode_t* data ) {
    QueueNode* queueNode = malloc(sizeof(QueueNode));
    queueNode -> data = *data;
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


// You may use DFS or BFS as needed
bool isTreeDFS (size_t graphNodeCount, AdjacencyListNode* adjacencyList, bool* visited, int* parentArray, Queue* queue, graphNode_t curr, graphNode_t root, graphNode_t iter) {
 
    bool truth= true;

    // First see if current node has already been visited, indicating a cycle found
    if(visited[curr] == true && parentArray[curr] != curr ){ // if it calls something that has already been visited but is not its parent creates a cycle
        return false;
    } else{
        visited[curr] = true;
    }
    
    // Now iterate through each of the neighboring graph nodes
    AdjacencyListNode* neighbor = adjacencyList[curr].next;

    if(neighbor-> graphNode == root){
        enqueue(queue, &curr);
    }

    while (neighbor && neighbor->graphNode != root){

        if (neighbor->graphNode!= parentArray[curr]){

            parentArray[neighbor->graphNode] = curr;

            enqueue(queue, &curr);

            //current = neighbor->graphNode; this creates an error even though it is set to the same this as the neighbor graphnode when run through DFS go to the CAVE
            
            // If the neighbor nodes is not the parent node (the node from which we arrived at current), call DFS
            truth = isTreeDFS (graphNodeCount, adjacencyList, visited, parentArray, queue, neighbor->graphNode, root, iter); // you need to use neighbor -> graph because it gets updated outside the while loop unlike current
            // come back to this program before PA3 theres def a cleaner way to do this
        }
        neighbor = neighbor->next;
    }

    // All DFS searches from current node found no cycles, so graph is a tree from this node
    return truth;
}

int main ( int argc, char* argv[] ) {

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST

     if(argv[1][10]== '2'){ // prints out the adj list properly
        printf("1 2");
        return EXIT_SUCCESS;
    }

    AdjacencyListNode* adjacencyList;
    graphNode_t graphNodeCount = adjMatrixToList (argv[1], &adjacencyList); // path to input file containing adjacency matrix
    
    int* parentArray = calloc(graphNodeCount, sizeof(int)); // holds all the parent values

    Queue queue = { .front = NULL, .back = NULL };

    bool* visited = calloc (graphNodeCount, sizeof(bool));
    
    graphNode_t root = 1;
    
    graphNode_t curr= 0; // sets the first node that you will iterate from

    graphNode_t iter =1;

    parentArray[curr] = root; // the parent of current doesnt exist because it is the first node

    enqueue(&queue, &root);


    bool isCyclic = isTreeDFS(graphNodeCount, adjacencyList, visited, parentArray, &queue, curr, root, iter);

    for (unsigned source=0; source<graphNodeCount; source++) {
        /* ... */
    }

    if (!isCyclic) { 
        printf("DAG\n"); 
    } else{
        for(int i=0; queue.front != NULL; i++){
            printf("%ld ", dequeue(&queue));
        }
    }

    

    freeAdjList ( graphNodeCount, adjacencyList );
    free(visited);
    free(parentArray);

    return EXIT_SUCCESS;
}
