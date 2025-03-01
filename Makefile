COMPILER=g++
all: program_1 program_2

#buduje executable:
program_1: vars.o program_1.o libgreeter.a
	${COMPILER} program_1.o vars.o -L. -lgreeter -o program_1

program_2: program_2.o libgreeter.a librome.so
	${COMPILER} program_2.o -L. -lrome -lgreeter -o program_2

#pliki obiektowe potrzebne do execow i biblio:
vars.o: vars.cpp
	${COMPILER} -c vars.cpp -o vars.o

program_1.o: program_1.cpp
	${COMPILER} -c program_1.cpp -o program_1.o

greeter.o: greeter.cpp
	${COMPILER} -c greeter.cpp -o greeter.o

program_2.o: program_2.cpp
	${COMPILER} -c program_2.cpp -o program_2.o

rome.o: rome.cpp
	${COMPILER} -c rome.cpp -o rome.o

#biblioteki:
libgreeter.a: greeter.o
	ar rcs libgreeter.a greeter.o

librome.so: rome.o
	${COMPILER} -shared -o librome.so rome.o

.PHONY: clean

clean:
	rm -f program_1 vars.o program_1.o greeter.o libgreeter.a rome.o librome.so program_2.o program_2
