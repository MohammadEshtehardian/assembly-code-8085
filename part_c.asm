;PWM Creator
in 00H
mov b, a
mvi a, 255
sub b
mov c, a

mvi h, 100

LOOP: mvi a, 0
out 01H
mov d, b
LOOP1:  dcr d
	jnz LOOP1
mvi a, 1
out 01H
mov d, c
LOOP2:  dcr d
	jnz LOOP2
dcr h
jnz LOOP

hlt











