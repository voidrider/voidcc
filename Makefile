CFLAGS=-std=c11 -g -static

voidcc: voidcc.c

test: voidcc
	./test.sh

clean:
	rm -f voidcc *.o *~ tmp*

.PHONY: test clean
