
.data
inp1: .asciiz "Enter your name: "
inp2: .asciiz "Enter your age: "
out1: .asciiz "****Welcome "
out2: .asciiz " ! You are "
out3: .asciiz " years old now. Stay blessed****"

name: .space 20  #for string of name

.text

.globl main

.ent main

main:

    # print input message 1
    li $v0, 4
    la $a0, inp1
    syscall

    # get string input
    li $v0, 8
    la $a0, name
    li $a1, 25
    syscall


    # print input message 2
    li	$v0, 4
    la $a0, inp2
    syscall

    # get int input and store in t0
    li $v0, 5
    syscall
    move $t0, $v0


    # print out1
    li $v0, 4
    la $a0, out1
    syscall

    li $v0, 4
    la $a0, name
    syscall
    
    li $v0, 4
    la $a0, out2
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, out3
    syscall

    jr $ra

.end main
