	.file	"FusionAhrs.c"
# GNU C++17 (GCC) version 15.2.1 20260103 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.1 20260103, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64
	.text
	.type	_ZL22FusionDegreesToRadiansf, @function
_ZL22FusionDegreesToRadiansf:
.LFB1015:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)	# degrees, degrees
# FusionMath.h:128:     return degrees * ((float) M_PI / 180.0f);
	movss	-4(%rbp), %xmm1	# degrees, tmp100
	movss	.LC0(%rip), %xmm0	#, tmp101
	mulss	%xmm1, %xmm0	# tmp100, _2
# FusionMath.h:129: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1015:
	.size	_ZL22FusionDegreesToRadiansf, .-_ZL22FusionDegreesToRadiansf
	.type	_ZL22FusionRadiansToDegreesf, @function
_ZL22FusionRadiansToDegreesf:
.LFB1016:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)	# radians, radians
# FusionMath.h:137:     return radians * (180.0f / (float) M_PI);
	movss	-4(%rbp), %xmm1	# radians, tmp100
	movss	.LC1(%rip), %xmm0	#, tmp101
	mulss	%xmm1, %xmm0	# tmp100, _2
# FusionMath.h:138: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1016:
	.size	_ZL22FusionRadiansToDegreesf, .-_ZL22FusionRadiansToDegreesf
	.type	_ZL10FusionAsinf, @function
_ZL10FusionAsinf:
.LFB1017:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# value, value
# FusionMath.h:149:     if (value <= -1.0f) {
	movss	.LC2(%rip), %xmm0	#, tmp100
	comiss	-4(%rbp), %xmm0	# value, tmp100
	jb	.L13	#,
# FusionMath.h:150:         return (float) M_PI / -2.0f;
	movl	.LC3(%rip), %eax	#, _1
	jmp	.L8	#
.L13:
# FusionMath.h:152:     if (value >= 1.0f) {
	movss	-4(%rbp), %xmm0	# value, tmp101
	movss	.LC4(%rip), %xmm1	#, tmp102
	comiss	%xmm1, %xmm0	# tmp102, tmp101
	jb	.L14	#,
# FusionMath.h:153:         return (float) M_PI / 2.0f;
	movl	.LC5(%rip), %eax	#, _1
	jmp	.L8	#
.L14:
# FusionMath.h:155:     return asinf(value);
	movl	-4(%rbp), %eax	# value, tmp103
	movd	%eax, %xmm0	# tmp103,
	call	asinf@PLT	#
	movd	%xmm0, %eax	#, _1
# FusionMath.h:155:     return asinf(value);
	nop	
.L8:
# FusionMath.h:156: }
	movd	%eax, %xmm0	# _1, <retval>
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -20(%rbp)	# x, x
# FusionMath.h:175:     Union32 union32 = {.f = x};
	movss	-20(%rbp), %xmm0	# x, tmp110
	movss	%xmm0, -4(%rbp)	# tmp110, union32.f
# FusionMath.h:176:     union32.i = 0x5F1F1412 - (union32.i >> 1);
	movl	-4(%rbp), %eax	# union32.i, _1
# FusionMath.h:176:     union32.i = 0x5F1F1412 - (union32.i >> 1);
	sarl	%eax	# _1
	movl	%eax, %edx	# _1, _2
# FusionMath.h:176:     union32.i = 0x5F1F1412 - (union32.i >> 1);
	movl	$1595872274, %eax	#, tmp111
	subl	%edx, %eax	# _2, _3
# FusionMath.h:176:     union32.i = 0x5F1F1412 - (union32.i >> 1);
	movl	%eax, -4(%rbp)	# _3, union32.i
# FusionMath.h:177:     return union32.f * (1.69000231f - 0.714158168f * x * union32.f * union32.f);
	movss	-4(%rbp), %xmm1	# union32.f, _4
# FusionMath.h:177:     return union32.f * (1.69000231f - 0.714158168f * x * union32.f * union32.f);
	movss	-20(%rbp), %xmm2	# x, tmp112
	movss	.LC6(%rip), %xmm0	#, tmp113
	mulss	%xmm0, %xmm2	# tmp113, _5
# FusionMath.h:177:     return union32.f * (1.69000231f - 0.714158168f * x * union32.f * union32.f);
	movss	-4(%rbp), %xmm0	# union32.f, _6
# FusionMath.h:177:     return union32.f * (1.69000231f - 0.714158168f * x * union32.f * union32.f);
	mulss	%xmm0, %xmm2	# _6, _7
# FusionMath.h:177:     return union32.f * (1.69000231f - 0.714158168f * x * union32.f * union32.f);
	movss	-4(%rbp), %xmm0	# union32.f, _8
# FusionMath.h:177:     return union32.f * (1.69000231f - 0.714158168f * x * union32.f * union32.f);
	mulss	%xmm0, %xmm2	# _8, _9
# FusionMath.h:177:     return union32.f * (1.69000231f - 0.714158168f * x * union32.f * union32.f);
	movss	.LC7(%rip), %xmm0	#, tmp114
	subss	%xmm2, %xmm0	# _9, _10
# FusionMath.h:177:     return union32.f * (1.69000231f - 0.714158168f * x * union32.f * union32.f);
	mulss	%xmm1, %xmm0	# _4, _15
# FusionMath.h:178: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1018:
	.size	_ZL21FusionFastInverseSqrtf, .-_ZL21FusionFastInverseSqrtf
	.type	_ZL18FusionVectorIsZero12FusionVector, @function
_ZL18FusionVectorIsZero12FusionVector:
.LFB1019:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%xmm0, %rax	# vector, tmp103
	movq	%xmm1, %rdx	# vector, tmp104
	movq	%rax, -16(%rbp)	# tmp103, vector
	movl	-8(%rbp), %eax	# vector, tmp106
	andl	$0, %eax	#, tmp107
	orl	%edx, %eax	# tmp104, tmp108
	movl	%eax, -8(%rbp)	# tmp108, vector
# FusionMath.h:191:     return (vector.axis.x == 0.0f) && (vector.axis.y == 0.0f) && (vector.axis.z == 0.0f);
	movss	-16(%rbp), %xmm0	# vector.axis.x, _1
# FusionMath.h:191:     return (vector.axis.x == 0.0f) && (vector.axis.y == 0.0f) && (vector.axis.z == 0.0f);
	pxor	%xmm1, %xmm1	# tmp109
	ucomiss	%xmm1, %xmm0	# tmp109, _1
	jp	.L18	#,
	pxor	%xmm1, %xmm1	# tmp110
	ucomiss	%xmm1, %xmm0	# tmp110, _1
	jne	.L18	#,
# FusionMath.h:191:     return (vector.axis.x == 0.0f) && (vector.axis.y == 0.0f) && (vector.axis.z == 0.0f);
	movss	-12(%rbp), %xmm0	# vector.axis.y, _2
# FusionMath.h:191:     return (vector.axis.x == 0.0f) && (vector.axis.y == 0.0f) && (vector.axis.z == 0.0f);
	pxor	%xmm1, %xmm1	# tmp111
	ucomiss	%xmm1, %xmm0	# tmp111, _2
	jp	.L18	#,
	pxor	%xmm1, %xmm1	# tmp112
	ucomiss	%xmm1, %xmm0	# tmp112, _2
	jne	.L18	#,
# FusionMath.h:191:     return (vector.axis.x == 0.0f) && (vector.axis.y == 0.0f) && (vector.axis.z == 0.0f);
	movss	-8(%rbp), %xmm0	# vector.axis.z, _3
# FusionMath.h:191:     return (vector.axis.x == 0.0f) && (vector.axis.y == 0.0f) && (vector.axis.z == 0.0f);
	pxor	%xmm1, %xmm1	# tmp113
	ucomiss	%xmm1, %xmm0	# tmp113, _3
	jp	.L18	#,
	pxor	%xmm1, %xmm1	# tmp114
	ucomiss	%xmm1, %xmm0	# tmp114, _3
	jne	.L18	#,
# FusionMath.h:191:     return (vector.axis.x == 0.0f) && (vector.axis.y == 0.0f) && (vector.axis.z == 0.0f);
	movl	$1, %eax	#, iftmp.9_4
# FusionMath.h:191:     return (vector.axis.x == 0.0f) && (vector.axis.y == 0.0f) && (vector.axis.z == 0.0f);
	jmp	.L22	#
.L18:
# FusionMath.h:191:     return (vector.axis.x == 0.0f) && (vector.axis.y == 0.0f) && (vector.axis.z == 0.0f);
	movl	$0, %eax	#, iftmp.9_4
.L22:
# FusionMath.h:192: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1019:
	.size	_ZL18FusionVectorIsZero12FusionVector, .-_ZL18FusionVectorIsZero12FusionVector
	.type	_ZL15FusionVectorAdd12FusionVectorS_, @function
_ZL15FusionVectorAdd12FusionVectorS_:
.LFB1020:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%xmm0, %rax	# vectorA, tmp109
	movq	%xmm1, %rcx	# vectorA, tmp110
	movdqa	%xmm2, %xmm0	# vectorB, tmp115
	movq	%xmm3, %rdx	# vectorB, tmp116
	movq	%rax, -48(%rbp)	# tmp109, vectorA
	movl	-40(%rbp), %eax	# vectorA, tmp112
	andl	$0, %eax	#, tmp113
	orl	%ecx, %eax	# tmp110, tmp114
	movl	%eax, -40(%rbp)	# tmp114, vectorA
	movq	%xmm0, -64(%rbp)	# tmp115, vectorB
	movl	-56(%rbp), %eax	# vectorB, tmp118
	andl	$0, %eax	#, tmp119
	orl	%edx, %eax	# tmp116, tmp120
	movl	%eax, -56(%rbp)	# tmp120, vectorB
# FusionMath.h:200: static inline FusionVector FusionVectorAdd(const FusionVector vectorA, const FusionVector vectorB) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	movq	%rax, -8(%rbp)	# tmp121, D.27416
	xorl	%eax, %eax	# tmp121
# FusionMath.h:203:             .x = vectorA.axis.x + vectorB.axis.x,
	movss	-48(%rbp), %xmm1	# vectorA.axis.x, _1
# FusionMath.h:203:             .x = vectorA.axis.x + vectorB.axis.x,
	movss	-64(%rbp), %xmm0	# vectorB.axis.x, _2
# FusionMath.h:203:             .x = vectorA.axis.x + vectorB.axis.x,
	addss	%xmm1, %xmm0	# _1, _3
# FusionMath.h:207:     };
	movss	%xmm0, -32(%rbp)	# _3, result.axis.x
# FusionMath.h:204:             .y = vectorA.axis.y + vectorB.axis.y,
	movss	-44(%rbp), %xmm1	# vectorA.axis.y, _4
# FusionMath.h:204:             .y = vectorA.axis.y + vectorB.axis.y,
	movss	-60(%rbp), %xmm0	# vectorB.axis.y, _5
# FusionMath.h:204:             .y = vectorA.axis.y + vectorB.axis.y,
	addss	%xmm1, %xmm0	# _4, _6
# FusionMath.h:207:     };
	movss	%xmm0, -28(%rbp)	# _6, result.axis.y
# FusionMath.h:205:             .z = vectorA.axis.z + vectorB.axis.z,
	movss	-40(%rbp), %xmm1	# vectorA.axis.z, _7
# FusionMath.h:205:             .z = vectorA.axis.z + vectorB.axis.z,
	movss	-56(%rbp), %xmm0	# vectorB.axis.z, _8
# FusionMath.h:205:             .z = vectorA.axis.z + vectorB.axis.z,
	addss	%xmm1, %xmm0	# _7, _9
# FusionMath.h:207:     };
	movss	%xmm0, -24(%rbp)	# _9, result.axis.z
# FusionMath.h:208:     return result;
	movq	-32(%rbp), %rax	# result, tmp122
	movq	%rax, -20(%rbp)	# tmp122, D.27316
	movl	-24(%rbp), %eax	# result, tmp123
	movl	%eax, -12(%rbp)	# tmp123, D.27316
	movq	-20(%rbp), %rdx	# D.27316, tmp124
	movl	-12(%rbp), %eax	# D.27316, tmp125
	movq	%rax, %xmm1	# tmp125, <retval>
# FusionMath.h:209: }
	movq	-8(%rbp), %rax	# D.27416, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L29	#,
	call	__stack_chk_fail@PLT	#
.L29:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%xmm0, %rax	# vectorA, tmp109
	movq	%xmm1, %rcx	# vectorA, tmp110
	movdqa	%xmm2, %xmm0	# vectorB, tmp115
	movq	%xmm3, %rdx	# vectorB, tmp116
	movq	%rax, -48(%rbp)	# tmp109, vectorA
	movl	-40(%rbp), %eax	# vectorA, tmp112
	andl	$0, %eax	#, tmp113
	orl	%ecx, %eax	# tmp110, tmp114
	movl	%eax, -40(%rbp)	# tmp114, vectorA
	movq	%xmm0, -64(%rbp)	# tmp115, vectorB
	movl	-56(%rbp), %eax	# vectorB, tmp118
	andl	$0, %eax	#, tmp119
	orl	%edx, %eax	# tmp116, tmp120
	movl	%eax, -56(%rbp)	# tmp120, vectorB
# FusionMath.h:217: static inline FusionVector FusionVectorSubtract(const FusionVector vectorA, const FusionVector vectorB) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	movq	%rax, -8(%rbp)	# tmp121, D.27418
	xorl	%eax, %eax	# tmp121
# FusionMath.h:220:             .x = vectorA.axis.x - vectorB.axis.x,
	movss	-48(%rbp), %xmm0	# vectorA.axis.x, _1
# FusionMath.h:220:             .x = vectorA.axis.x - vectorB.axis.x,
	movss	-64(%rbp), %xmm1	# vectorB.axis.x, _2
# FusionMath.h:220:             .x = vectorA.axis.x - vectorB.axis.x,
	subss	%xmm1, %xmm0	# _2, _3
# FusionMath.h:224:     };
	movss	%xmm0, -32(%rbp)	# _3, result.axis.x
# FusionMath.h:221:             .y = vectorA.axis.y - vectorB.axis.y,
	movss	-44(%rbp), %xmm0	# vectorA.axis.y, _4
# FusionMath.h:221:             .y = vectorA.axis.y - vectorB.axis.y,
	movss	-60(%rbp), %xmm1	# vectorB.axis.y, _5
# FusionMath.h:221:             .y = vectorA.axis.y - vectorB.axis.y,
	subss	%xmm1, %xmm0	# _5, _6
# FusionMath.h:224:     };
	movss	%xmm0, -28(%rbp)	# _6, result.axis.y
# FusionMath.h:222:             .z = vectorA.axis.z - vectorB.axis.z,
	movss	-40(%rbp), %xmm0	# vectorA.axis.z, _7
# FusionMath.h:222:             .z = vectorA.axis.z - vectorB.axis.z,
	movss	-56(%rbp), %xmm1	# vectorB.axis.z, _8
# FusionMath.h:222:             .z = vectorA.axis.z - vectorB.axis.z,
	subss	%xmm1, %xmm0	# _8, _9
# FusionMath.h:224:     };
	movss	%xmm0, -24(%rbp)	# _9, result.axis.z
# FusionMath.h:225:     return result;
	movq	-32(%rbp), %rax	# result, tmp122
	movq	%rax, -20(%rbp)	# tmp122, D.27346
	movl	-24(%rbp), %eax	# result, tmp123
	movl	%eax, -12(%rbp)	# tmp123, D.27346
	movq	-20(%rbp), %rdx	# D.27346, tmp124
	movl	-12(%rbp), %eax	# D.27346, tmp125
	movq	%rax, %xmm1	# tmp125, <retval>
# FusionMath.h:226: }
	movq	-8(%rbp), %rax	# D.27418, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L32	#,
	call	__stack_chk_fail@PLT	#
.L32:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%xmm0, %rax	# vector, tmp104
	movq	%xmm1, %rdx	# vector, tmp105
	movq	%rax, -16(%rbp)	# tmp104, vector
	movl	-8(%rbp), %eax	# vector, tmp107
	andl	$0, %eax	#, tmp108
	orl	%edx, %eax	# tmp105, tmp109
	movl	%eax, -8(%rbp)	# tmp109, vector
# FusionMath.h:234:     return vector.axis.x + vector.axis.y + vector.axis.z;
	movss	-16(%rbp), %xmm1	# vector.axis.x, _1
# FusionMath.h:234:     return vector.axis.x + vector.axis.y + vector.axis.z;
	movss	-12(%rbp), %xmm0	# vector.axis.y, _2
# FusionMath.h:234:     return vector.axis.x + vector.axis.y + vector.axis.z;
	addss	%xmm0, %xmm1	# _2, _3
# FusionMath.h:234:     return vector.axis.x + vector.axis.y + vector.axis.z;
	movss	-8(%rbp), %xmm0	# vector.axis.z, _4
	addss	%xmm1, %xmm0	# _3, _6
# FusionMath.h:235: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1022:
	.size	_ZL15FusionVectorSum12FusionVector, .-_ZL15FusionVectorSum12FusionVector
	.type	_ZL26FusionVectorMultiplyScalar12FusionVectorf, @function
_ZL26FusionVectorMultiplyScalar12FusionVectorf:
.LFB1023:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%xmm0, %rax	# vector, tmp106
	movq	%xmm1, %rdx	# vector, tmp107
	movss	%xmm2, -52(%rbp)	# scalar, scalar
	movq	%rax, -48(%rbp)	# tmp106, vector
	movl	-40(%rbp), %eax	# vector, tmp109
	andl	$0, %eax	#, tmp110
	orl	%edx, %eax	# tmp107, tmp111
	movl	%eax, -40(%rbp)	# tmp111, vector
# FusionMath.h:243: static inline FusionVector FusionVectorMultiplyScalar(const FusionVector vector, const float scalar) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	movq	%rax, -8(%rbp)	# tmp112, D.27419
	xorl	%eax, %eax	# tmp112
# FusionMath.h:246:             .x = vector.axis.x * scalar,
	movss	-48(%rbp), %xmm0	# vector.axis.x, _1
# FusionMath.h:246:             .x = vector.axis.x * scalar,
	mulss	-52(%rbp), %xmm0	# scalar, _2
# FusionMath.h:250:     };
	movss	%xmm0, -32(%rbp)	# _2, result.axis.x
# FusionMath.h:247:             .y = vector.axis.y * scalar,
	movss	-44(%rbp), %xmm0	# vector.axis.y, _3
# FusionMath.h:247:             .y = vector.axis.y * scalar,
	mulss	-52(%rbp), %xmm0	# scalar, _4
# FusionMath.h:250:     };
	movss	%xmm0, -28(%rbp)	# _4, result.axis.y
# FusionMath.h:248:             .z = vector.axis.z * scalar,
	movss	-40(%rbp), %xmm0	# vector.axis.z, _5
# FusionMath.h:248:             .z = vector.axis.z * scalar,
	mulss	-52(%rbp), %xmm0	# scalar, _6
# FusionMath.h:250:     };
	movss	%xmm0, -24(%rbp)	# _6, result.axis.z
# FusionMath.h:251:     return result;
	movq	-32(%rbp), %rax	# result, tmp113
	movq	%rax, -20(%rbp)	# tmp113, D.27319
	movl	-24(%rbp), %eax	# result, tmp114
	movl	%eax, -12(%rbp)	# tmp114, D.27319
	movq	-20(%rbp), %rdx	# D.27319, tmp115
	movl	-12(%rbp), %eax	# D.27319, tmp116
	movq	%rax, %xmm1	# tmp116, <retval>
# FusionMath.h:252: }
	movq	-8(%rbp), %rax	# D.27419, tmp117
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	je	.L37	#,
	call	__stack_chk_fail@PLT	#
.L37:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%xmm0, %rax	# vectorA, tmp109
	movq	%xmm1, %rcx	# vectorA, tmp110
	movdqa	%xmm2, %xmm0	# vectorB, tmp115
	movq	%xmm3, %rdx	# vectorB, tmp116
	movq	%rax, -48(%rbp)	# tmp109, vectorA
	movl	-40(%rbp), %eax	# vectorA, tmp112
	andl	$0, %eax	#, tmp113
	orl	%ecx, %eax	# tmp110, tmp114
	movl	%eax, -40(%rbp)	# tmp114, vectorA
	movq	%xmm0, -64(%rbp)	# tmp115, vectorB
	movl	-56(%rbp), %eax	# vectorB, tmp118
	andl	$0, %eax	#, tmp119
	orl	%edx, %eax	# tmp116, tmp120
	movl	%eax, -56(%rbp)	# tmp120, vectorB
# FusionMath.h:260: static inline FusionVector FusionVectorHadamardProduct(const FusionVector vectorA, const FusionVector vectorB) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	movq	%rax, -8(%rbp)	# tmp121, D.27420
	xorl	%eax, %eax	# tmp121
# FusionMath.h:263:             .x = vectorA.axis.x * vectorB.axis.x,
	movss	-48(%rbp), %xmm1	# vectorA.axis.x, _1
# FusionMath.h:263:             .x = vectorA.axis.x * vectorB.axis.x,
	movss	-64(%rbp), %xmm0	# vectorB.axis.x, _2
# FusionMath.h:263:             .x = vectorA.axis.x * vectorB.axis.x,
	mulss	%xmm1, %xmm0	# _1, _3
# FusionMath.h:267:     };
	movss	%xmm0, -32(%rbp)	# _3, result.axis.x
# FusionMath.h:264:             .y = vectorA.axis.y * vectorB.axis.y,
	movss	-44(%rbp), %xmm1	# vectorA.axis.y, _4
# FusionMath.h:264:             .y = vectorA.axis.y * vectorB.axis.y,
	movss	-60(%rbp), %xmm0	# vectorB.axis.y, _5
# FusionMath.h:264:             .y = vectorA.axis.y * vectorB.axis.y,
	mulss	%xmm1, %xmm0	# _4, _6
# FusionMath.h:267:     };
	movss	%xmm0, -28(%rbp)	# _6, result.axis.y
# FusionMath.h:265:             .z = vectorA.axis.z * vectorB.axis.z,
	movss	-40(%rbp), %xmm1	# vectorA.axis.z, _7
# FusionMath.h:265:             .z = vectorA.axis.z * vectorB.axis.z,
	movss	-56(%rbp), %xmm0	# vectorB.axis.z, _8
# FusionMath.h:265:             .z = vectorA.axis.z * vectorB.axis.z,
	mulss	%xmm1, %xmm0	# _7, _9
# FusionMath.h:267:     };
	movss	%xmm0, -24(%rbp)	# _9, result.axis.z
# FusionMath.h:268:     return result;
	movq	-32(%rbp), %rax	# result, tmp122
	movq	%rax, -20(%rbp)	# tmp122, D.27302
	movl	-24(%rbp), %eax	# result, tmp123
	movl	%eax, -12(%rbp)	# tmp123, D.27302
	movq	-20(%rbp), %rdx	# D.27302, tmp124
	movl	-12(%rbp), %eax	# D.27302, tmp125
	movq	%rax, %xmm1	# tmp125, <retval>
# FusionMath.h:269: }
	movq	-8(%rbp), %rax	# D.27420, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L40	#,
	call	__stack_chk_fail@PLT	#
.L40:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%xmm0, %rax	# vectorA, tmp121
	movq	%xmm1, %rcx	# vectorA, tmp122
	movdqa	%xmm2, %xmm0	# vectorB, tmp127
	movq	%xmm3, %rdx	# vectorB, tmp128
	movq	%rax, -48(%rbp)	# tmp121, vectorA
	movl	-40(%rbp), %eax	# vectorA, tmp124
	andl	$0, %eax	#, tmp125
	orl	%ecx, %eax	# tmp122, tmp126
	movl	%eax, -40(%rbp)	# tmp126, vectorA
	movq	%xmm0, -64(%rbp)	# tmp127, vectorB
	movl	-56(%rbp), %eax	# vectorB, tmp130
	andl	$0, %eax	#, tmp131
	orl	%edx, %eax	# tmp128, tmp132
	movl	%eax, -56(%rbp)	# tmp132, vectorB
# FusionMath.h:277: static inline FusionVector FusionVectorCrossProduct(const FusionVector vectorA, const FusionVector vectorB) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp133
	movq	%rax, -8(%rbp)	# tmp133, D.27421
	xorl	%eax, %eax	# tmp133
# FusionMath.h:282:             .x = A.y * B.z - A.z * B.y,
	movss	-44(%rbp), %xmm1	# vectorA.axis.y, _1
# FusionMath.h:282:             .x = A.y * B.z - A.z * B.y,
	movss	-56(%rbp), %xmm0	# vectorB.axis.z, _2
# FusionMath.h:282:             .x = A.y * B.z - A.z * B.y,
	mulss	%xmm1, %xmm0	# _1, _3
# FusionMath.h:282:             .x = A.y * B.z - A.z * B.y,
	movss	-40(%rbp), %xmm2	# vectorA.axis.z, _4
# FusionMath.h:282:             .x = A.y * B.z - A.z * B.y,
	movss	-60(%rbp), %xmm1	# vectorB.axis.y, _5
# FusionMath.h:282:             .x = A.y * B.z - A.z * B.y,
	mulss	%xmm2, %xmm1	# _4, _6
# FusionMath.h:282:             .x = A.y * B.z - A.z * B.y,
	subss	%xmm1, %xmm0	# _6, _7
# FusionMath.h:286:     };
	movss	%xmm0, -32(%rbp)	# _7, result.axis.x
# FusionMath.h:283:             .y = A.z * B.x - A.x * B.z,
	movss	-40(%rbp), %xmm1	# vectorA.axis.z, _8
# FusionMath.h:283:             .y = A.z * B.x - A.x * B.z,
	movss	-64(%rbp), %xmm0	# vectorB.axis.x, _9
# FusionMath.h:283:             .y = A.z * B.x - A.x * B.z,
	mulss	%xmm1, %xmm0	# _8, _10
# FusionMath.h:283:             .y = A.z * B.x - A.x * B.z,
	movss	-48(%rbp), %xmm2	# vectorA.axis.x, _11
# FusionMath.h:283:             .y = A.z * B.x - A.x * B.z,
	movss	-56(%rbp), %xmm1	# vectorB.axis.z, _12
# FusionMath.h:283:             .y = A.z * B.x - A.x * B.z,
	mulss	%xmm2, %xmm1	# _11, _13
# FusionMath.h:283:             .y = A.z * B.x - A.x * B.z,
	subss	%xmm1, %xmm0	# _13, _14
# FusionMath.h:286:     };
	movss	%xmm0, -28(%rbp)	# _14, result.axis.y
# FusionMath.h:284:             .z = A.x * B.y - A.y * B.x,
	movss	-48(%rbp), %xmm1	# vectorA.axis.x, _15
# FusionMath.h:284:             .z = A.x * B.y - A.y * B.x,
	movss	-60(%rbp), %xmm0	# vectorB.axis.y, _16
# FusionMath.h:284:             .z = A.x * B.y - A.y * B.x,
	mulss	%xmm1, %xmm0	# _15, _17
