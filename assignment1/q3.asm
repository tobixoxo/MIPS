.data
	num1 : .word 15
	num2 :.word 10

.text
	lw $s0, num1  			#num1 is loaded into s0 register
	lw $s1, num2 			#num2 is loaded into s1 register
	
	sub $t0,$s0, $s1
	
	li $v0, 1
	move $a0, $t0			#or la $a0, $t0
	syscall
