; Pad Frame arrangement file
; Modified for 8-bit XNOR similarity detector

celllibrary iopads-ami05.jelib

cell chip

views sch

; IMPORTANT:
; Change this if your core cell is not named mips8.
; For example, use: core detector_core
core core

align pad_corner      dvdd-1 dvdd
align pad_in          dvdd-1 dvdd
align pad_out         dvdd-1 dvdd
align pad_analog      dvdd-1 dvdd
align pad_dvdd        dvdd-1 dvdd
align pad_dgnd        dvdd-1 dvdd

; top edge, starting with upper-right
place pad_corner
place pad_out dout=out export pad=out
place pad_in din=x7 export pad=x7
place pad_in din=x6 export pad=x6
place pad_in din=x5 export pad=x5
place pad_in din=x4 export pad=x4
place pad_in din=x3 export pad=x3
place pad_in din=x2 export pad=x2
place pad_in din=x1 export pad=x1
place pad_in din=x0 export pad=x0
place pad_dvdd

; left edge
rotate cc
place pad_corner
place pad_in din=w7 export pad=w7
place pad_in din=w6 export pad=w6
place pad_in din=w5 export pad=w5
place pad_in din=w4 export pad=w4
place pad_in din=w3 export pad=w3
place pad_in din=w2 export pad=w2
place pad_in din=w1 export pad=w1
place pad_in din=w0 export pad=w0
place pad_dgnd
place pad_dvdd

; bottom edge
rotate cc
place pad_corner
place pad_in din=b3 export pad=b3
place pad_in din=b2 export pad=b2
place pad_in din=b1 export pad=b1
place pad_in din=b0 export pad=b0
place pad_dgnd
place pad_dvdd
place pad_dgnd
place pad_dvdd
place pad_dgnd
place pad_dvdd

; right edge
rotate cc
place pad_corner
place pad_dgnd
place pad_dvdd
place pad_dgnd
place pad_dvdd
place pad_dgnd
place pad_dvdd
place pad_dgnd
place pad_dvdd
place pad_dgnd export pad=GND
place pad_dvdd export pad=VDD