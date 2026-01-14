	.file	"FusionCompass.c"
# GNU C++17 (GCC) version 15.2.1 20260103 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.1 20260103, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64
	.text
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
	movss	.LC0(%rip), %xmm0	#, tmp101
	mulss	%xmm1, %xmm0	# tmp100, _2
# FusionMath.h:138: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1016:
	.size	_ZL22FusionRadiansToDegreesf, .-_ZL22FusionRadiansToDegreesf
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
	movss	.LC1(%rip), %xmm0	#, tmp113
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
	movss	.LC2(%rip), %xmm0	#, tmp114
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
	movq	%rax, -8(%rbp)	# tmp112, D.26866
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
	movq	%rax, -20(%rbp)	# tmp113, D.26836
	movl	-24(%rbp), %eax	# result, tmp114
	movl	%eax, -12(%rbp)	# tmp114, D.26836
	movq	-20(%rbp), %rdx	# D.26836, tmp115
	movl	-12(%rbp), %eax	# D.26836, tmp116
	movq	%rax, %xmm1	# tmp116, <retval>
# FusionMath.h:252: }
	movq	-8(%rbp), %rax	# D.26866, tmp117
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	je	.L9	#,
	call	__stack_chk_fail@PLT	#
.L9:
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
	movq	%rax, -8(%rbp)	# tmp121, D.26868
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
	movq	%rax, -20(%rbp)	# tmp122, D.26847
	movl	-24(%rbp), %eax	# result, tmp123
	movl	%eax, -12(%rbp)	# tmp123, D.26847
	movq	-20(%rbp), %rdx	# D.26847, tmp124
	movl	-12(%rbp), %eax	# D.26847, tmp125
	movq	%rax, %xmm1	# tmp125, <retval>
# FusionMath.h:269: }
	movq	-8(%rbp), %rax	# D.26868, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L12	#,
	call	__stack_chk_fail@PLT	#
.L12:
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
	movq	%rax, -8(%rbp)	# tmp133, D.26869
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
	movq	%rax, -20(%rbp)	# tmp134, D.26839
	movl	-24(%rbp), %eax	# result, tmp135
	movl	%eax, -12(%rbp)	# tmp135, D.26839
	movq	-20(%rbp), %rdx	# D.26839, tmp136
	movl	-12(%rbp), %eax	# D.26839, tmp137
	movq	%rax, %xmm1	# tmp137, <retval>
# FusionMath.h:290: }
	movq	-8(%rbp), %rax	# D.26869, tmp138
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp138
	je	.L15	#,
	call	__stack_chk_fail@PLT	#
.L15:
	movq	%rdx, %xmm0	# <retval>,
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
	movq	%rax, -8(%rbp)	# tmp106, D.26870
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
	movq	%rax, -20(%rbp)	# tmp111, D.26845
	movl	-12(%rbp), %eax	# D.26845, tmp114
	andl	$0, %eax	#, tmp115
	orl	%edx, %eax	# tmp112, tmp116
	movl	%eax, -12(%rbp)	# tmp116, D.26845
# FusionMath.h:308:     return FusionVectorSum(FusionVectorHadamardProduct(vector, vector));
	movq	-20(%rbp), %rax	# D.26845, tmp117
	movd	-12(%rbp), %xmm1	# D.26845, tmp118
	movq	%rax, %xmm0	# tmp117,
	call	_ZL15FusionVectorSum12FusionVector	#
# FusionMath.h:309: }
	movq	-8(%rbp), %rax	# D.26870, tmp120
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	je	.L18	#,
	call	__stack_chk_fail@PLT	#
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
	movq	%rax, -8(%rbp)	# tmp107, D.26871
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
	movq	%rax, -20(%rbp)	# tmp114, D.26842
	movl	-12(%rbp), %eax	# D.26842, tmp117
	andl	$0, %eax	#, tmp118
	orl	%edx, %eax	# tmp115, tmp119
	movl	%eax, -12(%rbp)	# tmp119, D.26842
