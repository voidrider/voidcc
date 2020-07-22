#!/bin/bash
assert() {
    expected="$1"
    input="$2"

    ./voidcc "$input" > tmp.s
    cc -o tmp tmp.s
    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
	echo "$input => $actual"
    else
	echo "$input => $expected expected, but got $actual"
	exit 1
    fi
}

assert 20 5+5+5+5
assert 2 8-7+1
assert 48 59-11
assert 1 1

echo OK
