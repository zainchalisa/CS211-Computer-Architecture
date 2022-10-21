#include <stdlib.h>
#include <stdio.h>

// A program to perform a LEVEL ORDER (BREADTH-FIRST) TRAVERSAL of a binary search tree

// BINARY SEARCH TREE

typedef struct BSTNode BSTNode;
struct BSTNode {
    int key;
    struct BSTNode* l_child; // nodes with smaller key will be in left subtree
    struct BSTNode* r_child; // nodes with larger key will be in right subtree
};

// Add new data to the BST using recursion
struct BSTNode* insert ( struct BSTNode* root, int key ) {

    // Base case: If the BSTNode here doesn't yet exist
    if (root==NULL) {
        root = malloc(sizeof(BSTNode));
        root->l_child = NULL;
        root->r_child = NULL;
        root->key = key;
    }

    // If the BSTNode already exists, then insert key in correct subtree
    if ( key<root->key ) {
        root->l_child = insert( root->l_child, key );
    } else if ( key==root->key ) {
        // duplicates are ignored
    } else { // key>root->key
        root->r_child = insert( root->r_child, key );
    }
    return root;
}

// Delete the BST using recursion
void delete_bst ( BSTNode* root ) {
    if ( root->r_child!=NULL ) {
        delete_bst (root->r_child);
    }
    if ( root->l_child!=NULL ) {
        delete_bst (root->l_child);
    }
    free(root);
}

// LINKED LIST IMPLEMENTATION OF QUEUE

// queue needed for level order traversal
typedef struct QueueNode QueueNode;
struct QueueNode {
    BSTNode* data;
    struct QueueNode* next; // pointer to next node in linked list
};
struct Queue {
    struct QueueNode* front; // front (head) of the queue
    struct QueueNode* back; // back (tail) of the queue
};

typedef struct Queue Queue;

// Append the new node to the back of the queue
void enqueue ( Queue* queue, BSTNode* data ) {

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
BSTNode* dequeue ( Queue* queue) {

    if (queue->front==NULL) { // If the Queue is currently empty
        return '\0';
    } else {

        // The QueueNode at front of the queue to be removed
        QueueNode* temp = queue->front;
        BSTNode* data = temp->data;

        queue->front = temp->next;
        if (queue->back==temp) { // If the Queue will become empty
            queue->back = NULL;
        }

        free(temp);
        return data;
    }
}


int main ( int argc, char* argv[] ) {

    // READ INPUT FILE TO CREATE BINARY SEARCH TREE
    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }
    BSTNode* root = NULL;
    int key;
    while ( fscanf(fp, "%d", &key)!=EOF ) {
        root = insert (root, key);
    }
    fclose(fp);

    

    // USE A QUEUE TO PERFORM LEVEL ORDER TRAVERSAL
    Queue Q = { .front=NULL, .back=NULL };

    BSTNode* currBSTNode = root;

    enqueue(&Q, currBSTNode);

    do {

        currBSTNode = Q.front -> data;

        if(currBSTNode-> l_child != NULL){
            enqueue(&Q, currBSTNode-> l_child);
        }

        if(currBSTNode -> r_child != NULL){
            enqueue(&Q, currBSTNode -> r_child);
        }

        BSTNode* val = dequeue(&Q);
        printf( "%d ", val -> key);
        

    } while ( Q.front != NULL);



    delete_bst(root);
    return EXIT_SUCCESS;
}
