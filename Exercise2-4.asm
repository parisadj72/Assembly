# Question number 4
# From parisa daeijavad

	.data
hi:	.asciiz "Fibonacci--Tekrariii!!!!!!!!\n"
L1:	.asciiz "Enter your number"
L2:	.asciiz "\n~:"
	.text
	.globl	main
main:
	li	$v0,4		#output 
	la	$a0,msg1
	syscall

	li	$v0,5		# input and save
	syscall
	add	$a0,$v0,$zero

	jal Fib

	add	$a0,$v0,$zero	
	li	$v0,1		
	syscall

	li	$v0,10		#exit
	syscall
	
	addi	$t0,$zero,1
	beqz	$a0,L1
	beq	$a0,$t0,L2
	
	add	$t1,$zero,$zero
	add	$t2,$zero,$zero
	addi	$t3,$zero,1
	addi	$t4,$zero,1

loop:	bge	$t4,$a0,end
	add	$t1,$t2,$t3
	add	$t2,$zero,$t3
	add	$t3,$zero,$t1
	add	$t4,$t4,1
	j	loop
end:	add	$v0,$zero,$t1
	jr	$ra
L1:	add	$v0,$zero,$zero
	jr	$ra
L2:	addi	$v0,$zero,1
	jr	$ra


