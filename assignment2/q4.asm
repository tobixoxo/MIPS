.data
prompt: .asciiz "enter the number : "
yes : "\nthe number is a PALINDROME!"
no : "\nthe is number is NOT a palindrome"

.text

main: 
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 5 			#input for the no.
	syscall
	
	move $t0, $v0			#the number is in t0
	add $t1, $t0, $zero		#the copy of num
	add $t2, $zero, 0		#the result is initially zero
	
	while: 
		beq $t1, 0, check 	#loop ends when num is zero
		
		rem $t3, $t1, 10	#t3 = t1%10
		
		mul $t2, $t2, 10	#t2 = t2*10
		
		add $t2, $t2, $t3	#t2 = t2*10 + t1%10
		
		div $t1, $t1, 10	#t1 = t1/10 dividing by 10
		
		j while
		
	check:
		beq $t2, $t0 , printyes #branches to printyess if palindrome
		li $v0, 4
		la $a0, no
		syscall
		
		li $v0, 10		#ends the program
		syscall
	printyes:
		li $v0, 4
		la $a0, yes
		syscall
		
		li $v0, 10	#ends the program before returning to check
		syscall
		
		
		