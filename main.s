	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 3	sdk_version 11, 3
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function main
LCPI0_0:
	.long	0x40e00000                      ## float 7
LCPI0_1:
	.long	0x40000000                      ## float 2
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movss	LCPI0_0(%rip), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI0_1(%rip), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	callq	_simpleDiv
	movss	%xmm0, -16(%rbp)
	movss	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	callq	_simpleMult
	movss	%xmm0, -20(%rbp)
	movss	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-12(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	-16(%rbp), %xmm2                ## xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	leaq	L_.str(%rip), %rdi
	movb	$3, %al
	callq	_printf
	movss	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-12(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	-20(%rbp), %xmm2                ## xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	leaq	L_.str.1(%rip), %rdi
	movl	%eax, -24(%rbp)                 ## 4-byte Spill
	movb	$3, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)                 ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%f divided by %f is %f\n"

L_.str.1:                               ## @.str.1
	.asciz	"%f multiplied by %f is %f\n"

.subsections_via_symbols
