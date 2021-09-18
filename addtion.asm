.data
	msg1: .asciiz "Enter the first number followed by enter: "
	msg2: .asciiz "Enter the second number followed by the enter: "
	msg3: .asciiz "The result of addition is: "

.text
.globl main
.ent main

main:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall

	move $t0, $v0

	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 5
	syscall
	
	move $t1, $v0

	add $s0, $t0, $t1

	li $v0, 4
	la $a0, msg3
	syscall 

	li $v0, 1
	move $a0, $s0
	syscall

	jr $ra

.end main
	
	