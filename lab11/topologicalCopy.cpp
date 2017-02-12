#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <vector>
#include <algorithm>
#include <unordered_map>
using namespace std;

// we want to use parameters
int main (int argc, char **argv) {
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the one and only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file
    ifstream file(argv[1], ifstream::binary);
    // report any problems opening the file and then exit
    if ( !file.is_open() ) {
        cout << "Unable to open file '" << argv[1] << "'." << endl;
        exit(2);
    }
    // read in two strings
    string s1, s2;
    vector<string> allClasses;
    while(s1 != "0" && s2 != "0") {
        file >> s1;
        file >> s2;
        // output those strings
        if (s1 == "0" && s2 == "0") {
            break;
        }
        if(find(allClasses.begin(), allClasses.end(), s1) == allClasses.end()) {
            allClasses.push_back(s1);
        }
        if(find(allClasses.begin(), allClasses.end(), s2) == allClasses.end()) {
            allClasses.push_back(s2);
        }

    }
    file.close();

    unordered_map<string, int> map;
    for(int i = 0; i < allClasses.size(); i++){
        map[allClasses[i]] = i;
    }

    ifstream file1(argv[1], ifstream::binary);
    string s3, s4;
    vector<vector<int> > aMatrix(map.size(), vector<int>(map.size()));
    //fill_n( aMatrix, map.size()*map.size(), 0 );
    unordered_map<string,int>::iterator find;
    while(s3 != "0" && s4 != "0") {
        file1 >> s3;
        file1 >> s4;
        if (s3 == "0" && s4 == "0") {
            break;
        }
        find = map.find(s3);
        //finds value:index that corresponds to the key:class
        int index1 = find->second;
        find = map.find(s4);
        //finds value:index that corresponds to the key:class
        int index2 = find->second;
        aMatrix[index1][index2] = 1;
    }
    
    for (int k = 0; k < map.size(); k++) {
        int col = 0;
        int row = 0;
        for (col = 0; col < map.size(); col++) {
            for (row = 0; row < map.size(); row++) {
                //skip a previously deleted column/class that was already printed
                if(aMatrix[row][col] == 2){
                    break;
                }
                //has an indegree greater than 0, go to next class to see if it's ndegree is 0
                else if (aMatrix[row][col] == 1) {
                    break;
                }
                else if (row == map.size() - 1) {
                    //print out node with lowest indegree
                    cout << allClasses[col] << " ";
                    int tempRow = col;
                    for (int i = 0; i < map.size(); i++) {
                        if (aMatrix[tempRow][i] == 1) {
                            aMatrix[tempRow][i] = 0;
                        }
                    }
                    //makes sure that the column/classNode is "deleted" from the
                    //matrix
                    aMatrix[0][col] = 2;
                    col = map.size();
                    break;
                }
            }   
        }
    }
    cout << endl;

    file1.close();

}





