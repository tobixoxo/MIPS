.data 
nameprompt : .asciiz "enter your name : \n"
salaryprompt : .asciiz "enter your salary : \n"
message : .asciiz " has a salary of Rs. "
Name : .space 25
.text

main: 
li $v0, 4
la $a0, nameprompt		#prompt
syscall

li $v0, 8
la $a0, Name
la $a1, 25
syscall



li $v0, 4
la $a0, salaryprompt		
syscall

li $v0, 5
syscall

move $t0, $v0

li $v0, 4
la $a0, Name			#name
syscall

li $v0, 4
la $a0, message			#has a salaray of 
syscall

li $v0, 1
la $a0, ($t0)			#salary amount
syscall

li $v0, 10
syscall





