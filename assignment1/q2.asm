.data
	prompt: .asciiz "enter first number\n"
	prompt2: .asciiz "enter second number\n"
	text: .asciiz "the sum is : "
	

.text

	li $v0, 4				#asks first no.
	la $a0, prompt
	syscall
	
	li $v0, 5				#reads no and store in $t0
	syscall 
	
	move $t0,$v0  				#move t0 number to v0 register
	
	li $v0, 4				#asks second no.
	la $a0, prompt2
	syscall
	
	li $v0, 5				#reads no and store in $t0
	syscall 
	move $t1,$v0
	
	li $v0, 4
	la $a0, text
	syscall
	
					#move v0 number to t0 register
	add $a0,$t1, $t0			# t2 = t1 + t0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	
	
	

	
