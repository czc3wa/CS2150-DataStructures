//corey Chen lab107 11/21/2016

#ifndef HUFFNODE_H
#define HUFFNODE_H

#include <iostream>
using namespace std;


class huffNode {
public:
	huffNode(); 
    huffNode(int priority, char letter);
    huffNode(huffNode *left, huffNode *right, int priority);
// private:
// 	friend class heap;
    int priority;
    char letter;
    huffNode *right, *left;
};
#endif

