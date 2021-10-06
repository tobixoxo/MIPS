.data 
prompt : .asciiz "enter the numbers to be multiplied\n"
message : .asciiz "the result is : "

.text
main: 
li $v0, 4
la $a0, prompt
syscall

li $v0, 5
syscall
move $t0, $v0

li $v0, 5
syscall
move $t1, $v0

mul  $t2,$t0, $t1

li $v0, 4
la $a0, message
syscall

li $v0, 1
la $a0, ($t2)
syscall

li $v0, 10
syscall

