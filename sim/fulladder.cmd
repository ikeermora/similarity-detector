| fulladder testbench
| sum = a xor b xor cin
| cout = majority(a,b,cin)

vector in a b cin
vector out sum cout

| 000 -> 00
set in 000
s 5
assert out 00

| 001 -> 10
set in 001
s 5
assert out 10

| 010 -> 10
set in 010
s 5
assert out 10

| 011 -> 01
set in 011
s 5
assert out 01

| 100 -> 10
set in 100
s 5
assert out 10

| 101 -> 01
set in 101
s 5
assert out 01

| 110 -> 01
set in 110
s 5
assert out 01

| 111 -> 11
set in 111
s 5
assert out 11