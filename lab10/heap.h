//corey Chen lab107 11/21/2016

#ifndef HEAP_H
#define HEAP_H

#include <vector>
#include "huffNode.h"
#include <string>
#include <unordered_map>
using namespace std;

class binary_heap {
public:
    binary_heap();
    binary_heap(vector<huffNode*> vec);
    ~binary_heap();
    void insert(huffNode* node);
    huffNode* findMin();
    huffNode* deleteMin();
    huffNode* makePrefixTree();
    bool getPrefix(huffNode* x, string prefix, unordered_map<char, string> &map);
    unsigned int size();
    void makeEmpty();
    bool isEmpty();
    void print();
    // string prefix;
    // unordered_map map;

private:
    vector<huffNode*> heap;
    unsigned int heap_size;
    void percolateUp(int hole);
    void percolateDown(int hole);
};

#endif