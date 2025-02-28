# Compiler
CC = gcc
CFLAGS = -Wall -Wextra -O2
SRC = hmm.c
OBJ = $(SRC:.c=.o)

# Static library name 
STATIC_LIB = libhmm.a

# Dynamic library name 
DYNAMIC_LIB = libhmm.so

.PHONY: all static dynamic debug clean

all: static dynamic

static: $(STATIC_LIB)

dynamic: $(DYNAMIC_LIB)

debug: CFLAGS += -g
debug: clean all

$(STATIC_LIB): $(OBJ)
	ar rcs $(STATIC_LIB) $(OBJ)

$(DYNAMIC_LIB): $(OBJ)
	$(CC) -shared -o $(DYNAMIC_LIB) $(OBJ)

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -fPIC -c $(SRC)

clean:
	rm -f $(OBJ) $(STATIC_LIB) $(DYNAMIC_LIB)