# FusionMath.h:284:             .z = A.x * B.y - A.y * B.x,
	movss	-44(%rbp), %xmm2	# vectorA.axis.y, _18
# FusionMath.h:284:             .z = A.x * B.y - A.y * B.x,
	movss	-64(%rbp), %xmm1	# vectorB.axis.x, _19
# FusionMath.h:284:             .z = A.x * B.y - A.y * B.x,
	mulss	%xmm2, %xmm1	# _18, _20
# FusionMath.h:284:             .z = A.x * B.y - A.y * B.x,
	subss	%xmm1, %xmm0	# _20, _21
# FusionMath.h:286:     };
	movss	%xmm0, -24(%rbp)	# _21, result.axis.z
# FusionMath.h:289:     return result;
	movq	-32(%rbp), %rax	# result, tmp134
	movq	%rax, -20(%rbp)	# tmp134, D.27285
	movl	-24(%rbp), %eax	# result, tmp135
	movl	%eax, -12(%rbp)	# tmp135, D.27285
	movq	-20(%rbp), %rdx	# D.27285, tmp136
	movl	-12(%rbp), %eax	# D.27285, tmp137
	movq	%rax, %xmm1	# tmp137, <retval>
# FusionMath.h:290: }
	movq	-8(%rbp), %rax	# D.27421, tmp138
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp138
	je	.L43	#,
	call	__stack_chk_fail@PLT	#
.L43:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%xmm0, %rax	# vectorA, tmp100
	movq	%xmm1, %rcx	# vectorA, tmp101
	movdqa	%xmm2, %xmm0	# vectorB, tmp106
	movq	%xmm3, %rdx	# vectorB, tmp107
	movq	%rax, -48(%rbp)	# tmp100, vectorA
	movl	-40(%rbp), %eax	# vectorA, tmp103
	andl	$0, %eax	#, tmp104
	orl	%ecx, %eax	# tmp101, tmp105
	movl	%eax, -40(%rbp)	# tmp105, vectorA
	movq	%xmm0, -64(%rbp)	# tmp106, vectorB
	movl	-56(%rbp), %eax	# vectorB, tmp109
	andl	$0, %eax	#, tmp110
	orl	%edx, %eax	# tmp107, tmp111
	movl	%eax, -56(%rbp)	# tmp111, vectorB
# FusionMath.h:298: static inline float FusionVectorDotProduct(const FusionVector vectorA, const FusionVector vectorB) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	movq	%rax, -8(%rbp)	# tmp112, D.27422
	xorl	%eax, %eax	# tmp112
# FusionMath.h:299:     return FusionVectorSum(FusionVectorHadamardProduct(vectorA, vectorB));
	movq	-64(%rbp), %xmm2	# vectorB, tmp113
	movd	-56(%rbp), %xmm0	# vectorB, tmp114
	movq	-48(%rbp), %rax	# vectorA, tmp115
	movd	-40(%rbp), %xmm1	# vectorA, tmp116
	movdqa	%xmm0, %xmm3	# tmp114,
	movq	%rax, %xmm0	# tmp115,
	call	_ZL27FusionVectorHadamardProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp117
	movq	%xmm1, %rdx	#, tmp118
	movq	%rax, -20(%rbp)	# tmp117, D.27300
	movl	-12(%rbp), %eax	# D.27300, tmp120
	andl	$0, %eax	#, tmp121
	orl	%edx, %eax	# tmp118, tmp122
	movl	%eax, -12(%rbp)	# tmp122, D.27300
# FusionMath.h:299:     return FusionVectorSum(FusionVectorHadamardProduct(vectorA, vectorB));
	movq	-20(%rbp), %rax	# D.27300, tmp123
	movd	-12(%rbp), %xmm1	# D.27300, tmp124
	movq	%rax, %xmm0	# tmp123,
	call	_ZL15FusionVectorSum12FusionVector	#
# FusionMath.h:300: }
	movq	-8(%rbp), %rax	# D.27422, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L46	#,
	call	__stack_chk_fail@PLT	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%xmm0, %rax	# vector, tmp100
	movq	%xmm1, %rdx	# vector, tmp101
	movq	%rax, -48(%rbp)	# tmp100, vector
	movl	-40(%rbp), %eax	# vector, tmp103
	andl	$0, %eax	#, tmp104
	orl	%edx, %eax	# tmp101, tmp105
	movl	%eax, -40(%rbp)	# tmp105, vector
# FusionMath.h:307: static inline float FusionVectorMagnitudeSquared(const FusionVector vector) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	movq	%rax, -8(%rbp)	# tmp106, D.27423
	xorl	%eax, %eax	# tmp106
# FusionMath.h:308:     return FusionVectorSum(FusionVectorHadamardProduct(vector, vector));
	movq	-48(%rbp), %xmm2	# vector, tmp107
	movd	-40(%rbp), %xmm0	# vector, tmp108
	movq	-48(%rbp), %rax	# vector, tmp109
	movd	-40(%rbp), %xmm1	# vector, tmp110
	movdqa	%xmm0, %xmm3	# tmp108,
	movq	%rax, %xmm0	# tmp109,
	call	_ZL27FusionVectorHadamardProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp111
	movq	%xmm1, %rdx	#, tmp112
	movq	%rax, -20(%rbp)	# tmp111, D.27308
	movl	-12(%rbp), %eax	# D.27308, tmp114
	andl	$0, %eax	#, tmp115
	orl	%edx, %eax	# tmp112, tmp116
	movl	%eax, -12(%rbp)	# tmp116, D.27308
# FusionMath.h:308:     return FusionVectorSum(FusionVectorHadamardProduct(vector, vector));
	movq	-20(%rbp), %rax	# D.27308, tmp117
	movd	-12(%rbp), %xmm1	# D.27308, tmp118
	movq	%rax, %xmm0	# tmp117,
	call	_ZL15FusionVectorSum12FusionVector	#
# FusionMath.h:309: }
	movq	-8(%rbp), %rax	# D.27423, tmp120
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	je	.L49	#,
	call	__stack_chk_fail@PLT	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%xmm0, %rax	# vector, tmp101
	movq	%xmm1, %rdx	# vector, tmp102
	movq	%rax, -16(%rbp)	# tmp101, vector
	movl	-8(%rbp), %eax	# vector, tmp104
	andl	$0, %eax	#, tmp105
	orl	%edx, %eax	# tmp102, tmp106
	movl	%eax, -8(%rbp)	# tmp106, vector
# FusionMath.h:317:     return sqrtf(FusionVectorMagnitudeSquared(vector));
	movq	-16(%rbp), %rax	# vector, tmp107
	movd	-8(%rbp), %xmm1	# vector, tmp108
	movq	%rax, %xmm0	# tmp107,
	call	_ZL28FusionVectorMagnitudeSquared12FusionVector	#
	movd	%xmm0, %eax	#, _1
# FusionMath.h:317:     return sqrtf(FusionVectorMagnitudeSquared(vector));
	movd	%eax, %xmm0	# _1,
	call	sqrtf@PLT	#
# FusionMath.h:318: }
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%xmm0, %rax	# vector, tmp101
	movq	%xmm1, %rdx	# vector, tmp102
	movq	%rax, -48(%rbp)	# tmp101, vector
	movl	-40(%rbp), %eax	# vector, tmp104
	andl	$0, %eax	#, tmp105
	orl	%edx, %eax	# tmp102, tmp106
	movl	%eax, -40(%rbp)	# tmp106, vector
# FusionMath.h:325: static inline FusionVector FusionVectorNormalise(const FusionVector vector) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -8(%rbp)	# tmp107, D.27424
	xorl	%eax, %eax	# tmp107
# FusionMath.h:329:     const float magnitudeReciprocal = FusionFastInverseSqrt(FusionVectorMagnitudeSquared(vector));
	movq	-48(%rbp), %rax	# vector, tmp108
	movd	-40(%rbp), %xmm1	# vector, tmp109
	movq	%rax, %xmm0	# tmp108,
	call	_ZL28FusionVectorMagnitudeSquared12FusionVector	#
	movd	%xmm0, %eax	#, _1
# FusionMath.h:329:     const float magnitudeReciprocal = FusionFastInverseSqrt(FusionVectorMagnitudeSquared(vector));
	movd	%eax, %xmm0	# _1,
	call	_ZL21FusionFastInverseSqrtf	#
	movd	%xmm0, %eax	#, tmp110
	movl	%eax, -24(%rbp)	# tmp110, magnitudeReciprocal
# FusionMath.h:331:     return FusionVectorMultiplyScalar(vector, magnitudeReciprocal);
	movss	-24(%rbp), %xmm0	# magnitudeReciprocal, tmp111
	movq	-48(%rbp), %rax	# vector, tmp112
	movd	-40(%rbp), %xmm1	# vector, tmp113
	movaps	%xmm0, %xmm2	# tmp111,
	movq	%rax, %xmm0	# tmp112,
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf	#
	movq	%xmm0, %rax	#, tmp114
	movq	%xmm1, %rdx	#, tmp115
	movq	%rax, -20(%rbp)	# tmp114, D.27288
	movl	-12(%rbp), %eax	# D.27288, tmp117
	andl	$0, %eax	#, tmp118
	orl	%edx, %eax	# tmp115, tmp119
	movl	%eax, -12(%rbp)	# tmp119, D.27288
# FusionMath.h:331:     return FusionVectorMultiplyScalar(vector, magnitudeReciprocal);
	movq	-20(%rbp), %rdx	# D.27288, tmp120
	movl	-12(%rbp), %eax	# D.27288, tmp121
	movq	%rax, %xmm1	# tmp121, <retval>
# FusionMath.h:332: }
	movq	-8(%rbp), %rax	# D.27424, tmp122
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	je	.L54	#,
	call	__stack_chk_fail@PLT	#
.L54:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%xmm0, %rax	# quaternionA, tmp114
	movdqa	%xmm1, %xmm0	# quaternionA, tmp115
	movq	%rax, %rax	# tmp114, tmp113
	movl	$0, %edx	#,
	movq	%xmm0, %rdx	# tmp115,
	movq	%rax, -48(%rbp)	# tmp113, quaternionA
	movq	%rdx, -40(%rbp)	#, quaternionA
	movq	%xmm2, %rax	# quaternionB, tmp117
	movdqa	%xmm3, %xmm0	# quaternionB, tmp118
	movq	%rax, %rax	# tmp117, tmp116
	movl	$0, %edx	#,
	movq	%xmm0, %rdx	# tmp118,
	movq	%rax, -64(%rbp)	# tmp116, quaternionB
	movq	%rdx, -56(%rbp)	#, quaternionB
# FusionMath.h:343: static inline FusionQuaternion FusionQuaternionAdd(const FusionQuaternion quaternionA, const FusionQuaternion quaternionB) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	movq	%rax, -8(%rbp)	# tmp119, D.27425
	xorl	%eax, %eax	# tmp119
# FusionMath.h:346:             .w = quaternionA.element.w + quaternionB.element.w,
	movss	-48(%rbp), %xmm1	# quaternionA.element.w, _1
# FusionMath.h:346:             .w = quaternionA.element.w + quaternionB.element.w,
	movss	-64(%rbp), %xmm0	# quaternionB.element.w, _2
# FusionMath.h:346:             .w = quaternionA.element.w + quaternionB.element.w,
	addss	%xmm1, %xmm0	# _1, _3
# FusionMath.h:351:     };
	movss	%xmm0, -32(%rbp)	# _3, result.element.w
# FusionMath.h:347:             .x = quaternionA.element.x + quaternionB.element.x,
	movss	-44(%rbp), %xmm1	# quaternionA.element.x, _4
# FusionMath.h:347:             .x = quaternionA.element.x + quaternionB.element.x,
	movss	-60(%rbp), %xmm0	# quaternionB.element.x, _5
# FusionMath.h:347:             .x = quaternionA.element.x + quaternionB.element.x,
	addss	%xmm1, %xmm0	# _4, _6
# FusionMath.h:351:     };
	movss	%xmm0, -28(%rbp)	# _6, result.element.x
# FusionMath.h:348:             .y = quaternionA.element.y + quaternionB.element.y,
	movss	-40(%rbp), %xmm1	# quaternionA.element.y, _7
# FusionMath.h:348:             .y = quaternionA.element.y + quaternionB.element.y,
	movss	-56(%rbp), %xmm0	# quaternionB.element.y, _8
# FusionMath.h:348:             .y = quaternionA.element.y + quaternionB.element.y,
	addss	%xmm1, %xmm0	# _7, _9
# FusionMath.h:351:     };
	movss	%xmm0, -24(%rbp)	# _9, result.element.y
# FusionMath.h:349:             .z = quaternionA.element.z + quaternionB.element.z,
	movss	-36(%rbp), %xmm1	# quaternionA.element.z, _10
# FusionMath.h:349:             .z = quaternionA.element.z + quaternionB.element.z,
	movss	-52(%rbp), %xmm0	# quaternionB.element.z, _11
# FusionMath.h:349:             .z = quaternionA.element.z + quaternionB.element.z,
	addss	%xmm1, %xmm0	# _10, _12
# FusionMath.h:351:     };
	movss	%xmm0, -20(%rbp)	# _12, result.element.z
# FusionMath.h:352:     return result;
	movq	-32(%rbp), %rax	# result, D.27325
	movq	-24(%rbp), %rdx	# result, D.27325
	movq	%rax, %rcx	# D.27325, <retval>
	movq	%rdx, %xmm1	# D.27325, <retval>
# FusionMath.h:353: }
	movq	-8(%rbp), %rax	# D.27425, tmp121
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	je	.L57	#,
	call	__stack_chk_fail@PLT	#
.L57:
	movq	%rcx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%xmm0, %rax	# quaternionA, tmp162
	movdqa	%xmm1, %xmm0	# quaternionA, tmp163
	movq	%rax, %rax	# tmp162, tmp161
	movl	$0, %edx	#,
	movq	%xmm0, %rdx	# tmp163,
	movq	%rax, -48(%rbp)	# tmp161, quaternionA
	movq	%rdx, -40(%rbp)	#, quaternionA
	movq	%xmm2, %rax	# quaternionB, tmp165
	movdqa	%xmm3, %xmm0	# quaternionB, tmp166
	movq	%rax, %rax	# tmp165, tmp164
	movl	$0, %edx	#,
	movq	%xmm0, %rdx	# tmp166,
	movq	%rax, -64(%rbp)	# tmp164, quaternionB
	movq	%rdx, -56(%rbp)	#, quaternionB
# FusionMath.h:361: static inline FusionQuaternion FusionQuaternionMultiply(const FusionQuaternion quaternionA, const FusionQuaternion quaternionB) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp167
	movq	%rax, -8(%rbp)	# tmp167, D.27426
	xorl	%eax, %eax	# tmp167
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	movss	-48(%rbp), %xmm1	# quaternionA.element.w, _1
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	movss	-64(%rbp), %xmm0	# quaternionB.element.w, _2
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	mulss	%xmm1, %xmm0	# _1, _3
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	movss	-44(%rbp), %xmm2	# quaternionA.element.x, _4
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	movss	-60(%rbp), %xmm1	# quaternionB.element.x, _5
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	mulss	%xmm2, %xmm1	# _4, _6
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	subss	%xmm1, %xmm0	# _6, _7
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	movss	-40(%rbp), %xmm2	# quaternionA.element.y, _8
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	movss	-56(%rbp), %xmm1	# quaternionB.element.y, _9
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	mulss	%xmm2, %xmm1	# _8, _10
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	subss	%xmm1, %xmm0	# _10, _11
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	movss	-36(%rbp), %xmm2	# quaternionA.element.z, _12
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	movss	-52(%rbp), %xmm1	# quaternionB.element.z, _13
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	mulss	%xmm2, %xmm1	# _12, _14
# FusionMath.h:366:             .w = A.w * B.w - A.x * B.x - A.y * B.y - A.z * B.z,
	subss	%xmm1, %xmm0	# _14, _15
# FusionMath.h:371:     };
	movss	%xmm0, -32(%rbp)	# _15, result.element.w
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	movss	-48(%rbp), %xmm1	# quaternionA.element.w, _16
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	movss	-60(%rbp), %xmm0	# quaternionB.element.x, _17
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	mulss	%xmm0, %xmm1	# _17, _18
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	movss	-44(%rbp), %xmm2	# quaternionA.element.x, _19
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	movss	-64(%rbp), %xmm0	# quaternionB.element.w, _20
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	mulss	%xmm2, %xmm0	# _19, _21
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	addss	%xmm0, %xmm1	# _21, _22
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	movss	-40(%rbp), %xmm2	# quaternionA.element.y, _23
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	movss	-52(%rbp), %xmm0	# quaternionB.element.z, _24
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	mulss	%xmm2, %xmm0	# _23, _25
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	addss	%xmm1, %xmm0	# _22, _26
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	movss	-36(%rbp), %xmm2	# quaternionA.element.z, _27
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	movss	-56(%rbp), %xmm1	# quaternionB.element.y, _28
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	mulss	%xmm2, %xmm1	# _27, _29
# FusionMath.h:367:             .x = A.w * B.x + A.x * B.w + A.y * B.z - A.z * B.y,
	subss	%xmm1, %xmm0	# _29, _30
# FusionMath.h:371:     };
	movss	%xmm0, -28(%rbp)	# _30, result.element.x
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	movss	-48(%rbp), %xmm1	# quaternionA.element.w, _31
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	movss	-56(%rbp), %xmm0	# quaternionB.element.y, _32
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	mulss	%xmm1, %xmm0	# _31, _33
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	movss	-44(%rbp), %xmm2	# quaternionA.element.x, _34
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	movss	-52(%rbp), %xmm1	# quaternionB.element.z, _35
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	mulss	%xmm1, %xmm2	# _35, _36
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	movaps	%xmm0, %xmm1	# _33, _33
	subss	%xmm2, %xmm1	# _36, _33
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	movss	-40(%rbp), %xmm2	# quaternionA.element.y, _38
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	movss	-64(%rbp), %xmm0	# quaternionB.element.w, _39
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	mulss	%xmm2, %xmm0	# _38, _40
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	addss	%xmm0, %xmm1	# _40, _41
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	movss	-36(%rbp), %xmm2	# quaternionA.element.z, _42
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	movss	-60(%rbp), %xmm0	# quaternionB.element.x, _43
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	mulss	%xmm2, %xmm0	# _42, _44
# FusionMath.h:368:             .y = A.w * B.y - A.x * B.z + A.y * B.w + A.z * B.x,
	addss	%xmm1, %xmm0	# _41, _45
# FusionMath.h:371:     };
	movss	%xmm0, -24(%rbp)	# _45, result.element.y
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	movss	-48(%rbp), %xmm1	# quaternionA.element.w, _46
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	movss	-52(%rbp), %xmm0	# quaternionB.element.z, _47
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	mulss	%xmm0, %xmm1	# _47, _48
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	movss	-44(%rbp), %xmm2	# quaternionA.element.x, _49
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	movss	-56(%rbp), %xmm0	# quaternionB.element.y, _50
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	mulss	%xmm2, %xmm0	# _49, _51
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	addss	%xmm1, %xmm0	# _48, _52
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	movss	-40(%rbp), %xmm2	# quaternionA.element.y, _53
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	movss	-60(%rbp), %xmm1	# quaternionB.element.x, _54
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	mulss	%xmm1, %xmm2	# _54, _55
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	movaps	%xmm0, %xmm1	# _52, _52
	subss	%xmm2, %xmm1	# _55, _52
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	movss	-36(%rbp), %xmm2	# quaternionA.element.z, _57
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	movss	-64(%rbp), %xmm0	# quaternionB.element.w, _58
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	mulss	%xmm2, %xmm0	# _57, _59
# FusionMath.h:369:             .z = A.w * B.z + A.x * B.y - A.y * B.x + A.z * B.w,
	addss	%xmm1, %xmm0	# _56, _60
# FusionMath.h:371:     };
	movss	%xmm0, -20(%rbp)	# _60, result.element.z
# FusionMath.h:374:     return result;
	movq	-32(%rbp), %rax	# result, D.27376
	movq	-24(%rbp), %rdx	# result, D.27376
	movq	%rax, %rcx	# D.27376, <retval>
	movq	%rdx, %xmm1	# D.27376, <retval>
# FusionMath.h:375: }
	movq	-8(%rbp), %rax	# D.27426, tmp169
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp169
	je	.L60	#,
	call	__stack_chk_fail@PLT	#
.L60:
	movq	%rcx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%xmm0, %rax	# quaternion, tmp147
	movdqa	%xmm1, %xmm0	# quaternion, tmp148
	movq	%rax, %rax	# tmp147, tmp146
	movl	$0, %edx	#,
	movq	%xmm0, %rdx	# tmp148,
	movq	%rax, -48(%rbp)	# tmp146, quaternion
	movq	%rdx, -40(%rbp)	#, quaternion
	movdqa	%xmm2, %xmm0	# vector, tmp149
	movq	%xmm3, %rdx	# vector, tmp150
	movq	%xmm0, -64(%rbp)	# tmp149, vector
	movl	-56(%rbp), %eax	# vector, tmp152
	andl	$0, %eax	#, tmp153
	orl	%edx, %eax	# tmp150, tmp154
	movl	%eax, -56(%rbp)	# tmp154, vector
# FusionMath.h:386: static inline FusionQuaternion FusionQuaternionMultiplyVector(const FusionQuaternion quaternion, const FusionVector vector) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp155
	movq	%rax, -8(%rbp)	# tmp155, D.27427
	xorl	%eax, %eax	# tmp155
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	movss	-44(%rbp), %xmm0	# quaternion.element.x, _1
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	movss	.LC9(%rip), %xmm1	#, tmp156
	xorps	%xmm0, %xmm1	# _1, _2
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	movss	-64(%rbp), %xmm0	# vector.axis.x, _3
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	mulss	%xmm1, %xmm0	# _2, _4
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	movss	-40(%rbp), %xmm2	# quaternion.element.y, _5
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	movss	-60(%rbp), %xmm1	# vector.axis.y, _6
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	mulss	%xmm2, %xmm1	# _5, _7
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	subss	%xmm1, %xmm0	# _7, _8
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	movss	-36(%rbp), %xmm2	# quaternion.element.z, _9
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	movss	-56(%rbp), %xmm1	# vector.axis.z, _10
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	mulss	%xmm2, %xmm1	# _9, _11
# FusionMath.h:391:             .w = -Q.x * V.x - Q.y * V.y - Q.z * V.z,
	subss	%xmm1, %xmm0	# _11, _12
# FusionMath.h:396:     };
	movss	%xmm0, -32(%rbp)	# _12, result.element.w
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	movss	-48(%rbp), %xmm1	# quaternion.element.w, _13
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	movss	-64(%rbp), %xmm0	# vector.axis.x, _14
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	mulss	%xmm0, %xmm1	# _14, _15
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	movss	-40(%rbp), %xmm2	# quaternion.element.y, _16
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	movss	-56(%rbp), %xmm0	# vector.axis.z, _17
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	mulss	%xmm2, %xmm0	# _16, _18
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	addss	%xmm1, %xmm0	# _15, _19
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	movss	-36(%rbp), %xmm2	# quaternion.element.z, _20
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	movss	-60(%rbp), %xmm1	# vector.axis.y, _21
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	mulss	%xmm2, %xmm1	# _20, _22
# FusionMath.h:392:             .x = Q.w * V.x + Q.y * V.z - Q.z * V.y,
	subss	%xmm1, %xmm0	# _22, _23
# FusionMath.h:396:     };
	movss	%xmm0, -28(%rbp)	# _23, result.element.x
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	movss	-48(%rbp), %xmm1	# quaternion.element.w, _24
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	movss	-60(%rbp), %xmm0	# vector.axis.y, _25
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	mulss	%xmm1, %xmm0	# _24, _26
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	movss	-44(%rbp), %xmm2	# quaternion.element.x, _27
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	movss	-56(%rbp), %xmm1	# vector.axis.z, _28
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	mulss	%xmm1, %xmm2	# _28, _29
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	movaps	%xmm0, %xmm1	# _26, _26
	subss	%xmm2, %xmm1	# _29, _26
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	movss	-36(%rbp), %xmm2	# quaternion.element.z, _31
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	movss	-64(%rbp), %xmm0	# vector.axis.x, _32
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	mulss	%xmm2, %xmm0	# _31, _33
# FusionMath.h:393:             .y = Q.w * V.y - Q.x * V.z + Q.z * V.x,
	addss	%xmm1, %xmm0	# _30, _34
# FusionMath.h:396:     };
	movss	%xmm0, -24(%rbp)	# _34, result.element.y
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	movss	-48(%rbp), %xmm1	# quaternion.element.w, _35
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	movss	-56(%rbp), %xmm0	# vector.axis.z, _36
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	mulss	%xmm0, %xmm1	# _36, _37
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	movss	-44(%rbp), %xmm2	# quaternion.element.x, _38
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	movss	-60(%rbp), %xmm0	# vector.axis.y, _39
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	mulss	%xmm2, %xmm0	# _38, _40
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	addss	%xmm1, %xmm0	# _37, _41
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	movss	-40(%rbp), %xmm2	# quaternion.element.y, _42
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	movss	-64(%rbp), %xmm1	# vector.axis.x, _43
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	mulss	%xmm2, %xmm1	# _42, _44
# FusionMath.h:394:             .z = Q.w * V.z + Q.x * V.y - Q.y * V.x,
	subss	%xmm1, %xmm0	# _44, _45
# FusionMath.h:396:     };
	movss	%xmm0, -20(%rbp)	# _45, result.element.z
# FusionMath.h:399:     return result;
	movq	-32(%rbp), %rax	# result, D.27322
	movq	-24(%rbp), %rdx	# result, D.27322
	movq	%rax, %rcx	# D.27322, <retval>
	movq	%rdx, %xmm1	# D.27322, <retval>
# FusionMath.h:400: }
	movq	-8(%rbp), %rax	# D.27427, tmp158
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp158
	je	.L63	#,
	call	__stack_chk_fail@PLT	#
.L63:
	movq	%rcx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%xmm0, %rax	# quaternion, tmp125
	movdqa	%xmm1, %xmm0	# quaternion, tmp126
	movq	%rax, %rax	# tmp125, tmp124
	movl	$0, %edx	#,
	movq	%xmm0, %rdx	# tmp126,
	movq	%rax, -64(%rbp)	# tmp124, quaternion
	movq	%rdx, -56(%rbp)	#, quaternion
