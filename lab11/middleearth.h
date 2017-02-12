#include <iostream>
#include <vector>
#include <string>
#include <map>

#ifndef MIDDLEEARTH_H
#define MIDDLEEARTH_H

using namespace std;

/*! @file */

/**
  * the world we have chosen is Middle-Earth, the location of J.R.R. Tolkien's Hobbit and Lord of the Rings 
  * books and movies. The middleearth.h and middleearth.cpp files, that you commented in the pre-lab, contain 
  * a class that will create a random 2-dimensional world. The "randomness" means that it will pick a given number 
  * of cities (or places), and randomly place them in the "world". You can travel from any city to any other city, 
  *for a given cost (the distance). The city names are all from the books and movies, and can be seen at the beginning 
  * of the middleearth.cpp file -- there is a textual description in the code as to what all the places are. The randomness 
  *of the world meeans that cities that are nowhere near each other in the books/movies might be right next to each other in the random world.
  */
class MiddleEarth {
private:
    int num_city_names;/*!< num_city_names refers to the number of cities in the middle_earth */
    int xsize; /*!< xsize is The width of the world which is assumed to be 20 */
    int ysize; /*!< ysize is The height of the world which is assumed to be 20 */                              
    vector<float> xpos; /*!< x coordinate/positions of a city */
    vector<float> ypos; /*!< y coordinate/positions of a city */
    vector<string> cities; /*!< a vector containing all the cities */
    float *distances; /*!< distance between two cities */
    map<string, int> indices; /*!< each indice represents a city */

public:
    /**
     * @brief This is the constructor that creates Middle-Earth, 
     * the location of J.R.R. Tolkien's Hobbit and Lord of the Rings books and movies.
     *
     * @param xsize The width of the world which is assumed to be 20
     * @param ysize The height of the world which is assumed to be 20
     * @param numcities The number of cities in the world. There are currently 40 names specified 
     * @param seed The random seed. If you specify a given number, the same world will be created each 
     * time -- we'll use this, below, when we talk about debugging. Supplying -1 will create a different random world each time the program is run.
     ***/
    MiddleEarth (int xsize, int ysize, int numcities, int seed);

    //! @brief A destructor.
    /*!
     * @brief Sauron, the destructor of Middle-Earth, destructs the middle-earth
     */
    ~MiddleEarth();

    /*!
     * @brief The Mouth of Sauron!  (prints out info on the created 'world')
     */
    void print();

    /*!
     *  @brief prints a tab-separated table of the distances (this can be loaded into Excel or similar)
     * will print out a table of the distances between all cities. 
     * Different random seeds will produce different tables
    */ 
    void printTable();

    /*!
     *  @brief This method returns the distance between the two passed cities.  If
     * we assume that the hash table (i.e. the map) is O(1), then this
     * method call is also O(1)
     * @return the distance between two cities
     * @param city1 a city from the long list of cities
     * @param city2 a city from the long list of cities
     */
    float getDistance (string city1, string city2);

    /** @brief Returns the list of cities to travel to.  
    *
    * The first city is the
    * original start point as well as the end point.  The number of
    * cities passed in does not include this start/end point (so there
    * will be length+1 entries in the returned vector).
    * @return a vector of the cities that you must visit
    * @param length number of cities to visit
    */
    vector<string> getItinerary(unsigned int length);
};

#endif
