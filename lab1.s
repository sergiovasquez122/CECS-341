.data
array1: .word 1, 2, 3
.text
li x10, 0
la x22, array1
# Array[3] = Array[0] + (Array[1] * 2) + 45
# put your code here
lw x11, 0(x22)
lw x12, 4(x22)
add x12, x12, x12
addi x12, x12, 45
add x12, x12, x11
sw x12, 8(x22)
ecall