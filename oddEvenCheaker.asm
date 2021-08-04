.data
	msg1:	.asciiz "ENTER THE INTEGER: "
	msg2:	.asciiz "NUMBER IS ODD "
	msg3:	.asciiz "NUMBER IS EVEN "
.text
.globl main
.ent main
main:	li $v0,4			#preparing msg1 for display
	la $a0,msg1
	syscall
	
	li $v0,5			#taking input from user and stored to $v0
	syscall
	move $t1,$v0			#move input value to the $t1 register

	addi $t2,$s0,2			#$t2 +=2
	div $t1,$t2			#$t1/$t2
	mfhi $t3			#storing remainder into $t3

	beq $t3,$s0,EVEN		#if $t3==even, takes to EVEN label
	
	li $v0,4			#else, Number is ODD
	la $a0,msg2
	syscall
	jr $ra

EVEN:
	li $v0,4
	la $a0,msg3
	syscall
	jr $ra
	
.end main
	