# FusionMath.h:331:     return FusionVectorMultiplyScalar(vector, magnitudeReciprocal);
	movq	-20(%rbp), %rdx	# D.26842, tmp120
	movl	-12(%rbp), %eax	# D.26842, tmp121
	movq	%rax, %xmm1	# tmp121, <retval>
# FusionMath.h:332: }
	movq	-8(%rbp), %rax	# D.26871, tmp122
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	je	.L21	#,
	call	__stack_chk_fail@PLT	#
.L21:
	movq	%rdx, %xmm0	# <retval>,
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movl	%edi, -84(%rbp)	# convention, convention
	movq	%xmm0, %rax	# accelerometer, tmp110
	movq	%xmm1, %rcx	# accelerometer, tmp111
	movdqa	%xmm2, %xmm0	# magnetometer, tmp116
	movq	%xmm3, %rdx	# magnetometer, tmp117
	movq	%rax, -100(%rbp)	# tmp110, accelerometer
	movl	-92(%rbp), %eax	# accelerometer, tmp113
	andl	$0, %eax	#, tmp114
	orl	%ecx, %eax	# tmp111, tmp115
	movl	%eax, -92(%rbp)	# tmp115, accelerometer
	movq	%xmm0, -116(%rbp)	# tmp116, magnetometer
	movl	-108(%rbp), %eax	# magnetometer, tmp119
	andl	$0, %eax	#, tmp120
	orl	%edx, %eax	# tmp117, tmp121
	movl	%eax, -108(%rbp)	# tmp121, magnetometer
# FusionCompass.c:23: float FusionCompass(const FusionConvention convention, const FusionVector accelerometer, const FusionVector magnetometer) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	movq	%rax, -8(%rbp)	# tmp122, D.26873
	xorl	%eax, %eax	# tmp122
# FusionCompass.c:24:     switch (convention) {
	movl	-84(%rbp), %eax	# convention, convention.0_1
# FusionCompass.c:24:     switch (convention) {
	cmpl	$2, %eax	#, convention.0_1
	je	.L23	#,
	cmpl	$2, %eax	#, convention.0_1
	jg	.L24	#,
	testl	%eax, %eax	# convention.0_1
	je	.L25	#,
	cmpl	$1, %eax	#, convention.0_1
	je	.L26	#,
	jmp	.L24	#
.L25:
# FusionCompass.c:26:             const FusionVector west = FusionVectorNormalise(FusionVectorCrossProduct(accelerometer, magnetometer));
	movq	-116(%rbp), %xmm2	# magnetometer, tmp123
	movd	-108(%rbp), %xmm0	# magnetometer, tmp124
	movq	-100(%rbp), %rax	# accelerometer, tmp125
	movd	-92(%rbp), %xmm1	# accelerometer, tmp126
	movdqa	%xmm0, %xmm3	# tmp124,
	movq	%rax, %xmm0	# tmp125,
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp127
	movq	%xmm1, %rdx	#, tmp128
	movq	%rax, -80(%rbp)	# tmp127, D.26824
	movl	-72(%rbp), %eax	# D.26824, tmp130
	andl	$0, %eax	#, tmp131
	orl	%edx, %eax	# tmp128, tmp132
	movl	%eax, -72(%rbp)	# tmp132, D.26824
# FusionCompass.c:26:             const FusionVector west = FusionVectorNormalise(FusionVectorCrossProduct(accelerometer, magnetometer));
	movq	-80(%rbp), %rax	# D.26824, tmp133
	movd	-72(%rbp), %xmm1	# D.26824, tmp134
	movq	%rax, %xmm0	# tmp133,
	call	_ZL21FusionVectorNormalise12FusionVector	#
	movq	%xmm0, %rax	#, tmp135
	movq	%xmm1, %rdx	#, tmp136
	movq	%rax, -32(%rbp)	# tmp135, MEM[(union FusionVector *)_49]
	movl	-24(%rbp), %eax	# MEM[(union FusionVector *)_49], tmp138
	andl	$0, %eax	#, tmp139
	orl	%edx, %eax	# tmp136, tmp140
	movl	%eax, -24(%rbp)	# tmp140, MEM[(union FusionVector *)_49]
