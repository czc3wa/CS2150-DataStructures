// This program is the skeleton code for the lab 10 in-lab.  It uses
// C++ streams for the file input, and just prints out the data when
// read in from the file.

#include <iostream>
#include <fstream>
#include <sstream>
#include <stdlib.h>
#include <unordered_map>
#include "treeNode.h"
using namespace std;

/**
 *need to create a root node to pass in
 *need to create a string: prefix that is initialized to empty string
 *need to create a map of key:string value:string
 */
bool createTree(treeNode* x, string prefix, unordered_map<string, char> &map) {
    unordered_map<string,char>::iterator find;
    find = map.find(prefix);
    if (find != map.end()) {
        x->letter = find->second;
        x->right = NULL;
        x->left = NULL;
        return true;
    }
    treeNode* r = new treeNode();
    treeNode* l = new treeNode();
    x->right = r;
    x->left = l;
    createTree(x->left, prefix.append("0"), map);
    prefix.pop_back();
    createTree(x->right, prefix.append("1"), map);
    prefix.pop_back();
}


// main(): we want to use parameters
int main (int argc, char **argv) {
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file; must be opened in binary
    // mode, as otherwise whitespace is discarded
    ifstream file(argv[1], ifstream::binary);
    // report any problems opening the file and then exit
    if ( !file.is_open() ) {
        cout << "Unable to open file '" << argv[1] << "'." << endl;
        exit(2);
    }
    // read in the first section of the file: the prefix codes
    unordered_map<string, char> map;
    while ( true ) {
        string character, prefix;
        // read in the first token on the line
        file >> character;
        // did we hit the separator?
        if ( (character[0] == '-') && (character.length() > 1) )
            break;
        // check for space
        if ( character == "space" )
            character = " ";
        // read in the prefix code
        file >> prefix;
        // do something with the prefix code
        map[prefix] = character[0];
        
    }

    treeNode* root = new treeNode();
    string prefix = "";
    unordered_map<string, char> &myMap = map;
    
    /////////////create prefix tree//////////////////////////////
    createTree(root, prefix, myMap);
    //cout << "hi" <<endl;

    // cout << root->left->letter <<endl;
    // cout << root->right->left->left->letter <<endl;
    // cout << root->right->left->right->letter <<endl;
    // cout << root->right->right->letter <<endl;


    //cout << map.size() << endl;
    // read in the second section of the file: the encoded message
    stringstream sstm;
    while ( true ) {
        string bits;
        // read in the next set of 1's and 0's
        file >> bits;
        // check for the separator
        if ( bits[0] == '-' )
            break;
        // add it to the stringstream
        sstm << bits;
    }
    string allbits = sstm.str();

    //address of root node of prefix tree
    treeNode* rootAddress = root;
    //traverse tree to find character then reset
    for(int i = 0; i <= allbits.size(); i++) {
        if (root->right == NULL && root->left == NULL) {
            cout << root->letter;
            root = rootAddress;
        }
        if (allbits[i] == '1') {
            root = root->right;
        }
        if (allbits[i] == '0') {
            root = root->left;
        }

    }
    cout << endl;
    // at this point, all the bits are in the 'allbits' string
    //cout << "All the bits: " << allbits << endl;
    // close the file before exiting
    file.close();
}