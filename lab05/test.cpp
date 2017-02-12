#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>
using namespace std;

bool readInDictionary (string filename);


int main (int argc, char* argv[]) {
	string dictionaryFile = argv[1];
	// gridFile = argv[2];
	readInDictionary (dictionaryFile);

	return 0;
}

bool readInDictionary (string filename) {
	int sizeOfDict = 0;

	string line;
	ifstream file(filename.c_str());

	if ( !file.is_open() )
        return false;

    while (!file.eof()) {
    	sizeOfDict++;
    	getline(file,line);
    }
    cout << sizeOfDict << endl;

    file.close();

    return true;

}
