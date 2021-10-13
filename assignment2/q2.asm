.data
space : .asciiz ", "
msg : .asciiz "\n Loop ended!"
.text
main:
	addi $t0, $zero, 0			#this works as i for the while loop
	
	while:
		li $v0, 1
		la $a0, ($t0)			#we print the no.
		syscall
		
		add $t0, $t0, 1			#increment the register no.
		
		bgt $t0, 10, Exit		#check if the reg no. is greater than 10
		
		li $v0, 4
		la $a0, space			#to print spaces bw no.s
		syscall
		
		j while
	Exit:
		li $v0, 4
		la $a0, msg			#end message
		syscall
		
		li $v0, 10
		syscall				#ends the program
		 
		