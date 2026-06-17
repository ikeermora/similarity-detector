| xnor8 testbench
| m[i] = x[i] xnor w[i]

vector xin x7 x6 x5 x4 x3 x2 x1 x0
vector win w7 w6 w5 w4 w3 w2 w1 w0
vector mout m7 m6 m5 m4 m3 m2 m1 m0

| ---- Test 1: equal vectors ----
set xin 10101010
set win 10101010
s 5
assert mout 11111111

| ---- Test 2: opposite vectors ----
set xin 10101010
set win 01010101
s 5
assert mout 00000000

| ---- Test 3: mixed case ----
set xin 11001100
set win 11110000
s 5
assert mout 11000011

| ---- Test 4: another mixed case ----
set xin 00001111
set win 00110011
s 5
assert mout 11000011