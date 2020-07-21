CFLAGS=-std=c11 -g -static

voidcc: voidcc.cpp

test: voidcc
	./test.sh

clean:
	rm -f voidcc *.o *~ tmp*

.PHONY: test clean
