
;Mutiplier

;Load data in D & E
mvi d, 205
mvi e, 41

;Load D in L and reset h
mov l, d
mvi h, 0

;Load D in C
mov c, d

;Decrease E in each loop and add D 
;(or B as an equivalent) to [H-L]
dcr e
jz not_adding
adding: dad b
	dcr e
	jnz adding
not_adding: nop

mov a, l
out 10H
mov a, h
out 18H

hlt

