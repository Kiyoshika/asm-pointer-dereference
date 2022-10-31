.section .data
msg: .asciz "Value is: %d\n"

.section .text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $5, -8(%rsp) # int x = 5;
	leaq -8(%rsp), %rax
	movq %rax, -16(%rsp) # int* y = &x;
	movq -16(%rsp), %rax
	movq $10, (%rax) # *y = 10; (modifies x)

	leaq msg(%rip), %rdi
	movq -8(%rsp), %rsi
	xor %al, %al
	call printf # printf("Value is: %d\n", x);

	addq $16, %rsp
	popq %rbp

	xor %edi, %edi
	call exit
