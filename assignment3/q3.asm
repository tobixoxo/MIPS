.data
prompt: .asciiz "enter the startlimit : "
prompt2 : .asciiz "enter the endLimit : "
dummy : .asciiz " "

.text
main : 
li $v0, 4
la $a0, prompt
syscall
li $v0, 5		
syscall
move $t4, $v0		#start limit t4

li $v0, 4
la $a0, prompt2
syscall
li $v0, 5		
syscall
move $t5, $v0		#end limit t5
			
loop:
	bgt $t4, $t5, exit 		# when the loop ends
	add $t0, $t4, $zero		#the no. to be checked = t0
	add $t1 ,$zero, 2  		# the iterator
	beq $t0, 1, No		#if the no. is 1 we say NO
	beq $t0, 3, Yes		#if the no. is 2
	beq $t0, 2, Yes		#if the no. is 3
	while:
		beq $t0, $t1, Yes
		rem $t2,$t0,$t1
		beq $t2,0, No
		add $t1, $t1, 1
		j while
	j loop
No:
	add $t4, $t4, 1
	j loop
Yes: 
	li $v0, 1
	la $a0, ($t4)
	syscall
	li $v0, 4
	la $a0, dummy
	syscall
	add $t4, $t4, 1
	j loop
	
exit :
	li $v0, 10
	syscall