# FusionCompass.c:27:             const FusionVector north = FusionVectorNormalise(FusionVectorCrossProduct(west, accelerometer));
	movq	-100(%rbp), %xmm2	# accelerometer, tmp141
	movd	-92(%rbp), %xmm0	# accelerometer, tmp142
	movq	-32(%rbp), %rax	# MEM[(union FusionVector *)_49], tmp143
	movd	-24(%rbp), %xmm1	# MEM[(union FusionVector *)_49], tmp144
	movdqa	%xmm0, %xmm3	# tmp142,
	movq	%rax, %xmm0	# tmp143,
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp145
	movq	%xmm1, %rdx	#, tmp146
	movq	%rax, -68(%rbp)	# tmp145, MEM[(union FusionVector *)_52]
	movl	-60(%rbp), %eax	# MEM[(union FusionVector *)_52], tmp148
	andl	$0, %eax	#, tmp149
	orl	%edx, %eax	# tmp146, tmp150
	movl	%eax, -60(%rbp)	# tmp150, MEM[(union FusionVector *)_52]
# FusionCompass.c:27:             const FusionVector north = FusionVectorNormalise(FusionVectorCrossProduct(west, accelerometer));
	movq	-68(%rbp), %rax	# MEM[(union FusionVector *)_52], tmp151
	movd	-60(%rbp), %xmm1	# MEM[(union FusionVector *)_52], tmp152
	movq	%rax, %xmm0	# tmp151,
	call	_ZL21FusionVectorNormalise12FusionVector	#
	movq	%xmm0, %rax	#, tmp153
	movq	%xmm1, %rdx	#, tmp154
	movq	%rax, -20(%rbp)	# tmp153, MEM[(union FusionVector *)_48]
	movl	-12(%rbp), %eax	# MEM[(union FusionVector *)_48], tmp156
	andl	$0, %eax	#, tmp157
	orl	%edx, %eax	# tmp154, tmp158
	movl	%eax, -12(%rbp)	# tmp158, MEM[(union FusionVector *)_48]
# FusionCompass.c:28:             return FusionRadiansToDegrees(atan2f(west.axis.x, north.axis.x));
	movss	-20(%rbp), %xmm0	# MEM[(union FusionVector *)_48].axis.x, _2
# FusionCompass.c:28:             return FusionRadiansToDegrees(atan2f(west.axis.x, north.axis.x));
	movl	-32(%rbp), %eax	# MEM[(union FusionVector *)_49].axis.x, _3
# FusionCompass.c:28:             return FusionRadiansToDegrees(atan2f(west.axis.x, north.axis.x));
	movaps	%xmm0, %xmm1	# _2,
	movd	%eax, %xmm0	# _3,
	call	atan2f@PLT	#
	movd	%xmm0, %eax	#, _4
# FusionCompass.c:28:             return FusionRadiansToDegrees(atan2f(west.axis.x, north.axis.x));
	movd	%eax, %xmm0	# _4,
	call	_ZL22FusionRadiansToDegreesf	#
	movd	%xmm0, %eax	#, _11
# FusionCompass.c:28:             return FusionRadiansToDegrees(atan2f(west.axis.x, north.axis.x));
	jmp	.L27	#
.L26:
# FusionCompass.c:31:             const FusionVector west = FusionVectorNormalise(FusionVectorCrossProduct(accelerometer, magnetometer));
	movq	-116(%rbp), %xmm2	# magnetometer, tmp159
	movd	-108(%rbp), %xmm0	# magnetometer, tmp160
	movq	-100(%rbp), %rax	# accelerometer, tmp161
	movd	-92(%rbp), %xmm1	# accelerometer, tmp162
	movdqa	%xmm0, %xmm3	# tmp160,
	movq	%rax, %xmm0	# tmp161,
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp163
	movq	%xmm1, %rdx	#, tmp164
	movq	%rax, -56(%rbp)	# tmp163, MEM[(union FusionVector *)_51]
	movl	-48(%rbp), %eax	# MEM[(union FusionVector *)_51], tmp166
	andl	$0, %eax	#, tmp167
	orl	%edx, %eax	# tmp164, tmp168
	movl	%eax, -48(%rbp)	# tmp168, MEM[(union FusionVector *)_51]
