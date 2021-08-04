.data
	msg1:	.asciiz "ENTER THE INTEGER: "
.text
.globl main
.ent main

main:	

	li $v0,4				#preparing msg1 for display
	la $a0,msg1
	syscall
	
	li $v0,5				#taking input from user and stored to $v0
	syscall
	move $t1,$v0				#move input value to the $t1 register

	addi $16,$s0,0				#initializing the loop variable in $16 register
LOOP:	
	slt $8,$16,$t1				#compare the loop variable to the user's input
	beq $8,0,Exit				#if loop variable reaches the user's input, the loop will break

	add $t2,$t2,$16				# $t2 = $t2 + $16								
	addi $16,$16,1				# $16 +=1

	j LOOP

Exit:	add $t2,$t2,$16				#final summed value is on $t2

	li $v0,4
	la $a0,msg1				#Display the output
	syscall

	li $v0,1
	move $a0,$t2
	syscall

	jr $ra

.end main