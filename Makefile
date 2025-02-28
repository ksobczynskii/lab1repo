COMPLIER=g++

all: program_1

program_1: vars.o program_1.o libgreeter.a
	${COMPLIER} program_1.o vars.o -L. -lgreeter -o program_1

vars.o: vars.cpp
	${COMPLIER} -c vars.cpp -o vars.o

program_1.o: program_1.cpp
	${COMPLIER} -c program_1.cpp -o program_1.o

libgreeter.a: greeter.o
	ar rcs libgreeter.a greeter.o

greeter.o: greeter.cpp
	${COMPLIER} -c greeter.cpp -o greeter.o
.PHONY: clean

clean:
	rm -f program_1 vars.o program_1.o greeter.o libgreeter.a
