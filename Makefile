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
BOOST_HPATH = /usr/local/boost_1_61_0
#LIBS = -L/usr/local/boxeost_1_61_0/stage/lib -lboost_regex

all: app

${SOURCE}.o: ${SOURCE}.cpp
	g++ -I ${BOOST_HPATH} -c -o ${SOURCE}.o ${SOURCE}.cpp ${CFLAGS}

app: ${SOURCE}.o
	g++ -o app ${SOURCE}.o ${CFLAGS} ${LIBS}

clean:
	rm -rf *.o ./app
