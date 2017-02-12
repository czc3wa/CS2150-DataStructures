#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>
#include "timer.h"
#include "hashTable.h"
#define MAXROWS 500
#define MAXCOLS 500

char grid[MAXROWS][MAXCOLS];

// Forward declarations
bool readInGrid (string filename, int &rows, int &cols);
char* getWordInGrid (int startRow, int startCol, int dir, int len,
                     int numRows, int numCols);
int dictionarySize (string filename);


int main (int argc, char* argv[]) {
	string dictionaryFile = argv[1];
	string gridFile = argv[2];

	//hash table size that has a load factor of .75
	int tbleSize = (4/3) * dictionarySize(dictionaryFile);
	//create a hashtable with size tbleSize
	hashtab(tbleSize)
	return 0;
}


/** This function will read in a grid file, as per the format in the
 * CS 2150 lab 6 document, into a global grid[][] array.  It uses C++
 * file streams, and thus requires the the <fstream> #include header.
 *
 * @return true or false, depending on whether the file was
 *         successfully opened.
 * @param filename The file name to read in -- it's assumed to be in
 *                 the file format described in the lab document.
 * @param rows The number of rows as specified in the input file;
 *             as this is a reference, it is set by the function.
 * @param cols The number of columnss as specified in the input file;
 *             as this is a reference, it is set by the function.
 */
bool readInGrid (string filename, int &rows, int &cols) {
    // a C++ string to hold the line of data that is read in
    string line;
    // set up the file stream to read in the file (takes in a C-style
    // char* string, not a C++ string object)
    ifstream file(filename.c_str());
    // upon an error, return false
    if ( !file.is_open() )
        return false;
    // the first line is the number of rows: read it in
    file >> rows;
    cout << "There are " << rows << " rows." << endl;
    getline (file,line); // eats up the return at the end of the line
    // the second line is the number of cols: read it in and parse it
    file >> cols;
    cout << "There are " << cols << " cols." << endl;
    getline (file,line); // eats up the return at the end of the line
    // the third and last line is the data: read it in
    getline (file,line);
    // close the file
    file.close();
    // convert the string read in to the 2-D grid format into the
    // grid[][] array.  In the process, we'll print the grid to the
    // screen as well.
    int pos = 0; // the current position in the input data
    for ( int r = 0; r < rows; r++ ) {
        for ( int c = 0; c < cols; c++ ) {
            grid[r][c] = line[pos++];
            cout << grid[r][c];
        }
        cout << endl;
    }
    // return success!
    return true;
}

int dictionarySize (string filename) {
	int sizeOfDict = 0;

	string line;
	ifstream file(filename.c_str());

	if ( !file.is_open() )
        return false;

    while (!file.eof()) {
    	sizeOfDict++;
    	getline(file,line);
    }

    file.close();

    return sizeOfDict;

}






/*QUESTIONS:

Place the timer calls before and after your code. 
Note that the time you spend building the hash table should not 
be inside the timer calls -- only the code that finds the words in the 
grid. An actual time from a running of your program should be listed as 
a comment at the top of wordPuzzle.cpp.

Do we have to implement the rehash methos for the prelab

how do we do second option?
how do we count how many number of elements are in the dictionary




*/