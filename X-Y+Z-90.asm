.data
	msg1:	.asciiz "PERFORMING THE OPERATIONS TO CALCULATE   X-y+Z -90  \n"
	inp1:	.asciiz "ENTER THE FIRST NUMBER X : "
	inp2:	.asciiz "ENTER THE SECOND NUMBER Y :  "
	inp3:	.asciiz "ENTER THE THIRD NUMBER Z :  "
	msg2:	.asciiz "THE RESULT OF THE OPERATION IS :  "

.text
.globl main
.ent main
main:
	li $v0,4			#preparing msg1 for display
	la $a0,msg1
	syscall


	li $v0,4			#preparing inp1 for display
	la $a0,inp1
	syscall

	li $v0,5			#taking input from user and stored to $v0
	syscall
	move $t1,$v0			#move input value to the $t1 register



	li $v0,4			#preparing inp2 for display
	la $a0,inp2
	syscall

	li $v0,5			#taking input from user and stored to $v0
	syscall
	move $t2,$v0			#move input value to the $t2 register




	li $v0,4			#preparing inp3 for display
	la $a0,inp3
	syscall

	li $v0,5			#taking input from user and stored to $v0
	syscall
	move $t3,$v0			#move input value to the $t3 register


	sub $t4,$t1,$t2			#$t4 = $t1-$t2
	add $t5,$t4,$t3			#$t5 = $t4+$t3
	addi $t6,$t5,-90		#$t6 = $t5-90


	li $v0,4
	la $a0,msg2			#Display the output
	syscall

	li $v0,1
	move $a0,$t6			#Display the final output
	syscall
	
	jr $ra

.end main
	
	