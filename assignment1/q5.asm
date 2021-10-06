.data
prompt: .asciiz "enter the numbers\n"
message : .asciiz "result : "

.text
main:
li $v0, 4		#output string
la $a0, prompt
syscall

li $v0, 5		#takes integer as an input
syscall
move $t0, $v0

li $v0, 5		#other int input
syscall
move $t1, $v0

div $s0, $t0, $t1	#division and storing in $s0 register

li $v0, 4
la $a0, message
syscall

li $v0, 1
add $a0, $zero, $s0
syscall

li $v0, 10		#ends the function
syscall
