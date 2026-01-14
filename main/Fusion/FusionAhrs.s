	.file	"FusionAhrs.c"
	.text
	.type	_ZL22FusionDegreesToRadiansf, @function
_ZL22FusionDegreesToRadiansf:
.LFB1015:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm1
	movss	.LC0(%rip), %xmm0
	mulss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1015:
	.size	_ZL22FusionDegreesToRadiansf, .-_ZL22FusionDegreesToRadiansf
	.type	_ZL22FusionRadiansToDegreesf, @function
_ZL22FusionRadiansToDegreesf:
.LFB1016:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1016:
	.size	_ZL22FusionRadiansToDegreesf, .-_ZL22FusionRadiansToDegreesf
	.type	_ZL10FusionAsinf, @function
_ZL10FusionAsinf:
.LFB1017:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	.LC2(%rip), %xmm0
	comiss	-4(%rbp), %xmm0
	jb	.L13
	movl	.LC3(%rip), %eax
	jmp	.L8
.L13:
	movss	-4(%rbp), %xmm0
	movss	.LC4(%rip), %xmm1
	comiss	%xmm1, %xmm0
	jb	.L14
	movl	.LC5(%rip), %eax
	jmp	.L8
.L14:
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	asinf@PLT
	movd	%xmm0, %eax
	nop
.L8:
	movd	%eax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1017:
	.size	_ZL10FusionAsinf, .-_ZL10FusionAsinf
	.type	_ZL21FusionFastInverseSqrtf, @function
