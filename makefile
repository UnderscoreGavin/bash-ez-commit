NAME = gk
OBJECTS = git.o
all: ${OBJECTS}
	g++ -v ${OBJECTS} -o ${NAME}
	sudo chmod +x ${NAME}
	sudo cp ${NAME} /usr/bin/${NAME}
clean:
	rm -r *.o ${NAME} /usr/bin/${NAME}
*.o: *.cc

*.cpp:
	g++ -shared -Wall -Werror -fPIC *.cc -o *.o
