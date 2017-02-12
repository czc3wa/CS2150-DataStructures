#include <iostream>

using namespace std;

/** @brief Computes the average of the two passed values.
 *
 * This function computes the average using the standard accepted
 * formula for doing so.
 * @return The average of the two passed values.
 * @param x The first value to average.
 * @param y The second value to average.
 * @todo Need to write acceptance tests for this function
 */

double average (double x, double y) {
    return (x+y)/2.0;
}

/** @brief Computes the Dung value
 *
 * This shit does whatever it wants
 * @return The Dung Value
 * @param fart whatever you want the boolean dung to be
 * @todo Need to do whatever this dung tells me to do
 */

bool dung(bool fart) {
	return (fart&&fart);
}

int main () {
    double a, b, c;
    cout << "Enter two different floating point numbers: " << endl;
    cin >> a >> b;
    c = average(a,b);
    cout << "The average of those numbers is " << c << endl;
    bool b = true;
    dung(b);
    return 0;
}