_ZL21FusionFastInverseSqrtf:
.LFB1018:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	$1595872274, %eax
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	movss	-4(%rbp), %xmm1
	movss	-20(%rbp), %xmm2
	movss	.LC6(%rip), %xmm0
	mulss	%xmm0, %xmm2
	movss	-4(%rbp), %xmm0
	mulss	%xmm0, %xmm2
	movss	-4(%rbp), %xmm0
	mulss	%xmm0, %xmm2
	movss	.LC7(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1018:
	.size	_ZL21FusionFastInverseSqrtf, .-_ZL21FusionFastInverseSqrtf
	.type	_ZL18FusionVectorIsZero12FusionVector, @function
_ZL18FusionVectorIsZero12FusionVector:
.LFB1019:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movss	-16(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L18
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L18
	movss	-12(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L18
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L18
	movss	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L18
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L18
	movl	$1, %eax
	jmp	.L22
.L18:
	movl	$0, %eax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1019:
	.size	_ZL18FusionVectorIsZero12FusionVector, .-_ZL18FusionVectorIsZero12FusionVector
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
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
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
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1021:
	.size	_ZL20FusionVectorSubtract12FusionVectorS_, .-_ZL20FusionVectorSubtract12FusionVectorS_
	.type	_ZL15FusionVectorSum12FusionVector, @function
_ZL15FusionVectorSum12FusionVector:
.LFB1022:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movss	-16(%rbp), %xmm1
	movss	-12(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	-8(%rbp), %xmm0
	addss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1022:
	.size	_ZL15FusionVectorSum12FusionVector, .-_ZL15FusionVectorSum12FusionVector
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
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1023:
	.size	_ZL26FusionVectorMultiplyScalar12FusionVectorf, .-_ZL26FusionVectorMultiplyScalar12FusionVectorf
	.type	_ZL27FusionVectorHadamardProduct12FusionVectorS_, @function
_ZL27FusionVectorHadamardProduct12FusionVectorS_:
.LFB1024:
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
	mulss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm1
	movss	-60(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm1
	movss	-56(%rbp), %xmm0
	mulss	%xmm1, %xmm0
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
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1024:
	.size	_ZL27FusionVectorHadamardProduct12FusionVectorS_, .-_ZL27FusionVectorHadamardProduct12FusionVectorS_
	.type	_ZL24FusionVectorCrossProduct12FusionVectorS_, @function
_ZL24FusionVectorCrossProduct12FusionVectorS_:
.LFB1025:
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
	movss	-44(%rbp), %xmm1
	movss	-56(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-40(%rbp), %xmm2
	movss	-60(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-40(%rbp), %xmm1
	movss	-64(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-48(%rbp), %xmm2
	movss	-56(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-48(%rbp), %xmm1
	movss	-60(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-44(%rbp), %xmm2
	movss	-64(%rbp), %xmm1
	mulss	%xmm2, %xmm1
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
	je	.L43
	call	__stack_chk_fail@PLT
.L43:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1025:
	.size	_ZL24FusionVectorCrossProduct12FusionVectorS_, .-_ZL24FusionVectorCrossProduct12FusionVectorS_
	.type	_ZL22FusionVectorDotProduct12FusionVectorS_, @function
_ZL22FusionVectorDotProduct12FusionVectorS_:
.LFB1026:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
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
	movq	-64(%rbp), %xmm2
	movd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movd	-40(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL27FusionVectorHadamardProduct12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -20(%rbp)
	movl	-12(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movd	-12(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL15FusionVectorSum12FusionVector
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1026:
	.size	_ZL22FusionVectorDotProduct12FusionVectorS_, .-_ZL22FusionVectorDotProduct12FusionVectorS_
	.type	_ZL28FusionVectorMagnitudeSquared12FusionVector, @function
_ZL28FusionVectorMagnitudeSquared12FusionVector:
.LFB1027:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %xmm2
	movd	-40(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movd	-40(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL27FusionVectorHadamardProduct12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -20(%rbp)
	movl	-12(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movd	-12(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL15FusionVectorSum12FusionVector
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L49
	call	__stack_chk_fail@PLT
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1027:
	.size	_ZL28FusionVectorMagnitudeSquared12FusionVector, .-_ZL28FusionVectorMagnitudeSquared12FusionVector
	.type	_ZL21FusionVectorMagnitude12FusionVector, @function
_ZL21FusionVectorMagnitude12FusionVector:
.LFB1028:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	movd	-8(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL28FusionVectorMagnitudeSquared12FusionVector
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	sqrtf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1028:
	.size	_ZL21FusionVectorMagnitude12FusionVector, .-_ZL21FusionVectorMagnitude12FusionVector
	.type	_ZL21FusionVectorNormalise12FusionVector, @function
_ZL21FusionVectorNormalise12FusionVector:
.LFB1029:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL28FusionVectorMagnitudeSquared12FusionVector
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	_ZL21FusionFastInverseSqrtf
	movd	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movd	-40(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	movq	%rax, %xmm0
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -20(%rbp)
	movl	-12(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rax, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L54
	call	__stack_chk_fail@PLT
.L54:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1029:
	.size	_ZL21FusionVectorNormalise12FusionVector, .-_ZL21FusionVectorNormalise12FusionVector
	.type	_ZL19FusionQuaternionAdd16FusionQuaternionS_, @function
_ZL19FusionQuaternionAdd16FusionQuaternionS_:
.LFB1030:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, %rax
	movl	$0, %edx
	movq	%xmm0, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%xmm2, %rax
	movdqa	%xmm3, %xmm0
	movq	%rax, %rax
	movl	$0, %edx
	movq	%xmm0, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
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
	movss	-36(%rbp), %xmm1
	movss	-52(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L57
	call	__stack_chk_fail@PLT
.L57:
	movq	%rcx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1030:
	.size	_ZL19FusionQuaternionAdd16FusionQuaternionS_, .-_ZL19FusionQuaternionAdd16FusionQuaternionS_
	.type	_ZL24FusionQuaternionMultiply16FusionQuaternionS_, @function
_ZL24FusionQuaternionMultiply16FusionQuaternionS_:
.LFB1031:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, %rax
	movl	$0, %edx
	movq	%xmm0, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%xmm2, %rax
	movdqa	%xmm3, %xmm0
	movq	%rax, %rax
	movl	$0, %edx
	movq	%xmm0, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	movss	-64(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-44(%rbp), %xmm2
	movss	-60(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	-40(%rbp), %xmm2
	movss	-56(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm2
	movss	-52(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-48(%rbp), %xmm1
	movss	-60(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-44(%rbp), %xmm2
	movss	-64(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-40(%rbp), %xmm2
	movss	-52(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm2
	movss	-56(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-48(%rbp), %xmm1
	movss	-56(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-44(%rbp), %xmm2
	movss	-52(%rbp), %xmm1
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	-40(%rbp), %xmm2
	movss	-64(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-36(%rbp), %xmm2
	movss	-60(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-48(%rbp), %xmm1
	movss	-52(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-44(%rbp), %xmm2
	movss	-56(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	-40(%rbp), %xmm2
	movss	-60(%rbp), %xmm1
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	-36(%rbp), %xmm2
	movss	-64(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	movq	%rcx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1031:
	.size	_ZL24FusionQuaternionMultiply16FusionQuaternionS_, .-_ZL24FusionQuaternionMultiply16FusionQuaternionS_
	.type	_ZL30FusionQuaternionMultiplyVector16FusionQuaternion12FusionVector, @function
_ZL30FusionQuaternionMultiplyVector16FusionQuaternion12FusionVector:
.LFB1032:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, %rax
	movl	$0, %edx
	movq	%xmm0, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	%xmm2, %xmm0
	movq	%xmm3, %rdx
	movq	%xmm0, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-44(%rbp), %xmm0
	movss	.LC9(%rip), %xmm1
	xorps	%xmm0, %xmm1
	movss	-64(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-40(%rbp), %xmm2
	movss	-60(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm2
	movss	-56(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-48(%rbp), %xmm1
	movss	-64(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-40(%rbp), %xmm2
	movss	-56(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm2
	movss	-60(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-48(%rbp), %xmm1
	movss	-60(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-44(%rbp), %xmm2
	movss	-56(%rbp), %xmm1
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	-36(%rbp), %xmm2
	movss	-64(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-48(%rbp), %xmm1
	movss	-56(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-44(%rbp), %xmm2
	movss	-60(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	-40(%rbp), %xmm2
	movss	-64(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	movq	%rcx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1032:
	.size	_ZL30FusionQuaternionMultiplyVector16FusionQuaternion12FusionVector, .-_ZL30FusionQuaternionMultiplyVector16FusionQuaternion12FusionVector
	.type	_ZL25FusionQuaternionNormalise16FusionQuaternion, @function
_ZL25FusionQuaternionNormalise16FusionQuaternion:
.LFB1033:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, %rax
	movl	$0, %edx
	movq	%xmm0, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-64(%rbp), %xmm1
	movss	-64(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-60(%rbp), %xmm2
	movss	-60(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-56(%rbp), %xmm2
	movss	-56(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-52(%rbp), %xmm2
	movss	-52(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movd	%eax, %xmm0
	call	_ZL21FusionFastInverseSqrtf
	movd	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movss	-64(%rbp), %xmm0
	mulss	-36(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-60(%rbp), %xmm0
	mulss	-36(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	-36(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-52(%rbp), %xmm0
	mulss	-36(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	movq	%rcx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1033:
	.size	_ZL25FusionQuaternionNormalise16FusionQuaternion, .-_ZL25FusionQuaternionNormalise16FusionQuaternion
	.globl	_Z20FusionAhrsInitialiseP10FusionAhrs
	.type	_Z20FusionAhrsInitialiseP10FusionAhrs, @function
_Z20FusionAhrsInitialiseP10FusionAhrs:
.LFB1037:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -32(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$0, -12(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z21FusionAhrsSetSettingsP10FusionAhrsPK18FusionAhrsSettings
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_Z15FusionAhrsResetP10FusionAhrs
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L68
	call	__stack_chk_fail@PLT
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1037:
	.size	_Z20FusionAhrsInitialiseP10FusionAhrs, .-_Z20FusionAhrsInitialiseP10FusionAhrs
	.globl	_Z15FusionAhrsResetP10FusionAhrs
	.type	_Z15FusionAhrsResetP10FusionAhrs, @function
_Z15FusionAhrsResetP10FusionAhrs:
.LFB1038:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 28(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 36(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 40(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 44(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 48(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 52(%rax)
	movq	-8(%rbp), %rax
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, 56(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 64(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 68(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 72(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 76(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 80(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 84(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 88(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 92(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 100(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 108(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 112(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1038:
	.size	_Z15FusionAhrsResetP10FusionAhrs, .-_Z15FusionAhrsResetP10FusionAhrs
	.globl	_Z21FusionAhrsSetSettingsP10FusionAhrsPK18FusionAhrsSettings
	.type	_Z21FusionAhrsSetSettingsP10FusionAhrsPK18FusionAhrsSettings, @function
_Z21FusionAhrsSetSettingsP10FusionAhrsPK18FusionAhrsSettings:
.LFB1039:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L84
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L71
.L84:
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm1
	movss	.LC13(%rip), %xmm0
	mulss	%xmm1, %xmm0
	jmp	.L73
.L71:
	movss	.LC14(%rip), %xmm0
.L73:
	movq	-8(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-16(%rbp), %rax
	movss	12(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L85
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L74
.L85:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movd	%eax, %xmm0
	call	_ZL22FusionDegreesToRadiansf
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	sinf@PLT
	movss	.LC10(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movss	.LC15(%rip), %xmm1
	movd	%eax, %xmm0
	call	powf@PLT
	movd	%xmm0, %eax
	jmp	.L76
.L74:
	movl	.LC14(%rip), %eax
.L76:
	movq	-8(%rbp), %rdx
	movl	%eax, 12(%rdx)
	movq	-16(%rbp), %rax
	movss	16(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L86
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L77
.L86:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movd	%eax, %xmm0
	call	_ZL22FusionDegreesToRadiansf
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	sinf@PLT
	movss	.LC10(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movss	.LC15(%rip), %xmm1
	movd	%eax, %xmm0
	call	powf@PLT
	movd	%xmm0, %eax
	jmp	.L79
.L77:
	movl	.LC14(%rip), %eax
.L79:
	movq	-8(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 100(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 112(%rax)
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L87
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L80
.L87:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jne	.L82
.L80:
	movq	-8(%rbp), %rax
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, 12(%rax)
	movq	-8(%rbp), %rax
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, 16(%rax)
.L82:
	movq	-8(%rbp), %rax
	movzbl	52(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L83
	movq	-8(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 56(%rax)
.L83:
	movq	-8(%rbp), %rax
	movss	4(%rax), %xmm1
	movss	.LC12(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	.LC16(%rip), %xmm1
	divss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 60(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1039:
	.size	_Z21FusionAhrsSetSettingsP10FusionAhrsPK18FusionAhrsSettings, .-_Z21FusionAhrsSetSettingsP10FusionAhrsPK18FusionAhrsSettings
	.globl	_Z16FusionAhrsUpdateP10FusionAhrs12FusionVectorS1_S1_f
	.type	_Z16FusionAhrsUpdateP10FusionAhrs12FusionVectorS1_S1_f, @function
_Z16FusionAhrsUpdateP10FusionAhrs12FusionVectorS1_S1_f:
.LFB1040:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%xmm0, %rax
	movq	%xmm1, %rsi
	movdqa	%xmm2, %xmm1
	movq	%xmm3, %rcx
	movdqa	%xmm4, %xmm0
	movq	%xmm5, %rdx
	movss	%xmm6, -236(%rbp)
	movq	%rax, -200(%rbp)
	movl	-192(%rbp), %eax
	andl	$0, %eax
	orl	%esi, %eax
	movl	%eax, -192(%rbp)
	movq	%xmm1, -216(%rbp)
	movl	-208(%rbp), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movl	%eax, -208(%rbp)
	movq	%xmm0, -232(%rbp)
	movl	-224(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -224(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-184(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	-208(%rbp), %edx
	movl	%edx, 48(%rax)
	movss	-200(%rbp), %xmm0
	movss	.LC17(%rip), %xmm1
	andps	%xmm1, %xmm0
	movq	-184(%rbp), %rax
	movss	8(%rax), %xmm1
	comiss	%xmm1, %xmm0
	ja	.L89
	movss	-196(%rbp), %xmm0
	movss	.LC17(%rip), %xmm1
	andps	%xmm1, %xmm0
	movq	-184(%rbp), %rax
	movss	8(%rax), %xmm1
	comiss	%xmm1, %xmm0
	ja	.L89
	movss	-192(%rbp), %xmm0
	movss	.LC17(%rip), %xmm1
	andps	%xmm1, %xmm0
	movq	-184(%rbp), %rax
	movss	8(%rax), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L90
.L89:
	movq	-184(%rbp), %rax
	movq	32(%rax), %rdx
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_Z15FusionAhrsResetP10FusionAhrs
	movq	-184(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rcx)
	movq	%rdx, 32(%rcx)
	movq	-184(%rbp), %rax
	movb	$1, 64(%rax)
.L90:
	movq	-184(%rbp), %rax
	movzbl	52(%rax), %eax
	testb	%al, %al
	je	.L92
	movq	-184(%rbp), %rax
	movss	56(%rax), %xmm0
	movq	-184(%rbp), %rax
	movss	60(%rax), %xmm1
	mulss	-236(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-184(%rbp), %rax
	movss	%xmm0, 56(%rax)
	movq	-184(%rbp), %rax
	movss	56(%rax), %xmm1
	movq	-184(%rbp), %rax
	movss	4(%rax), %xmm0
	comiss	%xmm1, %xmm0
	ja	.L93
	movq	-184(%rbp), %rax
	movss	4(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L92
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L92
.L93:
	movq	-184(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-184(%rbp), %rax
	movss	%xmm0, 56(%rax)
	movq	-184(%rbp), %rax
	movb	$0, 52(%rax)
	movq	-184(%rbp), %rax
	movb	$0, 64(%rax)
.L92:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL11HalfGravityPK10FusionAhrs
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -168(%rbp)
	movl	-160(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -160(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -156(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -148(%rbp)
	movq	-184(%rbp), %rax
	movb	$1, 92(%rax)
	movq	-216(%rbp), %rax
	movd	-208(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL18FusionVectorIsZero12FusionVector
	movzbl	%al, %eax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L95
	movq	-216(%rbp), %rax
	movd	-208(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL21FusionVectorNormalise12FusionVector
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -108(%rbp)
	movl	-100(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-184(%rbp), %rbx
	movq	-168(%rbp), %xmm2
	movd	-160(%rbp), %xmm0
	movq	-108(%rbp), %rax
	movd	-100(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL8Feedback12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, 68(%rbx)
	movl	76(%rbx), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, 76(%rbx)
	movq	-184(%rbp), %rax
	movzbl	52(%rax), %eax
	testb	%al, %al
	jne	.L96
	movq	-184(%rbp), %rax
	movq	68(%rax), %rdx
	movd	76(%rax), %xmm1
	movq	%rdx, %xmm0
	call	_ZL28FusionVectorMagnitudeSquared12FusionVector
	movq	-184(%rbp), %rax
	movss	12(%rax), %xmm1
	comiss	%xmm0, %xmm1
	jb	.L115
.L96:
	movl	$1, %eax
	jmp	.L99
.L115:
	movl	$0, %eax
.L99:
	testb	%al, %al
	je	.L100
	movq	-184(%rbp), %rax
	movb	$0, 92(%rax)
	movq	-184(%rbp), %rax
	movl	96(%rax), %eax
	leal	-9(%rax), %edx
	movq	-184(%rbp), %rax
	movl	%edx, 96(%rax)
	jmp	.L101
.L100:
	movq	-184(%rbp), %rax
	movl	96(%rax), %eax
	leal	1(%rax), %edx
	movq	-184(%rbp), %rax
	movl	%edx, 96(%rax)
.L101:
	movq	-184(%rbp), %rax
	movl	96(%rax), %edx
	movq	-184(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	%eax, %edx
	jle	.L102
	movq	-184(%rbp), %rax
	movl	$0, 100(%rax)
	movq	-184(%rbp), %rax
	movb	$0, 92(%rax)
	jmp	.L103
.L102:
	movq	-184(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, 100(%rax)
.L103:
	movq	-184(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	96(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	_ZL5Clampiii
	movq	-184(%rbp), %rdx
	movl	%eax, 96(%rdx)
	movq	-184(%rbp), %rax
	movzbl	92(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L95
	movq	-184(%rbp), %rax
	movq	68(%rax), %rdx
	movq	%rdx, -156(%rbp)
	movl	76(%rax), %eax
	movl	%eax, -148(%rbp)
.L95:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -144(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -140(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -136(%rbp)
	movq	-184(%rbp), %rax
	movb	$1, 104(%rax)
	movq	-232(%rbp), %rax
	movd	-224(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL18FusionVectorIsZero12FusionVector
	movzbl	%al, %eax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L104
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL12HalfMagneticPK10FusionAhrs
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	-232(%rbp), %xmm2
	movd	-224(%rbp), %xmm0
	movq	-168(%rbp), %rax
	movd	-160(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -96(%rbp)
	movl	-88(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -88(%rbp)
	movq	-96(%rbp), %rax
	movd	-88(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL21FusionVectorNormalise12FusionVector
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -84(%rbp)
	movl	-76(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -76(%rbp)
	movq	-184(%rbp), %rbx
	movq	-48(%rbp), %xmm2
	movd	-40(%rbp), %xmm0
	movq	-84(%rbp), %rax
	movd	-76(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL8Feedback12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, 80(%rbx)
	movl	88(%rbx), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, 88(%rbx)
	movq	-184(%rbp), %rax
	movzbl	52(%rax), %eax
	testb	%al, %al
	jne	.L105
	movq	-184(%rbp), %rax
	movq	80(%rax), %rdx
	movd	88(%rax), %xmm1
	movq	%rdx, %xmm0
	call	_ZL28FusionVectorMagnitudeSquared12FusionVector
	movq	-184(%rbp), %rax
	movss	16(%rax), %xmm1
	comiss	%xmm0, %xmm1
	jb	.L116
.L105:
	movl	$1, %eax
	jmp	.L108
.L116:
	movl	$0, %eax
.L108:
	testb	%al, %al
	je	.L109
	movq	-184(%rbp), %rax
	movb	$0, 104(%rax)
	movq	-184(%rbp), %rax
	movl	108(%rax), %eax
	leal	-9(%rax), %edx
	movq	-184(%rbp), %rax
	movl	%edx, 108(%rax)
	jmp	.L110
.L109:
	movq	-184(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-184(%rbp), %rax
	movl	%edx, 108(%rax)
.L110:
	movq	-184(%rbp), %rax
	movl	108(%rax), %edx
	movq	-184(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	%eax, %edx
	jle	.L111
	movq	-184(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-184(%rbp), %rax
	movb	$0, 104(%rax)
	jmp	.L112
.L111:
	movq	-184(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, 112(%rax)
.L112:
	movq	-184(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	108(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	_ZL5Clampiii
	movq	-184(%rbp), %rdx
	movl	%eax, 108(%rdx)
	movq	-184(%rbp), %rax
	movzbl	104(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L104
	movq	-184(%rbp), %rax
	movq	80(%rax), %rdx
	movq	%rdx, -144(%rbp)
	movl	88(%rax), %eax
	movl	%eax, -136(%rbp)
.L104:
	movl	.LC10(%rip), %eax
	movd	%eax, %xmm0
	call	_ZL22FusionDegreesToRadiansf
	movd	%xmm0, %edx
	movq	-200(%rbp), %rax
	movd	-192(%rbp), %xmm1
	movd	%edx, %xmm2
	movq	%rax, %xmm0
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -132(%rbp)
	movl	-124(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -124(%rbp)
	movq	-184(%rbp), %rax
	movss	56(%rax), %xmm7
	movss	%xmm7, -240(%rbp)
	movq	-144(%rbp), %xmm2
	movd	-136(%rbp), %xmm0
	movq	-156(%rbp), %rax
	movd	-148(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL15FusionVectorAdd12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -72(%rbp)
	movl	-64(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -64(%rbp)
	movq	-72(%rbp), %rax
	movd	-64(%rbp), %xmm1
	movss	-240(%rbp), %xmm2
	movq	%rax, %xmm0
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -60(%rbp)
	movl	-52(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-60(%rbp), %xmm2
	movd	-52(%rbp), %xmm0
	movq	-132(%rbp), %rax
	movd	-124(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL15FusionVectorAdd12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -120(%rbp)
	movl	-112(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -112(%rbp)
	movss	-236(%rbp), %xmm0
	movq	-120(%rbp), %rax
	movd	-112(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	movq	%rax, %xmm0
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	-48(%rbp), %xmm2
	movd	-40(%rbp), %xmm0
	movq	-184(%rbp), %rax
	movq	24(%rax), %rdx
	movq	32(%rax), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rdx, %xmm0
	call	_ZL30FusionQuaternionMultiplyVector16FusionQuaternion12FusionVector
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, %rax
	movl	$0, %edx
	movq	%xmm0, %rdx
	movq	-184(%rbp), %rbx
	movq	%rax, %xmm2
	movq	%rdx, %xmm0
	movq	-184(%rbp), %rax
	movq	24(%rax), %rdx
	movq	32(%rax), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rdx, %xmm0
	call	_ZL19FusionQuaternionAdd16FusionQuaternionS_
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, 24(%rbx)
	movq	%xmm0, 32(%rbx)
	movq	-184(%rbp), %rbx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rdx
	movq	32(%rax), %xmm1
	movq	%rdx, %xmm0
	call	_ZL25FusionQuaternionNormalise16FusionQuaternion
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, 24(%rbx)
	movq	%xmm0, 32(%rbx)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L114
	call	__stack_chk_fail@PLT
.L114:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1040:
	.size	_Z16FusionAhrsUpdateP10FusionAhrs12FusionVectorS1_S1_f, .-_Z16FusionAhrsUpdateP10FusionAhrs12FusionVectorS1_S1_f
	.type	_ZL11HalfGravityPK10FusionAhrs, @function
_ZL11HalfGravityPK10FusionAhrs:
.LFB1041:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jg	.L118
	testl	%eax, %eax
	jns	.L119
	jmp	.L120
.L118:
	cmpl	$2, %eax
	je	.L121
	jmp	.L120
.L119:
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC10(%rip), %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L122
.L121:
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	.LC9(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L122
.L120:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
.L122:
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rax, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L123
	call	__stack_chk_fail@PLT
.L123:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1041:
	.size	_ZL11HalfGravityPK10FusionAhrs, .-_ZL11HalfGravityPK10FusionAhrs
	.type	_ZL12HalfMagneticPK10FusionAhrs, @function
_ZL12HalfMagneticPK10FusionAhrs:
.LFB1042:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L125
	cmpl	$2, %eax
	jg	.L126
	testl	%eax, %eax
	je	.L127
	cmpl	$1, %eax
	je	.L128
	jmp	.L126
.L127:
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC10(%rip), %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L129
.L128:
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	.LC9(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L129
.L125:
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	.LC9(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L129
.L126:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
.L129:
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rax, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L130
	call	__stack_chk_fail@PLT
.L130:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1042:
	.size	_ZL12HalfMagneticPK10FusionAhrs, .-_ZL12HalfMagneticPK10FusionAhrs
	.type	_ZL8Feedback12FusionVectorS_, @function
_ZL8Feedback12FusionVectorS_:
.LFB1043:
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
	movq	-64(%rbp), %xmm2
	movd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movd	-40(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL22FusionVectorDotProduct12FusionVectorS_
	pxor	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	seta	%al
	testb	%al, %al
	je	.L132
	movq	-64(%rbp), %xmm2
	movd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movd	-40(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -20(%rbp)
	movl	-12(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movd	-12(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL21FusionVectorNormalise12FusionVector
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	jmp	.L133
.L132:
	movq	-64(%rbp), %xmm2
	movd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movd	-40(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	nop
.L133:
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %eax
	movq	%rax, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L134
	call	__stack_chk_fail@PLT
.L134:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1043:
	.size	_ZL8Feedback12FusionVectorS_, .-_ZL8Feedback12FusionVectorS_
	.type	_ZL5Clampiii, @function
_ZL5Clampiii:
.LFB1044:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L136
	movl	-8(%rbp), %eax
	jmp	.L137
.L136:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L138
	movl	-12(%rbp), %eax
	jmp	.L137
.L138:
	movl	-4(%rbp), %eax
.L137:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1044:
	.size	_ZL5Clampiii, .-_ZL5Clampiii
	.globl	_Z30FusionAhrsUpdateNoMagnetometerP10FusionAhrs12FusionVectorS1_f
	.type	_Z30FusionAhrsUpdateNoMagnetometerP10FusionAhrs12FusionVectorS1_f, @function
_Z30FusionAhrsUpdateNoMagnetometerP10FusionAhrs12FusionVectorS1_f:
.LFB1045:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movdqa	%xmm2, %xmm0
	movq	%xmm3, %rdx
	movss	%xmm4, -76(%rbp)
	movq	%rax, -56(%rbp)
	movl	-48(%rbp), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movl	%eax, -48(%rbp)
	movq	%xmm0, -72(%rbp)
	movl	-64(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-76(%rbp), %xmm3
	movq	-20(%rbp), %xmm4
	movd	-12(%rbp), %xmm2
	movq	-72(%rbp), %xmm7
	movd	-64(%rbp), %xmm0
	movq	-56(%rbp), %rdx
	movd	-48(%rbp), %xmm1
	movq	-40(%rbp), %rax
	movaps	%xmm3, %xmm6
	movdqa	%xmm2, %xmm5
	movdqa	%xmm7, %xmm2
	movdqa	%xmm0, %xmm3
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	_Z16FusionAhrsUpdateP10FusionAhrs12FusionVectorS1_S1_f
	movq	-40(%rbp), %rax
	movzbl	52(%rax), %eax
	testb	%al, %al
	je	.L142
	movq	-40(%rbp), %rax
	movl	.LC8(%rip), %edx
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_Z20FusionAhrsSetHeadingP10FusionAhrsf
.L142:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L141
	call	__stack_chk_fail@PLT
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1045:
	.size	_Z30FusionAhrsUpdateNoMagnetometerP10FusionAhrs12FusionVectorS1_f, .-_Z30FusionAhrsUpdateNoMagnetometerP10FusionAhrs12FusionVectorS1_f
	.globl	_Z31FusionAhrsUpdateExternalHeadingP10FusionAhrs12FusionVectorS1_ff
	.type	_Z31FusionAhrsUpdateExternalHeadingP10FusionAhrs12FusionVectorS1_ff, @function
_Z31FusionAhrsUpdateExternalHeadingP10FusionAhrs12FusionVectorS1_ff:
.LFB1046:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movdqa	%xmm2, %xmm0
	movq	%xmm3, %rdx
	movss	%xmm4, -76(%rbp)
	movss	%xmm5, -80(%rbp)
	movq	%rax, -56(%rbp)
	movl	-48(%rbp), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movl	%eax, -48(%rbp)
	movq	%xmm0, -72(%rbp)
	movl	-64(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm1
	mulss	%xmm2, %xmm1
	movaps	%xmm0, %xmm3
	subss	%xmm1, %xmm3
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movaps	%xmm3, %xmm1
	movd	%eax, %xmm0
	call	atan2f@PLT
	movd	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	-76(%rbp), %eax
	movd	%eax, %xmm0
	call	_ZL22FusionDegreesToRadiansf
	movd	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movd	%eax, %xmm0
	call	sinf@PLT
	movd	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	movd	%xmm0, %eax
	movss	.LC9(%rip), %xmm0
	movd	%eax, %xmm6
	xorps	%xmm0, %xmm6
	movaps	%xmm6, %xmm0
	mulss	-24(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movl	-32(%rbp), %eax
	movd	%eax, %xmm0
	call	sinf@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	mulss	-24(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-80(%rbp), %xmm3
	movq	-20(%rbp), %xmm4
	movd	-12(%rbp), %xmm2
	movq	-72(%rbp), %xmm7
	movd	-64(%rbp), %xmm0
	movq	-56(%rbp), %rdx
	movd	-48(%rbp), %xmm1
	movq	-40(%rbp), %rax
	movaps	%xmm3, %xmm6
	movdqa	%xmm2, %xmm5
	movdqa	%xmm7, %xmm2
	movdqa	%xmm0, %xmm3
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	_Z16FusionAhrsUpdateP10FusionAhrs12FusionVectorS1_S1_f
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L144
	call	__stack_chk_fail@PLT
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1046:
	.size	_Z31FusionAhrsUpdateExternalHeadingP10FusionAhrs12FusionVectorS1_ff, .-_Z31FusionAhrsUpdateExternalHeadingP10FusionAhrs12FusionVectorS1_ff
	.globl	_Z23FusionAhrsGetQuaternionPK10FusionAhrs
	.type	_Z23FusionAhrsGetQuaternionPK10FusionAhrs, @function
_Z23FusionAhrsGetQuaternionPK10FusionAhrs:
.LFB1047:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	24(%rax), %rax
	movq	%rax, %rcx
	movq	%rdx, %xmm1
	movq	%rcx, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1047:
	.size	_Z23FusionAhrsGetQuaternionPK10FusionAhrs, .-_Z23FusionAhrsGetQuaternionPK10FusionAhrs
	.globl	_Z23FusionAhrsSetQuaternionP10FusionAhrs16FusionQuaternion
	.type	_Z23FusionAhrsSetQuaternionP10FusionAhrs16FusionQuaternion, @function
_Z23FusionAhrsSetQuaternionP10FusionAhrs16FusionQuaternion:
.LFB1048:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, %rax
	movl	$0, %edx
	movq	%xmm0, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rcx)
	movq	%rdx, 32(%rcx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1048:
	.size	_Z23FusionAhrsSetQuaternionP10FusionAhrs16FusionQuaternion, .-_Z23FusionAhrsSetQuaternionP10FusionAhrs16FusionQuaternion
	.globl	_Z20FusionAhrsGetGravityPK10FusionAhrs
	.type	_Z20FusionAhrsGetGravityPK10FusionAhrs, @function
_Z20FusionAhrsGetGravityPK10FusionAhrs:
.LFB1049:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC10(%rip), %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm0, %xmm0
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
	je	.L150
	call	__stack_chk_fail@PLT
.L150:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1049:
	.size	_Z20FusionAhrsGetGravityPK10FusionAhrs, .-_Z20FusionAhrsGetGravityPK10FusionAhrs
	.globl	_Z31FusionAhrsGetLinearAccelerationPK10FusionAhrs
	.type	_Z31FusionAhrsGetLinearAccelerationPK10FusionAhrs, @function
_Z31FusionAhrsGetLinearAccelerationPK10FusionAhrs:
.LFB1050:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jg	.L152
	testl	%eax, %eax
	jns	.L153
	jmp	.L154
.L152:
	cmpl	$2, %eax
	je	.L155
	jmp	.L154
.L153:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_Z20FusionAhrsGetGravityPK10FusionAhrs
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %xmm2
	movd	-24(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movd	48(%rax), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rdx, %xmm0
	call	_ZL20FusionVectorSubtract12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -44(%rbp)
	movl	-36(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	jmp	.L156
.L155:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_Z20FusionAhrsGetGravityPK10FusionAhrs
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -20(%rbp)
	movl	-12(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %xmm2
	movd	-12(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movd	48(%rax), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rdx, %xmm0
	call	_ZL15FusionVectorAdd12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -44(%rbp)
	movl	-36(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	jmp	.L156
.L154:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
.L156:
	movq	-44(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rax, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L157
	call	__stack_chk_fail@PLT
.L157:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1050:
	.size	_Z31FusionAhrsGetLinearAccelerationPK10FusionAhrs, .-_Z31FusionAhrsGetLinearAccelerationPK10FusionAhrs
	.globl	_Z30FusionAhrsGetEarthAccelerationPK10FusionAhrs
	.type	_Z30FusionAhrsGetEarthAccelerationPK10FusionAhrs, @function
_Z30FusionAhrsGetEarthAccelerationPK10FusionAhrs:
.LFB1051:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC10(%rip), %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	40(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm2, %xmm0
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm3
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm2
	mulss	%xmm2, %xmm3
	movaps	%xmm0, %xmm2
	subss	%xmm3, %xmm2
	movq	-40(%rbp), %rax
	movss	44(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm0, %xmm2
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm3
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm0, %xmm2
	movq	-40(%rbp), %rax
	movss	48(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	40(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm0
	mulss	%xmm2, %xmm0
	movss	.LC10(%rip), %xmm3
	movaps	%xmm0, %xmm2
	subss	%xmm3, %xmm2
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm3
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm0, %xmm2
	movq	-40(%rbp), %rax
	movss	44(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm2, %xmm0
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm3
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm2
	mulss	%xmm2, %xmm3
	movaps	%xmm0, %xmm2
	subss	%xmm3, %xmm2
	movq	-40(%rbp), %rax
	movss	48(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm1
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movss	40(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	32(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm0, %xmm2
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm3
	movq	-40(%rbp), %rax
	movss	28(%rax), %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm0, %xmm2
	movq	-40(%rbp), %rax
	movss	44(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm2
	movq	-40(%rbp), %rax
	movss	24(%rax), %xmm0
	mulss	%xmm2, %xmm0
	movss	.LC10(%rip), %xmm3
	movaps	%xmm0, %xmm2
	subss	%xmm3, %xmm2
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm3
	movq	-40(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm0, %xmm2
	movq	-40(%rbp), %rax
	movss	48(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jg	.L159
	testl	%eax, %eax
	jns	.L160
	jmp	.L161
.L159:
	cmpl	$2, %eax
	je	.L162
	jmp	.L161
.L160:
	movss	-24(%rbp), %xmm0
	movss	.LC4(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	jmp	.L161
.L162:
	movss	-24(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	nop
.L161:
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rax, %xmm1
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L164
	call	__stack_chk_fail@PLT
.L164:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1051:
	.size	_Z30FusionAhrsGetEarthAccelerationPK10FusionAhrs, .-_Z30FusionAhrsGetEarthAccelerationPK10FusionAhrs
	.globl	_Z27FusionAhrsGetInternalStatesPK10FusionAhrs
	.type	_Z27FusionAhrsGetInternalStatesPK10FusionAhrs, @function
_Z27FusionAhrsGetInternalStatesPK10FusionAhrs:
.LFB1052:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	68(%rax), %rdx
	movd	76(%rax), %xmm1
	movq	%rdx, %xmm0
	call	_ZL21FusionVectorMagnitude12FusionVector
	addss	%xmm0, %xmm0
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	_ZL10FusionAsinf
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	_ZL22FusionRadiansToDegreesf
	movd	%xmm0, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movzbl	92(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, 4(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L166
	movq	-16(%rbp), %rax
	movl	96(%rax), %eax
	pxor	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L167
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	jmp	.L168
.L167:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
.L168:
	divss	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	jmp	.L169
.L166:
	pxor	%xmm0, %xmm0
.L169:
	movq	-8(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movd	88(%rax), %xmm1
	movq	%rdx, %xmm0
	call	_ZL21FusionVectorMagnitude12FusionVector
	addss	%xmm0, %xmm0
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	_ZL10FusionAsinf
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	_ZL22FusionRadiansToDegreesf
	movd	%xmm0, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 12(%rdx)
	movq	-16(%rbp), %rax
	movzbl	104(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, 16(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L170
	movq	-16(%rbp), %rax
	movl	108(%rax), %eax
	pxor	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L171
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	jmp	.L172
.L171:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
.L172:
	divss	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	jmp	.L173
.L170:
	pxor	%xmm0, %xmm0
.L173:
	movq	-8(%rbp), %rax
	movss	%xmm0, 20(%rax)
	nop
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1052:
	.size	_Z27FusionAhrsGetInternalStatesPK10FusionAhrs, .-_Z27FusionAhrsGetInternalStatesPK10FusionAhrs
	.globl	_Z18FusionAhrsGetFlagsPK10FusionAhrs
	.type	_Z18FusionAhrsGetFlagsPK10FusionAhrs, @function
_Z18FusionAhrsGetFlagsPK10FusionAhrs:
.LFB1053:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movzbl	52(%rax), %eax
	movb	%al, -12(%rbp)
	movq	-24(%rbp), %rax
	movzbl	64(%rax), %eax
	movb	%al, -11(%rbp)
	movq	-24(%rbp), %rax
	movl	96(%rax), %edx
	movq	-24(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	%eax, %edx
	setg	%al
	movb	%al, -10(%rbp)
	movq	-24(%rbp), %rax
	movl	108(%rax), %edx
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	%eax, %edx
	setg	%al
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L177
	call	__stack_chk_fail@PLT
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1053:
	.size	_Z18FusionAhrsGetFlagsPK10FusionAhrs, .-_Z18FusionAhrsGetFlagsPK10FusionAhrs
	.globl	_Z20FusionAhrsSetHeadingP10FusionAhrsf
	.type	_Z20FusionAhrsSetHeadingP10FusionAhrsf, @function
_Z20FusionAhrsSetHeadingP10FusionAhrsf:
.LFB1054:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movss	%xmm0, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movss	32(%rax), %xmm1
	movq	-72(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	36(%rax), %xmm2
	movq	-72(%rbp), %rax
	movss	36(%rax), %xmm1
	mulss	%xmm2, %xmm1
	movaps	%xmm0, %xmm3
	subss	%xmm1, %xmm3
	movq	-72(%rbp), %rax
	movss	24(%rax), %xmm1
	movq	-72(%rbp), %rax
	movss	36(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-72(%rbp), %rax
	movss	28(%rax), %xmm2
	movq	-72(%rbp), %rax
	movss	32(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movaps	%xmm3, %xmm1
	movd	%eax, %xmm0
	call	atan2f@PLT
	movd	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movl	-76(%rbp), %eax
	movd	%eax, %xmm0
	call	_ZL22FusionDegreesToRadiansf
	movss	-56(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	-52(%rbp), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	movd	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	movd	%eax, %xmm0
	call	sinf@PLT
	movd	%xmm0, %eax
	movss	.LC9(%rip), %xmm0
	movd	%eax, %xmm4
	xorps	%xmm0, %xmm4
	movaps	%xmm4, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-72(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	24(%rax), %xmm2
	movq	32(%rax), %xmm0
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL24FusionQuaternionMultiply16FusionQuaternionS_
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, 24(%rbx)
	movq	%xmm0, 32(%rbx)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L179
	call	__stack_chk_fail@PLT
.L179:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1054:
	.size	_Z20FusionAhrsSetHeadingP10FusionAhrsf, .-_Z20FusionAhrsSetHeadingP10FusionAhrsf
	.section	.rodata
	.align 4
.LC0:
	.long	1016003125
	.align 4
.LC1:
	.long	1113927392
	.align 4
.LC2:
	.long	-1082130432
	.align 4
.LC3:
	.long	-1077342245
	.align 4
.LC4:
	.long	1065353216
	.align 4
.LC5:
	.long	1070141403
	.align 4
.LC6:
	.long	1060557586
	.align 4
.LC7:
	.long	1071141375
	.align 4
.LC8:
	.long	0
	.align 16
.LC9:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC10:
	.long	1056964608
	.align 4
.LC11:
	.long	1119092736
	.align 4
.LC12:
	.long	1092616192
	.align 4
.LC13:
	.long	1065017672
	.align 4
.LC14:
	.long	2139095039
	.align 4
.LC15:
	.long	1073741824
	.align 4
.LC16:
	.long	1077936128
	.align 16
.LC17:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (GNU) 15.2.1 20260103"
	.section	.note.GNU-stack,"",@progbits
