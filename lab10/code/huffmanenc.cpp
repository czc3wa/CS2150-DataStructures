//corey Chen lab107 11/21/2016
#include <iostream>
// stdlib.h is where exit() lives
#include <stdlib.h>
#include <vector>
#include "huffNode.h"
#include "heap.h"
#include <string>
#include <unordered_map>

using namespace std;

// include the standard I/O library
#include <stdio.h>

// we want to use parameters
int main (int argc, char **argv) {
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the one and only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file.  FILE is a type desgined to
    // hold file pointers.  The first parameter to fopen() is the
    // filename.  The second parameter is the mode -- "r" means it
    // will read from the file.
    FILE *fp = fopen(argv[1], "r");
    // if the file wasn't found, output and error message and exit
    if ( fp == NULL ) {
        cout << "File '" << argv[1] << "' does not exist!" << endl;
        exit(2);
    }
    // read in each character, one by one.  Note that the fgetc() will
    // read in a single character from a file, and returns EOF when it
    // reaches the end of a file.
    char g;
    vector<int> vec(95);
    int symbol = 0;
    //make a vector of 95 spots and increment each spot  corresponding to its 
    //ascii value - 32
    while ( (g = fgetc(fp)) != EOF ) {
        //ignore invalid chars
        if ((g-32) >= 0 && (g-32) < 95) {
            ++ vec[g-32];
            symbol++;
        }
    }
    //cout << symbol << endl;
    //cout << vec[' ' - 32] << endl;
    fclose(fp);

    //convert vec to a vector with no zero nodes
    int charSum = 0;
    vector<huffNode*> CharNodes;
    for(int i = 0; i < vec.size(); i++) {
        if (vec[i] > 0) {
            ++charSum;
            huffNode *temp = new huffNode(vec[i], ((char) (i+32)));
            CharNodes.push_back(temp);
        }
    }

    

    binary_heap *hp = new binary_heap(CharNodes);

    // numer of symbols
    int sum1 = 0;
    for (int i = 0; i < CharNodes.size(); i++) {
        sum1 += CharNodes[i]->priority;
    }

    int numberOfSymbols = CharNodes.size();
    //cout << numberOfSymbols << endl;

    //copy vector: CharNodes
    vector<huffNode*> nodeCopy(numberOfSymbols);
    for (int i = 0; i < CharNodes.size(); i++) {
        huffNode *temp = new huffNode(CharNodes[i]->priority, CharNodes[i]->letter);
        nodeCopy[i] = temp;
    }
    //make the prefix tree
    hp->makePrefixTree();


    unordered_map<char, string> map;
    unordered_map<char, string> &myMap = map;
    string prefix;
    //get prefixes
    hp->getPrefix(hp->findMin(), prefix, myMap);
    //cout << map.size() << endl;


    //////open file to read in  AGAIN TO CONVERT TO PREFIX CODE
    cout << "----------------------------------------" <<endl;
    FILE *fpp = fopen(argv[1], "r");

    unordered_map<char,string>::iterator find1;
    while ( (g = fgetc(fpp)) != EOF ) {
        find1 = map.find(g);
        string q = find1->second;
        cout << q << " ";
    }
    cout << endl;
    fclose(fpp);


    cout << "----------------------------------------" <<endl;
    cout << "There are a total of " << sum1 << " symbols that are encoded." <<endl;
    cout << "There are " << numberOfSymbols <<" distinct symbols used." <<endl;
    cout << "There were " << sum1*8 << " bits in the original file." <<endl;
    unordered_map<char,string>::iterator find;
    int sum2 = 0;
    for (int i = 0; i < numberOfSymbols; i++){
        int p = nodeCopy[i]->priority;
        find = map.find(nodeCopy[i]->letter);
        int q = find->second.size();
        int product = p*q;
        sum2 += product;
    }

    cout << "There were " << sum2 <<  " bits in the compressed file." << endl;
    cout << "This gives a compression ratio of " << (double)(sum1*8)/(double)(sum2) << endl;
    cout << "The cost of the Huffman tree is " <<  (double)sum2/(double)sum1 <<  " bits per character." <<endl;
    //cout << hp->size() <<endl;
    //cout << hp->findMin()->right->right->left->priority << endl;
    //cout << hp->findMin()->right->right->right->left->priority << endl;
    //cout << hp->findMin()->right->right->right->lefZAt->letter << endl;

    return 0;
}









