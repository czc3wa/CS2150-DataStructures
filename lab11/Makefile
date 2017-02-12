#corey Chen lab107 11/21/2016
# This Makefile shows how to link assembly with C/C++

# Defines the C++ compiler we'll be using
CXX = clang++ -m64 

# Defines the flags we'll be passing to the C++ compiler
CXXFLAGS    = -Wall -w -g -std=c++11

# All of the .o files for decoder
OFILES  = traveling.o middleearth.o 

DOXYGEN = doxygen

# This tells make to create a .o file from a .cpp file, using the
# defaults above (i.e. the CXX and CXXFLAGS macros)
.SUFFIXES: .o .cpp

# How to compile our final program.  Note that we do NOT specify an
# output executable name -- in order for this to work with the grading
# system, the file needs to be a.out (a.exe in Cygwin).
main: 	$(OFILES)
	$(CXX) $(CXXFLAGS) $(OFILES)
		$(DOXYGEN) Doxyfile