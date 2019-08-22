.data
	.text
	.globl main
main:
	li $t3, 1				
	li $t4, 0		
	li $t5, 1
	beq $t3, $0, zero	
	beq $t3, $t5, one	
	li $t4, 100		
	b exit
zero:	addi $t4, $t4, 1	
	b exit
one:	addi $t4, $t4, -1	
	b exit
exit:	li $v0, 10
	syscall