#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <vector>
#include <algorithm>
#include <unordered_map>
using namespace std;

/*! @file */ 


/** @brief Prints out the classes in topological order after we have created an 
 * Adjacency Matrix 
 *
 * @return There is not return value for this function, we just print out the classes in topological order
 * @param numClasses The number of distinct classes that were given in the input file
 * @param aMatrix The Adjacency Matrix that we have computed in the main method
 * @param allClasses a vector of string that contains all distinct classes
 */

void TopologicalSort(int numClasses, vector<vector<int> > aMatrix, vector<string> allClasses) {
    /** The most outer for loop makes sure that each distinct class 
      * that is given in the output is printed out eventually.
      */
     for (int k = 0; k < numClasses; k++) {
        int col = 0;
        int row = 0;
        /**The next two for loops makes sure that we check each column from top to bottom
          */
        for (col = 0; col < numClasses; col++) {
            for (row = 0; row < numClasses; row++) {
                /** if we reach a 2 at the top row of a column, we can safely assume that that column has been
                   * previously printed out/deleted so we dont have to worry about it anymore
                   */
                if(aMatrix[row][col] == 2){
                    break;
                }
                /** if we ever reach a 1 in a column, we know that the indegree for that column/class is greater than 1 
                * so we can skip it and go to the next one.
                */
                else if (aMatrix[row][col] == 1) {
                    break;
                }

                /** if we get to the last row of a column and have only seen 0's, then it is safe to
                * say that the class representing the column has an indegree of 0. we print it out.
                * Then we make sure to delete all the outgoing arrows from that class.
                * also we "delete" the Whole column representing the class by making the first row of that column
                * a 2. Also, we set col equal to numClasses so we can start finding a new class of indegree
                * 0.
                */
                else if (row == numClasses - 1) {
                    //print out node with lowest indegree
                    cout << allClasses[col] << " ";
                    int tempRow = col;
                    for (int i = 0; i < numClasses; i++) {
                        if (aMatrix[tempRow][i] == 1) {
                            aMatrix[tempRow][i] = 0;
                        }
                    }
                    aMatrix[0][col] = 2;
                    col = numClasses;
                    break;
                }
            }   
        }
    }
    cout << endl;
}

int main (int argc, char **argv) {
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the one and only parameter" << endl;
        exit(1);
    }
    ifstream file(argv[1], ifstream::binary);
    if ( !file.is_open() ) {
        cout << "Unable to open file '" << argv[1] << "'." << endl;
        exit(2);
    }
    string s1, s2;
    vector<string> allClasses;
    // *
    // *this while loop makes sure that all distinct classes are inserted in a vector once!
    
    while(s1 != "0" && s2 != "0") {
        file >> s1;
        file >> s2;
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
    cout << allClasses.size() << endl;
    file.close();
    // *
    // *An unordered_map is used to store the corresponding class to its index in the vector that
    // *it was inserted to earlier
    
    unordered_map<string, int> map;
    for(int i = 0; i < allClasses.size(); i++){
        map[allClasses[i]] = i;
    }

    int numberOfClasses = map.size();

    ifstream file1(argv[1], ifstream::binary);
    string s3, s4;
    vector<vector<int> > aMatrix(numberOfClasses, vector<int>(numberOfClasses));
    unordered_map<string,int>::iterator find;
    while(s3 != "0" && s4 != "0") {
        file1 >> s3;
        file1 >> s4;
        if (s3 == "0" && s4 == "0") {
            break;
        }
        
        find = map.find(s3); //////**< finds value:index that corresponds to the key:class. */
        int index1 = find->second;
        find = map.find(s4); //////**< finds value:index that corresponds to the key:class. */
        int index2 = find->second;
        aMatrix[index1][index2] = 1;
    }
    TopologicalSort(numberOfClasses, aMatrix, allClasses);
    

    file1.close();

}