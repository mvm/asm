
PRINTPRIME_EXEC=printprime
PRINTPRIME_OBJS=printprime.o primes.o

TESTSTR_EXEC = teststr
TESTSTR_OBJS = teststr.o string.o

EXEC=$(PRINTPRIME_EXEC) $(TESTSTR_EXEC)
OBJS=$(PRINTPRIME_OBJS) $(TESTSTR_OBJS)

.PHONY: clean all

%.o: %.s
	nasm -f elf64 -o $@ $<

all: $(EXEC)

$(PRINTPRIME_EXEC): $(PRINTPRIME_OBJS)
	$(CC) -o $@ $(PRINTPRIME_OBJS)

$(TESTSTR_EXEC): $(TESTSTR_OBJS)
	$(CC) -o $@ $(TESTSTR_OBJS)

clean:
	rm $(OBJS) $(EXEC)
