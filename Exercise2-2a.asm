# Question number 2-part-a
# From parisa daeijavad

	.data
string:	.asciiz "Computer"
L1:	.asciiz "The Lenght Of The String:"
	.text
	.globl	main
main:
	la	$a0,string
	jal	strlen
	jal	print
	addi	$a1,$a0,0
	addi	$v1,$v0,0
	addi	$v0,$zero,11
	la	$a0,L1
	syscall

strlen:
	li	$t0,0		# initialize
	move $t2,$a0
loop:
	lb	$t1,0($t2)
	beq	$t1,$0,exit
	addi	$t2,$t2,1
	addi	$t0,$t0,1
	j	loop
exit:
jr $ra
print:
	li $v0,4		# output
	la $a0,L1
	syscall
	li $v0,1
	move $a0,$t0
	syscall
jr $ra
	