# FusionMath.h:407: static inline FusionQuaternion FusionQuaternionNormalise(const FusionQuaternion quaternion) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp127
	movq	%rax, -8(%rbp)	# tmp127, D.27428
	xorl	%eax, %eax	# tmp127
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	movss	-64(%rbp), %xmm1	# quaternion.element.w, _1
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	movss	-64(%rbp), %xmm0	# quaternion.element.w, _2
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	mulss	%xmm0, %xmm1	# _2, _3
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	movss	-60(%rbp), %xmm2	# quaternion.element.x, _4
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	movss	-60(%rbp), %xmm0	# quaternion.element.x, _5
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	mulss	%xmm2, %xmm0	# _4, _6
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	addss	%xmm0, %xmm1	# _6, _7
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	movss	-56(%rbp), %xmm2	# quaternion.element.y, _8
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	movss	-56(%rbp), %xmm0	# quaternion.element.y, _9
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	mulss	%xmm2, %xmm0	# _8, _10
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	addss	%xmm0, %xmm1	# _10, _11
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	movss	-52(%rbp), %xmm2	# quaternion.element.z, _12
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	movss	-52(%rbp), %xmm0	# quaternion.element.z, _13
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	mulss	%xmm2, %xmm0	# _12, _14
# FusionMath.h:412:     const float magnitudeReciprocal = FusionFastInverseSqrt(Q.w * Q.w + Q.x * Q.x + Q.y * Q.y + Q.z * Q.z);
	addss	%xmm0, %xmm1	# _14, _11
	movd	%xmm1, %eax	# _11, _15
	movd	%eax, %xmm0	# _15,
	call	_ZL21FusionFastInverseSqrtf	#
	movd	%xmm0, %eax	#, tmp128
	movl	%eax, -36(%rbp)	# tmp128, magnitudeReciprocal
# FusionMath.h:416:             .w = Q.w * magnitudeReciprocal,
	movss	-64(%rbp), %xmm0	# quaternion.element.w, _16
# FusionMath.h:416:             .w = Q.w * magnitudeReciprocal,
	mulss	-36(%rbp), %xmm0	# magnitudeReciprocal, _17
# FusionMath.h:421:     };
	movss	%xmm0, -32(%rbp)	# _17, result.element.w
# FusionMath.h:417:             .x = Q.x * magnitudeReciprocal,
	movss	-60(%rbp), %xmm0	# quaternion.element.x, _18
# FusionMath.h:417:             .x = Q.x * magnitudeReciprocal,
	mulss	-36(%rbp), %xmm0	# magnitudeReciprocal, _19
# FusionMath.h:421:     };
	movss	%xmm0, -28(%rbp)	# _19, result.element.x
# FusionMath.h:418:             .y = Q.y * magnitudeReciprocal,
	movss	-56(%rbp), %xmm0	# quaternion.element.y, _20
# FusionMath.h:418:             .y = Q.y * magnitudeReciprocal,
	mulss	-36(%rbp), %xmm0	# magnitudeReciprocal, _21
# FusionMath.h:421:     };
	movss	%xmm0, -24(%rbp)	# _21, result.element.y
# FusionMath.h:419:             .z = Q.z * magnitudeReciprocal,
	movss	-52(%rbp), %xmm0	# quaternion.element.z, _22
# FusionMath.h:419:             .z = Q.z * magnitudeReciprocal,
	mulss	-36(%rbp), %xmm0	# magnitudeReciprocal, _23
# FusionMath.h:421:     };
	movss	%xmm0, -20(%rbp)	# _23, result.element.z
# FusionMath.h:423:     return result;
	movq	-32(%rbp), %rax	# result, D.27328
	movq	-24(%rbp), %rdx	# result, D.27328
	movq	%rax, %rcx	# D.27328, <retval>
	movq	%rdx, %xmm1	# D.27328, <retval>
# FusionMath.h:424: }
	movq	-8(%rbp), %rax	# D.27428, tmp130
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp130
	je	.L66	#,
	call	__stack_chk_fail@PLT	#
.L66:
	movq	%rcx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# ahrs, ahrs
# FusionAhrs.c:45: void FusionAhrsInitialise(FusionAhrs *const ahrs) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp98
	movq	%rax, -8(%rbp)	# tmp98, D.27429
	xorl	%eax, %eax	# tmp98
# FusionAhrs.c:46:     const FusionAhrsSettings settings = {
	movl	$0, -32(%rbp)	#, settings.convention
	movss	.LC10(%rip), %xmm0	#, tmp99
	movss	%xmm0, -28(%rbp)	# tmp99, settings.gain
	pxor	%xmm0, %xmm0	# tmp100
	movss	%xmm0, -24(%rbp)	# tmp100, settings.gyroscopeRange
	movss	.LC11(%rip), %xmm0	#, tmp101
	movss	%xmm0, -20(%rbp)	# tmp101, settings.accelerationRejection
	movss	.LC11(%rip), %xmm0	#, tmp102
	movss	%xmm0, -16(%rbp)	# tmp102, settings.magneticRejection
	movl	$0, -12(%rbp)	#, settings.recoveryTriggerPeriod
# FusionAhrs.c:54:     FusionAhrsSetSettings(ahrs, &settings);
	leaq	-32(%rbp), %rdx	#, tmp103
	movq	-40(%rbp), %rax	# ahrs, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	_Z21FusionAhrsSetSettingsP10FusionAhrsPK18FusionAhrsSettings	#
# FusionAhrs.c:55:     FusionAhrsReset(ahrs);
	movq	-40(%rbp), %rax	# ahrs, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_Z15FusionAhrsResetP10FusionAhrs	#
# FusionAhrs.c:56: }
	nop	
	movq	-8(%rbp), %rax	# D.27429, tmp106
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	je	.L68	#,
	call	__stack_chk_fail@PLT	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# ahrs, ahrs
# FusionAhrs.c:64:     ahrs->quaternion = FUSION_IDENTITY_QUATERNION;
	movq	-8(%rbp), %rax	# ahrs, tmp102
	movss	.LC4(%rip), %xmm0	#, tmp103
	movss	%xmm0, 24(%rax)	# tmp103, ahrs_6(D)->quaternion.array[0]
	movq	-8(%rbp), %rax	# ahrs, tmp104
	pxor	%xmm0, %xmm0	# tmp105
	movss	%xmm0, 28(%rax)	# tmp105, ahrs_6(D)->quaternion.array[1]
	movq	-8(%rbp), %rax	# ahrs, tmp106
	pxor	%xmm0, %xmm0	# tmp107
	movss	%xmm0, 32(%rax)	# tmp107, ahrs_6(D)->quaternion.array[2]
	movq	-8(%rbp), %rax	# ahrs, tmp108
	pxor	%xmm0, %xmm0	# tmp109
	movss	%xmm0, 36(%rax)	# tmp109, ahrs_6(D)->quaternion.array[3]
# FusionAhrs.c:65:     ahrs->accelerometer = FUSION_VECTOR_ZERO;
	movq	-8(%rbp), %rax	# ahrs, tmp110
	pxor	%xmm0, %xmm0	# tmp111
	movss	%xmm0, 40(%rax)	# tmp111, ahrs_6(D)->accelerometer.array[0]
	movq	-8(%rbp), %rax	# ahrs, tmp112
	pxor	%xmm0, %xmm0	# tmp113
	movss	%xmm0, 44(%rax)	# tmp113, ahrs_6(D)->accelerometer.array[1]
	movq	-8(%rbp), %rax	# ahrs, tmp114
	pxor	%xmm0, %xmm0	# tmp115
	movss	%xmm0, 48(%rax)	# tmp115, ahrs_6(D)->accelerometer.array[2]
# FusionAhrs.c:66:     ahrs->initialising = true;
	movq	-8(%rbp), %rax	# ahrs, tmp116
	movb	$1, 52(%rax)	#, ahrs_6(D)->initialising
# FusionAhrs.c:67:     ahrs->rampedGain = INITIAL_GAIN;
	movq	-8(%rbp), %rax	# ahrs, tmp117
	movss	.LC12(%rip), %xmm0	#, tmp118
	movss	%xmm0, 56(%rax)	# tmp118, ahrs_6(D)->rampedGain
# FusionAhrs.c:68:     ahrs->angularRateRecovery = false;
	movq	-8(%rbp), %rax	# ahrs, tmp119
	movb	$0, 64(%rax)	#, ahrs_6(D)->angularRateRecovery
# FusionAhrs.c:69:     ahrs->halfAccelerometerFeedback = FUSION_VECTOR_ZERO;
	movq	-8(%rbp), %rax	# ahrs, tmp120
	pxor	%xmm0, %xmm0	# tmp121
	movss	%xmm0, 68(%rax)	# tmp121, ahrs_6(D)->halfAccelerometerFeedback.array[0]
	movq	-8(%rbp), %rax	# ahrs, tmp122
	pxor	%xmm0, %xmm0	# tmp123
	movss	%xmm0, 72(%rax)	# tmp123, ahrs_6(D)->halfAccelerometerFeedback.array[1]
	movq	-8(%rbp), %rax	# ahrs, tmp124
	pxor	%xmm0, %xmm0	# tmp125
	movss	%xmm0, 76(%rax)	# tmp125, ahrs_6(D)->halfAccelerometerFeedback.array[2]
# FusionAhrs.c:70:     ahrs->halfMagnetometerFeedback = FUSION_VECTOR_ZERO;
	movq	-8(%rbp), %rax	# ahrs, tmp126
	pxor	%xmm0, %xmm0	# tmp127
	movss	%xmm0, 80(%rax)	# tmp127, ahrs_6(D)->halfMagnetometerFeedback.array[0]
	movq	-8(%rbp), %rax	# ahrs, tmp128
	pxor	%xmm0, %xmm0	# tmp129
	movss	%xmm0, 84(%rax)	# tmp129, ahrs_6(D)->halfMagnetometerFeedback.array[1]
	movq	-8(%rbp), %rax	# ahrs, tmp130
	pxor	%xmm0, %xmm0	# tmp131
	movss	%xmm0, 88(%rax)	# tmp131, ahrs_6(D)->halfMagnetometerFeedback.array[2]
# FusionAhrs.c:71:     ahrs->accelerometerIgnored = false;
	movq	-8(%rbp), %rax	# ahrs, tmp132
	movb	$0, 92(%rax)	#, ahrs_6(D)->accelerometerIgnored
# FusionAhrs.c:72:     ahrs->accelerationRecoveryTrigger = 0;
	movq	-8(%rbp), %rax	# ahrs, tmp133
	movl	$0, 96(%rax)	#, ahrs_6(D)->accelerationRecoveryTrigger
# FusionAhrs.c:73:     ahrs->accelerationRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-8(%rbp), %rax	# ahrs, tmp134
	movl	20(%rax), %eax	# ahrs_6(D)->settings.recoveryTriggerPeriod, _1
	movl	%eax, %edx	# _1, _2
# FusionAhrs.c:73:     ahrs->accelerationRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-8(%rbp), %rax	# ahrs, tmp135
	movl	%edx, 100(%rax)	# _2, ahrs_6(D)->accelerationRecoveryTimeout
# FusionAhrs.c:74:     ahrs->magnetometerIgnored = false;
	movq	-8(%rbp), %rax	# ahrs, tmp136
	movb	$0, 104(%rax)	#, ahrs_6(D)->magnetometerIgnored
# FusionAhrs.c:75:     ahrs->magneticRecoveryTrigger = 0;
	movq	-8(%rbp), %rax	# ahrs, tmp137
	movl	$0, 108(%rax)	#, ahrs_6(D)->magneticRecoveryTrigger
# FusionAhrs.c:76:     ahrs->magneticRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-8(%rbp), %rax	# ahrs, tmp138
	movl	20(%rax), %eax	# ahrs_6(D)->settings.recoveryTriggerPeriod, _3
	movl	%eax, %edx	# _3, _4
# FusionAhrs.c:76:     ahrs->magneticRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-8(%rbp), %rax	# ahrs, tmp139
	movl	%edx, 112(%rax)	# _4, ahrs_6(D)->magneticRecoveryTimeout
# FusionAhrs.c:77: }
	nop	
	popq	%rbp	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ahrs, ahrs
	movq	%rsi, -16(%rbp)	# settings, settings
# FusionAhrs.c:85:     ahrs->settings.convention = settings->convention;
	movq	-16(%rbp), %rax	# settings, tmp128
	movl	(%rax), %edx	# settings_36(D)->convention, _1
# FusionAhrs.c:85:     ahrs->settings.convention = settings->convention;
	movq	-8(%rbp), %rax	# ahrs, tmp129
	movl	%edx, (%rax)	# _1, ahrs_37(D)->settings.convention
# FusionAhrs.c:86:     ahrs->settings.gain = settings->gain;
	movq	-16(%rbp), %rax	# settings, tmp130
	movss	4(%rax), %xmm0	# settings_36(D)->gain, _2
# FusionAhrs.c:86:     ahrs->settings.gain = settings->gain;
	movq	-8(%rbp), %rax	# ahrs, tmp131
	movss	%xmm0, 4(%rax)	# _2, ahrs_37(D)->settings.gain
# FusionAhrs.c:87:     ahrs->settings.gyroscopeRange = settings->gyroscopeRange == 0.0f ? FLT_MAX : 0.98f * settings->gyroscopeRange;
	movq	-16(%rbp), %rax	# settings, tmp132
	movss	8(%rax), %xmm0	# settings_36(D)->gyroscopeRange, _3
# FusionAhrs.c:87:     ahrs->settings.gyroscopeRange = settings->gyroscopeRange == 0.0f ? FLT_MAX : 0.98f * settings->gyroscopeRange;
	pxor	%xmm1, %xmm1	# tmp133
	ucomiss	%xmm1, %xmm0	# tmp133, _3
	jp	.L84	#,
	pxor	%xmm1, %xmm1	# tmp134
	ucomiss	%xmm1, %xmm0	# tmp134, _3
	je	.L71	#,
.L84:
# FusionAhrs.c:87:     ahrs->settings.gyroscopeRange = settings->gyroscopeRange == 0.0f ? FLT_MAX : 0.98f * settings->gyroscopeRange;
	movq	-16(%rbp), %rax	# settings, tmp135
	movss	8(%rax), %xmm1	# settings_36(D)->gyroscopeRange, _4
# FusionAhrs.c:87:     ahrs->settings.gyroscopeRange = settings->gyroscopeRange == 0.0f ? FLT_MAX : 0.98f * settings->gyroscopeRange;
	movss	.LC13(%rip), %xmm0	#, tmp136
	mulss	%xmm1, %xmm0	# _4, iftmp.0_28
	jmp	.L73	#
.L71:
# FusionAhrs.c:87:     ahrs->settings.gyroscopeRange = settings->gyroscopeRange == 0.0f ? FLT_MAX : 0.98f * settings->gyroscopeRange;
	movss	.LC14(%rip), %xmm0	#, iftmp.0_28
.L73:
# FusionAhrs.c:87:     ahrs->settings.gyroscopeRange = settings->gyroscopeRange == 0.0f ? FLT_MAX : 0.98f * settings->gyroscopeRange;
	movq	-8(%rbp), %rax	# ahrs, tmp137
	movss	%xmm0, 8(%rax)	# iftmp.0_28, ahrs_37(D)->settings.gyroscopeRange
# FusionAhrs.c:88:     ahrs->settings.accelerationRejection = settings->accelerationRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->accelerationRejection)), 2);
	movq	-16(%rbp), %rax	# settings, tmp138
	movss	12(%rax), %xmm0	# settings_36(D)->accelerationRejection, _5
# FusionAhrs.c:88:     ahrs->settings.accelerationRejection = settings->accelerationRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->accelerationRejection)), 2);
	pxor	%xmm1, %xmm1	# tmp139
	ucomiss	%xmm1, %xmm0	# tmp139, _5
	jp	.L85	#,
	pxor	%xmm1, %xmm1	# tmp140
	ucomiss	%xmm1, %xmm0	# tmp140, _5
	je	.L74	#,
.L85:
# FusionAhrs.c:88:     ahrs->settings.accelerationRejection = settings->accelerationRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->accelerationRejection)), 2);
	movq	-16(%rbp), %rax	# settings, tmp141
	movl	12(%rax), %eax	# settings_36(D)->accelerationRejection, _6
# FusionAhrs.c:88:     ahrs->settings.accelerationRejection = settings->accelerationRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->accelerationRejection)), 2);
	movd	%eax, %xmm0	# _6,
	call	_ZL22FusionDegreesToRadiansf	#
	movd	%xmm0, %eax	#, _7
# FusionAhrs.c:88:     ahrs->settings.accelerationRejection = settings->accelerationRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->accelerationRejection)), 2);
	movd	%eax, %xmm0	# _7,
	call	sinf@PLT	#
# FusionAhrs.c:88:     ahrs->settings.accelerationRejection = settings->accelerationRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->accelerationRejection)), 2);
	movss	.LC10(%rip), %xmm1	#, tmp142
	mulss	%xmm1, %xmm0	# tmp142, _8
	movd	%xmm0, %eax	# _8, _9
	movss	.LC15(%rip), %xmm1	#,
	movd	%eax, %xmm0	# _9,
	call	powf@PLT	#
	movd	%xmm0, %eax	#, iftmp.1_29
	jmp	.L76	#
.L74:
# FusionAhrs.c:88:     ahrs->settings.accelerationRejection = settings->accelerationRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->accelerationRejection)), 2);
	movl	.LC14(%rip), %eax	#, iftmp.1_29
.L76:
# FusionAhrs.c:88:     ahrs->settings.accelerationRejection = settings->accelerationRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->accelerationRejection)), 2);
	movq	-8(%rbp), %rdx	# ahrs, tmp143
	movl	%eax, 12(%rdx)	# iftmp.1_29, ahrs_37(D)->settings.accelerationRejection
# FusionAhrs.c:89:     ahrs->settings.magneticRejection = settings->magneticRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->magneticRejection)), 2);
	movq	-16(%rbp), %rax	# settings, tmp144
	movss	16(%rax), %xmm0	# settings_36(D)->magneticRejection, _10
# FusionAhrs.c:89:     ahrs->settings.magneticRejection = settings->magneticRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->magneticRejection)), 2);
	pxor	%xmm1, %xmm1	# tmp145
	ucomiss	%xmm1, %xmm0	# tmp145, _10
	jp	.L86	#,
	pxor	%xmm1, %xmm1	# tmp146
	ucomiss	%xmm1, %xmm0	# tmp146, _10
	je	.L77	#,
.L86:
# FusionAhrs.c:89:     ahrs->settings.magneticRejection = settings->magneticRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->magneticRejection)), 2);
	movq	-16(%rbp), %rax	# settings, tmp147
	movl	16(%rax), %eax	# settings_36(D)->magneticRejection, _11
# FusionAhrs.c:89:     ahrs->settings.magneticRejection = settings->magneticRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->magneticRejection)), 2);
	movd	%eax, %xmm0	# _11,
	call	_ZL22FusionDegreesToRadiansf	#
	movd	%xmm0, %eax	#, _12
# FusionAhrs.c:89:     ahrs->settings.magneticRejection = settings->magneticRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->magneticRejection)), 2);
	movd	%eax, %xmm0	# _12,
	call	sinf@PLT	#
# FusionAhrs.c:89:     ahrs->settings.magneticRejection = settings->magneticRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->magneticRejection)), 2);
	movss	.LC10(%rip), %xmm1	#, tmp148
	mulss	%xmm1, %xmm0	# tmp148, _13
	movd	%xmm0, %eax	# _13, _14
	movss	.LC15(%rip), %xmm1	#,
	movd	%eax, %xmm0	# _14,
	call	powf@PLT	#
	movd	%xmm0, %eax	#, iftmp.2_30
	jmp	.L79	#
.L77:
# FusionAhrs.c:89:     ahrs->settings.magneticRejection = settings->magneticRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->magneticRejection)), 2);
	movl	.LC14(%rip), %eax	#, iftmp.2_30
.L79:
# FusionAhrs.c:89:     ahrs->settings.magneticRejection = settings->magneticRejection == 0.0f ? FLT_MAX : powf(0.5f * sinf(FusionDegreesToRadians(settings->magneticRejection)), 2);
	movq	-8(%rbp), %rdx	# ahrs, tmp149
	movl	%eax, 16(%rdx)	# iftmp.2_30, ahrs_37(D)->settings.magneticRejection
# FusionAhrs.c:90:     ahrs->settings.recoveryTriggerPeriod = settings->recoveryTriggerPeriod;
	movq	-16(%rbp), %rax	# settings, tmp150
	movl	20(%rax), %edx	# settings_36(D)->recoveryTriggerPeriod, _15
# FusionAhrs.c:90:     ahrs->settings.recoveryTriggerPeriod = settings->recoveryTriggerPeriod;
	movq	-8(%rbp), %rax	# ahrs, tmp151
	movl	%edx, 20(%rax)	# _15, ahrs_37(D)->settings.recoveryTriggerPeriod
# FusionAhrs.c:91:     ahrs->accelerationRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-8(%rbp), %rax	# ahrs, tmp152
	movl	20(%rax), %eax	# ahrs_37(D)->settings.recoveryTriggerPeriod, _16
	movl	%eax, %edx	# _16, _17
# FusionAhrs.c:91:     ahrs->accelerationRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-8(%rbp), %rax	# ahrs, tmp153
	movl	%edx, 100(%rax)	# _17, ahrs_37(D)->accelerationRecoveryTimeout
# FusionAhrs.c:92:     ahrs->magneticRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-8(%rbp), %rax	# ahrs, tmp154
	movl	20(%rax), %eax	# ahrs_37(D)->settings.recoveryTriggerPeriod, _18
	movl	%eax, %edx	# _18, _19
# FusionAhrs.c:92:     ahrs->magneticRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-8(%rbp), %rax	# ahrs, tmp155
	movl	%edx, 112(%rax)	# _19, ahrs_37(D)->magneticRecoveryTimeout
# FusionAhrs.c:93:     if ((settings->gain == 0.0f) || (settings->recoveryTriggerPeriod == 0)) {
	movq	-16(%rbp), %rax	# settings, tmp156
	movss	4(%rax), %xmm0	# settings_36(D)->gain, _20
# FusionAhrs.c:93:     if ((settings->gain == 0.0f) || (settings->recoveryTriggerPeriod == 0)) {
	pxor	%xmm1, %xmm1	# tmp157
	ucomiss	%xmm1, %xmm0	# tmp157, _20
	jp	.L87	#,
	pxor	%xmm1, %xmm1	# tmp158
	ucomiss	%xmm1, %xmm0	# tmp158, _20
	je	.L80	#,
.L87:
# FusionAhrs.c:93:     if ((settings->gain == 0.0f) || (settings->recoveryTriggerPeriod == 0)) {
	movq	-16(%rbp), %rax	# settings, tmp159
	movl	20(%rax), %eax	# settings_36(D)->recoveryTriggerPeriod, _21
# FusionAhrs.c:93:     if ((settings->gain == 0.0f) || (settings->recoveryTriggerPeriod == 0)) {
	testl	%eax, %eax	# _21
	jne	.L82	#,
.L80:
# FusionAhrs.c:94:         ahrs->settings.accelerationRejection = FLT_MAX; // disable acceleration and magnetic rejection features if gain is zero
	movq	-8(%rbp), %rax	# ahrs, tmp160
	movss	.LC14(%rip), %xmm0	#, tmp161
	movss	%xmm0, 12(%rax)	# tmp161, ahrs_37(D)->settings.accelerationRejection
# FusionAhrs.c:95:         ahrs->settings.magneticRejection = FLT_MAX;
	movq	-8(%rbp), %rax	# ahrs, tmp162
	movss	.LC14(%rip), %xmm0	#, tmp163
	movss	%xmm0, 16(%rax)	# tmp163, ahrs_37(D)->settings.magneticRejection
.L82:
# FusionAhrs.c:97:     if (ahrs->initialising == false) {
	movq	-8(%rbp), %rax	# ahrs, tmp164
	movzbl	52(%rax), %eax	# ahrs_37(D)->initialising, _22
	movzbl	%al, %eax	# _22, _23
# FusionAhrs.c:97:     if (ahrs->initialising == false) {
	testl	%eax, %eax	# _23
	jne	.L83	#,
# FusionAhrs.c:98:         ahrs->rampedGain = ahrs->settings.gain;
	movq	-8(%rbp), %rax	# ahrs, tmp165
	movss	4(%rax), %xmm0	# ahrs_37(D)->settings.gain, _24
# FusionAhrs.c:98:         ahrs->rampedGain = ahrs->settings.gain;
	movq	-8(%rbp), %rax	# ahrs, tmp166
	movss	%xmm0, 56(%rax)	# _24, ahrs_37(D)->rampedGain
.L83:
# FusionAhrs.c:100:     ahrs->rampedGainStep = (INITIAL_GAIN - ahrs->settings.gain) / INITIALISATION_PERIOD;
	movq	-8(%rbp), %rax	# ahrs, tmp167
	movss	4(%rax), %xmm1	# ahrs_37(D)->settings.gain, _25
# FusionAhrs.c:100:     ahrs->rampedGainStep = (INITIAL_GAIN - ahrs->settings.gain) / INITIALISATION_PERIOD;
	movss	.LC12(%rip), %xmm0	#, tmp168
	subss	%xmm1, %xmm0	# _25, _26
# FusionAhrs.c:100:     ahrs->rampedGainStep = (INITIAL_GAIN - ahrs->settings.gain) / INITIALISATION_PERIOD;
	movss	.LC16(%rip), %xmm1	#, tmp169
	divss	%xmm1, %xmm0	# tmp169, _27
# FusionAhrs.c:100:     ahrs->rampedGainStep = (INITIAL_GAIN - ahrs->settings.gain) / INITIALISATION_PERIOD;
	movq	-8(%rbp), %rax	# ahrs, tmp170
	movss	%xmm0, 60(%rax)	# _27, ahrs_37(D)->rampedGainStep
# FusionAhrs.c:101: }
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$232, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)	# ahrs, ahrs
	movq	%xmm0, %rax	# gyroscope, tmp161
	movq	%xmm1, %rsi	# gyroscope, tmp162
	movdqa	%xmm2, %xmm1	# accelerometer, tmp167
	movq	%xmm3, %rcx	# accelerometer, tmp168
	movdqa	%xmm4, %xmm0	# magnetometer, tmp173
	movq	%xmm5, %rdx	# magnetometer, tmp174
	movss	%xmm6, -236(%rbp)	# deltaTime, deltaTime
	movq	%rax, -200(%rbp)	# tmp161, gyroscope
	movl	-192(%rbp), %eax	# gyroscope, tmp164
	andl	$0, %eax	#, tmp165
	orl	%esi, %eax	# tmp162, tmp166
	movl	%eax, -192(%rbp)	# tmp166, gyroscope
	movq	%xmm1, -216(%rbp)	# tmp167, accelerometer
	movl	-208(%rbp), %eax	# accelerometer, tmp170
	andl	$0, %eax	#, tmp171
	orl	%ecx, %eax	# tmp168, tmp172
	movl	%eax, -208(%rbp)	# tmp172, accelerometer
	movq	%xmm0, -232(%rbp)	# tmp173, magnetometer
	movl	-224(%rbp), %eax	# magnetometer, tmp176
	andl	$0, %eax	#, tmp177
	orl	%edx, %eax	# tmp174, tmp178
	movl	%eax, -224(%rbp)	# tmp178, magnetometer
# FusionAhrs.c:112: void FusionAhrsUpdate(FusionAhrs *const ahrs, const FusionVector gyroscope, const FusionVector accelerometer, const FusionVector magnetometer, const float deltaTime) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp179
	movq	%rax, -24(%rbp)	# tmp179, D.27431
	xorl	%eax, %eax	# tmp179
