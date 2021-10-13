.data
prompt: .asciiz "enter the number uptil which you want the sum : "

msg : .asciiz "the sum is : "

.text
main: 
	li $v0, 4
	la $a0, prompt				#prompt
	syscall

	li $v0, 5
	syscall					#takes the no. input

	move $t0, $v0				#n is $t0
	add $t1, $zero, 1			#works as i for while loop
	add $t2, $zero, 0			#this is RESULT
	while: 
		
		bgt $t1, $t0, sum		
		add $t2, $t2, $t1		#add t1 in result(t2)	
		add $t1, $t1, 1			#increment t1

		j while
		
	sum: 
		li $v0, 4
		la $a0, msg			#prints msg
		syscall
		
		li $v0, 1
		la $a0, ($t2)			#prints the sum
		syscall
		
		li $v0, 10			#ends the function
		syscall
	
		


