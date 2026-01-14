	.file	"FusionCompass.c"
	.text
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
	movss	.LC0(%rip), %xmm0
	mulss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1016:
	.size	_ZL22FusionRadiansToDegreesf, .-_ZL22FusionRadiansToDegreesf
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
	movss	.LC1(%rip), %xmm0
	mulss	%xmm0, %xmm2
	movss	-4(%rbp), %xmm0
	mulss	%xmm0, %xmm2
	movss	-4(%rbp), %xmm0
	mulss	%xmm0, %xmm2
	movss	.LC2(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1018:
	.size	_ZL21FusionFastInverseSqrtf, .-_ZL21FusionFastInverseSqrtf
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
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
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
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1025:
	.size	_ZL24FusionVectorCrossProduct12FusionVectorS_, .-_ZL24FusionVectorCrossProduct12FusionVectorS_
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
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1027:
	.size	_ZL28FusionVectorMagnitudeSquared12FusionVector, .-_ZL28FusionVectorMagnitudeSquared12FusionVector
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
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	movq	%rdx, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1029:
	.size	_ZL21FusionVectorNormalise12FusionVector, .-_ZL21FusionVectorNormalise12FusionVector
	.globl	_Z13FusionCompass16FusionConvention12FusionVectorS0_
	.type	_Z13FusionCompass16FusionConvention12FusionVectorS0_, @function
_Z13FusionCompass16FusionConvention12FusionVectorS0_:
.LFB1037:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -84(%rbp)
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movdqa	%xmm2, %xmm0
	movq	%xmm3, %rdx
	movq	%rax, -100(%rbp)
	movl	-92(%rbp), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movl	%eax, -92(%rbp)
	movq	%xmm0, -116(%rbp)
	movl	-108(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -108(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-84(%rbp), %eax
	cmpl	$2, %eax
	je	.L23
	cmpl	$2, %eax
	jg	.L24
	testl	%eax, %eax
	je	.L25
	cmpl	$1, %eax
	je	.L26
	jmp	.L24
.L25:
	movq	-116(%rbp), %xmm2
	movd	-108(%rbp), %xmm0
	movq	-100(%rbp), %rax
	movd	-92(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -80(%rbp)
	movl	-72(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -72(%rbp)
	movq	-80(%rbp), %rax
	movd	-72(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL21FusionVectorNormalise12FusionVector
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-100(%rbp), %xmm2
	movd	-92(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movd	-24(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -68(%rbp)
	movl	-60(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -60(%rbp)
	movq	-68(%rbp), %rax
	movd	-60(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL21FusionVectorNormalise12FusionVector
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -20(%rbp)
	movl	-12(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movss	-20(%rbp), %xmm0
	movl	-32(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	atan2f@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	_ZL22FusionRadiansToDegreesf
	movd	%xmm0, %eax
	jmp	.L27
.L26:
	movq	-116(%rbp), %xmm2
	movd	-108(%rbp), %xmm0
	movq	-100(%rbp), %rax
	movd	-92(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -56(%rbp)
	movl	-48(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movq	-56(%rbp), %rax
	movd	-48(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL21FusionVectorNormalise12FusionVector
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -68(%rbp)
	movl	-60(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -60(%rbp)
	movq	-100(%rbp), %xmm2
	movd	-92(%rbp), %xmm0
	movq	-68(%rbp), %rax
	movd	-60(%rbp), %xmm1
	movdqa	%xmm0, %xmm3
	movq	%rax, %xmm0
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -44(%rbp)
	movl	-36(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-44(%rbp), %rax
	movd	-36(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL21FusionVectorNormalise12FusionVector
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-68(%rbp), %rax
	movd	-60(%rbp), %xmm1
	movss	.LC3(%rip), %xmm2
	movq	%rax, %xmm0
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -20(%rbp)
	movl	-12(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movss	-20(%rbp), %xmm0
	movl	-32(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	atan2f@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	_ZL22FusionRadiansToDegreesf
	movd	%xmm0, %eax
	jmp	.L27
.L23:
	movq	-100(%rbp), %rax
	movd	-92(%rbp), %xmm1
	movss	.LC3(%rip), %xmm2
	movq	%rax, %xmm0
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -68(%rbp)
	movl	-60(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -60(%rbp)
	movq	-116(%rbp), %xmm2
	movd	-108(%rbp), %xmm0
	movq	-68(%rbp), %rax
	movd	-60(%rbp), %xmm1
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
	movq	-32(%rbp), %rax
	movd	-24(%rbp), %xmm1
	movq	%rax, %xmm0
	call	_ZL21FusionVectorNormalise12FusionVector
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -56(%rbp)
	movl	-48(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movq	-68(%rbp), %xmm2
	movd	-60(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movd	-48(%rbp), %xmm1
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
	movq	%rax, -44(%rbp)
	movl	-36(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movss	-44(%rbp), %xmm0
	movl	-56(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	atan2f@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	call	_ZL22FusionRadiansToDegreesf
	movd	%xmm0, %eax
	jmp	.L27
.L24:
	movl	.LC4(%rip), %eax
.L27:
	movd	%eax, %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1037:
	.size	_Z13FusionCompass16FusionConvention12FusionVectorS0_, .-_Z13FusionCompass16FusionConvention12FusionVectorS0_
	.section	.rodata
	.align 4
.LC0:
	.long	1113927392
	.align 4
.LC1:
	.long	1060557586
	.align 4
.LC2:
	.long	1071141375
	.align 4
.LC3:
	.long	-1082130432
	.align 4
.LC4:
	.long	0
	.ident	"GCC: (GNU) 15.2.1 20260103"
	.section	.note.GNU-stack,"",@progbits
