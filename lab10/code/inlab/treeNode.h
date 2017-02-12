#ifndef TREENODE_H
#define TREENODE_H

#include <iostream>
using namespace std;

class treeNode {
public:
	treeNode();
	char letter;
	treeNode *left, *right;
};
#endif