# FusionAhrs.c:114:     ahrs->accelerometer = accelerometer;
	movq	-184(%rbp), %rax	# ahrs, tmp180
	movq	-216(%rbp), %rdx	# accelerometer, tmp181
	movq	%rdx, 40(%rax)	# tmp181, ahrs_75(D)->accelerometer
	movl	-208(%rbp), %edx	# accelerometer, tmp182
	movl	%edx, 48(%rax)	# tmp182, ahrs_75(D)->accelerometer
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	movss	-200(%rbp), %xmm0	# gyroscope.axis.x, _1
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	movss	.LC17(%rip), %xmm1	#, tmp183
	andps	%xmm1, %xmm0	# tmp183, _2
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	movq	-184(%rbp), %rax	# ahrs, tmp184
	movss	8(%rax), %xmm1	# ahrs_75(D)->settings.gyroscopeRange, _3
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	comiss	%xmm1, %xmm0	# _3, _2
	ja	.L89	#,
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	movss	-196(%rbp), %xmm0	# gyroscope.axis.y, _4
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	movss	.LC17(%rip), %xmm1	#, tmp185
	andps	%xmm1, %xmm0	# tmp185, _5
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	movq	-184(%rbp), %rax	# ahrs, tmp186
	movss	8(%rax), %xmm1	# ahrs_75(D)->settings.gyroscopeRange, _6
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	comiss	%xmm1, %xmm0	# _6, _5
	ja	.L89	#,
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	movss	-192(%rbp), %xmm0	# gyroscope.axis.z, _7
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	movss	.LC17(%rip), %xmm1	#, tmp187
	andps	%xmm1, %xmm0	# tmp187, _8
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	movq	-184(%rbp), %rax	# ahrs, tmp188
	movss	8(%rax), %xmm1	# ahrs_75(D)->settings.gyroscopeRange, _9
# FusionAhrs.c:117:     if ((fabsf(gyroscope.axis.x) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.y) > ahrs->settings.gyroscopeRange) || (fabsf(gyroscope.axis.z) > ahrs->settings.gyroscopeRange)) {
	comiss	%xmm1, %xmm0	# _9, _8
	jbe	.L90	#,
.L89:
# FusionAhrs.c:118:         const FusionQuaternion quaternion = ahrs->quaternion;
	movq	-184(%rbp), %rax	# ahrs, tmp189
	movq	32(%rax), %rdx	# ahrs_75(D)->quaternion,
	movq	24(%rax), %rax	# ahrs_75(D)->quaternion, tmp190
	movq	%rax, -48(%rbp)	# tmp190, MEM[(union FusionQuaternion *)_147]
	movq	%rdx, -40(%rbp)	#, MEM[(union FusionQuaternion *)_147]
# FusionAhrs.c:119:         FusionAhrsReset(ahrs);
	movq	-184(%rbp), %rax	# ahrs, tmp191
	movq	%rax, %rdi	# tmp191,
	call	_Z15FusionAhrsResetP10FusionAhrs	#
# FusionAhrs.c:120:         ahrs->quaternion = quaternion;
	movq	-184(%rbp), %rcx	# ahrs, tmp192
	movq	-48(%rbp), %rax	# MEM[(union FusionQuaternion *)_147], tmp193
	movq	-40(%rbp), %rdx	# MEM[(union FusionQuaternion *)_147],
	movq	%rax, 24(%rcx)	# tmp193, ahrs_75(D)->quaternion
	movq	%rdx, 32(%rcx)	#, ahrs_75(D)->quaternion
# FusionAhrs.c:121:         ahrs->angularRateRecovery = true;
	movq	-184(%rbp), %rax	# ahrs, tmp194
	movb	$1, 64(%rax)	#, ahrs_75(D)->angularRateRecovery
.L90:
# FusionAhrs.c:125:     if (ahrs->initialising) {
	movq	-184(%rbp), %rax	# ahrs, tmp195
	movzbl	52(%rax), %eax	# ahrs_75(D)->initialising, _10
# FusionAhrs.c:125:     if (ahrs->initialising) {
	testb	%al, %al	# _10
	je	.L92	#,
# FusionAhrs.c:126:         ahrs->rampedGain -= ahrs->rampedGainStep * deltaTime;
	movq	-184(%rbp), %rax	# ahrs, tmp196
	movss	56(%rax), %xmm0	# ahrs_75(D)->rampedGain, _11
# FusionAhrs.c:126:         ahrs->rampedGain -= ahrs->rampedGainStep * deltaTime;
	movq	-184(%rbp), %rax	# ahrs, tmp197
	movss	60(%rax), %xmm1	# ahrs_75(D)->rampedGainStep, _12
# FusionAhrs.c:126:         ahrs->rampedGain -= ahrs->rampedGainStep * deltaTime;
	mulss	-236(%rbp), %xmm1	# deltaTime, _13
# FusionAhrs.c:126:         ahrs->rampedGain -= ahrs->rampedGainStep * deltaTime;
	subss	%xmm1, %xmm0	# _13, _14
	movq	-184(%rbp), %rax	# ahrs, tmp198
	movss	%xmm0, 56(%rax)	# _14, ahrs_75(D)->rampedGain
# FusionAhrs.c:127:         if ((ahrs->rampedGain < ahrs->settings.gain) || (ahrs->settings.gain == 0.0f)) {
	movq	-184(%rbp), %rax	# ahrs, tmp199
	movss	56(%rax), %xmm1	# ahrs_75(D)->rampedGain, _15
# FusionAhrs.c:127:         if ((ahrs->rampedGain < ahrs->settings.gain) || (ahrs->settings.gain == 0.0f)) {
	movq	-184(%rbp), %rax	# ahrs, tmp200
	movss	4(%rax), %xmm0	# ahrs_75(D)->settings.gain, _16
# FusionAhrs.c:127:         if ((ahrs->rampedGain < ahrs->settings.gain) || (ahrs->settings.gain == 0.0f)) {
	comiss	%xmm1, %xmm0	# _15, _16
	ja	.L93	#,
# FusionAhrs.c:127:         if ((ahrs->rampedGain < ahrs->settings.gain) || (ahrs->settings.gain == 0.0f)) {
	movq	-184(%rbp), %rax	# ahrs, tmp201
	movss	4(%rax), %xmm0	# ahrs_75(D)->settings.gain, _17
# FusionAhrs.c:127:         if ((ahrs->rampedGain < ahrs->settings.gain) || (ahrs->settings.gain == 0.0f)) {
	pxor	%xmm1, %xmm1	# tmp202
	ucomiss	%xmm1, %xmm0	# tmp202, _17
	jp	.L92	#,
	pxor	%xmm1, %xmm1	# tmp203
	ucomiss	%xmm1, %xmm0	# tmp203, _17
	jne	.L92	#,
.L93:
# FusionAhrs.c:128:             ahrs->rampedGain = ahrs->settings.gain;
	movq	-184(%rbp), %rax	# ahrs, tmp204
	movss	4(%rax), %xmm0	# ahrs_75(D)->settings.gain, _18
# FusionAhrs.c:128:             ahrs->rampedGain = ahrs->settings.gain;
	movq	-184(%rbp), %rax	# ahrs, tmp205
	movss	%xmm0, 56(%rax)	# _18, ahrs_75(D)->rampedGain
# FusionAhrs.c:129:             ahrs->initialising = false;
	movq	-184(%rbp), %rax	# ahrs, tmp206
	movb	$0, 52(%rax)	#, ahrs_75(D)->initialising
# FusionAhrs.c:130:             ahrs->angularRateRecovery = false;
	movq	-184(%rbp), %rax	# ahrs, tmp207
	movb	$0, 64(%rax)	#, ahrs_75(D)->angularRateRecovery
.L92:
# FusionAhrs.c:135:     const FusionVector halfGravity = HalfGravity(ahrs);
	movq	-184(%rbp), %rax	# ahrs, tmp208
	movq	%rax, %rdi	# tmp208,
	call	_ZL11HalfGravityPK10FusionAhrs	#
	movq	%xmm0, %rax	#, tmp209
	movq	%xmm1, %rdx	#, tmp210
	movq	%rax, -168(%rbp)	# tmp209, halfGravity
	movl	-160(%rbp), %eax	# halfGravity, tmp212
	andl	$0, %eax	#, tmp213
	orl	%edx, %eax	# tmp210, tmp214
	movl	%eax, -160(%rbp)	# tmp214, halfGravity
# FusionAhrs.c:138:     FusionVector halfAccelerometerFeedback = FUSION_VECTOR_ZERO;
	pxor	%xmm0, %xmm0	# tmp215
	movss	%xmm0, -156(%rbp)	# tmp215, halfAccelerometerFeedback.array[0]
	pxor	%xmm0, %xmm0	# tmp216
	movss	%xmm0, -152(%rbp)	# tmp216, halfAccelerometerFeedback.array[1]
	pxor	%xmm0, %xmm0	# tmp217
	movss	%xmm0, -148(%rbp)	# tmp217, halfAccelerometerFeedback.array[2]
# FusionAhrs.c:139:     ahrs->accelerometerIgnored = true;
	movq	-184(%rbp), %rax	# ahrs, tmp218
	movb	$1, 92(%rax)	#, ahrs_75(D)->accelerometerIgnored
# FusionAhrs.c:140:     if (FusionVectorIsZero(accelerometer) == false) {
	movq	-216(%rbp), %rax	# accelerometer, tmp219
	movd	-208(%rbp), %xmm1	# accelerometer, tmp220
	movq	%rax, %xmm0	# tmp219,
	call	_ZL18FusionVectorIsZero12FusionVector	#
# FusionAhrs.c:140:     if (FusionVectorIsZero(accelerometer) == false) {
	movzbl	%al, %eax	# _19, _20
# FusionAhrs.c:140:     if (FusionVectorIsZero(accelerometer) == false) {
	testl	%eax, %eax	# _20
	sete	%al	#, retval.3_93
# FusionAhrs.c:140:     if (FusionVectorIsZero(accelerometer) == false) {
	testb	%al, %al	# retval.3_93
	je	.L95	#,
# FusionAhrs.c:142:         ahrs->halfAccelerometerFeedback = Feedback(FusionVectorNormalise(accelerometer), halfGravity);
	movq	-216(%rbp), %rax	# accelerometer, tmp221
	movd	-208(%rbp), %xmm1	# accelerometer, tmp222
	movq	%rax, %xmm0	# tmp221,
	call	_ZL21FusionVectorNormalise12FusionVector	#
	movq	%xmm0, %rax	#, tmp223
	movq	%xmm1, %rdx	#, tmp224
	movq	%rax, -108(%rbp)	# tmp223, D.27224
	movl	-100(%rbp), %eax	# D.27224, tmp226
	andl	$0, %eax	#, tmp227
	orl	%edx, %eax	# tmp224, tmp228
	movl	%eax, -100(%rbp)	# tmp228, D.27224
# FusionAhrs.c:142:         ahrs->halfAccelerometerFeedback = Feedback(FusionVectorNormalise(accelerometer), halfGravity);
	movq	-184(%rbp), %rbx	# ahrs, tmp229
	movq	-168(%rbp), %xmm2	# halfGravity, tmp230
	movd	-160(%rbp), %xmm0	# halfGravity, tmp231
	movq	-108(%rbp), %rax	# D.27224, tmp232
	movd	-100(%rbp), %xmm1	# D.27224, tmp233
	movdqa	%xmm0, %xmm3	# tmp231,
	movq	%rax, %xmm0	# tmp232,
	call	_ZL8Feedback12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp234
	movq	%xmm1, %rdx	#, tmp235
	movq	%rax, 68(%rbx)	# tmp234, ahrs_75(D)->halfAccelerometerFeedback
	movl	76(%rbx), %eax	# ahrs_75(D)->halfAccelerometerFeedback, tmp237
	andl	$0, %eax	#, tmp238
	orl	%edx, %eax	# tmp235, tmp239
	movl	%eax, 76(%rbx)	# tmp239, ahrs_75(D)->halfAccelerometerFeedback
# FusionAhrs.c:145:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfAccelerometerFeedback) <= ahrs->settings.accelerationRejection)) {
	movq	-184(%rbp), %rax	# ahrs, tmp240
	movzbl	52(%rax), %eax	# ahrs_75(D)->initialising, _21
# FusionAhrs.c:145:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfAccelerometerFeedback) <= ahrs->settings.accelerationRejection)) {
	testb	%al, %al	# _21
	jne	.L96	#,
# FusionAhrs.c:145:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfAccelerometerFeedback) <= ahrs->settings.accelerationRejection)) {
	movq	-184(%rbp), %rax	# ahrs, tmp241
	movq	68(%rax), %rdx	# ahrs_75(D)->halfAccelerometerFeedback, tmp242
	movd	76(%rax), %xmm1	# ahrs_75(D)->halfAccelerometerFeedback, tmp243
	movq	%rdx, %xmm0	# tmp242,
	call	_ZL28FusionVectorMagnitudeSquared12FusionVector	#
# FusionAhrs.c:145:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfAccelerometerFeedback) <= ahrs->settings.accelerationRejection)) {
	movq	-184(%rbp), %rax	# ahrs, tmp244
	movss	12(%rax), %xmm1	# ahrs_75(D)->settings.accelerationRejection, _23
# FusionAhrs.c:145:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfAccelerometerFeedback) <= ahrs->settings.accelerationRejection)) {
	comiss	%xmm0, %xmm1	# _22, _23
	jb	.L115	#,
.L96:
# FusionAhrs.c:145:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfAccelerometerFeedback) <= ahrs->settings.accelerationRejection)) {
	movl	$1, %eax	#, iftmp.5_59
# FusionAhrs.c:145:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfAccelerometerFeedback) <= ahrs->settings.accelerationRejection)) {
	jmp	.L99	#
.L115:
# FusionAhrs.c:145:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfAccelerometerFeedback) <= ahrs->settings.accelerationRejection)) {
	movl	$0, %eax	#, iftmp.5_59
.L99:
# FusionAhrs.c:145:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfAccelerometerFeedback) <= ahrs->settings.accelerationRejection)) {
	testb	%al, %al	# iftmp.5_59
	je	.L100	#,
# FusionAhrs.c:146:             ahrs->accelerometerIgnored = false;
	movq	-184(%rbp), %rax	# ahrs, tmp245
	movb	$0, 92(%rax)	#, ahrs_75(D)->accelerometerIgnored
# FusionAhrs.c:147:             ahrs->accelerationRecoveryTrigger -= 9;
	movq	-184(%rbp), %rax	# ahrs, tmp246
	movl	96(%rax), %eax	# ahrs_75(D)->accelerationRecoveryTrigger, _24
# FusionAhrs.c:147:             ahrs->accelerationRecoveryTrigger -= 9;
	leal	-9(%rax), %edx	#, _25
	movq	-184(%rbp), %rax	# ahrs, tmp247
	movl	%edx, 96(%rax)	# _25, ahrs_75(D)->accelerationRecoveryTrigger
	jmp	.L101	#
.L100:
# FusionAhrs.c:149:             ahrs->accelerationRecoveryTrigger += 1;
	movq	-184(%rbp), %rax	# ahrs, tmp248
	movl	96(%rax), %eax	# ahrs_75(D)->accelerationRecoveryTrigger, _26
# FusionAhrs.c:149:             ahrs->accelerationRecoveryTrigger += 1;
	leal	1(%rax), %edx	#, _27
	movq	-184(%rbp), %rax	# ahrs, tmp249
	movl	%edx, 96(%rax)	# _27, ahrs_75(D)->accelerationRecoveryTrigger
.L101:
# FusionAhrs.c:153:         if (ahrs->accelerationRecoveryTrigger > ahrs->accelerationRecoveryTimeout) {
	movq	-184(%rbp), %rax	# ahrs, tmp250
	movl	96(%rax), %edx	# ahrs_75(D)->accelerationRecoveryTrigger, _28
# FusionAhrs.c:153:         if (ahrs->accelerationRecoveryTrigger > ahrs->accelerationRecoveryTimeout) {
	movq	-184(%rbp), %rax	# ahrs, tmp251
	movl	100(%rax), %eax	# ahrs_75(D)->accelerationRecoveryTimeout, _29
# FusionAhrs.c:153:         if (ahrs->accelerationRecoveryTrigger > ahrs->accelerationRecoveryTimeout) {
	cmpl	%eax, %edx	# _29, _28
	jle	.L102	#,
# FusionAhrs.c:154:             ahrs->accelerationRecoveryTimeout = 0;
	movq	-184(%rbp), %rax	# ahrs, tmp252
	movl	$0, 100(%rax)	#, ahrs_75(D)->accelerationRecoveryTimeout
# FusionAhrs.c:155:             ahrs->accelerometerIgnored = false;
	movq	-184(%rbp), %rax	# ahrs, tmp253
	movb	$0, 92(%rax)	#, ahrs_75(D)->accelerometerIgnored
	jmp	.L103	#
.L102:
# FusionAhrs.c:157:             ahrs->accelerationRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-184(%rbp), %rax	# ahrs, tmp254
	movl	20(%rax), %eax	# ahrs_75(D)->settings.recoveryTriggerPeriod, _30
	movl	%eax, %edx	# _30, _31
# FusionAhrs.c:157:             ahrs->accelerationRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-184(%rbp), %rax	# ahrs, tmp255
	movl	%edx, 100(%rax)	# _31, ahrs_75(D)->accelerationRecoveryTimeout
.L103:
# FusionAhrs.c:159:         ahrs->accelerationRecoveryTrigger = Clamp(ahrs->accelerationRecoveryTrigger, 0, ahrs->settings.recoveryTriggerPeriod);
	movq	-184(%rbp), %rax	# ahrs, tmp256
	movl	20(%rax), %eax	# ahrs_75(D)->settings.recoveryTriggerPeriod, _32
# FusionAhrs.c:159:         ahrs->accelerationRecoveryTrigger = Clamp(ahrs->accelerationRecoveryTrigger, 0, ahrs->settings.recoveryTriggerPeriod);
	movl	%eax, %edx	# _32, _33
	movq	-184(%rbp), %rax	# ahrs, tmp257
	movl	96(%rax), %eax	# ahrs_75(D)->accelerationRecoveryTrigger, _34
	movl	$0, %esi	#,
	movl	%eax, %edi	# _34,
	call	_ZL5Clampiii	#
# FusionAhrs.c:159:         ahrs->accelerationRecoveryTrigger = Clamp(ahrs->accelerationRecoveryTrigger, 0, ahrs->settings.recoveryTriggerPeriod);
	movq	-184(%rbp), %rdx	# ahrs, tmp258
	movl	%eax, 96(%rdx)	# _35, ahrs_75(D)->accelerationRecoveryTrigger
# FusionAhrs.c:162:         if (ahrs->accelerometerIgnored == false) {
	movq	-184(%rbp), %rax	# ahrs, tmp259
	movzbl	92(%rax), %eax	# ahrs_75(D)->accelerometerIgnored, _36
	movzbl	%al, %eax	# _36, _37
# FusionAhrs.c:162:         if (ahrs->accelerometerIgnored == false) {
	testl	%eax, %eax	# _37
	jne	.L95	#,
# FusionAhrs.c:163:             halfAccelerometerFeedback = ahrs->halfAccelerometerFeedback;
	movq	-184(%rbp), %rax	# ahrs, tmp260
	movq	68(%rax), %rdx	# ahrs_75(D)->halfAccelerometerFeedback, tmp261
	movq	%rdx, -156(%rbp)	# tmp261, halfAccelerometerFeedback
	movl	76(%rax), %eax	# ahrs_75(D)->halfAccelerometerFeedback, tmp262
	movl	%eax, -148(%rbp)	# tmp262, halfAccelerometerFeedback
.L95:
# FusionAhrs.c:168:     FusionVector halfMagnetometerFeedback = FUSION_VECTOR_ZERO;
	pxor	%xmm0, %xmm0	# tmp263
	movss	%xmm0, -144(%rbp)	# tmp263, halfMagnetometerFeedback.array[0]
	pxor	%xmm0, %xmm0	# tmp264
	movss	%xmm0, -140(%rbp)	# tmp264, halfMagnetometerFeedback.array[1]
	pxor	%xmm0, %xmm0	# tmp265
	movss	%xmm0, -136(%rbp)	# tmp265, halfMagnetometerFeedback.array[2]
# FusionAhrs.c:169:     ahrs->magnetometerIgnored = true;
	movq	-184(%rbp), %rax	# ahrs, tmp266
	movb	$1, 104(%rax)	#, ahrs_75(D)->magnetometerIgnored
# FusionAhrs.c:170:     if (FusionVectorIsZero(magnetometer) == false) {
	movq	-232(%rbp), %rax	# magnetometer, tmp267
	movd	-224(%rbp), %xmm1	# magnetometer, tmp268
	movq	%rax, %xmm0	# tmp267,
	call	_ZL18FusionVectorIsZero12FusionVector	#
# FusionAhrs.c:170:     if (FusionVectorIsZero(magnetometer) == false) {
	movzbl	%al, %eax	# _38, _39
# FusionAhrs.c:170:     if (FusionVectorIsZero(magnetometer) == false) {
	testl	%eax, %eax	# _39
	sete	%al	#, retval.6_114
# FusionAhrs.c:170:     if (FusionVectorIsZero(magnetometer) == false) {
	testb	%al, %al	# retval.6_114
	je	.L104	#,
# FusionAhrs.c:172:         const FusionVector halfMagnetic = HalfMagnetic(ahrs);
	movq	-184(%rbp), %rax	# ahrs, tmp269
	movq	%rax, %rdi	# tmp269,
	call	_ZL12HalfMagneticPK10FusionAhrs	#
	movq	%xmm0, %rax	#, tmp270
	movq	%xmm1, %rdx	#, tmp271
	movq	%rax, -48(%rbp)	# tmp270, MEM[(union FusionVector *)_147]
	movl	-40(%rbp), %eax	# MEM[(union FusionVector *)_147], tmp273
	andl	$0, %eax	#, tmp274
	orl	%edx, %eax	# tmp271, tmp275
	movl	%eax, -40(%rbp)	# tmp275, MEM[(union FusionVector *)_147]
# FusionAhrs.c:175:         ahrs->halfMagnetometerFeedback = Feedback(FusionVectorNormalise(FusionVectorCrossProduct(halfGravity, magnetometer)), halfMagnetic);
	movq	-232(%rbp), %xmm2	# magnetometer, tmp276
	movd	-224(%rbp), %xmm0	# magnetometer, tmp277
	movq	-168(%rbp), %rax	# halfGravity, tmp278
	movd	-160(%rbp), %xmm1	# halfGravity, tmp279
	movdqa	%xmm0, %xmm3	# tmp277,
	movq	%rax, %xmm0	# tmp278,
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp280
	movq	%xmm1, %rdx	#, tmp281
	movq	%rax, -96(%rbp)	# tmp280, D.27244
	movl	-88(%rbp), %eax	# D.27244, tmp283
	andl	$0, %eax	#, tmp284
	orl	%edx, %eax	# tmp281, tmp285
	movl	%eax, -88(%rbp)	# tmp285, D.27244
# FusionAhrs.c:175:         ahrs->halfMagnetometerFeedback = Feedback(FusionVectorNormalise(FusionVectorCrossProduct(halfGravity, magnetometer)), halfMagnetic);
	movq	-96(%rbp), %rax	# D.27244, tmp286
	movd	-88(%rbp), %xmm1	# D.27244, tmp287
	movq	%rax, %xmm0	# tmp286,
	call	_ZL21FusionVectorNormalise12FusionVector	#
	movq	%xmm0, %rax	#, tmp288
	movq	%xmm1, %rdx	#, tmp289
	movq	%rax, -84(%rbp)	# tmp288, D.27245
	movl	-76(%rbp), %eax	# D.27245, tmp291
	andl	$0, %eax	#, tmp292
	orl	%edx, %eax	# tmp289, tmp293
	movl	%eax, -76(%rbp)	# tmp293, D.27245
# FusionAhrs.c:175:         ahrs->halfMagnetometerFeedback = Feedback(FusionVectorNormalise(FusionVectorCrossProduct(halfGravity, magnetometer)), halfMagnetic);
	movq	-184(%rbp), %rbx	# ahrs, tmp294
	movq	-48(%rbp), %xmm2	# MEM[(union FusionVector *)_147], tmp295
	movd	-40(%rbp), %xmm0	# MEM[(union FusionVector *)_147], tmp296
	movq	-84(%rbp), %rax	# D.27245, tmp297
	movd	-76(%rbp), %xmm1	# D.27245, tmp298
	movdqa	%xmm0, %xmm3	# tmp296,
	movq	%rax, %xmm0	# tmp297,
	call	_ZL8Feedback12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp299
	movq	%xmm1, %rdx	#, tmp300
	movq	%rax, 80(%rbx)	# tmp299, ahrs_75(D)->halfMagnetometerFeedback
	movl	88(%rbx), %eax	# ahrs_75(D)->halfMagnetometerFeedback, tmp302
	andl	$0, %eax	#, tmp303
	orl	%edx, %eax	# tmp300, tmp304
	movl	%eax, 88(%rbx)	# tmp304, ahrs_75(D)->halfMagnetometerFeedback
# FusionAhrs.c:178:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfMagnetometerFeedback) <= ahrs->settings.magneticRejection)) {
	movq	-184(%rbp), %rax	# ahrs, tmp305
	movzbl	52(%rax), %eax	# ahrs_75(D)->initialising, _40
# FusionAhrs.c:178:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfMagnetometerFeedback) <= ahrs->settings.magneticRejection)) {
	testb	%al, %al	# _40
	jne	.L105	#,
# FusionAhrs.c:178:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfMagnetometerFeedback) <= ahrs->settings.magneticRejection)) {
	movq	-184(%rbp), %rax	# ahrs, tmp306
	movq	80(%rax), %rdx	# ahrs_75(D)->halfMagnetometerFeedback, tmp307
	movd	88(%rax), %xmm1	# ahrs_75(D)->halfMagnetometerFeedback, tmp308
	movq	%rdx, %xmm0	# tmp307,
	call	_ZL28FusionVectorMagnitudeSquared12FusionVector	#
# FusionAhrs.c:178:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfMagnetometerFeedback) <= ahrs->settings.magneticRejection)) {
	movq	-184(%rbp), %rax	# ahrs, tmp309
	movss	16(%rax), %xmm1	# ahrs_75(D)->settings.magneticRejection, _42
# FusionAhrs.c:178:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfMagnetometerFeedback) <= ahrs->settings.magneticRejection)) {
	comiss	%xmm0, %xmm1	# _41, _42
	jb	.L116	#,
.L105:
# FusionAhrs.c:178:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfMagnetometerFeedback) <= ahrs->settings.magneticRejection)) {
	movl	$1, %eax	#, iftmp.8_60
# FusionAhrs.c:178:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfMagnetometerFeedback) <= ahrs->settings.magneticRejection)) {
	jmp	.L108	#
.L116:
# FusionAhrs.c:178:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfMagnetometerFeedback) <= ahrs->settings.magneticRejection)) {
	movl	$0, %eax	#, iftmp.8_60
