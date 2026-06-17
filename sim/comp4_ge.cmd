| comp4_ge testbench
| ge = 1 when a >= b

vector a_in a3 a2 a1 a0
vector b_in b3 b2 b1 b0

| 0000 >= 0000 -> 1
set a_in 0000
set b_in 0000
s 5
assert ge 1

| 0001 >= 0000 -> 1
set a_in 0001
set b_in 0000
s 5
assert ge 1

| 0000 >= 0001 -> 0
set a_in 0000
set b_in 0001
s 5
assert ge 0

| 0010 >= 0010 -> 1
set a_in 0010
set b_in 0010
s 5
assert ge 1

| 0011 >= 0100 -> 0
set a_in 0011
set b_in 0100
s 5
assert ge 0

| 0100 >= 0011 -> 1
set a_in 0100
set b_in 0011
s 5
assert ge 1

| 0111 >= 0111 -> 1
set a_in 0111
set b_in 0111
s 5
assert ge 1

| 0111 >= 1000 -> 0
set a_in 0111
set b_in 1000
s 5
assert ge 0

| 1000 >= 0111 -> 1
set a_in 1000
set b_in 0111
s 5
assert ge 1