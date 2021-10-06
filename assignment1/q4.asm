.data
prompt : .asciiz "enter the numbers :\n"
message1 : .asciiz "the greater number is : "
message2 : .asciiz "both are same : "
.text 
main: 
	li $v0, 4
	la $a0, prompt		#prints the prompt
	syscall

	li $v0, 5		#takes int input
	syscall 

	move   $t0, $v0		#shifts to t0

	li $v0, 5
	syscall

	move $t1, $v0

	blt $t0, $t1, t1isgreat 	#branches off to appropriate condition
	bgt $t0, $t1, t0isgreat
	beq $t0, $t1, same




	li $v0 , 10
	syscall 		#endsfunction

t1isgreat:
	li $v0, 4 
	la $a0, message1
	syscall
	li $v0, 1
	la $a0, ($t1)
	syscall
	
	li $v0 , 10
	syscall 
	
t0isgreat:
	li $v0, 4 
	la $a0, message1
	syscall
	li $v0, 1
	la $a0, ($t0)
	syscall
	li $v0 , 10
	syscall 
	
same: 
    li $v0, 4
    la $a0, message2
    syscall
    li $v0, 1
    la $a0, ($t0)
    syscall
    li $v0, 10
    syscall
