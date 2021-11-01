.data 
prompt: .asciiz "enter the no. : "

true: .asciiz "yes it is a prime!" 
false: .asciiz "No it is NOT a prime "

.text
main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0		#the no. to be checked = t1
	
	add $t1 ,$zero, 2		#the no. with whiih we start OR the iterator
	
	beq $t0, 1, No		#if the no. is 1 we say NO
	beq $t0, 3, Yes		#if the no. is 2
	beq $t0, 2, Yes		#if the no. is 3
	while:
		beq $t0, $t1, Yes
		rem $t2,$t0,$t1
		
		beq $t2,0, No
		
		add $t1, $t1, 1
		
		j while
	

No:
	li $v0, 4
	la $a0, false
	syscall
	
	li $v0, 10
	syscall
Yes: 
li $v0, 4
	la $a0, true
	syscall
	
	li $v0, 10
	syscall
	
