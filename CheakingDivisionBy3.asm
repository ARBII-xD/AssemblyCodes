.data
msg1: .asciiz "Enter any number followed by enter: "
msg2: .asciiz "\nYes it is divisible by 3  "
msg3: .asciiz "No it is not divisible by 3  "
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

	li $t1, 3
	div $t0, $t1
	mfhi $t3
	beq $t3, $0 goto

	li $v0 , 4
	la $a0, msg3
	syscall
	j end

goto:
	li $v0, 4
	la $a0, msg2
	syscall

end:

	jr $ra
.end main