#**********************
#*
#* Progam Name: MP1. Membership Protocol.
#*
#* Current file: Makefile
#* About this file: Build Script.
#* 
#***********************

CFLAGS =  -Wall -g -std=c++11
SOURCE = main

all: app

${SOURCE}.o: ${SOURCE}.cpp
	g++ -I -c -o ${SOURCE}.o ${SOURCE}.cpp ${CFLAGS}

app: ${SOURCE}.o
	g++ -o app ${SOURCE}.o ${CFLAGS} ${LIBS}

clean:
	rm -rf *.o ./app
