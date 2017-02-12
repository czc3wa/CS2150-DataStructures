#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <algorithm>
#include <float.h>

using namespace std;

#include "middleearth.h"

/**
  *This method will compute the full distance of the cycle that starts
  *at the 'start' parameter, goes to each of the cities in the dests
  *vector IN ORDER, and ends back at the 'start' parameter.
  * @param me the MiddleEarth that is generated
  * @param start The start and End city
  * @param dests the vector of cities that need to traveled to with the least distance excluding the start city and end city
  * @return the shortest path length starting from the start city, traversing through the other cities and ending with the start city
  */
float computeDistance (MiddleEarth &me, string start, vector<string> dests);

/**
 * This method will print the entire route, starting and ending at the
 * 'start' parameter.  The output should be of the form:
 * Erebor -> Khazad-dum -> Michel Delving -> Bree -> Cirith Ungol -> Erebor
 * @param start The start and end city 
 * @param dests the vector of cities that need to traveled to with the least distance excluding the start city and end city
 */
void printRoute (string start, vector<string> dests);

int main (int argc, char **argv) {
    // check the number of parameters
    if ( argc != 6 ) {
        cout << "Usage: " << argv[0] << " <world_height> <world_width> "
             << "<num_cities> <random_seed> <cities_to_visit>" << endl;
        exit(0);
    }
    // we'll assume the parameters are all well-formed
    int width, height, num_cities, rand_seed, cities_to_visit;
    sscanf (argv[1], "%d", &width); // not needed for calculation
    sscanf (argv[2], "%d", &height); // not needed for calculation
    sscanf (argv[3], "%d", &num_cities);
    sscanf (argv[4], "%d", &rand_seed); // not needed for calculation
    sscanf (argv[5], "%d", &cities_to_visit);
    // Create the world, and select your itinerary
    MiddleEarth me(width, height, num_cities, rand_seed);
    MiddleEarth &midEar = me;
    vector<string> dests = me.getItinerary(cities_to_visit);
    // YOUR CODE HERE
    string startCity = dests[0];
    dests.erase(dests.begin());
    sort(dests.begin(), dests.end());
    float minTotalDistance = FLT_MAX;
    
        
    while ( std::next_permutation(dests.begin(),dests.end())) {
        float tmp = computeDistance(midEar, startCity, dests);
        if (tmp < minTotalDistance) {
            minTotalDistance = tmp;
	    
        }
    }
    

    while ( std::next_permutation(dests.begin(),dests.end())){
        float tmp = computeDistance(midEar, startCity, dests);
        if (tmp == minTotalDistance) {
            printRoute(startCity, dests);
	    break;

        }
    }
    // cout << dests.size() << endl;
    // int counter = 0;
    // while ( std::next_permutation(dests.begin(),dests.end())){
    //     cout << counter << endl;
    //     counter++;
    // }

    cout << "and will have length " << minTotalDistance << endl;

    return 0;
}

/**
 * This method will print the entire route, starting and ending at the
 * 'start' parameter.  The output should be of the form:
 * Erebor -> Khazad-dum -> Michel Delving -> Bree -> Cirith Ungol -> Erebor
 * @param start The start and end city 
 * @param dests the vector of cities that need to traveled to with the least distance excluding the start city and end city
 */
void printRoute (string start, vector<string> dests) {
    cout << "Your journey will take you along the path " << endl;
    cout << start << " -> ";
    for (int i = 0; i < dests.size(); i++) {
        cout << dests[i] << " -> ";
    }
    cout << start << endl;
}



/**
  *This method will compute the full distance of the cycle that starts
  *at the 'start' parameter, goes to each of the cities in the dests
  *vector IN ORDER, and ends back at the 'start' parameter.
  * @param me the MiddleEarth that is generated
  * @param start The start and End city
  * @param dests the vector of cities that need to traveled to with the least distance excluding the start city and end city
  * @return the shortest path length starting from the start city, traversing through the other cities and ending with the start city
  */
float computeDistance (MiddleEarth &me, string start, vector<string> dests) {
    float a = me.getDistance(start, dests[0]);
    //cout << a << endl;
    float b = 0;
    float sum = 0;
    for (int i = 0; i < dests.size()-1; i++) {
        float distance =  me.getDistance(dests[i], dests[i+1]);
        b = b + distance;
    }
    float c = me.getDistance(dests[dests.size()-1], start);
    //cout << c << endl;
    sum = a+b+c;
    //cout << sum << endl;
    return sum;
}


