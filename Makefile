ifndef CC
CC=gcc
CFLAGS= -Wall -Wextra -Wpedantic -std=c11
endif
LD=$(CC)

PROJECTNAME=Test_FreeDcmTest

ODIR=build

LIBS= -I Dependencies  -lm

SOURCE=$(shell find . -follow -name "*.c")

all: $(OBJ)
	mkdir -p $(ODIR)
	$(CC) $(CFLAGS) $(LIBS) $(SOURCE) -o $(ODIR)/$(PROJECTNAME)

clean:
	rm -f $(ODIR) 