.L108:
# FusionAhrs.c:178:         if (ahrs->initialising || (FusionVectorMagnitudeSquared(ahrs->halfMagnetometerFeedback) <= ahrs->settings.magneticRejection)) {
	testb	%al, %al	# iftmp.8_60
	je	.L109	#,
# FusionAhrs.c:179:             ahrs->magnetometerIgnored = false;
	movq	-184(%rbp), %rax	# ahrs, tmp310
	movb	$0, 104(%rax)	#, ahrs_75(D)->magnetometerIgnored
# FusionAhrs.c:180:             ahrs->magneticRecoveryTrigger -= 9;
	movq	-184(%rbp), %rax	# ahrs, tmp311
	movl	108(%rax), %eax	# ahrs_75(D)->magneticRecoveryTrigger, _43
# FusionAhrs.c:180:             ahrs->magneticRecoveryTrigger -= 9;
	leal	-9(%rax), %edx	#, _44
	movq	-184(%rbp), %rax	# ahrs, tmp312
	movl	%edx, 108(%rax)	# _44, ahrs_75(D)->magneticRecoveryTrigger
	jmp	.L110	#
.L109:
# FusionAhrs.c:182:             ahrs->magneticRecoveryTrigger += 1;
	movq	-184(%rbp), %rax	# ahrs, tmp313
	movl	108(%rax), %eax	# ahrs_75(D)->magneticRecoveryTrigger, _45
# FusionAhrs.c:182:             ahrs->magneticRecoveryTrigger += 1;
	leal	1(%rax), %edx	#, _46
	movq	-184(%rbp), %rax	# ahrs, tmp314
	movl	%edx, 108(%rax)	# _46, ahrs_75(D)->magneticRecoveryTrigger
.L110:
# FusionAhrs.c:186:         if (ahrs->magneticRecoveryTrigger > ahrs->magneticRecoveryTimeout) {
	movq	-184(%rbp), %rax	# ahrs, tmp315
	movl	108(%rax), %edx	# ahrs_75(D)->magneticRecoveryTrigger, _47
# FusionAhrs.c:186:         if (ahrs->magneticRecoveryTrigger > ahrs->magneticRecoveryTimeout) {
	movq	-184(%rbp), %rax	# ahrs, tmp316
	movl	112(%rax), %eax	# ahrs_75(D)->magneticRecoveryTimeout, _48
# FusionAhrs.c:186:         if (ahrs->magneticRecoveryTrigger > ahrs->magneticRecoveryTimeout) {
	cmpl	%eax, %edx	# _48, _47
	jle	.L111	#,
# FusionAhrs.c:187:             ahrs->magneticRecoveryTimeout = 0;
	movq	-184(%rbp), %rax	# ahrs, tmp317
	movl	$0, 112(%rax)	#, ahrs_75(D)->magneticRecoveryTimeout
# FusionAhrs.c:188:             ahrs->magnetometerIgnored = false;
	movq	-184(%rbp), %rax	# ahrs, tmp318
	movb	$0, 104(%rax)	#, ahrs_75(D)->magnetometerIgnored
	jmp	.L112	#
.L111:
# FusionAhrs.c:190:             ahrs->magneticRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-184(%rbp), %rax	# ahrs, tmp319
	movl	20(%rax), %eax	# ahrs_75(D)->settings.recoveryTriggerPeriod, _49
	movl	%eax, %edx	# _49, _50
# FusionAhrs.c:190:             ahrs->magneticRecoveryTimeout = ahrs->settings.recoveryTriggerPeriod;
	movq	-184(%rbp), %rax	# ahrs, tmp320
	movl	%edx, 112(%rax)	# _50, ahrs_75(D)->magneticRecoveryTimeout
.L112:
# FusionAhrs.c:192:         ahrs->magneticRecoveryTrigger = Clamp(ahrs->magneticRecoveryTrigger, 0, ahrs->settings.recoveryTriggerPeriod);
	movq	-184(%rbp), %rax	# ahrs, tmp321
	movl	20(%rax), %eax	# ahrs_75(D)->settings.recoveryTriggerPeriod, _51
# FusionAhrs.c:192:         ahrs->magneticRecoveryTrigger = Clamp(ahrs->magneticRecoveryTrigger, 0, ahrs->settings.recoveryTriggerPeriod);
	movl	%eax, %edx	# _51, _52
	movq	-184(%rbp), %rax	# ahrs, tmp322
	movl	108(%rax), %eax	# ahrs_75(D)->magneticRecoveryTrigger, _53
	movl	$0, %esi	#,
	movl	%eax, %edi	# _53,
	call	_ZL5Clampiii	#
# FusionAhrs.c:192:         ahrs->magneticRecoveryTrigger = Clamp(ahrs->magneticRecoveryTrigger, 0, ahrs->settings.recoveryTriggerPeriod);
	movq	-184(%rbp), %rdx	# ahrs, tmp323
	movl	%eax, 108(%rdx)	# _54, ahrs_75(D)->magneticRecoveryTrigger
# FusionAhrs.c:195:         if (ahrs->magnetometerIgnored == false) {
	movq	-184(%rbp), %rax	# ahrs, tmp324
	movzbl	104(%rax), %eax	# ahrs_75(D)->magnetometerIgnored, _55
	movzbl	%al, %eax	# _55, _56
# FusionAhrs.c:195:         if (ahrs->magnetometerIgnored == false) {
	testl	%eax, %eax	# _56
	jne	.L104	#,
# FusionAhrs.c:196:             halfMagnetometerFeedback = ahrs->halfMagnetometerFeedback;
	movq	-184(%rbp), %rax	# ahrs, tmp325
	movq	80(%rax), %rdx	# ahrs_75(D)->halfMagnetometerFeedback, tmp326
	movq	%rdx, -144(%rbp)	# tmp326, halfMagnetometerFeedback
	movl	88(%rax), %eax	# ahrs_75(D)->halfMagnetometerFeedback, tmp327
	movl	%eax, -136(%rbp)	# tmp327, halfMagnetometerFeedback
.L104:
# FusionAhrs.c:201:     const FusionVector halfGyroscope = FusionVectorMultiplyScalar(gyroscope, FusionDegreesToRadians(0.5f));
	movl	.LC10(%rip), %eax	#, tmp328
	movd	%eax, %xmm0	# tmp328,
	call	_ZL22FusionDegreesToRadiansf	#
	movd	%xmm0, %edx	#, _57
# FusionAhrs.c:201:     const FusionVector halfGyroscope = FusionVectorMultiplyScalar(gyroscope, FusionDegreesToRadians(0.5f));
	movq	-200(%rbp), %rax	# gyroscope, tmp329
	movd	-192(%rbp), %xmm1	# gyroscope, tmp330
	movd	%edx, %xmm2	# _57,
	movq	%rax, %xmm0	# tmp329,
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf	#
	movq	%xmm0, %rax	#, tmp331
	movq	%xmm1, %rdx	#, tmp332
	movq	%rax, -132(%rbp)	# tmp331, halfGyroscope
	movl	-124(%rbp), %eax	# halfGyroscope, tmp334
	andl	$0, %eax	#, tmp335
	orl	%edx, %eax	# tmp332, tmp336
	movl	%eax, -124(%rbp)	# tmp336, halfGyroscope
# FusionAhrs.c:204:     const FusionVector adjustedHalfGyroscope = FusionVectorAdd(halfGyroscope, FusionVectorMultiplyScalar(FusionVectorAdd(halfAccelerometerFeedback, halfMagnetometerFeedback), ahrs->rampedGain));
	movq	-184(%rbp), %rax	# ahrs, tmp337
	movss	56(%rax), %xmm7	# ahrs_75(D)->rampedGain, _58
	movss	%xmm7, -240(%rbp)	# _58, %sfp
	movq	-144(%rbp), %xmm2	# halfMagnetometerFeedback, tmp338
	movd	-136(%rbp), %xmm0	# halfMagnetometerFeedback, tmp339
	movq	-156(%rbp), %rax	# halfAccelerometerFeedback, tmp340
	movd	-148(%rbp), %xmm1	# halfAccelerometerFeedback, tmp341
	movdqa	%xmm0, %xmm3	# tmp339,
	movq	%rax, %xmm0	# tmp340,
	call	_ZL15FusionVectorAdd12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp342
	movq	%xmm1, %rdx	#, tmp343
	movq	%rax, -72(%rbp)	# tmp342, D.27262
	movl	-64(%rbp), %eax	# D.27262, tmp345
	andl	$0, %eax	#, tmp346
	orl	%edx, %eax	# tmp343, tmp347
	movl	%eax, -64(%rbp)	# tmp347, D.27262
# FusionAhrs.c:204:     const FusionVector adjustedHalfGyroscope = FusionVectorAdd(halfGyroscope, FusionVectorMultiplyScalar(FusionVectorAdd(halfAccelerometerFeedback, halfMagnetometerFeedback), ahrs->rampedGain));
	movq	-72(%rbp), %rax	# D.27262, tmp348
	movd	-64(%rbp), %xmm1	# D.27262, tmp349
	movss	-240(%rbp), %xmm2	# %sfp,
	movq	%rax, %xmm0	# tmp348,
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf	#
	movq	%xmm0, %rax	#, tmp350
	movq	%xmm1, %rdx	#, tmp351
	movq	%rax, -60(%rbp)	# tmp350, D.27263
	movl	-52(%rbp), %eax	# D.27263, tmp353
	andl	$0, %eax	#, tmp354
	orl	%edx, %eax	# tmp351, tmp355
	movl	%eax, -52(%rbp)	# tmp355, D.27263
# FusionAhrs.c:204:     const FusionVector adjustedHalfGyroscope = FusionVectorAdd(halfGyroscope, FusionVectorMultiplyScalar(FusionVectorAdd(halfAccelerometerFeedback, halfMagnetometerFeedback), ahrs->rampedGain));
	movq	-60(%rbp), %xmm2	# D.27263, tmp356
	movd	-52(%rbp), %xmm0	# D.27263, tmp357
	movq	-132(%rbp), %rax	# halfGyroscope, tmp358
	movd	-124(%rbp), %xmm1	# halfGyroscope, tmp359
	movdqa	%xmm0, %xmm3	# tmp357,
	movq	%rax, %xmm0	# tmp358,
	call	_ZL15FusionVectorAdd12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp360
	movq	%xmm1, %rdx	#, tmp361
	movq	%rax, -120(%rbp)	# tmp360, adjustedHalfGyroscope
	movl	-112(%rbp), %eax	# adjustedHalfGyroscope, tmp363
	andl	$0, %eax	#, tmp364
	orl	%edx, %eax	# tmp361, tmp365
	movl	%eax, -112(%rbp)	# tmp365, adjustedHalfGyroscope
# FusionAhrs.c:207:     ahrs->quaternion = FusionQuaternionAdd(ahrs->quaternion, FusionQuaternionMultiplyVector(ahrs->quaternion, FusionVectorMultiplyScalar(adjustedHalfGyroscope, deltaTime)));
	movss	-236(%rbp), %xmm0	# deltaTime, tmp366
	movq	-120(%rbp), %rax	# adjustedHalfGyroscope, tmp367
	movd	-112(%rbp), %xmm1	# adjustedHalfGyroscope, tmp368
	movaps	%xmm0, %xmm2	# tmp366,
	movq	%rax, %xmm0	# tmp367,
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf	#
	movq	%xmm0, %rax	#, tmp369
	movq	%xmm1, %rdx	#, tmp370
	movq	%rax, -48(%rbp)	# tmp369, MEM[(union FusionVector *)_147]
	movl	-40(%rbp), %eax	# MEM[(union FusionVector *)_147], tmp372
	andl	$0, %eax	#, tmp373
	orl	%edx, %eax	# tmp370, tmp374
	movl	%eax, -40(%rbp)	# tmp374, MEM[(union FusionVector *)_147]
# FusionAhrs.c:207:     ahrs->quaternion = FusionQuaternionAdd(ahrs->quaternion, FusionQuaternionMultiplyVector(ahrs->quaternion, FusionVectorMultiplyScalar(adjustedHalfGyroscope, deltaTime)));
	movq	-48(%rbp), %xmm2	# MEM[(union FusionVector *)_147], tmp375
	movd	-40(%rbp), %xmm0	# MEM[(union FusionVector *)_147], tmp376
	movq	-184(%rbp), %rax	# ahrs, tmp377
	movq	24(%rax), %rdx	# ahrs_75(D)->quaternion, tmp378
	movq	32(%rax), %xmm1	# ahrs_75(D)->quaternion, tmp379
	movdqa	%xmm0, %xmm3	# tmp376,
	movq	%rdx, %xmm0	# tmp378,
	call	_ZL30FusionQuaternionMultiplyVector16FusionQuaternion12FusionVector	#
	movq	%xmm0, %rax	#, tmp380
	movdqa	%xmm1, %xmm0	#, tmp381
	movq	%rax, %rax	# tmp380, D.27265
	movl	$0, %edx	#, D.27265
	movq	%xmm0, %rdx	# tmp381, D.27265
# FusionAhrs.c:207:     ahrs->quaternion = FusionQuaternionAdd(ahrs->quaternion, FusionQuaternionMultiplyVector(ahrs->quaternion, FusionVectorMultiplyScalar(adjustedHalfGyroscope, deltaTime)));
	movq	-184(%rbp), %rbx	# ahrs, tmp382
	movq	%rax, %xmm2	# D.27265, tmp383
	movq	%rdx, %xmm0	# D.27265, tmp384
	movq	-184(%rbp), %rax	# ahrs, tmp385
	movq	24(%rax), %rdx	# ahrs_75(D)->quaternion, tmp386
	movq	32(%rax), %xmm1	# ahrs_75(D)->quaternion, tmp387
	movdqa	%xmm0, %xmm3	# tmp384,
	movq	%rdx, %xmm0	# tmp386,
	call	_ZL19FusionQuaternionAdd16FusionQuaternionS_	#
	movq	%xmm0, %rax	#, tmp388
	movdqa	%xmm1, %xmm0	#, tmp389
	movq	%rax, 24(%rbx)	# tmp388, ahrs_75(D)->quaternion
	movq	%xmm0, 32(%rbx)	# tmp389, ahrs_75(D)->quaternion
# FusionAhrs.c:210:     ahrs->quaternion = FusionQuaternionNormalise(ahrs->quaternion);
	movq	-184(%rbp), %rbx	# ahrs, tmp390
	movq	-184(%rbp), %rax	# ahrs, tmp391
	movq	24(%rax), %rdx	# ahrs_75(D)->quaternion, tmp392
	movq	32(%rax), %xmm1	# ahrs_75(D)->quaternion, tmp393
	movq	%rdx, %xmm0	# tmp392,
	call	_ZL25FusionQuaternionNormalise16FusionQuaternion	#
	movq	%xmm0, %rax	#, tmp394
	movdqa	%xmm1, %xmm0	#, tmp395
	movq	%rax, 24(%rbx)	# tmp394, ahrs_75(D)->quaternion
	movq	%xmm0, 32(%rbx)	# tmp395, ahrs_75(D)->quaternion
# FusionAhrs.c:211: }
	nop	
	movq	-24(%rbp), %rax	# D.27431, tmp396
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp396
	je	.L114	#,
	call	__stack_chk_fail@PLT	#
.L114:
	movq	-8(%rbp), %rbx	#,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# ahrs, ahrs
# FusionAhrs.c:218: static inline FusionVector HalfGravity(const FusionAhrs *const ahrs) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp147
	movq	%rax, -8(%rbp)	# tmp147, D.27434
	xorl	%eax, %eax	# tmp147
# FusionAhrs.c:220:     switch (ahrs->settings.convention) {
	movq	-40(%rbp), %rax	# ahrs, tmp148
	movl	(%rax), %eax	# ahrs_50(D)->settings.convention, _1
# FusionAhrs.c:220:     switch (ahrs->settings.convention) {
	cmpl	$1, %eax	#, _2
	jg	.L118	#,
	testl	%eax, %eax	# _2
	jns	.L119	#,
	jmp	.L120	#
.L118:
	cmpl	$2, %eax	#, _2
	je	.L121	#,
	jmp	.L120	#
.L119:
# FusionAhrs.c:225:                     .x = Q.x * Q.z - Q.w * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp149
	movss	28(%rax), %xmm1	# ahrs_50(D)->quaternion.element.x, _3
# FusionAhrs.c:225:                     .x = Q.x * Q.z - Q.w * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp150
	movss	36(%rax), %xmm0	# ahrs_50(D)->quaternion.element.z, _4
# FusionAhrs.c:225:                     .x = Q.x * Q.z - Q.w * Q.y,
	mulss	%xmm1, %xmm0	# _3, _5
# FusionAhrs.c:225:                     .x = Q.x * Q.z - Q.w * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp151
	movss	24(%rax), %xmm2	# ahrs_50(D)->quaternion.element.w, _6
# FusionAhrs.c:225:                     .x = Q.x * Q.z - Q.w * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp152
	movss	32(%rax), %xmm1	# ahrs_50(D)->quaternion.element.y, _7
# FusionAhrs.c:225:                     .x = Q.x * Q.z - Q.w * Q.y,
	mulss	%xmm2, %xmm1	# _6, _8
# FusionAhrs.c:225:                     .x = Q.x * Q.z - Q.w * Q.y,
	subss	%xmm1, %xmm0	# _8, _9
# FusionAhrs.c:229:             }; // third column of transposed rotation matrix scaled by 0.5
	movss	%xmm0, -32(%rbp)	# _9, MEM[(union FusionVector *)_64].axis.x
# FusionAhrs.c:226:                     .y = Q.y * Q.z + Q.w * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp153
	movss	32(%rax), %xmm1	# ahrs_50(D)->quaternion.element.y, _10
# FusionAhrs.c:226:                     .y = Q.y * Q.z + Q.w * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp154
	movss	36(%rax), %xmm0	# ahrs_50(D)->quaternion.element.z, _11
# FusionAhrs.c:226:                     .y = Q.y * Q.z + Q.w * Q.x,
	mulss	%xmm0, %xmm1	# _11, _12
# FusionAhrs.c:226:                     .y = Q.y * Q.z + Q.w * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp155
	movss	24(%rax), %xmm2	# ahrs_50(D)->quaternion.element.w, _13
# FusionAhrs.c:226:                     .y = Q.y * Q.z + Q.w * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp156
	movss	28(%rax), %xmm0	# ahrs_50(D)->quaternion.element.x, _14
# FusionAhrs.c:226:                     .y = Q.y * Q.z + Q.w * Q.x,
	mulss	%xmm2, %xmm0	# _13, _15
# FusionAhrs.c:226:                     .y = Q.y * Q.z + Q.w * Q.x,
	addss	%xmm1, %xmm0	# _12, _16
# FusionAhrs.c:229:             }; // third column of transposed rotation matrix scaled by 0.5
	movss	%xmm0, -28(%rbp)	# _16, MEM[(union FusionVector *)_64].axis.y
# FusionAhrs.c:227:                     .z = Q.w * Q.w - 0.5f + Q.z * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp157
	movss	24(%rax), %xmm1	# ahrs_50(D)->quaternion.element.w, _17
# FusionAhrs.c:227:                     .z = Q.w * Q.w - 0.5f + Q.z * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp158
	movss	24(%rax), %xmm0	# ahrs_50(D)->quaternion.element.w, _18
# FusionAhrs.c:227:                     .z = Q.w * Q.w - 0.5f + Q.z * Q.z,
	mulss	%xmm1, %xmm0	# _17, _19
# FusionAhrs.c:227:                     .z = Q.w * Q.w - 0.5f + Q.z * Q.z,
	movss	.LC10(%rip), %xmm2	#, tmp159
	movaps	%xmm0, %xmm1	# _19, _19
	subss	%xmm2, %xmm1	# tmp159, _19
# FusionAhrs.c:227:                     .z = Q.w * Q.w - 0.5f + Q.z * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp160
	movss	36(%rax), %xmm2	# ahrs_50(D)->quaternion.element.z, _21
# FusionAhrs.c:227:                     .z = Q.w * Q.w - 0.5f + Q.z * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp161
	movss	36(%rax), %xmm0	# ahrs_50(D)->quaternion.element.z, _22
# FusionAhrs.c:227:                     .z = Q.w * Q.w - 0.5f + Q.z * Q.z,
	mulss	%xmm2, %xmm0	# _21, _23
# FusionAhrs.c:227:                     .z = Q.w * Q.w - 0.5f + Q.z * Q.z,
	addss	%xmm1, %xmm0	# _20, _24
# FusionAhrs.c:229:             }; // third column of transposed rotation matrix scaled by 0.5
	movss	%xmm0, -24(%rbp)	# _24, MEM[(union FusionVector *)_64].axis.z
# FusionAhrs.c:230:             return halfGravity;
	movq	-32(%rbp), %rax	# MEM[(union FusionVector *)_64], tmp162
	movq	%rax, -20(%rbp)	# tmp162, D.27266
	movl	-24(%rbp), %eax	# MEM[(union FusionVector *)_64], tmp163
	movl	%eax, -12(%rbp)	# tmp163, D.27266
	jmp	.L122	#
.L121:
# FusionAhrs.c:235:                     .x = Q.w * Q.y - Q.x * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp164
	movss	24(%rax), %xmm1	# ahrs_50(D)->quaternion.element.w, _25
# FusionAhrs.c:235:                     .x = Q.w * Q.y - Q.x * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp165
	movss	32(%rax), %xmm0	# ahrs_50(D)->quaternion.element.y, _26
# FusionAhrs.c:235:                     .x = Q.w * Q.y - Q.x * Q.z,
	mulss	%xmm1, %xmm0	# _25, _27
# FusionAhrs.c:235:                     .x = Q.w * Q.y - Q.x * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp166
	movss	28(%rax), %xmm2	# ahrs_50(D)->quaternion.element.x, _28
# FusionAhrs.c:235:                     .x = Q.w * Q.y - Q.x * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp167
	movss	36(%rax), %xmm1	# ahrs_50(D)->quaternion.element.z, _29
# FusionAhrs.c:235:                     .x = Q.w * Q.y - Q.x * Q.z,
	mulss	%xmm2, %xmm1	# _28, _30
# FusionAhrs.c:235:                     .x = Q.w * Q.y - Q.x * Q.z,
	subss	%xmm1, %xmm0	# _30, _31
# FusionAhrs.c:239:             }; // third column of transposed rotation matrix scaled by -0.5
	movss	%xmm0, -32(%rbp)	# _31, MEM[(union FusionVector *)_64].axis.x
# FusionAhrs.c:236:                     .y = -1.0f * (Q.y * Q.z + Q.w * Q.x),
	movq	-40(%rbp), %rax	# ahrs, tmp168
	movss	32(%rax), %xmm1	# ahrs_50(D)->quaternion.element.y, _32
# FusionAhrs.c:236:                     .y = -1.0f * (Q.y * Q.z + Q.w * Q.x),
	movq	-40(%rbp), %rax	# ahrs, tmp169
	movss	36(%rax), %xmm0	# ahrs_50(D)->quaternion.element.z, _33
# FusionAhrs.c:236:                     .y = -1.0f * (Q.y * Q.z + Q.w * Q.x),
	mulss	%xmm0, %xmm1	# _33, _34
# FusionAhrs.c:236:                     .y = -1.0f * (Q.y * Q.z + Q.w * Q.x),
	movq	-40(%rbp), %rax	# ahrs, tmp170
	movss	24(%rax), %xmm2	# ahrs_50(D)->quaternion.element.w, _35
# FusionAhrs.c:236:                     .y = -1.0f * (Q.y * Q.z + Q.w * Q.x),
	movq	-40(%rbp), %rax	# ahrs, tmp171
	movss	28(%rax), %xmm0	# ahrs_50(D)->quaternion.element.x, _36
# FusionAhrs.c:236:                     .y = -1.0f * (Q.y * Q.z + Q.w * Q.x),
	mulss	%xmm2, %xmm0	# _35, _37
# FusionAhrs.c:236:                     .y = -1.0f * (Q.y * Q.z + Q.w * Q.x),
	addss	%xmm1, %xmm0	# _34, _38
# FusionAhrs.c:236:                     .y = -1.0f * (Q.y * Q.z + Q.w * Q.x),
	movss	.LC9(%rip), %xmm1	#, tmp172
	xorps	%xmm1, %xmm0	# tmp172, _39
# FusionAhrs.c:239:             }; // third column of transposed rotation matrix scaled by -0.5
	movss	%xmm0, -28(%rbp)	# _39, MEM[(union FusionVector *)_64].axis.y
# FusionAhrs.c:237:                     .z = 0.5f - Q.w * Q.w - Q.z * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp173
	movss	24(%rax), %xmm1	# ahrs_50(D)->quaternion.element.w, _40
# FusionAhrs.c:237:                     .z = 0.5f - Q.w * Q.w - Q.z * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp174
	movss	24(%rax), %xmm0	# ahrs_50(D)->quaternion.element.w, _41
# FusionAhrs.c:237:                     .z = 0.5f - Q.w * Q.w - Q.z * Q.z,
	mulss	%xmm0, %xmm1	# _41, _42
# FusionAhrs.c:237:                     .z = 0.5f - Q.w * Q.w - Q.z * Q.z,
	movss	.LC10(%rip), %xmm0	#, tmp175
	subss	%xmm1, %xmm0	# _42, _43
# FusionAhrs.c:237:                     .z = 0.5f - Q.w * Q.w - Q.z * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp176
	movss	36(%rax), %xmm2	# ahrs_50(D)->quaternion.element.z, _44
# FusionAhrs.c:237:                     .z = 0.5f - Q.w * Q.w - Q.z * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp177
	movss	36(%rax), %xmm1	# ahrs_50(D)->quaternion.element.z, _45
# FusionAhrs.c:237:                     .z = 0.5f - Q.w * Q.w - Q.z * Q.z,
	mulss	%xmm2, %xmm1	# _44, _46
# FusionAhrs.c:237:                     .z = 0.5f - Q.w * Q.w - Q.z * Q.z,
	subss	%xmm1, %xmm0	# _46, _47
# FusionAhrs.c:239:             }; // third column of transposed rotation matrix scaled by -0.5
	movss	%xmm0, -24(%rbp)	# _47, MEM[(union FusionVector *)_64].axis.z
# FusionAhrs.c:240:             return halfGravity;
	movq	-32(%rbp), %rax	# MEM[(union FusionVector *)_64], tmp178
	movq	%rax, -20(%rbp)	# tmp178, D.27266
	movl	-24(%rbp), %eax	# MEM[(union FusionVector *)_64], tmp179
	movl	%eax, -12(%rbp)	# tmp179, D.27266
	jmp	.L122	#
.L120:
# FusionAhrs.c:244:     return FUSION_VECTOR_ZERO; // avoid compiler warning
	pxor	%xmm0, %xmm0	# tmp180
	movss	%xmm0, -20(%rbp)	# tmp180, D.27266.array[0]
	pxor	%xmm0, %xmm0	# tmp181
	movss	%xmm0, -16(%rbp)	# tmp181, D.27266.array[1]
	pxor	%xmm0, %xmm0	# tmp182
	movss	%xmm0, -12(%rbp)	# tmp182, D.27266.array[2]
