ID3= /home/sasl/shared/main3/env/tools
CC= g++
CFLAGS= -Wall -o id3v2 convert.o list.o id3v2.o genre.o -lib3 -lz
LDLIBS= convert.cpp create_map.cpp genre.cpp id3v2.cpp list.cpp
CLIBS= ${LDLIBS: .cpp=.o}

all: id3v2

id3v2: ${LDLIBS}
	CC -I ID3/include -DVERSION="\"${VERSION}\"" -c -o ${CLIBS} ${LDLIBS}
	CC -L ID3/lib CFLAGS
	
istall:
	cd ~/TP_solo
	mkdir bin
	cd EnvDev/tp-solo-githubines/id3v2-0.1.11/src
	cp -a id3v2 ~/TP_solo/bin/   
	mkdir man
	cd man
	mkdir man1
	cd ~/TP_solo/EnvDev/tp-solo-githubines/id3v2-0.1.11
	-nroff -man id3v2.1 > ~/TP_solo/man/man1/id3v2
	
distclean:
	-rm -f id3v2 id3v2.1
	

clean: 
	-rm -f ${CLIBS} id3v2  
.PHONY: clean 
