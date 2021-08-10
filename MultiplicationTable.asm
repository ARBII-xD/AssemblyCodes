.data
	msg1:	.asciiz "ENTER THE INTEGER TO BE MULTIPLATED: "
	msg2:	.asciiz "MULTIPLATED WHAT TIMES: "
	msg3:	.asciiz "MULTIPLICATION DONE..."
.text
.globl main
.ent main

main:
	li $v0,4			#preparing msg1 for display
	la $a0,msg1
	syscall
	
	li $v0,5			#taking input from user and stored to $v0
	syscall
	move $t1,$v0			#move input value to the $t1 register



	li $v0,4			#preparing msg2 for display
	la $a0,msg2
	syscall
	
	li $v0,5			#taking input from user and stored to $v0
	syscall
	move $t2,$v0			#move input value to the $t2 register
	


	addi $t0, $s0, 0
LOOP:	
	slti $t7, $t0, 11
	beq $t7,$t2, EXIT
	jal printNumber
	addi $t0, $t0, 1
	j LOOP	

EXIT:
	li $v0,4
	la $a0,msg3			#Display the output
	syscall
	
	jr $ra
 


printNumber: 
	li $v0,1
	mul $a0, $t1, $t0
	syscall


	li $v0,1
	move $a0, $t1
	syscall


#	li $v0,4
#	la $a0, $t4				#Display the output
#	syscall

	jr $ra


.end main