CC = g++
CFLAGS = -c -g
LDFLAGS = -g
SRC = ${wildcard vm/*.cc}
HDR = ${wildcard include/*.hh}
OBJ = ${SRC:.c=.o}
EXEC = bbvm

all: ${SRC} ${OBJ} ${EXEC}

debug: all
debug: CFLAGS += -DDEBUG

${EXEC}: ${OBJ}
	${CC} ${LDFLAGS} $^ -o $@

%.o: %.c ${HDR}
	${CC} ${CFLAGS} $< -o $@

clean:
	rm vm/*.o ${EXEC}
