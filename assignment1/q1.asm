.data
 Name: .asciiz  "Sanjeev Singh Rawat\n"
 Department: .asciiz "Computer Science Engineering\n"		#asciiz for character
 Rollno : .word 20103128					#stores integer
 
 
.text
li $v0, 4							#print string
la $a0, Name
syscall

li $v0, 4
la $a0, Department
syscall

li $v0, 1							#print integer
lw $a0, Rollno

syscall
