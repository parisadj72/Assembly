# Question number 3
# From parisa daeijavad

	.data
hi:	.asciiz "Fibonacci\n"
L1:	.asciiz "Enter your number"
L2:	.asciiz "\n~:"
	.text
	.globl	main
main:
	li	$v0,4		#output hi
	la	$a0,hi
	syscall

	li	$v0,4		# output
	la	$a0,L1
	syscall
	

	li	$v0,5		#inout and save
	syscall
	move	$t3,$v0

	li	$v0,4		# output
	la	$a0,L2
	syscall
	li	$v0,1
	li	$a0,1
	syscall
	li	$v0,4		# output
	la	$a0,L2
	syscall
	li	$v0,1
	li	$a0,2
	syscall
	li	$t0,1		#initialize
	li	$t1,2		#initialize

loop:	add	$t2,$t0,$t1
	bgt	$t2,$t3,end
	li	$v0,4		# output
	la	$a0,L2
	syscall
	li	$v0,1		# output
	move	$a0,$t2
	syscall
	move	$t0,$t1
	move	$t1,$t2
	ble	$t2,$t3,loop
end:	li	$v0,10		#exit
	syscall
	



