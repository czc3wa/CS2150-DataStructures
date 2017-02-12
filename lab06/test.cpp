#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>
#include "timer.h"
#include "hashTable.h"
#define MAXROWS 500
#define MAXCOLS 500
using namespace std;

char grid[MAXROWS][MAXCOLS];

// Forward declarations
bool readInGrid (string filename, int &rows, int &cols);
char* getWordInGrid (int startRow, int startCol, int dir, int len,
                     int numRows, int numCols);
int dictionarySize (string filename);
bool readInDictionary (string filename, hashTab *htPointer);


int main (int argc, char* argv[]) {
    timer timeR;

	string dictionaryFile = argv[1];
	string gridFile = argv[2];

	//hash table size that has a load factor of .75
	unsigned int tbleSize = (4/3) * dictionarySize(dictionaryFile);
	//create a hashtable with size tbleSize
	hashTab hTable = hashTab(tbleSize);
    hashTab *htPointer = &hTable;
    readInDictionary(dictionaryFile, htPointer);


    cout << hTable.find("app")<< endl;


    // to hold the number of rows and cols in the input file
    int rows, cols;
    // attempt to read in the file
    bool result = readInGrid (gridFile, rows, cols);
    // if there is an error, report it
    if ( !result ) {
        cout << "Error reading in file!" << endl;
        exit(1); // requires the <stdlib.h> #include header!
    }
    cout << endl;
    int numWordsFound = 0;
    timeR.start(); 

    for (int r = 0; r < rows; r++) {
        for (int c = 0; c < cols; c++) {
            for (int d = 0; d < 8; d++) {
                string previous = "zzzzzzzzz"; 
                for (int l = 3; l <= (min(rows, cols)); l++) {
                    if (hTable.find(getWordInGrid(r,c,d,l,rows,cols)) && getWordInGrid(r,c,d,l,rows,cols) != previous) {
                        numWordsFound++;
                        
                        if (d == 1) {
                            cout << "NE (" << r << ", " << c << "):    " << getWordInGrid(r,c,d,l,rows,cols) << endl;
                        }

                        else if (d == 1) {
                            cout << "NE (" << r << ", " << c << "):    " << getWordInGrid(r,c,d,l,rows,cols) << endl;
                        }

                        else if (d == 2) {
                            cout << "E (" << r << ", " << c << "):    " << getWordInGrid(r,c,d,l,rows,cols) << endl;
                        }

                        else if (d == 3) {
                            cout << "SE (" << r << ", " << c << "):    " << getWordInGrid(r,c,d,l,rows,cols) << endl;
                       	}

                        else if (d == 4) {
                            cout << "S (" << r << ", " << c << "):    " << getWordInGrid(r,c,d,l,rows,cols) << endl;
                        }

                        else if (d == 5) {
                            cout << "SW (" << r << ", " << c << "):    " << getWordInGrid(r,c,d,l,rows,cols) << endl;
                        }

                        else if (d == 6) {
                            cout << "W (" << r << ", " << c << "):    " << getWordInGrid(r,c,d,l,rows,cols) << endl;
                        }

                        else {
                            cout << "NW (" << r << ", " << c << "):    " << getWordInGrid(r,c,d,l,rows,cols) << endl;
                        }
                        previous = getWordInGrid(r,c,d,l,rows,cols);
                    }      
                }
            }
        }
    }

    timeR.stop();

    cout << timeR << endl;
    cout << numWordsFound << endl;

	return 0;
}

bool readInDictionary (string filename, hashTab *htPointer) {
    string line;
    ifstream file(filename.c_str());

    if ( !file.is_open() )
        return false;

    while (!file.eof()) {
        file >> line;
        htPointer->insert(line);
        getline(file,line);
    }

    file.close();

    return true;
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

char* getWordInGrid (int startRow, int startCol, int dir, int len,
                     int numRows, int numCols) {
    // the static-ness of this variable prevents it from being
    // re-declared upon each function invocataion.  It also prevents it
    // from being deallocated between invocations.  It's probably not
    // good programming practice, but it's an efficient means to return
    // a value.
    static char output[256];
    // make sure the length is not greater than the array size.
    if ( len >= 255 )
        len = 255;
    // the position in the output array, the current row, and the
    // current column
    int pos = 0, r = startRow, c = startCol;
    // iterate once for each character in the output
    for ( int i = 0; i < len; i++ ) {
        // if the current row or column is out of bounds, then break
        if ( (c >= numCols) || (r >= numRows) || (r < 0) || (c < 0) )
            break;
        // set the next character in the output array to the next letter
        // in the grid
        output[pos++] = grid[r][c];
        // move in the direction specified by the parameter
        switch (dir) { // assumes grid[0][0] is in the upper-left
            case 0:
                r--;
                break; // north
            case 1:
                r--;
                c++;
                break; // north-east
            case 2:
                c++;
                break; // east
            case 3:
                r++;
                c++;
                break; // south-east
            case 4:
                r++;
                break; // south
            case 5:
                r++;
                c--;
                break; // south-west
            case 6:
                c--;
                break; // west
            case 7:
                r--;
                c--;
                break; // north-west
        }
    }
    // set the next character to zero (end-of-string)
    output[pos] = 0;
    // return the string (a C-style char* string, not a C++ string
    // object)
    return output;
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


