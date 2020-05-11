


IDIR =../include
CC=gcc
CFLAGS=

ODIR=bin

LIBS=-lm

_DEPS = list.h 
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = test.o list.o 
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

test: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~