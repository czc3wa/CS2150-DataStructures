//corey Chen lab107 11/21/2016
#include <iostream>
#include "huffNode.h"
using namespace std;

huffNode::huffNode() {
	right = NULL;
	left = NULL;
}
huffNode::huffNode(int p, char l) {
	priority = p;
	letter = l; 
	right = NULL;
	left = NULL;
}

huffNode::huffNode(huffNode *l, huffNode *r, int p) {
	right = r;
	left = l;
	priority = p;
	letter = '&';
}