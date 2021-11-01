.data 

prompt: .asciiz "enter the operation : \n 1 for addition \n 2 for multiplication \n 3 for subtraction \n 4 for div : "
msg1 : .asciiz "enter the integer 1 : " 
msg2 : .asciiz "\nenter the second integer : "

output : .asciiz "\nthe result is : "

.text
main:
	li $v0, 4
	la $a0, prompt 			#prints prompt
	syscall
	
	li $v0, 5			#asks for instructioni
	syscall
	
	move $t2, $v0
	
	li $v0, 4
	la $a0, msg1			#asks int 1 
	syscall	
	
	la $v0, 5			#stores int 1
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg2			#asks int 2
	syscall	
	
	la $v0, 5			#stores int 2
	syscall
	
	move $t1, $v0			#t1 = int1 and t2 = int2
	
	beq $t2, 1, addition
	beq $t2, 3, subtraction
	beq $t2, 2, multiplication
	beq $t2, 4, division
	
addition:
	li $v0, 4
	la $a0, output
	syscall
	
	add $t2, $t0, $t1
	
	li $v0, 1			
	la $a0, ($t2)
	syscall
	
	j exit
	
multiplication:
	li $v0, 4
	la $a0, output
	syscall
	
	mul $t2, $t0, $t1
	
	li $v0, 1
	la $a0, ($t2)
	syscall
	
	j exit
	
subtraction:
	li $v0, 4
	la $a0, output
	syscall
	
	sub $t2, $t0, $t1
	
	li $v0, 1
	la $a0, ($t2)
	syscall
	
	j exit
	
division:
	li $v0, 4
	la $a0, output
	syscall
	
	div $t2, $t0, $t1
	
	li $v0, 1
	la $a0, ($t2)
	syscall
	
	j exit
exit: 
	li $v0, 10
	syscall
	
	
	
	
	
	
