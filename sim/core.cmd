| core/chip testbench
| scalar-only version
| out = 1 when number of matches between x and w is >= b
| No vector/set commands used

| ------------------------------------------------
| x7 visual sanity check
| This is only to prove that x7 can go low and high
| ------------------------------------------------

l x7
s 20
assert x7 0

h x7
s 20
assert x7 1

l x7
s 20
assert x7 0

h x7
s 20
assert x7 1


| ------------------------------------------------
| Test 1: perfect match, threshold 8
| x = 10101010
| w = 10101010
| b = 1000
| matches = 8, so 8 >= 8 -> out = 1
| ------------------------------------------------

h x7
l x6
h x5
l x4
h x3
l x2
h x1
l x0

h w7
l w6
h w5
l w4
h w3
l w2
h w1
l w0

h b3
l b2
l b1
l b0

s 20
assert out 1


| ------------------------------------------------
| Test 2: perfect match, threshold 7
| x = 10101010
| w = 10101010
| b = 0111
| matches = 8, so 8 >= 7 -> out = 1
| ------------------------------------------------

h x7
l x6
h x5
l x4
h x3
l x2
h x1
l x0

h w7
l w6
h w5
l w4
h w3
l w2
h w1
l w0

l b3
h b2
h b1
h b0

s 20
assert out 1


| ------------------------------------------------
| Test 3: no matches, threshold 1
| x = 10101010
| w = 01010101
| b = 0001
| matches = 0, so 0 >= 1 -> out = 0
| ------------------------------------------------

h x7
l x6
h x5
l x4
h x3
l x2
h x1
l x0

l w7
h w6
l w5
h w4
l w3
h w2
l w1
h w0

l b3
l b2
l b1
h b0

s 20
assert out 0


| ------------------------------------------------
| Test 4: no matches, threshold 0
| x = 10101010
| w = 01010101
| b = 0000
| matches = 0, so 0 >= 0 -> out = 1
| ------------------------------------------------

h x7
l x6
h x5
l x4
h x3
l x2
h x1
l x0

l w7
h w6
l w5
h w4
l w3
h w2
l w1
h w0

l b3
l b2
l b1
l b0

s 20
assert out 1


| ------------------------------------------------
| Test 5: four matches, threshold 4
| x = 11110000
| w = 11111111
| b = 0100
| matches = 4, so 4 >= 4 -> out = 1
| ------------------------------------------------

h x7
h x6
h x5
h x4
l x3
l x2
l x1
l x0

h w7
h w6
h w5
h w4
h w3
h w2
h w1
h w0

l b3
h b2
l b1
l b0

s 20
assert out 1


| ------------------------------------------------
| Test 6: four matches, threshold 5
| x = 11110000
| w = 11111111
| b = 0101
| matches = 4, so 4 >= 5 -> out = 0
| ------------------------------------------------

h x7
h x6
h x5
h x4
l x3
l x2
l x1
l x0

h w7
h w6
h w5
h w4
h w3
h w2
h w1
h w0

l b3
h b2
l b1
h b0

s 20
assert out 0


| ------------------------------------------------
| Test 7: five matches, threshold 5
| x = 11101001
| w = 11111111
| b = 0101
| matches = 5, so 5 >= 5 -> out = 1
| ------------------------------------------------

h x7
h x6
h x5
l x4
h x3
l x2
l x1
h x0

h w7
h w6
h w5
h w4
h w3
h w2
h w1
h w0

l b3
h b2
l b1
h b0

s 20
assert out 1


| ------------------------------------------------
| Test 8: five matches, threshold 6
| x = 11101001
| w = 11111111
| b = 0110
| matches = 5, so 5 >= 6 -> out = 0
| ------------------------------------------------

h x7
h x6
h x5
l x4
h x3
l x2
l x1
h x0

h w7
h w6
h w5
h w4
h w3
h w2
h w1
h w0

l b3
h b2
h b1
l b0

s 20
assert out 0


| ------------------------------------------------
| Test 9: one match, threshold 1
| x = 10000000
| w = 11111111
| b = 0001
| matches = 1, so 1 >= 1 -> out = 1
| ------------------------------------------------

h x7
l x6
l x5
l x4
l x3
l x2
l x1
l x0

h w7
h w6
h w5
h w4
h w3
h w2
h w1
h w0

l b3
l b2
l b1
h b0

s 20
assert out 1