# FusionCompass.c:31:             const FusionVector west = FusionVectorNormalise(FusionVectorCrossProduct(accelerometer, magnetometer));
	movq	-56(%rbp), %rax	# MEM[(union FusionVector *)_51], tmp169
	movd	-48(%rbp), %xmm1	# MEM[(union FusionVector *)_51], tmp170
	movq	%rax, %xmm0	# tmp169,
	call	_ZL21FusionVectorNormalise12FusionVector	#
	movq	%xmm0, %rax	#, tmp171
	movq	%xmm1, %rdx	#, tmp172
	movq	%rax, -68(%rbp)	# tmp171, MEM[(union FusionVector *)_52]
	movl	-60(%rbp), %eax	# MEM[(union FusionVector *)_52], tmp174
	andl	$0, %eax	#, tmp175
	orl	%edx, %eax	# tmp172, tmp176
	movl	%eax, -60(%rbp)	# tmp176, MEM[(union FusionVector *)_52]
# FusionCompass.c:32:             const FusionVector north = FusionVectorNormalise(FusionVectorCrossProduct(west, accelerometer));
	movq	-100(%rbp), %xmm2	# accelerometer, tmp177
	movd	-92(%rbp), %xmm0	# accelerometer, tmp178
	movq	-68(%rbp), %rax	# MEM[(union FusionVector *)_52], tmp179
	movd	-60(%rbp), %xmm1	# MEM[(union FusionVector *)_52], tmp180
	movdqa	%xmm0, %xmm3	# tmp178,
	movq	%rax, %xmm0	# tmp179,
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp181
	movq	%xmm1, %rdx	#, tmp182
	movq	%rax, -44(%rbp)	# tmp181, MEM[(union FusionVector *)_50]
	movl	-36(%rbp), %eax	# MEM[(union FusionVector *)_50], tmp184
	andl	$0, %eax	#, tmp185
	orl	%edx, %eax	# tmp182, tmp186
	movl	%eax, -36(%rbp)	# tmp186, MEM[(union FusionVector *)_50]
# FusionCompass.c:32:             const FusionVector north = FusionVectorNormalise(FusionVectorCrossProduct(west, accelerometer));
	movq	-44(%rbp), %rax	# MEM[(union FusionVector *)_50], tmp187
	movd	-36(%rbp), %xmm1	# MEM[(union FusionVector *)_50], tmp188
	movq	%rax, %xmm0	# tmp187,
	call	_ZL21FusionVectorNormalise12FusionVector	#
	movq	%xmm0, %rax	#, tmp189
	movq	%xmm1, %rdx	#, tmp190
	movq	%rax, -32(%rbp)	# tmp189, MEM[(union FusionVector *)_49]
	movl	-24(%rbp), %eax	# MEM[(union FusionVector *)_49], tmp192
	andl	$0, %eax	#, tmp193
	orl	%edx, %eax	# tmp190, tmp194
	movl	%eax, -24(%rbp)	# tmp194, MEM[(union FusionVector *)_49]
# FusionCompass.c:33:             const FusionVector east = FusionVectorMultiplyScalar(west, -1.0f);
	movq	-68(%rbp), %rax	# MEM[(union FusionVector *)_52], tmp195
	movd	-60(%rbp), %xmm1	# MEM[(union FusionVector *)_52], tmp196
	movss	.LC3(%rip), %xmm2	#,
	movq	%rax, %xmm0	# tmp195,
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf	#
	movq	%xmm0, %rax	#, tmp197
	movq	%xmm1, %rdx	#, tmp198
	movq	%rax, -20(%rbp)	# tmp197, MEM[(union FusionVector *)_48]
	movl	-12(%rbp), %eax	# MEM[(union FusionVector *)_48], tmp200
	andl	$0, %eax	#, tmp201
	orl	%edx, %eax	# tmp198, tmp202
	movl	%eax, -12(%rbp)	# tmp202, MEM[(union FusionVector *)_48]
