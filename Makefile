TASK1_SRC := schedsim.c util.c
OBJS      := $(TASK1_SRC:.c=.o)
EXE       := schedsim
CC        := gcc
CFLAGS    := -Wall -Werror -pedantic -g -std=c99

.PHONY: all clean

all: $(EXE)

$(EXE): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXE) $(OBJS)
