//Corey Chen CZC3WA LifeCycle.h 08/30/2016

#ifndef LIFECYCLE_H
#define LIFECYCLE_H


// ---------------------------------------------------  class definition
class MyObject {
public:
    static int numObjs;
    MyObject(const char *n = "--default--");      // default constructor
    MyObject(const MyObject& rhs);                // copy constructor
    ~MyObject();                                  // destructor
    string getName() const {
        return name;
    }
    void setName(const string newName) {
        name = newName;
    }
    friend ostream& operator<<(ostream& output, const MyObject& obj);

private:
    string name;
    int id;

};

#endif