# FusionCompass.c:34:             return FusionRadiansToDegrees(atan2f(north.axis.x, east.axis.x));
	movss	-20(%rbp), %xmm0	# MEM[(union FusionVector *)_48].axis.x, _5
# FusionCompass.c:34:             return FusionRadiansToDegrees(atan2f(north.axis.x, east.axis.x));
	movl	-32(%rbp), %eax	# MEM[(union FusionVector *)_49].axis.x, _6
# FusionCompass.c:34:             return FusionRadiansToDegrees(atan2f(north.axis.x, east.axis.x));
	movaps	%xmm0, %xmm1	# _5,
	movd	%eax, %xmm0	# _6,
	call	atan2f@PLT	#
	movd	%xmm0, %eax	#, _7
# FusionCompass.c:34:             return FusionRadiansToDegrees(atan2f(north.axis.x, east.axis.x));
	movd	%eax, %xmm0	# _7,
	call	_ZL22FusionRadiansToDegreesf	#
	movd	%xmm0, %eax	#, _11
# FusionCompass.c:34:             return FusionRadiansToDegrees(atan2f(north.axis.x, east.axis.x));
	jmp	.L27	#
.L23:
# FusionCompass.c:37:             const FusionVector up = FusionVectorMultiplyScalar(accelerometer, -1.0f);
	movq	-100(%rbp), %rax	# accelerometer, tmp203
	movd	-92(%rbp), %xmm1	# accelerometer, tmp204
	movss	.LC3(%rip), %xmm2	#,
	movq	%rax, %xmm0	# tmp203,
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf	#
	movq	%xmm0, %rax	#, tmp205
	movq	%xmm1, %rdx	#, tmp206
	movq	%rax, -68(%rbp)	# tmp205, MEM[(union FusionVector *)_52]
	movl	-60(%rbp), %eax	# MEM[(union FusionVector *)_52], tmp208
	andl	$0, %eax	#, tmp209
	orl	%edx, %eax	# tmp206, tmp210
	movl	%eax, -60(%rbp)	# tmp210, MEM[(union FusionVector *)_52]
# FusionCompass.c:38:             const FusionVector west = FusionVectorNormalise(FusionVectorCrossProduct(up, magnetometer));
	movq	-116(%rbp), %xmm2	# magnetometer, tmp211
	movd	-108(%rbp), %xmm0	# magnetometer, tmp212
	movq	-68(%rbp), %rax	# MEM[(union FusionVector *)_52], tmp213
	movd	-60(%rbp), %xmm1	# MEM[(union FusionVector *)_52], tmp214
	movdqa	%xmm0, %xmm3	# tmp212,
	movq	%rax, %xmm0	# tmp213,
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp215
	movq	%xmm1, %rdx	#, tmp216
	movq	%rax, -32(%rbp)	# tmp215, MEM[(union FusionVector *)_49]
	movl	-24(%rbp), %eax	# MEM[(union FusionVector *)_49], tmp218
	andl	$0, %eax	#, tmp219
	orl	%edx, %eax	# tmp216, tmp220
	movl	%eax, -24(%rbp)	# tmp220, MEM[(union FusionVector *)_49]
# FusionCompass.c:38:             const FusionVector west = FusionVectorNormalise(FusionVectorCrossProduct(up, magnetometer));
	movq	-32(%rbp), %rax	# MEM[(union FusionVector *)_49], tmp221
	movd	-24(%rbp), %xmm1	# MEM[(union FusionVector *)_49], tmp222
	movq	%rax, %xmm0	# tmp221,
	call	_ZL21FusionVectorNormalise12FusionVector	#
	movq	%xmm0, %rax	#, tmp223
	movq	%xmm1, %rdx	#, tmp224
	movq	%rax, -56(%rbp)	# tmp223, MEM[(union FusionVector *)_51]
	movl	-48(%rbp), %eax	# MEM[(union FusionVector *)_51], tmp226
	andl	$0, %eax	#, tmp227
	orl	%edx, %eax	# tmp224, tmp228
	movl	%eax, -48(%rbp)	# tmp228, MEM[(union FusionVector *)_51]
