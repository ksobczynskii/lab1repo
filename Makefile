all: program_1

vars.o: vars.cpp
	g++ -c vars.cpp -o vars.o


program_1.o: program_1.cpp
	g++ -c program_1.cpp -o program_1.o


program_1: vars.o program_1.o
	g++ program_1.o vars.o -o program_1

.PHONY: clean

clean:
	rm-f program_1 vars.o program_1.o	
