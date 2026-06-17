| adder4 testbench
| output = number of 1s in (a,b,c,d)

vector in a b c d
vector out s2 s1 s0

| 0000 -> 000
set in 0000
s 5
assert out 000

| 0001 -> 001
set in 0001
s 5
assert out 001

| 0011 -> 010
set in 0011
s 5
assert out 010

| 0111 -> 011
set in 0111
s 5
assert out 011

| 1111 -> 100
set in 1111
s 5
assert out 100

| 1010 -> 010
set in 1010
s 5
assert out 010

| 1101 -> 011
set in 1101
s 5
assert out 011