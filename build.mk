LDFLAGS = -lfl

OBJ_C = $(wildcard *.c)
OBJ = $(wildcard *.o)


all: ${BIN}
	@echo all built
 
clean:
	rm -f ${BIN} ${OBJ} ${OBJ_C}
