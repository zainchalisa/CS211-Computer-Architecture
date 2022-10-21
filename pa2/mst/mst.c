#include "../graphutils.h" // header for functions to load and free adjacencyList

// A program to find the minimum spanning tree of a weighted undirected graph using Prim's algorithm

int main ( int argc, char* argv[] ) {

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode* adjacencyList;

    graphNode_t graphNodeCount = adjMatrixToList (argv[1], &adjacencyList); // path to input file containing adjacency matrix
    

    // An array that keeps track of who is the parent node of each graph node we visit
    // In Prim's algorithm, this parents array keeps track of what is the edge that connects a node to the MST.
    graphNode_t* parents = calloc( graphNodeCount, sizeof(graphNode_t) );
    for (size_t i=0; i<graphNodeCount; i++) {
        parents[i] = -1; // -1 indicates that a nodes is not yet visited; i.e., node not yet connected to MST.
    }

    graphNode_t root = rand()%graphNodeCount; // gives a random root to start the iteration through the tree from

    parents[root] = root;

    // Prim's algorithm:
    // A greedy algorithm that builds the minimum spanning tree.
    // For a graph with N nodes, the minimum spanning tree will have N-1 edges spanning all nodes.
    // Prim's algorithm starts with all nodes unconnected.
    // At each iteration of Prim's algorithm, the minimum weight node that connects an unconnected node to the connected set of nodes is added to the MST.

    for (unsigned iter=0; iter<graphNodeCount-1; iter++) { // this is iterating and forming the mst 

        double minWeight = DBL_MAX; // If we find an edge with weight less than this minWeight, and edge connects a new node to MST, then mark this as the minimum weight to beat.

        // DBL_MAX means the largest finite floating number

        graphNode_t minSource = -1; // the parent
        graphNode_t minDest = -1; // the current node or the destination it going

        for (graphNode_t source=0; source<graphNodeCount; source++) {
            if (parents[source]!= -1) { // if already visited

                AdjacencyListNode* current = adjacencyList[source].next;
        
        // list iterator
            while (current) { // while there is a neighbor

                if(current->weight < minWeight && parents[current->graphNode] == -1){
                    minWeight = current->weight;
                    minDest = current->graphNode;
                    minSource = source;
                    
                }

                current = current->next; // iterator moves to next
            
            }

            }
        
    }
        parents[minDest]=minSource; // we found the minimum weight // parent of the dest equals the minsource
        
    }

    // Using the fully populated parents array, print the edges in the MST.
    for(int i=0; i < graphNodeCount; i++){
        if(parents[i] != i){
            printf("%d %ld\n", i, parents[i]);
        }
    }

    
    free (parents);
    freeAdjList ( graphNodeCount, adjacencyList );

    return EXIT_SUCCESS;
}