.L122:
# FusionAhrs.c:245: }
	movq	-20(%rbp), %rdx	# D.27266, tmp183
	movl	-12(%rbp), %eax	# D.27266, tmp184
	movq	%rax, %xmm1	# tmp184, <retval>
	movq	-8(%rbp), %rax	# D.27434, tmp185
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp185
	je	.L123	#,
	call	__stack_chk_fail@PLT	#
.L123:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# ahrs, ahrs
# FusionAhrs.c:252: static inline FusionVector HalfMagnetic(const FusionAhrs *const ahrs) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp170
	movq	%rax, -8(%rbp)	# tmp170, D.27436
	xorl	%eax, %eax	# tmp170
# FusionAhrs.c:254:     switch (ahrs->settings.convention) {
	movq	-40(%rbp), %rax	# ahrs, tmp171
	movl	(%rax), %eax	# ahrs_73(D)->settings.convention, _1
# FusionAhrs.c:254:     switch (ahrs->settings.convention) {
	cmpl	$2, %eax	#, _2
	je	.L125	#,
	cmpl	$2, %eax	#, _2
	jg	.L126	#,
	testl	%eax, %eax	# _2
	je	.L127	#,
	cmpl	$1, %eax	#, _2
	je	.L128	#,
	jmp	.L126	#
.L127:
# FusionAhrs.c:258:                     .x = Q.x * Q.y + Q.w * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp172
	movss	28(%rax), %xmm1	# ahrs_73(D)->quaternion.element.x, _3
# FusionAhrs.c:258:                     .x = Q.x * Q.y + Q.w * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp173
	movss	32(%rax), %xmm0	# ahrs_73(D)->quaternion.element.y, _4
# FusionAhrs.c:258:                     .x = Q.x * Q.y + Q.w * Q.z,
	mulss	%xmm0, %xmm1	# _4, _5
# FusionAhrs.c:258:                     .x = Q.x * Q.y + Q.w * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp174
	movss	24(%rax), %xmm2	# ahrs_73(D)->quaternion.element.w, _6
# FusionAhrs.c:258:                     .x = Q.x * Q.y + Q.w * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp175
	movss	36(%rax), %xmm0	# ahrs_73(D)->quaternion.element.z, _7
# FusionAhrs.c:258:                     .x = Q.x * Q.y + Q.w * Q.z,
	mulss	%xmm2, %xmm0	# _6, _8
# FusionAhrs.c:258:                     .x = Q.x * Q.y + Q.w * Q.z,
	addss	%xmm1, %xmm0	# _5, _9
# FusionAhrs.c:262:             }; // second column of transposed rotation matrix scaled by 0.5
	movss	%xmm0, -32(%rbp)	# _9, MEM[(union FusionVector *)_92].axis.x
# FusionAhrs.c:259:                     .y = Q.w * Q.w - 0.5f + Q.y * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp176
	movss	24(%rax), %xmm1	# ahrs_73(D)->quaternion.element.w, _10
# FusionAhrs.c:259:                     .y = Q.w * Q.w - 0.5f + Q.y * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp177
	movss	24(%rax), %xmm0	# ahrs_73(D)->quaternion.element.w, _11
# FusionAhrs.c:259:                     .y = Q.w * Q.w - 0.5f + Q.y * Q.y,
	mulss	%xmm1, %xmm0	# _10, _12
# FusionAhrs.c:259:                     .y = Q.w * Q.w - 0.5f + Q.y * Q.y,
	movss	.LC10(%rip), %xmm2	#, tmp178
	movaps	%xmm0, %xmm1	# _12, _12
	subss	%xmm2, %xmm1	# tmp178, _12
# FusionAhrs.c:259:                     .y = Q.w * Q.w - 0.5f + Q.y * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp179
	movss	32(%rax), %xmm2	# ahrs_73(D)->quaternion.element.y, _14
# FusionAhrs.c:259:                     .y = Q.w * Q.w - 0.5f + Q.y * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp180
	movss	32(%rax), %xmm0	# ahrs_73(D)->quaternion.element.y, _15
# FusionAhrs.c:259:                     .y = Q.w * Q.w - 0.5f + Q.y * Q.y,
	mulss	%xmm2, %xmm0	# _14, _16
# FusionAhrs.c:259:                     .y = Q.w * Q.w - 0.5f + Q.y * Q.y,
	addss	%xmm1, %xmm0	# _13, _17
# FusionAhrs.c:262:             }; // second column of transposed rotation matrix scaled by 0.5
	movss	%xmm0, -28(%rbp)	# _17, MEM[(union FusionVector *)_92].axis.y
# FusionAhrs.c:260:                     .z = Q.y * Q.z - Q.w * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp181
	movss	32(%rax), %xmm1	# ahrs_73(D)->quaternion.element.y, _18
# FusionAhrs.c:260:                     .z = Q.y * Q.z - Q.w * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp182
	movss	36(%rax), %xmm0	# ahrs_73(D)->quaternion.element.z, _19
# FusionAhrs.c:260:                     .z = Q.y * Q.z - Q.w * Q.x,
	mulss	%xmm1, %xmm0	# _18, _20
# FusionAhrs.c:260:                     .z = Q.y * Q.z - Q.w * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp183
	movss	24(%rax), %xmm2	# ahrs_73(D)->quaternion.element.w, _21
# FusionAhrs.c:260:                     .z = Q.y * Q.z - Q.w * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp184
	movss	28(%rax), %xmm1	# ahrs_73(D)->quaternion.element.x, _22
# FusionAhrs.c:260:                     .z = Q.y * Q.z - Q.w * Q.x,
	mulss	%xmm2, %xmm1	# _21, _23
# FusionAhrs.c:260:                     .z = Q.y * Q.z - Q.w * Q.x,
	subss	%xmm1, %xmm0	# _23, _24
# FusionAhrs.c:262:             }; // second column of transposed rotation matrix scaled by 0.5
	movss	%xmm0, -24(%rbp)	# _24, MEM[(union FusionVector *)_92].axis.z
# FusionAhrs.c:263:             return halfMagnetic;
	movq	-32(%rbp), %rax	# MEM[(union FusionVector *)_92], tmp185
	movq	%rax, -20(%rbp)	# tmp185, D.27279
	movl	-24(%rbp), %eax	# MEM[(union FusionVector *)_92], tmp186
	movl	%eax, -12(%rbp)	# tmp186, D.27279
	jmp	.L129	#
.L128:
# FusionAhrs.c:268:                     .x = 0.5f - Q.w * Q.w - Q.x * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp187
	movss	24(%rax), %xmm1	# ahrs_73(D)->quaternion.element.w, _25
# FusionAhrs.c:268:                     .x = 0.5f - Q.w * Q.w - Q.x * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp188
	movss	24(%rax), %xmm0	# ahrs_73(D)->quaternion.element.w, _26
# FusionAhrs.c:268:                     .x = 0.5f - Q.w * Q.w - Q.x * Q.x,
	mulss	%xmm0, %xmm1	# _26, _27
# FusionAhrs.c:268:                     .x = 0.5f - Q.w * Q.w - Q.x * Q.x,
	movss	.LC10(%rip), %xmm0	#, tmp189
	subss	%xmm1, %xmm0	# _27, _28
# FusionAhrs.c:268:                     .x = 0.5f - Q.w * Q.w - Q.x * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp190
	movss	28(%rax), %xmm2	# ahrs_73(D)->quaternion.element.x, _29
# FusionAhrs.c:268:                     .x = 0.5f - Q.w * Q.w - Q.x * Q.x,
	movq	-40(%rbp), %rax	# ahrs, tmp191
	movss	28(%rax), %xmm1	# ahrs_73(D)->quaternion.element.x, _30
# FusionAhrs.c:268:                     .x = 0.5f - Q.w * Q.w - Q.x * Q.x,
	mulss	%xmm2, %xmm1	# _29, _31
# FusionAhrs.c:268:                     .x = 0.5f - Q.w * Q.w - Q.x * Q.x,
	subss	%xmm1, %xmm0	# _31, _32
# FusionAhrs.c:272:             }; // first column of transposed rotation matrix scaled by -0.5
	movss	%xmm0, -32(%rbp)	# _32, MEM[(union FusionVector *)_92].axis.x
# FusionAhrs.c:269:                     .y = Q.w * Q.z - Q.x * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp192
	movss	24(%rax), %xmm1	# ahrs_73(D)->quaternion.element.w, _33
# FusionAhrs.c:269:                     .y = Q.w * Q.z - Q.x * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp193
	movss	36(%rax), %xmm0	# ahrs_73(D)->quaternion.element.z, _34
# FusionAhrs.c:269:                     .y = Q.w * Q.z - Q.x * Q.y,
	mulss	%xmm1, %xmm0	# _33, _35
# FusionAhrs.c:269:                     .y = Q.w * Q.z - Q.x * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp194
	movss	28(%rax), %xmm2	# ahrs_73(D)->quaternion.element.x, _36
# FusionAhrs.c:269:                     .y = Q.w * Q.z - Q.x * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp195
	movss	32(%rax), %xmm1	# ahrs_73(D)->quaternion.element.y, _37
# FusionAhrs.c:269:                     .y = Q.w * Q.z - Q.x * Q.y,
	mulss	%xmm2, %xmm1	# _36, _38
# FusionAhrs.c:269:                     .y = Q.w * Q.z - Q.x * Q.y,
	subss	%xmm1, %xmm0	# _38, _39
# FusionAhrs.c:272:             }; // first column of transposed rotation matrix scaled by -0.5
	movss	%xmm0, -28(%rbp)	# _39, MEM[(union FusionVector *)_92].axis.y
# FusionAhrs.c:270:                     .z = -1.0f * (Q.x * Q.z + Q.w * Q.y),
	movq	-40(%rbp), %rax	# ahrs, tmp196
	movss	28(%rax), %xmm1	# ahrs_73(D)->quaternion.element.x, _40
# FusionAhrs.c:270:                     .z = -1.0f * (Q.x * Q.z + Q.w * Q.y),
	movq	-40(%rbp), %rax	# ahrs, tmp197
	movss	36(%rax), %xmm0	# ahrs_73(D)->quaternion.element.z, _41
# FusionAhrs.c:270:                     .z = -1.0f * (Q.x * Q.z + Q.w * Q.y),
	mulss	%xmm0, %xmm1	# _41, _42
# FusionAhrs.c:270:                     .z = -1.0f * (Q.x * Q.z + Q.w * Q.y),
	movq	-40(%rbp), %rax	# ahrs, tmp198
	movss	24(%rax), %xmm2	# ahrs_73(D)->quaternion.element.w, _43
# FusionAhrs.c:270:                     .z = -1.0f * (Q.x * Q.z + Q.w * Q.y),
	movq	-40(%rbp), %rax	# ahrs, tmp199
	movss	32(%rax), %xmm0	# ahrs_73(D)->quaternion.element.y, _44
# FusionAhrs.c:270:                     .z = -1.0f * (Q.x * Q.z + Q.w * Q.y),
	mulss	%xmm2, %xmm0	# _43, _45
# FusionAhrs.c:270:                     .z = -1.0f * (Q.x * Q.z + Q.w * Q.y),
	addss	%xmm1, %xmm0	# _42, _46
# FusionAhrs.c:270:                     .z = -1.0f * (Q.x * Q.z + Q.w * Q.y),
	movss	.LC9(%rip), %xmm1	#, tmp200
	xorps	%xmm1, %xmm0	# tmp200, _47
# FusionAhrs.c:272:             }; // first column of transposed rotation matrix scaled by -0.5
	movss	%xmm0, -24(%rbp)	# _47, MEM[(union FusionVector *)_92].axis.z
# FusionAhrs.c:273:             return halfMagnetic;
	movq	-32(%rbp), %rax	# MEM[(union FusionVector *)_92], tmp201
	movq	%rax, -20(%rbp)	# tmp201, D.27279
	movl	-24(%rbp), %eax	# MEM[(union FusionVector *)_92], tmp202
	movl	%eax, -12(%rbp)	# tmp202, D.27279
	jmp	.L129	#
.L125:
# FusionAhrs.c:278:                     .x = -1.0f * (Q.x * Q.y + Q.w * Q.z),
	movq	-40(%rbp), %rax	# ahrs, tmp203
	movss	28(%rax), %xmm1	# ahrs_73(D)->quaternion.element.x, _48
# FusionAhrs.c:278:                     .x = -1.0f * (Q.x * Q.y + Q.w * Q.z),
	movq	-40(%rbp), %rax	# ahrs, tmp204
	movss	32(%rax), %xmm0	# ahrs_73(D)->quaternion.element.y, _49
# FusionAhrs.c:278:                     .x = -1.0f * (Q.x * Q.y + Q.w * Q.z),
	mulss	%xmm0, %xmm1	# _49, _50
# FusionAhrs.c:278:                     .x = -1.0f * (Q.x * Q.y + Q.w * Q.z),
	movq	-40(%rbp), %rax	# ahrs, tmp205
	movss	24(%rax), %xmm2	# ahrs_73(D)->quaternion.element.w, _51
# FusionAhrs.c:278:                     .x = -1.0f * (Q.x * Q.y + Q.w * Q.z),
	movq	-40(%rbp), %rax	# ahrs, tmp206
	movss	36(%rax), %xmm0	# ahrs_73(D)->quaternion.element.z, _52
# FusionAhrs.c:278:                     .x = -1.0f * (Q.x * Q.y + Q.w * Q.z),
	mulss	%xmm2, %xmm0	# _51, _53
# FusionAhrs.c:278:                     .x = -1.0f * (Q.x * Q.y + Q.w * Q.z),
	addss	%xmm1, %xmm0	# _50, _54
# FusionAhrs.c:278:                     .x = -1.0f * (Q.x * Q.y + Q.w * Q.z),
	movss	.LC9(%rip), %xmm1	#, tmp207
	xorps	%xmm1, %xmm0	# tmp207, _55
# FusionAhrs.c:282:             }; // second column of transposed rotation matrix scaled by -0.5
	movss	%xmm0, -32(%rbp)	# _55, MEM[(union FusionVector *)_92].axis.x
# FusionAhrs.c:279:                     .y = 0.5f - Q.w * Q.w - Q.y * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp208
	movss	24(%rax), %xmm1	# ahrs_73(D)->quaternion.element.w, _56
# FusionAhrs.c:279:                     .y = 0.5f - Q.w * Q.w - Q.y * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp209
	movss	24(%rax), %xmm0	# ahrs_73(D)->quaternion.element.w, _57
# FusionAhrs.c:279:                     .y = 0.5f - Q.w * Q.w - Q.y * Q.y,
	mulss	%xmm0, %xmm1	# _57, _58
# FusionAhrs.c:279:                     .y = 0.5f - Q.w * Q.w - Q.y * Q.y,
	movss	.LC10(%rip), %xmm0	#, tmp210
	subss	%xmm1, %xmm0	# _58, _59
# FusionAhrs.c:279:                     .y = 0.5f - Q.w * Q.w - Q.y * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp211
	movss	32(%rax), %xmm2	# ahrs_73(D)->quaternion.element.y, _60
# FusionAhrs.c:279:                     .y = 0.5f - Q.w * Q.w - Q.y * Q.y,
	movq	-40(%rbp), %rax	# ahrs, tmp212
	movss	32(%rax), %xmm1	# ahrs_73(D)->quaternion.element.y, _61
# FusionAhrs.c:279:                     .y = 0.5f - Q.w * Q.w - Q.y * Q.y,
	mulss	%xmm2, %xmm1	# _60, _62
# FusionAhrs.c:279:                     .y = 0.5f - Q.w * Q.w - Q.y * Q.y,
	subss	%xmm1, %xmm0	# _62, _63
# FusionAhrs.c:282:             }; // second column of transposed rotation matrix scaled by -0.5
	movss	%xmm0, -28(%rbp)	# _63, MEM[(union FusionVector *)_92].axis.y
# FusionAhrs.c:280:                     .z = Q.w * Q.x - Q.y * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp213
	movss	24(%rax), %xmm1	# ahrs_73(D)->quaternion.element.w, _64
# FusionAhrs.c:280:                     .z = Q.w * Q.x - Q.y * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp214
	movss	28(%rax), %xmm0	# ahrs_73(D)->quaternion.element.x, _65
# FusionAhrs.c:280:                     .z = Q.w * Q.x - Q.y * Q.z,
	mulss	%xmm1, %xmm0	# _64, _66
# FusionAhrs.c:280:                     .z = Q.w * Q.x - Q.y * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp215
	movss	32(%rax), %xmm2	# ahrs_73(D)->quaternion.element.y, _67
# FusionAhrs.c:280:                     .z = Q.w * Q.x - Q.y * Q.z,
	movq	-40(%rbp), %rax	# ahrs, tmp216
	movss	36(%rax), %xmm1	# ahrs_73(D)->quaternion.element.z, _68
# FusionAhrs.c:280:                     .z = Q.w * Q.x - Q.y * Q.z,
	mulss	%xmm2, %xmm1	# _67, _69
# FusionAhrs.c:280:                     .z = Q.w * Q.x - Q.y * Q.z,
	subss	%xmm1, %xmm0	# _69, _70
# FusionAhrs.c:282:             }; // second column of transposed rotation matrix scaled by -0.5
	movss	%xmm0, -24(%rbp)	# _70, MEM[(union FusionVector *)_92].axis.z
# FusionAhrs.c:283:             return halfMagnetic;
	movq	-32(%rbp), %rax	# MEM[(union FusionVector *)_92], tmp217
	movq	%rax, -20(%rbp)	# tmp217, D.27279
	movl	-24(%rbp), %eax	# MEM[(union FusionVector *)_92], tmp218
	movl	%eax, -12(%rbp)	# tmp218, D.27279
	jmp	.L129	#
.L126:
# FusionAhrs.c:287:     return FUSION_VECTOR_ZERO; // avoid compiler warning
	pxor	%xmm0, %xmm0	# tmp219
	movss	%xmm0, -20(%rbp)	# tmp219, D.27279.array[0]
	pxor	%xmm0, %xmm0	# tmp220
	movss	%xmm0, -16(%rbp)	# tmp220, D.27279.array[1]
	pxor	%xmm0, %xmm0	# tmp221
	movss	%xmm0, -12(%rbp)	# tmp221, D.27279.array[2]
.L129:
# FusionAhrs.c:288: }
	movq	-20(%rbp), %rdx	# D.27279, tmp222
	movl	-12(%rbp), %eax	# D.27279, tmp223
	movq	%rax, %xmm1	# tmp223, <retval>
	movq	-8(%rbp), %rax	# D.27436, tmp224
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp224
	je	.L130	#,
	call	__stack_chk_fail@PLT	#
.L130:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%xmm0, %rax	# sensor, tmp102
	movq	%xmm1, %rcx	# sensor, tmp103
	movdqa	%xmm2, %xmm0	# reference, tmp108
	movq	%xmm3, %rdx	# reference, tmp109
	movq	%rax, -48(%rbp)	# tmp102, sensor
	movl	-40(%rbp), %eax	# sensor, tmp105
	andl	$0, %eax	#, tmp106
	orl	%ecx, %eax	# tmp103, tmp107
	movl	%eax, -40(%rbp)	# tmp107, sensor
	movq	%xmm0, -64(%rbp)	# tmp108, reference
	movl	-56(%rbp), %eax	# reference, tmp111
	andl	$0, %eax	#, tmp112
	orl	%edx, %eax	# tmp109, tmp113
	movl	%eax, -56(%rbp)	# tmp113, reference
# FusionAhrs.c:296: static inline FusionVector Feedback(const FusionVector sensor, const FusionVector reference) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp114
	movq	%rax, -8(%rbp)	# tmp114, D.27437
	xorl	%eax, %eax	# tmp114
# FusionAhrs.c:297:     if (FusionVectorDotProduct(sensor, reference) < 0.0f) {
	movq	-64(%rbp), %xmm2	# reference, tmp115
	movd	-56(%rbp), %xmm0	# reference, tmp116
	movq	-48(%rbp), %rax	# sensor, tmp117
	movd	-40(%rbp), %xmm1	# sensor, tmp118
	movdqa	%xmm0, %xmm3	# tmp116,
	movq	%rax, %xmm0	# tmp117,
	call	_ZL22FusionVectorDotProduct12FusionVectorS_	#
# FusionAhrs.c:297:     if (FusionVectorDotProduct(sensor, reference) < 0.0f) {
	pxor	%xmm1, %xmm1	# tmp119
	comiss	%xmm0, %xmm1	# _1, tmp119
	seta	%al	#, retval.10_5
# FusionAhrs.c:297:     if (FusionVectorDotProduct(sensor, reference) < 0.0f) {
	testb	%al, %al	# retval.10_5
	je	.L132	#,
# FusionAhrs.c:298:         return FusionVectorNormalise(FusionVectorCrossProduct(sensor, reference)); // if error is >90 degrees
	movq	-64(%rbp), %xmm2	# reference, tmp120
	movd	-56(%rbp), %xmm0	# reference, tmp121
	movq	-48(%rbp), %rax	# sensor, tmp122
	movd	-40(%rbp), %xmm1	# sensor, tmp123
	movdqa	%xmm0, %xmm3	# tmp121,
	movq	%rax, %xmm0	# tmp122,
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp124
	movq	%xmm1, %rdx	#, tmp125
	movq	%rax, -20(%rbp)	# tmp124, D.27297
	movl	-12(%rbp), %eax	# D.27297, tmp127
	andl	$0, %eax	#, tmp128
	orl	%edx, %eax	# tmp125, tmp129
	movl	%eax, -12(%rbp)	# tmp129, D.27297
# FusionAhrs.c:298:         return FusionVectorNormalise(FusionVectorCrossProduct(sensor, reference)); // if error is >90 degrees
	movq	-20(%rbp), %rax	# D.27297, tmp130
	movd	-12(%rbp), %xmm1	# D.27297, tmp131
	movq	%rax, %xmm0	# tmp130,
	call	_ZL21FusionVectorNormalise12FusionVector	#
	movq	%xmm0, %rax	#, tmp132
	movq	%xmm1, %rdx	#, tmp133
	movq	%rax, -32(%rbp)	# tmp132, D.27296
	movl	-24(%rbp), %eax	# D.27296, tmp135
	andl	$0, %eax	#, tmp136
	orl	%edx, %eax	# tmp133, tmp137
	movl	%eax, -24(%rbp)	# tmp137, D.27296
# FusionAhrs.c:298:         return FusionVectorNormalise(FusionVectorCrossProduct(sensor, reference)); // if error is >90 degrees
	jmp	.L133	#
.L132:
# FusionAhrs.c:300:     return FusionVectorCrossProduct(sensor, reference);
	movq	-64(%rbp), %xmm2	# reference, tmp138
	movd	-56(%rbp), %xmm0	# reference, tmp139
	movq	-48(%rbp), %rax	# sensor, tmp140
	movd	-40(%rbp), %xmm1	# sensor, tmp141
	movdqa	%xmm0, %xmm3	# tmp139,
	movq	%rax, %xmm0	# tmp140,
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp142
	movq	%xmm1, %rdx	#, tmp143
	movq	%rax, -32(%rbp)	# tmp142, D.27296
	movl	-24(%rbp), %eax	# D.27296, tmp145
	andl	$0, %eax	#, tmp146
	orl	%edx, %eax	# tmp143, tmp147
	movl	%eax, -24(%rbp)	# tmp147, D.27296
# FusionAhrs.c:300:     return FusionVectorCrossProduct(sensor, reference);
	nop	
.L133:
# FusionAhrs.c:301: }
	movq	-32(%rbp), %rdx	# D.27296, tmp148
	movl	-24(%rbp), %eax	# D.27296, tmp149
	movq	%rax, %xmm1	# tmp149, <retval>
	movq	-8(%rbp), %rax	# D.27437, tmp150
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp150
	je	.L134	#,
	call	__stack_chk_fail@PLT	#
.L134:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# value, value
	movl	%esi, -8(%rbp)	# min, min
	movl	%edx, -12(%rbp)	# max, max
# FusionAhrs.c:311:     if (value < min) {
	movl	-4(%rbp), %eax	# value, tmp100
	cmpl	-8(%rbp), %eax	# min, tmp100
	jge	.L136	#,
# FusionAhrs.c:312:         return min;
	movl	-8(%rbp), %eax	# min, _1
	jmp	.L137	#
.L136:
# FusionAhrs.c:314:     if (value > max) {
	movl	-4(%rbp), %eax	# value, tmp101
	cmpl	-12(%rbp), %eax	# max, tmp101
	jle	.L138	#,
# FusionAhrs.c:315:         return max;
	movl	-12(%rbp), %eax	# max, _1
	jmp	.L137	#
.L138:
# FusionAhrs.c:317:     return value;
	movl	-4(%rbp), %eax	# value, _1
.L137:
# FusionAhrs.c:318: }
	popq	%rbp	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# ahrs, ahrs
	movq	%xmm0, %rax	# gyroscope, tmp99
	movq	%xmm1, %rcx	# gyroscope, tmp100
	movdqa	%xmm2, %xmm0	# accelerometer, tmp105
	movq	%xmm3, %rdx	# accelerometer, tmp106
	movss	%xmm4, -76(%rbp)	# deltaTime, deltaTime
	movq	%rax, -56(%rbp)	# tmp99, gyroscope
	movl	-48(%rbp), %eax	# gyroscope, tmp102
	andl	$0, %eax	#, tmp103
	orl	%ecx, %eax	# tmp100, tmp104
	movl	%eax, -48(%rbp)	# tmp104, gyroscope
	movq	%xmm0, -72(%rbp)	# tmp105, accelerometer
	movl	-64(%rbp), %eax	# accelerometer, tmp108
	andl	$0, %eax	#, tmp109
	orl	%edx, %eax	# tmp106, tmp110
	movl	%eax, -64(%rbp)	# tmp110, accelerometer
# FusionAhrs.c:328: void FusionAhrsUpdateNoMagnetometer(FusionAhrs *const ahrs, const FusionVector gyroscope, const FusionVector accelerometer, const float deltaTime) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	movq	%rax, -8(%rbp)	# tmp111, D.27438
	xorl	%eax, %eax	# tmp111
# FusionAhrs.c:330:     FusionAhrsUpdate(ahrs, gyroscope, accelerometer, FUSION_VECTOR_ZERO, deltaTime);
	pxor	%xmm0, %xmm0	# tmp112
	movss	%xmm0, -20(%rbp)	# tmp112, D.24603.array[0]
	pxor	%xmm0, %xmm0	# tmp113
	movss	%xmm0, -16(%rbp)	# tmp113, D.24603.array[1]
	pxor	%xmm0, %xmm0	# tmp114
	movss	%xmm0, -12(%rbp)	# tmp114, D.24603.array[2]
	movss	-76(%rbp), %xmm3	# deltaTime, tmp115
	movq	-20(%rbp), %xmm4	# D.24603, tmp116
	movd	-12(%rbp), %xmm2	# D.24603, tmp117
	movq	-72(%rbp), %xmm7	# accelerometer, tmp118
	movd	-64(%rbp), %xmm0	# accelerometer, tmp119
	movq	-56(%rbp), %rdx	# gyroscope, tmp120
	movd	-48(%rbp), %xmm1	# gyroscope, tmp121
	movq	-40(%rbp), %rax	# ahrs, tmp122
	movaps	%xmm3, %xmm6	# tmp115,
	movdqa	%xmm2, %xmm5	# tmp117,
	movdqa	%xmm7, %xmm2	# tmp118,
	movdqa	%xmm0, %xmm3	# tmp119,
	movq	%rdx, %xmm0	# tmp120,
	movq	%rax, %rdi	# tmp122,
	call	_Z16FusionAhrsUpdateP10FusionAhrs12FusionVectorS1_S1_f	#
