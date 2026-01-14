	.file	"FusionOffset.c"
	.text
	.type	_ZL15FusionVectorAdd12FusionVectorS_, @function
_ZL15FusionVectorAdd12FusionVectorS_:
.LFB1020:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movdqa	%xmm2, %xmm0
	movq	%xmm3, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movq	%xmm0, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	movss	-64(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm1
	movss	-60(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm1
	movss	-56(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rax, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1020:
	.size	_ZL15FusionVectorAdd12FusionVectorS_, .-_ZL15FusionVectorAdd12FusionVectorS_
	.type	_ZL20FusionVectorSubtract12FusionVectorS_, @function
_ZL20FusionVectorSubtract12FusionVectorS_:
.LFB1021:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movdqa	%xmm2, %xmm0
	movq	%xmm3, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movq	%xmm0, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm0
	movss	-64(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm0
	movss	-60(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm0
	movss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rax, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1021:
	.size	_ZL20FusionVectorSubtract12FusionVectorS_, .-_ZL20FusionVectorSubtract12FusionVectorS_
	.type	_ZL26FusionVectorMultiplyScalar12FusionVectorf, @function
_ZL26FusionVectorMultiplyScalar12FusionVectorf:
.LFB1023:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movss	%xmm2, -52(%rbp)
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm0
	mulss	-52(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm0
	mulss	-52(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm0
	mulss	-52(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rax, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1023:
	.size	_ZL26FusionVectorMultiplyScalar12FusionVectorf, .-_ZL26FusionVectorMultiplyScalar12FusionVectorf
	.globl	_Z22FusionOffsetInitialiseP12FusionOffsetj
	.type	_Z22FusionOffsetInitialiseP12FusionOffsetj, @function
_Z22FusionOffsetInitialiseP12FusionOffsetj:
.LFB1037:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	testq	%rax, %rax
	js	.L11
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L12
.L11:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L12:
	movss	.LC0(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 12(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 20(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1037:
	.size	_Z22FusionOffsetInitialiseP12FusionOffsetj, .-_Z22FusionOffsetInitialiseP12FusionOffsetj
	.globl	_Z18FusionOffsetUpdateP12FusionOffset12FusionVector
	.type	_Z18FusionOffsetUpdateP12FusionOffset12FusionVector, @function
_Z18FusionOffsetUpdateP12FusionOffset12FusionVector:
.LFB1038:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -72(%rbp)
	movl	-64(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	12(%rax), %xmm2
	movd	20(%rax), %xmm0
	movq	-72(%rbp), %rax
	movd	-64(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL20FusionVectorSubtract12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -72(%rbp)
	movl	-64(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -64(%rbp)
	movss	-72(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	comiss	.LC4(%rip), %xmm0
	ja	.L14
	movss	-68(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	comiss	.LC4(%rip), %xmm0
	ja	.L14
	movss	-64(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	comiss	.LC4(%rip), %xmm0
	jbe	.L20
.L14:
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L17
.L20:
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jnb	.L18
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L17
.L18:
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-72(%rbp), %rax
	movd	-64(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	movq	%rax, %xmm0
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -36(%rbp)
	movl	-28(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rbx
	movq	-36(%rbp), %xmm2
	movd	-28(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movq	12(%rax), %rdx
	movd	20(%rax), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rdx, %xmm0
	call	_ZL15FusionVectorAdd12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, 12(%rbx)
	movl	20(%rbx), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, 20(%rbx)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -40(%rbp)
.L17:
	movq	-48(%rbp), %rdx
	movl	-40(%rbp), %eax
	movq	%rax, %xmm1
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	movq	%rdx, %xmm0
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1038:
	.size	_Z18FusionOffsetUpdateP12FusionOffset12FusionVector, .-_Z18FusionOffsetUpdateP12FusionOffset12FusionVector
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	1040231933
	.align 16
.LC3:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC4:
	.long	1077936128
	.ident	"GCC: (GNU) 15.2.1 20260103"
	.section	.note.GNU-stack,"",@progbits
