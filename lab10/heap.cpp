//corey Chen lab107 11/21/2016

#include <iostream>
#include "heap.h"
#include <limits.h>
using namespace std;

// default constructor
binary_heap::binary_heap() : heap_size(0) {
    heap.push_back(0);
}

//builds a heap from an unsorted vector
binary_heap::binary_heap(vector<huffNode*> vec) : heap_size(vec.size()) {
    heap = vec;
    heap.push_back(heap[0]);
    heap[0] = 0;
    for ( int i = heap_size/2; i > 0; i-- )
    //for ( int i = 1; i <= heap_size; i++ )
        percolateDown(i);
}

// the destructor doesn't need to do much
binary_heap::~binary_heap() {
}

huffNode* binary_heap::makePrefixTree() {
    while(heap.size() > 2) {
        huffNode* leftChild = deleteMin();
        int leftPriority = leftChild->priority;

        huffNode* rightChild = deleteMin();
        int rightPriority = rightChild->priority;

        int totalPriority = leftPriority + rightPriority;
        huffNode* internal = new huffNode(leftChild, rightChild, totalPriority);

        insert(internal);
    }
}

//use a char/string map
bool binary_heap::getPrefix(huffNode* x, string prefix, unordered_map<char, string> &map) {
    if(x->right == NULL && x->left == NULL) {
        if(x->letter == ' '){
            cout << "space " << prefix << endl;
            map[' '] = prefix;
            return true;
        }
        else {
            cout << x->letter << " " << prefix << endl;
            map[x->letter] = prefix;
            return true;
        }
    }
    getPrefix(x->left, prefix.append("0"), map);
    prefix.pop_back();
    getPrefix(x->right, prefix.append("1"), map);
    prefix.pop_back();

}

huffNode* binary_heap::deleteMin() {
    // make sure the heap is not empty
    if ( heap_size == 0 )
        throw "deleteMin() called on empty heap";
    // save the value to be returned
    huffNode* ret = heap[1];
    // move the last inserted position into the root
    heap[1] = heap[heap_size--];
    // make sure the vector knows that there is one less element
    heap.pop_back();
    // percolate the root down to the proper position
    percolateDown(1);
    // return the old root node
    // cout << ret->letter << endl;
    // cout << ret->priority << endl;
    return ret;
}

void binary_heap::insert(huffNode* x) {
    // a vector push_back will resize as necessary
    heap.push_back(x);
    // move it up into the right position
    percolateUp(++heap_size);
}

void binary_heap::percolateDown(int hole) {
    // get the value to percolate down
    int x = heap[hole]->priority;
    huffNode* r = heap[hole]->right;
    huffNode* l = heap[hole]->left;
    char y = heap[hole]->letter;
    // while there is a left child...
    while ( hole*2 <= heap_size ) {
        int child = hole*2; // the left child
        // is there a right child?  if so, is it lesser?
        if ( (child+1 <= heap_size) && (heap[child+1]->priority < heap[child]->priority) )
            child++;
        // if the child is greater than the node...
        if ( x > heap[child]->priority ) {
            heap[hole]->priority = heap[child]->priority; // move child up
            heap[hole]->letter = heap[child]->letter;
            heap[hole]->right = heap[child]->right;
            heap[hole]->left = heap[child]->left;

            hole = child;             // move hole down
        } else
            break;
    }
    // correct position found!  insert at that spot
    heap[hole]->priority = x;
    heap[hole]->letter = y;
    heap[hole]->right = r;
    heap[hole]->left = l;
}


void binary_heap::percolateUp(int hole) {
    // get the value just inserted
    int x = heap[hole]->priority;
    char y = heap[hole]->letter;
    huffNode* r = heap[hole]->right;
    huffNode* l = heap[hole]->left;
    // while we haven't run off the top and while the
    // value is less than the parent...
    for ( ; (hole > 1) && (x < heap[hole/2]->priority); hole /= 2 ) {
        // move the parent down
        heap[hole]->priority = heap[hole/2]->priority;
        heap[hole]->letter = heap[hole/2]->letter; 
        heap[hole]->right = heap[hole/2]->right;
        heap[hole]->left = heap[hole/2]->left;
    }
    
    // correct position found!  insert at that spot
    heap[hole]->priority = x;
    heap[hole]->letter = y;
    heap[hole]->right = r;
    heap[hole]->left = l;
}


huffNode* binary_heap::findMin() {
    if ( heap_size == 0 )
        throw "findMin() called on empty heap";
    return heap[1];
}

unsigned int binary_heap::size() {
    return heap_size;
}

void binary_heap::makeEmpty() {
    heap_size = 0;
}

bool binary_heap::isEmpty() {
    return heap_size == 0;
}

void binary_heap::print() {
    // cout << "(" << heap[0] << ") ";
    // for ( int i = 1; i <= heap_size; i++ ) {
    //     cout << heap[i]->letter << " ";
    //     // next line from from http://tinyurl.com/mf9tbgm
    //     bool isPow2 = (((i+1) & ~(i))==(i+1))? i+1 : 0;
    //     if ( isPow2 )
    //         cout << endl << "\t";
    // }
    // cout << endl;
    for (int i = 1; i <= heap_size; i++) {
        cout << heap[i]->priority << " ";
        cout << heap[i]->letter <<endl;
    }
}