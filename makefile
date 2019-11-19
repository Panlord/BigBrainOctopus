# Defining Makefile variables
# Use Makefile variables = $(<var_name>)
CC = g++
DEV=-Wall -g -std=c++14
OPT=-O3 -std=c++14

JSON=json.hpp

default: 
	g++ -c main.cpp

ReadJSONFile: main.o
	g++ -std=c++14 -o READJSONFile main.o

main.o: main.cpp json.hpp
	g++ -std=c++14 -c main.cpp

# Cleaner
clean:
	rm -f *.o
	rm -rf *.dSYM
	rm ReadJSONFile