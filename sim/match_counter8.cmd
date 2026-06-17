| debug match_counter8 one test at a time

vector min m7 m6 m5 m4 m3 m2 m1 m0

| Test A: zero ones
set min 00000000
s 5

| Test B: one one
set min 00000001
s 5

| Test C: two ones
set min 00000011
s 5

| Test D: four ones
set min 00001111
s 5

| Test E: eight ones
set min 11111111
s 5