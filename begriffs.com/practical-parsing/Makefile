LDFLAGS = -lfl

OBJ_C = $(wildcard *.c)
OBJ = $(wildcard *.o)
BIN = catcot roman-lex


all: ${BIN}
	@echo all built
 
clean:
	rm -f ${BIN} ${OBJ} ${OBJ_C}

catcol.c: catcot.l
catcot.o: catcot.c
catcot: catcot.o

roman-lex.c: roman-lex.l
roman-lex.o: roman-lex.c
roman-lex: roman-lex.o