# FusionCompass.c:39:             const FusionVector north = FusionVectorNormalise(FusionVectorCrossProduct(west, up));
	movq	-68(%rbp), %xmm2	# MEM[(union FusionVector *)_52], tmp229
	movd	-60(%rbp), %xmm0	# MEM[(union FusionVector *)_52], tmp230
	movq	-56(%rbp), %rax	# MEM[(union FusionVector *)_51], tmp231
	movd	-48(%rbp), %xmm1	# MEM[(union FusionVector *)_51], tmp232
	movdqa	%xmm0, %xmm3	# tmp230,
	movq	%rax, %xmm0	# tmp231,
	call	_ZL24FusionVectorCrossProduct12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp233
	movq	%xmm1, %rdx	#, tmp234
	movq	%rax, -20(%rbp)	# tmp233, MEM[(union FusionVector *)_48]
	movl	-12(%rbp), %eax	# MEM[(union FusionVector *)_48], tmp236
	andl	$0, %eax	#, tmp237
	orl	%edx, %eax	# tmp234, tmp238
	movl	%eax, -12(%rbp)	# tmp238, MEM[(union FusionVector *)_48]
# FusionCompass.c:39:             const FusionVector north = FusionVectorNormalise(FusionVectorCrossProduct(west, up));
	movq	-20(%rbp), %rax	# MEM[(union FusionVector *)_48], tmp239
	movd	-12(%rbp), %xmm1	# MEM[(union FusionVector *)_48], tmp240
	movq	%rax, %xmm0	# tmp239,
	call	_ZL21FusionVectorNormalise12FusionVector	#
	movq	%xmm0, %rax	#, tmp241
	movq	%xmm1, %rdx	#, tmp242
	movq	%rax, -44(%rbp)	# tmp241, MEM[(union FusionVector *)_50]
	movl	-36(%rbp), %eax	# MEM[(union FusionVector *)_50], tmp244
	andl	$0, %eax	#, tmp245
	orl	%edx, %eax	# tmp242, tmp246
	movl	%eax, -36(%rbp)	# tmp246, MEM[(union FusionVector *)_50]
# FusionCompass.c:40:             return FusionRadiansToDegrees(atan2f(west.axis.x, north.axis.x));
	movss	-44(%rbp), %xmm0	# MEM[(union FusionVector *)_50].axis.x, _8
# FusionCompass.c:40:             return FusionRadiansToDegrees(atan2f(west.axis.x, north.axis.x));
	movl	-56(%rbp), %eax	# MEM[(union FusionVector *)_51].axis.x, _9
# FusionCompass.c:40:             return FusionRadiansToDegrees(atan2f(west.axis.x, north.axis.x));
	movaps	%xmm0, %xmm1	# _8,
	movd	%eax, %xmm0	# _9,
	call	atan2f@PLT	#
	movd	%xmm0, %eax	#, _10
# FusionCompass.c:40:             return FusionRadiansToDegrees(atan2f(west.axis.x, north.axis.x));
	movd	%eax, %xmm0	# _10,
	call	_ZL22FusionRadiansToDegreesf	#
	movd	%xmm0, %eax	#, _11
# FusionCompass.c:40:             return FusionRadiansToDegrees(atan2f(west.axis.x, north.axis.x));
	jmp	.L27	#
.L24:
# FusionCompass.c:43:     return 0.0f; // avoid compiler warning
	movl	.LC4(%rip), %eax	#, _11
.L27:
# FusionCompass.c:44: }
	movd	%eax, %xmm0	# _11, <retval>
	movq	-8(%rbp), %rax	# D.26873, tmp248
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp248
	je	.L28	#,
	call	__stack_chk_fail@PLT	#
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
