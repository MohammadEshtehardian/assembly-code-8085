
;Create delay

mvi d, 8

start: lxi b, 0FFFFh
loop: dcx b
      mov a, b
      ora c
      jnz loop

dcr d
jnz start

lxi b, 9042
loop1: dcx b
      mov a, b
      ora c
      jnz loop1

hlt