| ------------------------------------------------
| Test 10: one match, threshold 2
| x = 10000000
| w = 11111111
| b = 0010
| matches = 1, so 1 >= 2 -> out = 0
| ------------------------------------------------

h x7
l x6
l x5
l x4
l x3
l x2
l x1
l x0

h w7
h w6
h w5
h w4
h w3
h w2
h w1
h w0

l b3
l b2
h b1
l b0

s 20
assert out 0


| ------------------------------------------------
| Test 11: seven matches, threshold 7
| x = 11111110
| w = 11111111
| b = 0111
| matches = 7, so 7 >= 7 -> out = 1
| ------------------------------------------------

h x7
h x6
h x5
h x4
h x3
h x2
h x1
l x0

h w7
h w6
h w5
h w4
h w3
h w2
h w1
h w0

l b3
h b2
h b1
h b0

s 20
assert out 1


| ------------------------------------------------
| Test 12: seven matches, threshold 8
| x = 11111110
| w = 11111111
| b = 1000
| matches = 7, so 7 >= 8 -> out = 0
| ------------------------------------------------

h x7
h x6
h x5
h x4
h x3
h x2
h x1
l x0

h w7
h w6
h w5
h w4
h w3
h w2
h w1
h w0

h b3
l b2
l b1
l b0

s 20
assert out 0


| ------------------------------------------------
| Test 13: two matches, threshold 2
| x = 10101010
| w = 10010101
| b = 0010
| matches = 2, so 2 >= 2 -> out = 1
| ------------------------------------------------

h x7
l x6
h x5
l x4
h x3
l x2
h x1
l x0

h w7
l w6
l w5
h w4
l w3
h w2
l w1
h w0

l b3
l b2
h b1
l b0

s 20
assert out 1


| ------------------------------------------------
| Test 14: two matches, threshold 3
| x = 10101010
| w = 10010101
| b = 0011
| matches = 2, so 2 >= 3 -> out = 0
| ------------------------------------------------

h x7
l x6
h x5
l x4
h x3
l x2
h x1
l x0

h w7
l w6
l w5
h w4
l w3
h w2
l w1
h w0

l b3
l b2
h b1
h b0

s 20
assert out 0


| ------------------------------------------------
| Test 15: six matches, threshold 6
| x = 11001100
| w = 11111100
| b = 0110
| matches = 6, so 6 >= 6 -> out = 1
| ------------------------------------------------

h x7
h x6
l x5
l x4
h x3
h x2
l x1
l x0

h w7
h w6
h w5
h w4
h w3
h w2
l w1
l w0

l b3
h b2
h b1
l b0

s 20
assert out 1


| ------------------------------------------------
| Test 16: six matches, threshold 7
| x = 11001100
| w = 11111100
| b = 0111
| matches = 6, so 6 >= 7 -> out = 0
| ------------------------------------------------

h x7
h x6
l x5
l x4
h x3
h x2
l x1
l x0

h w7
h w6
h w5
h w4
h w3
h w2
l w1
l w0

l b3
h b2
h b1
h b0

s 20
assert out 0


| ------------------------------------------------
| Test 17: x7 mismatch only, threshold 8
| x = 00101010
| w = 10101010
| matches = 7, so 7 >= 8 -> out = 0
| This proves x7 affects the result.
| ------------------------------------------------

l x7
l x6
h x5
l x4
h x3
l x2
h x1
l x0

h w7
l w6
h w5
l w4
h w3
l w2
h w1
l w0

h b3
l b2
l b1
l b0

s 20
assert x7 0
assert out 0


| ------------------------------------------------
| Test 18: perfect match with x7 = 0, threshold 8
| x = 00101010
| w = 00101010
| matches = 8, so 8 >= 8 -> out = 1
| This proves x7 can be 0 and still work correctly.
| ------------------------------------------------

l x7
l x6
h x5
l x4
h x3
l x2
h x1
l x0

l w7
l w6
h w5
l w4
h w3
l w2
h w1
l w0

h b3
l b2
l b1
l b0

s 20
assert x7 0
assert w7 0
assert out 1


| ------------------------------------------------
| Test 19: w7 mismatch only, threshold 8
| x = 10101010
| w = 00101010
| matches = 7, so 7 >= 8 -> out = 0
| This proves w7 also affects the result.
| ------------------------------------------------

h x7
l x6
h x5
l x4
h x3
l x2
h x1
l x0

l w7
l w6
h w5
l w4
h w3
l w2
h w1
l w0

h b3
l b2
l b1
l b0

s 20
assert x7 1
assert w7 0
assert out 0