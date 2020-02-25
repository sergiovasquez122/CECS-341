.data
A: .word 0, 1, 2, 3, 4, 5
B: .word 0, 0, 0, 0, 0, 0
.text
li x5, 6 #m
li x6, 2 #n
la x10, A
la x11, B
li x7, 0  # i  
li x29, 0 # j

loopi:
		beq x7, x5, exit
		xor x29, x29, x29
loopj:
		beq x29, x6, ENDi
		slli x8, x7, 2
		add x9, x8, x10
		lw x12, 0(x9)
		slli x13, x29, 2
		add x12, x13, x12
		add x12, x12, x7
		add x9, x8, x11
		sw x12, 0(x9)
ENDj:
	addi x29, x29, 1
	beq x0,x0, loopj
ENDi:
	addi x7, x7, 1
	beq x0, x0, loopi
	exit:
		nop