# FusionAhrs.c:333:     if (ahrs->initialising) {
	movq	-40(%rbp), %rax	# ahrs, tmp123
	movzbl	52(%rax), %eax	# ahrs_7(D)->initialising, _1
# FusionAhrs.c:333:     if (ahrs->initialising) {
	testb	%al, %al	# _1
	je	.L142	#,
# FusionAhrs.c:334:         FusionAhrsSetHeading(ahrs, 0.0f);
	movq	-40(%rbp), %rax	# ahrs, tmp124
	movl	.LC8(%rip), %edx	#, tmp125
	movd	%edx, %xmm0	# tmp125,
	movq	%rax, %rdi	# tmp124,
	call	_Z20FusionAhrsSetHeadingP10FusionAhrsf	#
.L142:
# FusionAhrs.c:336: }
	nop	
	movq	-8(%rbp), %rax	# D.27438, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L141	#,
	call	__stack_chk_fail@PLT	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# ahrs, ahrs
	movq	%xmm0, %rax	# gyroscope, tmp119
	movq	%xmm1, %rcx	# gyroscope, tmp120
	movdqa	%xmm2, %xmm0	# accelerometer, tmp125
	movq	%xmm3, %rdx	# accelerometer, tmp126
	movss	%xmm4, -76(%rbp)	# heading, heading
	movss	%xmm5, -80(%rbp)	# deltaTime, deltaTime
	movq	%rax, -56(%rbp)	# tmp119, gyroscope
	movl	-48(%rbp), %eax	# gyroscope, tmp122
	andl	$0, %eax	#, tmp123
	orl	%ecx, %eax	# tmp120, tmp124
	movl	%eax, -48(%rbp)	# tmp124, gyroscope
	movq	%xmm0, -72(%rbp)	# tmp125, accelerometer
	movl	-64(%rbp), %eax	# accelerometer, tmp128
	andl	$0, %eax	#, tmp129
	orl	%edx, %eax	# tmp126, tmp130
	movl	%eax, -64(%rbp)	# tmp130, accelerometer
# FusionAhrs.c:347: void FusionAhrsUpdateExternalHeading(FusionAhrs *const ahrs, const FusionVector gyroscope, const FusionVector accelerometer, const float heading, const float deltaTime) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	movq	%rax, -8(%rbp)	# tmp131, D.27439
	xorl	%eax, %eax	# tmp131
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	movq	-40(%rbp), %rax	# ahrs, tmp132
	movss	32(%rax), %xmm1	# ahrs_23(D)->quaternion.element.y, _1
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	movq	-40(%rbp), %rax	# ahrs, tmp133
	movss	32(%rax), %xmm0	# ahrs_23(D)->quaternion.element.y, _2
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	mulss	%xmm0, %xmm1	# _2, _3
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	movss	.LC10(%rip), %xmm0	#, tmp134
	subss	%xmm1, %xmm0	# _3, _4
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	movq	-40(%rbp), %rax	# ahrs, tmp135
	movss	28(%rax), %xmm2	# ahrs_23(D)->quaternion.element.x, _5
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	movq	-40(%rbp), %rax	# ahrs, tmp136
	movss	28(%rax), %xmm1	# ahrs_23(D)->quaternion.element.x, _6
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	mulss	%xmm2, %xmm1	# _5, _7
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	movaps	%xmm0, %xmm3	# _4, _4
	subss	%xmm1, %xmm3	# _7, _4
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	movq	-40(%rbp), %rax	# ahrs, tmp137
	movss	24(%rax), %xmm1	# ahrs_23(D)->quaternion.element.w, _9
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	movq	-40(%rbp), %rax	# ahrs, tmp138
	movss	28(%rax), %xmm0	# ahrs_23(D)->quaternion.element.x, _10
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	mulss	%xmm0, %xmm1	# _10, _11
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	movq	-40(%rbp), %rax	# ahrs, tmp139
	movss	32(%rax), %xmm2	# ahrs_23(D)->quaternion.element.y, _12
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	movq	-40(%rbp), %rax	# ahrs, tmp140
	movss	36(%rax), %xmm0	# ahrs_23(D)->quaternion.element.z, _13
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	mulss	%xmm2, %xmm0	# _12, _14
# FusionAhrs.c:350:     const float roll = atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x);
	addss	%xmm0, %xmm1	# _14, _11
	movd	%xmm1, %eax	# _11, _15
	movaps	%xmm3, %xmm1	# _8,
	movd	%eax, %xmm0	# _15,
	call	atan2f@PLT	#
	movd	%xmm0, %eax	#, tmp141
	movl	%eax, -32(%rbp)	# tmp141, roll
# FusionAhrs.c:354:     const float headingRadians = FusionDegreesToRadians(heading);
	movl	-76(%rbp), %eax	# heading, tmp142
	movd	%eax, %xmm0	# tmp142,
	call	_ZL22FusionDegreesToRadiansf	#
	movd	%xmm0, %eax	#, tmp143
	movl	%eax, -28(%rbp)	# tmp143, headingRadians
# FusionAhrs.c:355:     const float sinHeadingRadians = sinf(headingRadians);
	movl	-28(%rbp), %eax	# headingRadians, tmp144
	movd	%eax, %xmm0	# tmp144,
	call	sinf@PLT	#
	movd	%xmm0, %eax	#, tmp145
	movl	%eax, -24(%rbp)	# tmp145, sinHeadingRadians
# FusionAhrs.c:358:             .x = cosf(headingRadians),
	movl	-28(%rbp), %eax	# headingRadians, tmp146
	movd	%eax, %xmm0	# tmp146,
	call	cosf@PLT	#
	movd	%xmm0, %eax	#, _16
# FusionAhrs.c:362:     };
	movl	%eax, -20(%rbp)	# _16, magnetometer.axis.x
# FusionAhrs.c:359:             .y = -1.0f * cosf(roll) * sinHeadingRadians,
	movl	-32(%rbp), %eax	# roll, tmp147
	movd	%eax, %xmm0	# tmp147,
	call	cosf@PLT	#
	movd	%xmm0, %eax	#, _17
# FusionAhrs.c:359:             .y = -1.0f * cosf(roll) * sinHeadingRadians,
	movss	.LC9(%rip), %xmm0	#, tmp148
	movd	%eax, %xmm6	# _17, _17
	xorps	%xmm0, %xmm6	# tmp148, _17
	movaps	%xmm6, %xmm0	# _17, _18
# FusionAhrs.c:359:             .y = -1.0f * cosf(roll) * sinHeadingRadians,
	mulss	-24(%rbp), %xmm0	# sinHeadingRadians, _19
# FusionAhrs.c:362:     };
	movss	%xmm0, -16(%rbp)	# _19, magnetometer.axis.y
# FusionAhrs.c:360:             .z = sinHeadingRadians * sinf(roll),
	movl	-32(%rbp), %eax	# roll, tmp149
	movd	%eax, %xmm0	# tmp149,
	call	sinf@PLT	#
	movd	%xmm0, %eax	#, _20
# FusionAhrs.c:360:             .z = sinHeadingRadians * sinf(roll),
	movd	%eax, %xmm0	# _20, _20
	mulss	-24(%rbp), %xmm0	# sinHeadingRadians, _20
# FusionAhrs.c:362:     };
	movss	%xmm0, -12(%rbp)	# _21, magnetometer.axis.z
# FusionAhrs.c:365:     FusionAhrsUpdate(ahrs, gyroscope, accelerometer, magnetometer, deltaTime);
	movss	-80(%rbp), %xmm3	# deltaTime, tmp150
	movq	-20(%rbp), %xmm4	# magnetometer, tmp151
	movd	-12(%rbp), %xmm2	# magnetometer, tmp152
	movq	-72(%rbp), %xmm7	# accelerometer, tmp153
	movd	-64(%rbp), %xmm0	# accelerometer, tmp154
	movq	-56(%rbp), %rdx	# gyroscope, tmp155
	movd	-48(%rbp), %xmm1	# gyroscope, tmp156
	movq	-40(%rbp), %rax	# ahrs, tmp157
	movaps	%xmm3, %xmm6	# tmp150,
	movdqa	%xmm2, %xmm5	# tmp152,
	movdqa	%xmm7, %xmm2	# tmp153,
	movdqa	%xmm0, %xmm3	# tmp154,
	movq	%rdx, %xmm0	# tmp155,
	movq	%rax, %rdi	# tmp157,
	call	_Z16FusionAhrsUpdateP10FusionAhrs12FusionVectorS1_S1_f	#
# FusionAhrs.c:366: }
	nop	
	movq	-8(%rbp), %rax	# D.27439, tmp158
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp158
	je	.L144	#,
	call	__stack_chk_fail@PLT	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# ahrs, ahrs
# FusionAhrs.c:374:     return ahrs->quaternion;
	movq	-8(%rbp), %rax	# ahrs, tmp101
	movq	32(%rax), %rdx	# ahrs_2(D)->quaternion, D.27336
	movq	24(%rax), %rax	# ahrs_2(D)->quaternion, D.27336
# FusionAhrs.c:374:     return ahrs->quaternion;
	movq	%rax, %rcx	# D.27336, <retval>
	movq	%rdx, %xmm1	# D.27336, <retval>
# FusionAhrs.c:375: }
	movq	%rcx, %xmm0	# <retval>,
	popq	%rbp	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# ahrs, ahrs
	movq	%xmm0, %rax	# quaternion, tmp99
	movdqa	%xmm1, %xmm0	# quaternion, tmp100
	movq	%rax, %rax	# tmp99, tmp98
	movl	$0, %edx	#,
	movq	%xmm0, %rdx	# tmp100,
	movq	%rax, -32(%rbp)	# tmp98, quaternion
	movq	%rdx, -24(%rbp)	#, quaternion
# FusionAhrs.c:383:     ahrs->quaternion = quaternion;
	movq	-8(%rbp), %rcx	# ahrs, tmp101
	movq	-32(%rbp), %rax	# quaternion, tmp102
	movq	-24(%rbp), %rdx	# quaternion,
	movq	%rax, 24(%rcx)	# tmp102, ahrs_2(D)->quaternion
	movq	%rdx, 32(%rcx)	#, ahrs_2(D)->quaternion
# FusionAhrs.c:384: }
	nop	
	popq	%rbp	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# ahrs, ahrs
# FusionAhrs.c:391: FusionVector FusionAhrsGetGravity(const FusionAhrs *const ahrs) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.27440
	xorl	%eax, %eax	# tmp125
# FusionAhrs.c:395:             .x = 2.0f * (Q.x * Q.z - Q.w * Q.y),
	movq	-40(%rbp), %rax	# ahrs, tmp126
	movss	28(%rax), %xmm1	# ahrs_27(D)->quaternion.element.x, _1
# FusionAhrs.c:395:             .x = 2.0f * (Q.x * Q.z - Q.w * Q.y),
	movq	-40(%rbp), %rax	# ahrs, tmp127
	movss	36(%rax), %xmm0	# ahrs_27(D)->quaternion.element.z, _2
# FusionAhrs.c:395:             .x = 2.0f * (Q.x * Q.z - Q.w * Q.y),
	mulss	%xmm1, %xmm0	# _1, _3
# FusionAhrs.c:395:             .x = 2.0f * (Q.x * Q.z - Q.w * Q.y),
	movq	-40(%rbp), %rax	# ahrs, tmp128
	movss	24(%rax), %xmm2	# ahrs_27(D)->quaternion.element.w, _4
# FusionAhrs.c:395:             .x = 2.0f * (Q.x * Q.z - Q.w * Q.y),
	movq	-40(%rbp), %rax	# ahrs, tmp129
	movss	32(%rax), %xmm1	# ahrs_27(D)->quaternion.element.y, _5
# FusionAhrs.c:395:             .x = 2.0f * (Q.x * Q.z - Q.w * Q.y),
	mulss	%xmm2, %xmm1	# _4, _6
# FusionAhrs.c:395:             .x = 2.0f * (Q.x * Q.z - Q.w * Q.y),
	subss	%xmm1, %xmm0	# _6, _7
# FusionAhrs.c:395:             .x = 2.0f * (Q.x * Q.z - Q.w * Q.y),
	addss	%xmm0, %xmm0	# _7, _8
# FusionAhrs.c:399:     }; // third column of transposed rotation matrix
	movss	%xmm0, -32(%rbp)	# _8, gravity.axis.x
# FusionAhrs.c:396:             .y = 2.0f * (Q.y * Q.z + Q.w * Q.x),
	movq	-40(%rbp), %rax	# ahrs, tmp130
	movss	32(%rax), %xmm1	# ahrs_27(D)->quaternion.element.y, _9
# FusionAhrs.c:396:             .y = 2.0f * (Q.y * Q.z + Q.w * Q.x),
	movq	-40(%rbp), %rax	# ahrs, tmp131
	movss	36(%rax), %xmm0	# ahrs_27(D)->quaternion.element.z, _10
# FusionAhrs.c:396:             .y = 2.0f * (Q.y * Q.z + Q.w * Q.x),
	mulss	%xmm0, %xmm1	# _10, _11
# FusionAhrs.c:396:             .y = 2.0f * (Q.y * Q.z + Q.w * Q.x),
	movq	-40(%rbp), %rax	# ahrs, tmp132
	movss	24(%rax), %xmm2	# ahrs_27(D)->quaternion.element.w, _12
# FusionAhrs.c:396:             .y = 2.0f * (Q.y * Q.z + Q.w * Q.x),
	movq	-40(%rbp), %rax	# ahrs, tmp133
	movss	28(%rax), %xmm0	# ahrs_27(D)->quaternion.element.x, _13
# FusionAhrs.c:396:             .y = 2.0f * (Q.y * Q.z + Q.w * Q.x),
	mulss	%xmm2, %xmm0	# _12, _14
# FusionAhrs.c:396:             .y = 2.0f * (Q.y * Q.z + Q.w * Q.x),
	addss	%xmm1, %xmm0	# _11, _15
# FusionAhrs.c:396:             .y = 2.0f * (Q.y * Q.z + Q.w * Q.x),
	addss	%xmm0, %xmm0	# _15, _16
# FusionAhrs.c:399:     }; // third column of transposed rotation matrix
	movss	%xmm0, -28(%rbp)	# _16, gravity.axis.y
# FusionAhrs.c:397:             .z = 2.0f * (Q.w * Q.w - 0.5f + Q.z * Q.z),
	movq	-40(%rbp), %rax	# ahrs, tmp134
	movss	24(%rax), %xmm1	# ahrs_27(D)->quaternion.element.w, _17
# FusionAhrs.c:397:             .z = 2.0f * (Q.w * Q.w - 0.5f + Q.z * Q.z),
	movq	-40(%rbp), %rax	# ahrs, tmp135
	movss	24(%rax), %xmm0	# ahrs_27(D)->quaternion.element.w, _18
# FusionAhrs.c:397:             .z = 2.0f * (Q.w * Q.w - 0.5f + Q.z * Q.z),
	mulss	%xmm1, %xmm0	# _17, _19
# FusionAhrs.c:397:             .z = 2.0f * (Q.w * Q.w - 0.5f + Q.z * Q.z),
	movss	.LC10(%rip), %xmm2	#, tmp136
	movaps	%xmm0, %xmm1	# _19, _19
	subss	%xmm2, %xmm1	# tmp136, _19
# FusionAhrs.c:397:             .z = 2.0f * (Q.w * Q.w - 0.5f + Q.z * Q.z),
	movq	-40(%rbp), %rax	# ahrs, tmp137
	movss	36(%rax), %xmm2	# ahrs_27(D)->quaternion.element.z, _21
# FusionAhrs.c:397:             .z = 2.0f * (Q.w * Q.w - 0.5f + Q.z * Q.z),
	movq	-40(%rbp), %rax	# ahrs, tmp138
	movss	36(%rax), %xmm0	# ahrs_27(D)->quaternion.element.z, _22
# FusionAhrs.c:397:             .z = 2.0f * (Q.w * Q.w - 0.5f + Q.z * Q.z),
	mulss	%xmm2, %xmm0	# _21, _23
# FusionAhrs.c:397:             .z = 2.0f * (Q.w * Q.w - 0.5f + Q.z * Q.z),
	addss	%xmm1, %xmm0	# _20, _24
# FusionAhrs.c:397:             .z = 2.0f * (Q.w * Q.w - 0.5f + Q.z * Q.z),
	addss	%xmm0, %xmm0	# _24, _25
# FusionAhrs.c:399:     }; // third column of transposed rotation matrix
	movss	%xmm0, -24(%rbp)	# _25, gravity.axis.z
# FusionAhrs.c:401:     return gravity;
	movq	-32(%rbp), %rax	# gravity, tmp139
	movq	%rax, -20(%rbp)	# tmp139, D.27338
	movl	-24(%rbp), %eax	# gravity, tmp140
	movl	%eax, -12(%rbp)	# tmp140, D.27338
	movq	-20(%rbp), %rdx	# D.27338, tmp141
	movl	-12(%rbp), %eax	# D.27338, tmp142
	movq	%rax, %xmm1	# tmp142, <retval>
# FusionAhrs.c:402: }
	movq	-8(%rbp), %rax	# D.27440, tmp143
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp143
	je	.L150	#,
	call	__stack_chk_fail@PLT	#
.L150:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# ahrs, ahrs
# FusionAhrs.c:410: FusionVector FusionAhrsGetLinearAcceleration(const FusionAhrs *const ahrs) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.27441
	xorl	%eax, %eax	# tmp102
# FusionAhrs.c:411:     switch (ahrs->settings.convention) {
	movq	-56(%rbp), %rax	# ahrs, tmp103
	movl	(%rax), %eax	# ahrs_5(D)->settings.convention, _1
# FusionAhrs.c:411:     switch (ahrs->settings.convention) {
	cmpl	$1, %eax	#, _2
	jg	.L152	#,
	testl	%eax, %eax	# _2
	jns	.L153	#,
	jmp	.L154	#
.L152:
	cmpl	$2, %eax	#, _2
	je	.L155	#,
	jmp	.L154	#
.L153:
# FusionAhrs.c:414:             return FusionVectorSubtract(ahrs->accelerometer, FusionAhrsGetGravity(ahrs));
	movq	-56(%rbp), %rax	# ahrs, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_Z20FusionAhrsGetGravityPK10FusionAhrs	#
	movq	%xmm0, %rax	#, tmp105
	movq	%xmm1, %rdx	#, tmp106
	movq	%rax, -32(%rbp)	# tmp105, D.27342
	movl	-24(%rbp), %eax	# D.27342, tmp108
	andl	$0, %eax	#, tmp109
	orl	%edx, %eax	# tmp106, tmp110
	movl	%eax, -24(%rbp)	# tmp110, D.27342
# FusionAhrs.c:414:             return FusionVectorSubtract(ahrs->accelerometer, FusionAhrsGetGravity(ahrs));
	movq	-32(%rbp), %xmm2	# D.27342, tmp111
	movd	-24(%rbp), %xmm0	# D.27342, tmp112
	movq	-56(%rbp), %rax	# ahrs, tmp113
	movq	40(%rax), %rdx	# ahrs_5(D)->accelerometer, tmp114
	movd	48(%rax), %xmm1	# ahrs_5(D)->accelerometer, tmp115
	movdqa	%xmm0, %xmm3	# tmp112,
	movq	%rdx, %xmm0	# tmp114,
	call	_ZL20FusionVectorSubtract12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp116
	movq	%xmm1, %rdx	#, tmp117
	movq	%rax, -44(%rbp)	# tmp116, D.27341
	movl	-36(%rbp), %eax	# D.27341, tmp119
	andl	$0, %eax	#, tmp120
	orl	%edx, %eax	# tmp117, tmp121
	movl	%eax, -36(%rbp)	# tmp121, D.27341
# FusionAhrs.c:414:             return FusionVectorSubtract(ahrs->accelerometer, FusionAhrsGetGravity(ahrs));
	jmp	.L156	#
.L155:
# FusionAhrs.c:417:             return FusionVectorAdd(ahrs->accelerometer, FusionAhrsGetGravity(ahrs));
	movq	-56(%rbp), %rax	# ahrs, tmp122
	movq	%rax, %rdi	# tmp122,
	call	_Z20FusionAhrsGetGravityPK10FusionAhrs	#
	movq	%xmm0, %rax	#, tmp123
	movq	%xmm1, %rdx	#, tmp124
	movq	%rax, -20(%rbp)	# tmp123, D.27343
	movl	-12(%rbp), %eax	# D.27343, tmp126
	andl	$0, %eax	#, tmp127
	orl	%edx, %eax	# tmp124, tmp128
	movl	%eax, -12(%rbp)	# tmp128, D.27343
# FusionAhrs.c:417:             return FusionVectorAdd(ahrs->accelerometer, FusionAhrsGetGravity(ahrs));
	movq	-20(%rbp), %xmm2	# D.27343, tmp129
	movd	-12(%rbp), %xmm0	# D.27343, tmp130
	movq	-56(%rbp), %rax	# ahrs, tmp131
	movq	40(%rax), %rdx	# ahrs_5(D)->accelerometer, tmp132
	movd	48(%rax), %xmm1	# ahrs_5(D)->accelerometer, tmp133
	movdqa	%xmm0, %xmm3	# tmp130,
	movq	%rdx, %xmm0	# tmp132,
	call	_ZL15FusionVectorAdd12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp134
	movq	%xmm1, %rdx	#, tmp135
	movq	%rax, -44(%rbp)	# tmp134, D.27341
	movl	-36(%rbp), %eax	# D.27341, tmp137
	andl	$0, %eax	#, tmp138
	orl	%edx, %eax	# tmp135, tmp139
	movl	%eax, -36(%rbp)	# tmp139, D.27341
# FusionAhrs.c:417:             return FusionVectorAdd(ahrs->accelerometer, FusionAhrsGetGravity(ahrs));
	jmp	.L156	#
.L154:
# FusionAhrs.c:420:     return FUSION_VECTOR_ZERO; // avoid compiler warning
	pxor	%xmm0, %xmm0	# tmp140
	movss	%xmm0, -44(%rbp)	# tmp140, D.27341.array[0]
	pxor	%xmm0, %xmm0	# tmp141
	movss	%xmm0, -40(%rbp)	# tmp141, D.27341.array[1]
	pxor	%xmm0, %xmm0	# tmp142
	movss	%xmm0, -36(%rbp)	# tmp142, D.27341.array[2]
.L156:
# FusionAhrs.c:421: }
	movq	-44(%rbp), %rdx	# D.27341, tmp143
	movl	-36(%rbp), %eax	# D.27341, tmp144
	movq	%rax, %xmm1	# tmp144, <retval>
	movq	-8(%rbp), %rax	# D.27441, tmp145
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp145
	je	.L157	#,
	call	__stack_chk_fail@PLT	#
.L157:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# ahrs, ahrs
# FusionAhrs.c:429: FusionVector FusionAhrsGetEarthAcceleration(const FusionAhrs *const ahrs) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp199
	movq	%rax, -8(%rbp)	# tmp199, D.27442
	xorl	%eax, %eax	# tmp199
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp200
	movss	24(%rax), %xmm1	# ahrs_102(D)->quaternion.element.w, _1
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp201
	movss	24(%rax), %xmm0	# ahrs_102(D)->quaternion.element.w, _2
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	mulss	%xmm1, %xmm0	# _1, _3
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movss	.LC10(%rip), %xmm2	#, tmp202
	movaps	%xmm0, %xmm1	# _3, _3
	subss	%xmm2, %xmm1	# tmp202, _3
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp203
	movss	28(%rax), %xmm2	# ahrs_102(D)->quaternion.element.x, _5
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp204
	movss	28(%rax), %xmm0	# ahrs_102(D)->quaternion.element.x, _6
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	mulss	%xmm2, %xmm0	# _5, _7
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	addss	%xmm0, %xmm1	# _7, _8
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp205
	movss	40(%rax), %xmm0	# ahrs_102(D)->accelerometer.axis.x, _9
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	mulss	%xmm0, %xmm1	# _9, _10
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp206
	movss	28(%rax), %xmm2	# ahrs_102(D)->quaternion.element.x, _11
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp207
	movss	32(%rax), %xmm0	# ahrs_102(D)->quaternion.element.y, _12
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	mulss	%xmm2, %xmm0	# _11, _13
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp208
	movss	24(%rax), %xmm3	# ahrs_102(D)->quaternion.element.w, _14
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp209
	movss	36(%rax), %xmm2	# ahrs_102(D)->quaternion.element.z, _15
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	mulss	%xmm2, %xmm3	# _15, _16
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movaps	%xmm0, %xmm2	# _13, _13
	subss	%xmm3, %xmm2	# _16, _13
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp210
	movss	44(%rax), %xmm0	# ahrs_102(D)->accelerometer.axis.y, _18
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	mulss	%xmm2, %xmm0	# _17, _19
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	addss	%xmm0, %xmm1	# _19, _20
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp211
	movss	28(%rax), %xmm2	# ahrs_102(D)->quaternion.element.x, _21
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp212
	movss	36(%rax), %xmm0	# ahrs_102(D)->quaternion.element.z, _22
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	mulss	%xmm0, %xmm2	# _22, _23
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp213
	movss	24(%rax), %xmm3	# ahrs_102(D)->quaternion.element.w, _24
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp214
	movss	32(%rax), %xmm0	# ahrs_102(D)->quaternion.element.y, _25
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	mulss	%xmm3, %xmm0	# _24, _26
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	addss	%xmm0, %xmm2	# _26, _27
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp215
	movss	48(%rax), %xmm0	# ahrs_102(D)->accelerometer.axis.z, _28
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	mulss	%xmm2, %xmm0	# _27, _29
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	addss	%xmm1, %xmm0	# _20, _30
# FusionAhrs.c:435:             .x = 2.0f * ((Q.w * Q.w - 0.5f + Q.x * Q.x) * A.x + (Q.x * Q.y - Q.w * Q.z) * A.y + (Q.x * Q.z + Q.w * Q.y) * A.z),
	addss	%xmm0, %xmm0	# _30, _31
