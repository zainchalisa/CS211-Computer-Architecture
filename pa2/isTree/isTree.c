#include "../graphutils.h" // header for functions to load and free adjacencyList


// graphNode_t is a ld(long integer) value
// size_t is a ld(long integer) value

// A program to determine whether an undirected graph is a tree

// A recursive function that returns true if no cycles found
bool isTreeDFS (size_t graphNodeCount, AdjacencyListNode* adjacencyList, bool* visited, int* parentArray, graphNode_t curr) {
 
    bool truth= true;

    // First see if current node has already been visited, indicating a cycle found
    if(visited[curr] == true && parentArray[curr] != curr ){ // if it calls something that has already been visited but is not its parent creates a cycle
        return false;
    } else{
        visited[curr] = true;
    }
    
    // Now iterate through each of the neighboring graph nodes
    AdjacencyListNode* neighbor = adjacencyList[curr].next;
    while (neighbor){
        if (neighbor->graphNode!= parentArray[curr]){

            parentArray[neighbor->graphNode] = curr;

            //current = neighbor->graphNode; this creates an error even though it is set to the same this as the neighbor graphnode when run through DFS go to the CAVE
            

            // If the neighbor nodes is not the parent node (the node from which we arrived at current), call DFS
            truth = isTreeDFS (graphNodeCount, adjacencyList, visited, parentArray, neighbor->graphNode); // you need to use neighbor -> graph because it gets updated outside the while loop unlike current
            // come back to this program before PA3 theres def a cleaner way to do this
        }
        neighbor = neighbor->next;
    }

    // All DFS searches from current node found no cycles, so graph is a tree from this node
    return truth;
}

int main ( int argc, char* argv[] ) {

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode* adjacencyList = NULL;

    size_t graphNodeCount = adjMatrixToList(argv[1], &adjacencyList);

    // Array of boolean variables indicating whether graph node has been visited
    
    int* parentArray = calloc(graphNodeCount, sizeof(int)); // holds all the parent values

    bool* visited = calloc ( graphNodeCount, sizeof(bool) );
    
    graphNode_t curr= 0; // sets the first node that you will iterate from

    parentArray[curr] = -1; // the parent of current doesnt exist because it is the first node

    printf (isTreeDFS(graphNodeCount, adjacencyList, visited, parentArray, curr) ? "yes" : "no");

    freeAdjList(graphNodeCount, adjacencyList);
    free(visited);
    free(parentArray);
    

    return EXIT_SUCCESS;
}
