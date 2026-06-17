| halfadder testbench
| sum = a xor b
| carry = a & b

vector in a b
vector out sum carry

| 00 -> 00
set in 00
s 5
assert out 00

| 01 -> 10
set in 01
s 5
assert out 10

| 10 -> 10
set in 10
s 5
assert out 10

| 11 -> 01
set in 11
s 5
assert out 01