# FusionAhrs.c:439:     }; // rotation matrix multiplied with the accelerometer
	movss	%xmm0, -32(%rbp)	# _31, accelerometer.axis.x
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp216
	movss	28(%rax), %xmm1	# ahrs_102(D)->quaternion.element.x, _32
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp217
	movss	32(%rax), %xmm0	# ahrs_102(D)->quaternion.element.y, _33
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	mulss	%xmm0, %xmm1	# _33, _34
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp218
	movss	24(%rax), %xmm2	# ahrs_102(D)->quaternion.element.w, _35
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp219
	movss	36(%rax), %xmm0	# ahrs_102(D)->quaternion.element.z, _36
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	mulss	%xmm2, %xmm0	# _35, _37
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	addss	%xmm0, %xmm1	# _37, _38
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp220
	movss	40(%rax), %xmm0	# ahrs_102(D)->accelerometer.axis.x, _39
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	mulss	%xmm0, %xmm1	# _39, _40
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp221
	movss	24(%rax), %xmm2	# ahrs_102(D)->quaternion.element.w, _41
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp222
	movss	24(%rax), %xmm0	# ahrs_102(D)->quaternion.element.w, _42
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	mulss	%xmm2, %xmm0	# _41, _43
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movss	.LC10(%rip), %xmm3	#, tmp223
	movaps	%xmm0, %xmm2	# _43, _43
	subss	%xmm3, %xmm2	# tmp223, _43
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp224
	movss	32(%rax), %xmm3	# ahrs_102(D)->quaternion.element.y, _45
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp225
	movss	32(%rax), %xmm0	# ahrs_102(D)->quaternion.element.y, _46
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	mulss	%xmm3, %xmm0	# _45, _47
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	addss	%xmm0, %xmm2	# _47, _48
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp226
	movss	44(%rax), %xmm0	# ahrs_102(D)->accelerometer.axis.y, _49
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	mulss	%xmm2, %xmm0	# _48, _50
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	addss	%xmm0, %xmm1	# _50, _51
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp227
	movss	32(%rax), %xmm2	# ahrs_102(D)->quaternion.element.y, _52
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp228
	movss	36(%rax), %xmm0	# ahrs_102(D)->quaternion.element.z, _53
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	mulss	%xmm2, %xmm0	# _52, _54
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp229
	movss	24(%rax), %xmm3	# ahrs_102(D)->quaternion.element.w, _55
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp230
	movss	28(%rax), %xmm2	# ahrs_102(D)->quaternion.element.x, _56
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	mulss	%xmm2, %xmm3	# _56, _57
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movaps	%xmm0, %xmm2	# _54, _54
	subss	%xmm3, %xmm2	# _57, _54
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp231
	movss	48(%rax), %xmm0	# ahrs_102(D)->accelerometer.axis.z, _59
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	mulss	%xmm2, %xmm0	# _58, _60
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	addss	%xmm1, %xmm0	# _51, _61
# FusionAhrs.c:436:             .y = 2.0f * ((Q.x * Q.y + Q.w * Q.z) * A.x + (Q.w * Q.w - 0.5f + Q.y * Q.y) * A.y + (Q.y * Q.z - Q.w * Q.x) * A.z),
	addss	%xmm0, %xmm0	# _61, _62
# FusionAhrs.c:439:     }; // rotation matrix multiplied with the accelerometer
	movss	%xmm0, -28(%rbp)	# _62, accelerometer.axis.y
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp232
	movss	28(%rax), %xmm1	# ahrs_102(D)->quaternion.element.x, _63
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp233
	movss	36(%rax), %xmm0	# ahrs_102(D)->quaternion.element.z, _64
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	mulss	%xmm1, %xmm0	# _63, _65
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp234
	movss	24(%rax), %xmm2	# ahrs_102(D)->quaternion.element.w, _66
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp235
	movss	32(%rax), %xmm1	# ahrs_102(D)->quaternion.element.y, _67
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	mulss	%xmm1, %xmm2	# _67, _68
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movaps	%xmm0, %xmm1	# _65, _65
	subss	%xmm2, %xmm1	# _68, _65
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp236
	movss	40(%rax), %xmm0	# ahrs_102(D)->accelerometer.axis.x, _70
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	mulss	%xmm0, %xmm1	# _70, _71
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp237
	movss	32(%rax), %xmm2	# ahrs_102(D)->quaternion.element.y, _72
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp238
	movss	36(%rax), %xmm0	# ahrs_102(D)->quaternion.element.z, _73
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	mulss	%xmm0, %xmm2	# _73, _74
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp239
	movss	24(%rax), %xmm3	# ahrs_102(D)->quaternion.element.w, _75
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp240
	movss	28(%rax), %xmm0	# ahrs_102(D)->quaternion.element.x, _76
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	mulss	%xmm3, %xmm0	# _75, _77
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	addss	%xmm0, %xmm2	# _77, _78
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp241
	movss	44(%rax), %xmm0	# ahrs_102(D)->accelerometer.axis.y, _79
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	mulss	%xmm2, %xmm0	# _78, _80
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	addss	%xmm0, %xmm1	# _80, _81
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp242
	movss	24(%rax), %xmm2	# ahrs_102(D)->quaternion.element.w, _82
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp243
	movss	24(%rax), %xmm0	# ahrs_102(D)->quaternion.element.w, _83
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	mulss	%xmm2, %xmm0	# _82, _84
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movss	.LC10(%rip), %xmm3	#, tmp244
	movaps	%xmm0, %xmm2	# _84, _84
	subss	%xmm3, %xmm2	# tmp244, _84
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp245
	movss	36(%rax), %xmm3	# ahrs_102(D)->quaternion.element.z, _86
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp246
	movss	36(%rax), %xmm0	# ahrs_102(D)->quaternion.element.z, _87
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	mulss	%xmm3, %xmm0	# _86, _88
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	addss	%xmm0, %xmm2	# _88, _89
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	movq	-40(%rbp), %rax	# ahrs, tmp247
	movss	48(%rax), %xmm0	# ahrs_102(D)->accelerometer.axis.z, _90
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	mulss	%xmm2, %xmm0	# _89, _91
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	addss	%xmm1, %xmm0	# _81, _92
# FusionAhrs.c:437:             .z = 2.0f * ((Q.x * Q.z - Q.w * Q.y) * A.x + (Q.y * Q.z + Q.w * Q.x) * A.y + (Q.w * Q.w - 0.5f + Q.z * Q.z) * A.z),
	addss	%xmm0, %xmm0	# _92, _93
# FusionAhrs.c:439:     }; // rotation matrix multiplied with the accelerometer
	movss	%xmm0, -24(%rbp)	# _93, accelerometer.axis.z
# FusionAhrs.c:444:     switch (ahrs->settings.convention) {
	movq	-40(%rbp), %rax	# ahrs, tmp248
	movl	(%rax), %eax	# ahrs_102(D)->settings.convention, _94
# FusionAhrs.c:444:     switch (ahrs->settings.convention) {
	cmpl	$1, %eax	#, _95
	jg	.L159	#,
	testl	%eax, %eax	# _95
	jns	.L160	#,
	jmp	.L161	#
.L159:
	cmpl	$2, %eax	#, _95
	je	.L162	#,
	jmp	.L161	#
.L160:
# FusionAhrs.c:447:             accelerometer.axis.z -= 1.0f;
	movss	-24(%rbp), %xmm0	# accelerometer.axis.z, _96
# FusionAhrs.c:447:             accelerometer.axis.z -= 1.0f;
	movss	.LC4(%rip), %xmm1	#, tmp249
	subss	%xmm1, %xmm0	# tmp249, _97
	movss	%xmm0, -24(%rbp)	# _97, accelerometer.axis.z
# FusionAhrs.c:448:             break;
	jmp	.L161	#
.L162:
# FusionAhrs.c:450:             accelerometer.axis.z += 1.0f;
	movss	-24(%rbp), %xmm1	# accelerometer.axis.z, _98
# FusionAhrs.c:450:             accelerometer.axis.z += 1.0f;
	movss	.LC4(%rip), %xmm0	#, tmp250
	addss	%xmm1, %xmm0	# _98, _99
	movss	%xmm0, -24(%rbp)	# _99, accelerometer.axis.z
# FusionAhrs.c:451:             break;
	nop	
.L161:
# FusionAhrs.c:453:     return accelerometer;
	movq	-32(%rbp), %rax	# accelerometer, tmp251
	movq	%rax, -20(%rbp)	# tmp251, D.27350
	movl	-24(%rbp), %eax	# accelerometer, tmp252
	movl	%eax, -12(%rbp)	# tmp252, D.27350
	movq	-20(%rbp), %rdx	# D.27350, tmp253
	movl	-12(%rbp), %eax	# D.27350, tmp254
	movq	%rax, %xmm1	# tmp254, <retval>
# FusionAhrs.c:454: }
	movq	-8(%rbp), %rax	# D.27442, tmp255
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp255
	je	.L164	#,
	call	__stack_chk_fail@PLT	#
.L164:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -16(%rbp)	# ahrs, ahrs
# FusionAhrs.c:463:         .accelerationError = FusionRadiansToDegrees(FusionAsin(2.0f * FusionVectorMagnitude(ahrs->halfAccelerometerFeedback))),
	movq	-16(%rbp), %rax	# ahrs, tmp120
	movq	68(%rax), %rdx	# ahrs_24(D)->halfAccelerometerFeedback, tmp121
	movd	76(%rax), %xmm1	# ahrs_24(D)->halfAccelerometerFeedback, tmp122
	movq	%rdx, %xmm0	# tmp121,
	call	_ZL21FusionVectorMagnitude12FusionVector	#
# FusionAhrs.c:463:         .accelerationError = FusionRadiansToDegrees(FusionAsin(2.0f * FusionVectorMagnitude(ahrs->halfAccelerometerFeedback))),
	addss	%xmm0, %xmm0	# _1, _1
	movd	%xmm0, %eax	# _1, _2
	movd	%eax, %xmm0	# _2,
	call	_ZL10FusionAsinf	#
	movd	%xmm0, %eax	#, _3
# FusionAhrs.c:463:         .accelerationError = FusionRadiansToDegrees(FusionAsin(2.0f * FusionVectorMagnitude(ahrs->halfAccelerometerFeedback))),
	movd	%eax, %xmm0	# _3,
	call	_ZL22FusionRadiansToDegreesf	#
	movd	%xmm0, %eax	#, _4
# FusionAhrs.c:469:     };
	movq	-8(%rbp), %rdx	# .result_ptr, tmp123
	movl	%eax, (%rdx)	# _4, <retval>.accelerationError
# FusionAhrs.c:464:         .accelerometerIgnored = ahrs->accelerometerIgnored,
	movq	-16(%rbp), %rax	# ahrs, tmp124
	movzbl	92(%rax), %edx	# ahrs_24(D)->accelerometerIgnored, _5
# FusionAhrs.c:469:     };
	movq	-8(%rbp), %rax	# .result_ptr, tmp125
	movb	%dl, 4(%rax)	# _5, <retval>.accelerometerIgnored
# FusionAhrs.c:465:         .accelerationRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->accelerationRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	movq	-16(%rbp), %rax	# ahrs, tmp126
	movl	20(%rax), %eax	# ahrs_24(D)->settings.recoveryTriggerPeriod, _6
# FusionAhrs.c:465:         .accelerationRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->accelerationRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	testl	%eax, %eax	# _6
	je	.L166	#,
# FusionAhrs.c:465:         .accelerationRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->accelerationRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	movq	-16(%rbp), %rax	# ahrs, tmp127
	movl	96(%rax), %eax	# ahrs_24(D)->accelerationRecoveryTrigger, _7
# FusionAhrs.c:465:         .accelerationRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->accelerationRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	pxor	%xmm2, %xmm2	# _8
	cvtsi2ssl	%eax, %xmm2	# _7, _8
# FusionAhrs.c:465:         .accelerationRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->accelerationRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	movq	-16(%rbp), %rax	# ahrs, tmp128
	movl	20(%rax), %eax	# ahrs_24(D)->settings.recoveryTriggerPeriod, _9
# FusionAhrs.c:465:         .accelerationRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->accelerationRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	movl	%eax, %eax	# _9, tmp129
	testq	%rax, %rax	# tmp129
	js	.L167	#,
	pxor	%xmm1, %xmm1	# _10
	cvtsi2ssq	%rax, %xmm1	# tmp129, _10
	jmp	.L168	#
.L167:
	movq	%rax, %rdx	# tmp129, tmp131
	shrq	%rdx	# tmp131
	andl	$1, %eax	#, tmp132
	orq	%rax, %rdx	# tmp132, tmp131
	pxor	%xmm0, %xmm0	# tmp130
	cvtsi2ssq	%rdx, %xmm0	# tmp131, tmp130
	movaps	%xmm0, %xmm1	# tmp130, tmp130
	addss	%xmm0, %xmm1	# tmp130, tmp130
.L168:
# FusionAhrs.c:465:         .accelerationRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->accelerationRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	divss	%xmm1, %xmm2	# _10, _8
	movaps	%xmm2, %xmm0	# _8, iftmp.11_21
	jmp	.L169	#
.L166:
# FusionAhrs.c:465:         .accelerationRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->accelerationRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	pxor	%xmm0, %xmm0	# iftmp.11_21
.L169:
# FusionAhrs.c:469:     };
	movq	-8(%rbp), %rax	# .result_ptr, tmp133
	movss	%xmm0, 8(%rax)	# iftmp.11_21, <retval>.accelerationRecoveryTrigger
# FusionAhrs.c:466:         .magneticError = FusionRadiansToDegrees(FusionAsin(2.0f * FusionVectorMagnitude(ahrs->halfMagnetometerFeedback))),
	movq	-16(%rbp), %rax	# ahrs, tmp134
	movq	80(%rax), %rdx	# ahrs_24(D)->halfMagnetometerFeedback, tmp135
	movd	88(%rax), %xmm1	# ahrs_24(D)->halfMagnetometerFeedback, tmp136
	movq	%rdx, %xmm0	# tmp135,
	call	_ZL21FusionVectorMagnitude12FusionVector	#
# FusionAhrs.c:466:         .magneticError = FusionRadiansToDegrees(FusionAsin(2.0f * FusionVectorMagnitude(ahrs->halfMagnetometerFeedback))),
	addss	%xmm0, %xmm0	# _11, _11
	movd	%xmm0, %eax	# _11, _12
	movd	%eax, %xmm0	# _12,
	call	_ZL10FusionAsinf	#
	movd	%xmm0, %eax	#, _13
# FusionAhrs.c:466:         .magneticError = FusionRadiansToDegrees(FusionAsin(2.0f * FusionVectorMagnitude(ahrs->halfMagnetometerFeedback))),
	movd	%eax, %xmm0	# _13,
	call	_ZL22FusionRadiansToDegreesf	#
	movd	%xmm0, %eax	#, _14
# FusionAhrs.c:469:     };
	movq	-8(%rbp), %rdx	# .result_ptr, tmp137
	movl	%eax, 12(%rdx)	# _14, <retval>.magneticError
# FusionAhrs.c:467:         .magnetometerIgnored = ahrs->magnetometerIgnored,
	movq	-16(%rbp), %rax	# ahrs, tmp138
	movzbl	104(%rax), %edx	# ahrs_24(D)->magnetometerIgnored, _15
# FusionAhrs.c:469:     };
	movq	-8(%rbp), %rax	# .result_ptr, tmp139
	movb	%dl, 16(%rax)	# _15, <retval>.magnetometerIgnored
# FusionAhrs.c:468:         .magneticRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->magneticRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	movq	-16(%rbp), %rax	# ahrs, tmp140
	movl	20(%rax), %eax	# ahrs_24(D)->settings.recoveryTriggerPeriod, _16
# FusionAhrs.c:468:         .magneticRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->magneticRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	testl	%eax, %eax	# _16
	je	.L170	#,
# FusionAhrs.c:468:         .magneticRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->magneticRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	movq	-16(%rbp), %rax	# ahrs, tmp141
	movl	108(%rax), %eax	# ahrs_24(D)->magneticRecoveryTrigger, _17
# FusionAhrs.c:468:         .magneticRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->magneticRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	pxor	%xmm2, %xmm2	# _18
	cvtsi2ssl	%eax, %xmm2	# _17, _18
# FusionAhrs.c:468:         .magneticRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->magneticRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	movq	-16(%rbp), %rax	# ahrs, tmp142
	movl	20(%rax), %eax	# ahrs_24(D)->settings.recoveryTriggerPeriod, _19
# FusionAhrs.c:468:         .magneticRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->magneticRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	movl	%eax, %eax	# _19, tmp143
	testq	%rax, %rax	# tmp143
	js	.L171	#,
	pxor	%xmm1, %xmm1	# _20
	cvtsi2ssq	%rax, %xmm1	# tmp143, _20
	jmp	.L172	#
.L171:
	movq	%rax, %rdx	# tmp143, tmp145
	shrq	%rdx	# tmp145
	andl	$1, %eax	#, tmp146
	orq	%rax, %rdx	# tmp146, tmp145
	pxor	%xmm0, %xmm0	# tmp144
	cvtsi2ssq	%rdx, %xmm0	# tmp145, tmp144
	movaps	%xmm0, %xmm1	# tmp144, tmp144
	addss	%xmm0, %xmm1	# tmp144, tmp144
.L172:
# FusionAhrs.c:468:         .magneticRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->magneticRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	divss	%xmm1, %xmm2	# _20, _18
	movaps	%xmm2, %xmm0	# _18, iftmp.12_22
	jmp	.L173	#
.L170:
# FusionAhrs.c:468:         .magneticRecoveryTrigger = ahrs->settings.recoveryTriggerPeriod == 0 ? 0.0f : (float) ahrs->magneticRecoveryTrigger / (float) ahrs->settings.recoveryTriggerPeriod,
	pxor	%xmm0, %xmm0	# iftmp.12_22
.L173:
# FusionAhrs.c:469:     };
	movq	-8(%rbp), %rax	# .result_ptr, tmp147
	movss	%xmm0, 20(%rax)	# iftmp.12_22, <retval>.magneticRecoveryTrigger
# FusionAhrs.c:470:     return internalStates;
	nop	
# FusionAhrs.c:471: }
	movq	-8(%rbp), %rax	# .result_ptr,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ahrs, ahrs
# FusionAhrs.c:478: FusionAhrsFlags FusionAhrsGetFlags(const FusionAhrs *const ahrs) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	movq	%rax, -8(%rbp)	# tmp108, D.27444
	xorl	%eax, %eax	# tmp108
# FusionAhrs.c:480:         .initialising = ahrs->initialising,
	movq	-24(%rbp), %rax	# ahrs, tmp109
	movzbl	52(%rax), %eax	# ahrs_10(D)->initialising, _1
# FusionAhrs.c:484:     };
	movb	%al, -12(%rbp)	# _1, flags.initialising
# FusionAhrs.c:481:         .angularRateRecovery = ahrs->angularRateRecovery,
	movq	-24(%rbp), %rax	# ahrs, tmp110
	movzbl	64(%rax), %eax	# ahrs_10(D)->angularRateRecovery, _2
# FusionAhrs.c:484:     };
	movb	%al, -11(%rbp)	# _2, flags.angularRateRecovery
# FusionAhrs.c:482:         .accelerationRecovery = ahrs->accelerationRecoveryTrigger > ahrs->accelerationRecoveryTimeout,
	movq	-24(%rbp), %rax	# ahrs, tmp111
	movl	96(%rax), %edx	# ahrs_10(D)->accelerationRecoveryTrigger, _3
# FusionAhrs.c:482:         .accelerationRecovery = ahrs->accelerationRecoveryTrigger > ahrs->accelerationRecoveryTimeout,
	movq	-24(%rbp), %rax	# ahrs, tmp112
	movl	100(%rax), %eax	# ahrs_10(D)->accelerationRecoveryTimeout, _4
# FusionAhrs.c:482:         .accelerationRecovery = ahrs->accelerationRecoveryTrigger > ahrs->accelerationRecoveryTimeout,
	cmpl	%eax, %edx	# _4, _3
	setg	%al	#, _5
# FusionAhrs.c:484:     };
	movb	%al, -10(%rbp)	# _5, flags.accelerationRecovery
# FusionAhrs.c:483:         .magneticRecovery = ahrs->magneticRecoveryTrigger > ahrs->magneticRecoveryTimeout,
	movq	-24(%rbp), %rax	# ahrs, tmp113
	movl	108(%rax), %edx	# ahrs_10(D)->magneticRecoveryTrigger, _6
# FusionAhrs.c:483:         .magneticRecovery = ahrs->magneticRecoveryTrigger > ahrs->magneticRecoveryTimeout,
	movq	-24(%rbp), %rax	# ahrs, tmp114
	movl	112(%rax), %eax	# ahrs_10(D)->magneticRecoveryTimeout, _7
# FusionAhrs.c:483:         .magneticRecovery = ahrs->magneticRecoveryTrigger > ahrs->magneticRecoveryTimeout,
	cmpl	%eax, %edx	# _7, _6
	setg	%al	#, _8
# FusionAhrs.c:484:     };
	movb	%al, -9(%rbp)	# _8, flags.magneticRecovery
# FusionAhrs.c:485:     return flags;
	movl	-12(%rbp), %eax	# flags, D.27373
# FusionAhrs.c:486: }
	movq	-8(%rbp), %rdx	# D.27444, tmp116
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	je	.L177	#,
	call	__stack_chk_fail@PLT	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# ahrs, ahrs
	movss	%xmm0, -76(%rbp)	# heading, heading
# FusionAhrs.c:495: void FusionAhrsSetHeading(FusionAhrs *const ahrs, const float heading) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	movq	%rax, -24(%rbp)	# tmp118, D.27445
	xorl	%eax, %eax	# tmp118
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	movq	-72(%rbp), %rax	# ahrs, tmp119
	movss	32(%rax), %xmm1	# ahrs_22(D)->quaternion.element.y, _1
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	movq	-72(%rbp), %rax	# ahrs, tmp120
	movss	32(%rax), %xmm0	# ahrs_22(D)->quaternion.element.y, _2
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	mulss	%xmm0, %xmm1	# _2, _3
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	movss	.LC10(%rip), %xmm0	#, tmp121
	subss	%xmm1, %xmm0	# _3, _4
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	movq	-72(%rbp), %rax	# ahrs, tmp122
	movss	36(%rax), %xmm2	# ahrs_22(D)->quaternion.element.z, _5
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	movq	-72(%rbp), %rax	# ahrs, tmp123
	movss	36(%rax), %xmm1	# ahrs_22(D)->quaternion.element.z, _6
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	mulss	%xmm2, %xmm1	# _5, _7
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	movaps	%xmm0, %xmm3	# _4, _4
	subss	%xmm1, %xmm3	# _7, _4
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	movq	-72(%rbp), %rax	# ahrs, tmp124
	movss	24(%rax), %xmm1	# ahrs_22(D)->quaternion.element.w, _9
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	movq	-72(%rbp), %rax	# ahrs, tmp125
	movss	36(%rax), %xmm0	# ahrs_22(D)->quaternion.element.z, _10
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	mulss	%xmm0, %xmm1	# _10, _11
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	movq	-72(%rbp), %rax	# ahrs, tmp126
	movss	28(%rax), %xmm2	# ahrs_22(D)->quaternion.element.x, _12
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	movq	-72(%rbp), %rax	# ahrs, tmp127
	movss	32(%rax), %xmm0	# ahrs_22(D)->quaternion.element.y, _13
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	mulss	%xmm2, %xmm0	# _12, _14
# FusionAhrs.c:497:     const float yaw = atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z);
	addss	%xmm0, %xmm1	# _14, _11
	movd	%xmm1, %eax	# _11, _15
	movaps	%xmm3, %xmm1	# _8,
	movd	%eax, %xmm0	# _15,
	call	atan2f@PLT	#
	movd	%xmm0, %eax	#, tmp128
	movl	%eax, -56(%rbp)	# tmp128, yaw
# FusionAhrs.c:499:     const float halfYawMinusHeading = 0.5f * (yaw - FusionDegreesToRadians(heading));
	movl	-76(%rbp), %eax	# heading, tmp129
	movd	%eax, %xmm0	# tmp129,
	call	_ZL22FusionDegreesToRadiansf	#
# FusionAhrs.c:499:     const float halfYawMinusHeading = 0.5f * (yaw - FusionDegreesToRadians(heading));
	movss	-56(%rbp), %xmm1	# yaw, tmp130
	subss	%xmm0, %xmm1	# _16, _17
# FusionAhrs.c:499:     const float halfYawMinusHeading = 0.5f * (yaw - FusionDegreesToRadians(heading));
	movss	.LC10(%rip), %xmm0	#, tmp132
	mulss	%xmm1, %xmm0	# _17, halfYawMinusHeading_27
	movss	%xmm0, -52(%rbp)	# halfYawMinusHeading_27, halfYawMinusHeading
# FusionAhrs.c:500:     const FusionQuaternion rotation = {
	movq	$0, -48(%rbp)	#, rotation
	movq	$0, -40(%rbp)	#, rotation
# FusionAhrs.c:502:             .w = cosf(halfYawMinusHeading),
	movl	-52(%rbp), %eax	# halfYawMinusHeading, tmp133
	movd	%eax, %xmm0	# tmp133,
	call	cosf@PLT	#
	movd	%xmm0, %eax	#, _18
# FusionAhrs.c:507:     };
	movl	%eax, -48(%rbp)	# _18, rotation.element.w
# FusionAhrs.c:505:             .z = -1.0f * sinf(halfYawMinusHeading),
	movl	-52(%rbp), %eax	# halfYawMinusHeading, tmp134
	movd	%eax, %xmm0	# tmp134,
	call	sinf@PLT	#
	movd	%xmm0, %eax	#, _19
# FusionAhrs.c:505:             .z = -1.0f * sinf(halfYawMinusHeading),
	movss	.LC9(%rip), %xmm0	#, tmp135
	movd	%eax, %xmm4	# _19, _19
	xorps	%xmm0, %xmm4	# tmp135, _19
	movaps	%xmm4, %xmm0	# _19, _20
# FusionAhrs.c:507:     };
	movss	%xmm0, -36(%rbp)	# _20, rotation.element.z
# FusionAhrs.c:508:     ahrs->quaternion = FusionQuaternionMultiply(rotation, ahrs->quaternion);
	movq	-72(%rbp), %rbx	# ahrs, tmp136
	movq	-72(%rbp), %rax	# ahrs, tmp137
	movq	24(%rax), %xmm2	# ahrs_22(D)->quaternion, tmp138
	movq	32(%rax), %xmm0	# ahrs_22(D)->quaternion, tmp139
	movq	-48(%rbp), %rax	# rotation, tmp140
	movq	-40(%rbp), %xmm1	# rotation, tmp141
	movdqa	%xmm0, %xmm3	# tmp139,
	movq	%rax, %xmm0	# tmp140,
	call	_ZL24FusionQuaternionMultiply16FusionQuaternionS_	#
	movq	%xmm0, %rax	#, tmp142
	movdqa	%xmm1, %xmm0	#, tmp143
	movq	%rax, 24(%rbx)	# tmp142, ahrs_22(D)->quaternion
	movq	%xmm0, 32(%rbx)	# tmp143, ahrs_22(D)->quaternion
# FusionAhrs.c:509: }
	nop	
	movq	-24(%rbp), %rax	# D.27445, tmp144
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp144
	je	.L179	#,
	call	__stack_chk_fail@PLT	#
.L179:
	movq	-8(%rbp), %rbx	#,
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
