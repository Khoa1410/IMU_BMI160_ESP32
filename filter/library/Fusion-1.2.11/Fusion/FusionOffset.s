	.file	"FusionOffset.c"
# GNU C++17 (GCC) version 15.2.1 20260103 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.1 20260103, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64
	.text
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
	movq	%rax, -8(%rbp)	# tmp121, D.26838
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
	movq	%rax, -20(%rbp)	# tmp122, D.26830
	movl	-24(%rbp), %eax	# result, tmp123
	movl	%eax, -12(%rbp)	# tmp123, D.26830
	movq	-20(%rbp), %rdx	# D.26830, tmp124
	movl	-12(%rbp), %eax	# D.26830, tmp125
	movq	%rax, %xmm1	# tmp125, <retval>
# FusionMath.h:209: }
	movq	-8(%rbp), %rax	# D.26838, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
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
	movq	%rax, -8(%rbp)	# tmp121, D.26840
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
	movq	%rax, -20(%rbp)	# tmp122, D.26824
	movl	-24(%rbp), %eax	# result, tmp123
	movl	%eax, -12(%rbp)	# tmp123, D.26824
	movq	-20(%rbp), %rdx	# D.26824, tmp124
	movl	-12(%rbp), %eax	# D.26824, tmp125
	movq	%rax, %xmm1	# tmp125, <retval>
# FusionMath.h:226: }
	movq	-8(%rbp), %rax	# D.26840, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L6	#,
	call	__stack_chk_fail@PLT	#
.L6:
	movq	%rdx, %xmm0	# <retval>,
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
	movq	%rax, -8(%rbp)	# tmp112, D.26841
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
	movq	%rax, -20(%rbp)	# tmp113, D.26827
	movl	-24(%rbp), %eax	# result, tmp114
	movl	%eax, -12(%rbp)	# tmp114, D.26827
	movq	-20(%rbp), %rdx	# D.26827, tmp115
	movl	-12(%rbp), %eax	# D.26827, tmp116
	movq	%rax, %xmm1	# tmp116, <retval>
# FusionMath.h:252: }
	movq	-8(%rbp), %rax	# D.26841, tmp117
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
	.globl	_Z22FusionOffsetInitialiseP12FusionOffsetj
	.type	_Z22FusionOffsetInitialiseP12FusionOffsetj, @function
_Z22FusionOffsetInitialiseP12FusionOffsetj:
.LFB1037:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# offset, offset
	movl	%esi, -12(%rbp)	# sampleRate, sampleRate
# FusionOffset.c:41:     offset->filterCoefficient = 2.0f * (float) M_PI * CUTOFF_FREQUENCY * (1.0f / (float) sampleRate);
	movl	-12(%rbp), %eax	# sampleRate, tmp102
	testq	%rax, %rax	# tmp102
	js	.L11	#,
	pxor	%xmm0, %xmm0	# _1
	cvtsi2ssq	%rax, %xmm0	# tmp102, _1
	jmp	.L12	#
.L11:
	movq	%rax, %rdx	# tmp102, tmp104
	shrq	%rdx	# tmp104
	andl	$1, %eax	#, tmp105
	orq	%rax, %rdx	# tmp105, tmp104
	pxor	%xmm0, %xmm0	# tmp103
	cvtsi2ssq	%rdx, %xmm0	# tmp104, tmp103
	addss	%xmm0, %xmm0	# tmp103, _1
.L12:
# FusionOffset.c:41:     offset->filterCoefficient = 2.0f * (float) M_PI * CUTOFF_FREQUENCY * (1.0f / (float) sampleRate);
	movss	.LC0(%rip), %xmm1	#, tmp106
	divss	%xmm0, %xmm1	# _1, _2
# FusionOffset.c:41:     offset->filterCoefficient = 2.0f * (float) M_PI * CUTOFF_FREQUENCY * (1.0f / (float) sampleRate);
	movss	.LC1(%rip), %xmm0	#, tmp107
	mulss	%xmm1, %xmm0	# _2, _3
# FusionOffset.c:41:     offset->filterCoefficient = 2.0f * (float) M_PI * CUTOFF_FREQUENCY * (1.0f / (float) sampleRate);
	movq	-8(%rbp), %rax	# offset, tmp108
	movss	%xmm0, (%rax)	# _3, offset_7(D)->filterCoefficient
# FusionOffset.c:42:     offset->timeout = TIMEOUT * sampleRate;
	movl	-12(%rbp), %edx	# sampleRate, tmp109
	movl	%edx, %eax	# tmp109, tmp110
	sall	$2, %eax	#, tmp110
	addl	%eax, %edx	# tmp110, _4
# FusionOffset.c:42:     offset->timeout = TIMEOUT * sampleRate;
	movq	-8(%rbp), %rax	# offset, tmp111
	movl	%edx, 4(%rax)	# _4, offset_7(D)->timeout
# FusionOffset.c:43:     offset->timer = 0;
	movq	-8(%rbp), %rax	# offset, tmp112
	movl	$0, 8(%rax)	#, offset_7(D)->timer
# FusionOffset.c:44:     offset->gyroscopeOffset = FUSION_VECTOR_ZERO;
	movq	-8(%rbp), %rax	# offset, tmp113
	pxor	%xmm0, %xmm0	# tmp114
	movss	%xmm0, 12(%rax)	# tmp114, offset_7(D)->gyroscopeOffset.array[0]
	movq	-8(%rbp), %rax	# offset, tmp115
	pxor	%xmm0, %xmm0	# tmp116
	movss	%xmm0, 16(%rax)	# tmp116, offset_7(D)->gyroscopeOffset.array[1]
	movq	-8(%rbp), %rax	# offset, tmp117
	pxor	%xmm0, %xmm0	# tmp118
	movss	%xmm0, 20(%rax)	# tmp118, offset_7(D)->gyroscopeOffset.array[2]
# FusionOffset.c:45: }
	nop	
	popq	%rbp	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# offset, offset
	movq	%xmm0, %rax	# gyroscope, tmp111
	movq	%xmm1, %rdx	# gyroscope, tmp112
	movq	%rax, -72(%rbp)	# tmp111, gyroscope
	movl	-64(%rbp), %eax	# gyroscope, tmp114
	andl	$0, %eax	#, tmp115
	orl	%edx, %eax	# tmp112, tmp116
	movl	%eax, -64(%rbp)	# tmp116, gyroscope
# FusionOffset.c:54: FusionVector FusionOffsetUpdate(FusionOffset *const offset, FusionVector gyroscope) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	movq	%rax, -24(%rbp)	# tmp117, D.26842
	xorl	%eax, %eax	# tmp117
# FusionOffset.c:56:     gyroscope = FusionVectorSubtract(gyroscope, offset->gyroscopeOffset);
	movq	-56(%rbp), %rax	# offset, tmp118
	movq	12(%rax), %xmm2	# offset_14(D)->gyroscopeOffset, tmp119
	movd	20(%rax), %xmm0	# offset_14(D)->gyroscopeOffset, tmp120
	movq	-72(%rbp), %rax	# gyroscope, tmp121
	movd	-64(%rbp), %xmm1	# gyroscope, tmp122
	movdqa	%xmm0, %xmm3	# tmp120,
	movq	%rax, %xmm0	# tmp121,
	call	_ZL20FusionVectorSubtract12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp123
	movq	%xmm1, %rdx	#, tmp124
	movq	%rax, -72(%rbp)	# tmp123, gyroscope
	movl	-64(%rbp), %eax	# gyroscope, tmp126
	andl	$0, %eax	#, tmp127
	orl	%edx, %eax	# tmp124, tmp128
	movl	%eax, -64(%rbp)	# tmp128, gyroscope
# FusionOffset.c:59:     if ((fabsf(gyroscope.axis.x) > THRESHOLD) || (fabsf(gyroscope.axis.y) > THRESHOLD) || (fabsf(gyroscope.axis.z) > THRESHOLD)) {
	movss	-72(%rbp), %xmm0	# gyroscope.axis.x, _1
# FusionOffset.c:59:     if ((fabsf(gyroscope.axis.x) > THRESHOLD) || (fabsf(gyroscope.axis.y) > THRESHOLD) || (fabsf(gyroscope.axis.z) > THRESHOLD)) {
	movss	.LC3(%rip), %xmm1	#, tmp129
	andps	%xmm1, %xmm0	# tmp129, _2
# FusionOffset.c:59:     if ((fabsf(gyroscope.axis.x) > THRESHOLD) || (fabsf(gyroscope.axis.y) > THRESHOLD) || (fabsf(gyroscope.axis.z) > THRESHOLD)) {
	comiss	.LC4(%rip), %xmm0	#, _2
	ja	.L14	#,
# FusionOffset.c:59:     if ((fabsf(gyroscope.axis.x) > THRESHOLD) || (fabsf(gyroscope.axis.y) > THRESHOLD) || (fabsf(gyroscope.axis.z) > THRESHOLD)) {
	movss	-68(%rbp), %xmm0	# gyroscope.axis.y, _3
# FusionOffset.c:59:     if ((fabsf(gyroscope.axis.x) > THRESHOLD) || (fabsf(gyroscope.axis.y) > THRESHOLD) || (fabsf(gyroscope.axis.z) > THRESHOLD)) {
	movss	.LC3(%rip), %xmm1	#, tmp130
	andps	%xmm1, %xmm0	# tmp130, _4
# FusionOffset.c:59:     if ((fabsf(gyroscope.axis.x) > THRESHOLD) || (fabsf(gyroscope.axis.y) > THRESHOLD) || (fabsf(gyroscope.axis.z) > THRESHOLD)) {
	comiss	.LC4(%rip), %xmm0	#, _4
	ja	.L14	#,
# FusionOffset.c:59:     if ((fabsf(gyroscope.axis.x) > THRESHOLD) || (fabsf(gyroscope.axis.y) > THRESHOLD) || (fabsf(gyroscope.axis.z) > THRESHOLD)) {
	movss	-64(%rbp), %xmm0	# gyroscope.axis.z, _5
# FusionOffset.c:59:     if ((fabsf(gyroscope.axis.x) > THRESHOLD) || (fabsf(gyroscope.axis.y) > THRESHOLD) || (fabsf(gyroscope.axis.z) > THRESHOLD)) {
	movss	.LC3(%rip), %xmm1	#, tmp131
	andps	%xmm1, %xmm0	# tmp131, _6
# FusionOffset.c:59:     if ((fabsf(gyroscope.axis.x) > THRESHOLD) || (fabsf(gyroscope.axis.y) > THRESHOLD) || (fabsf(gyroscope.axis.z) > THRESHOLD)) {
	comiss	.LC4(%rip), %xmm0	#, _6
	jbe	.L20	#,
.L14:
# FusionOffset.c:60:         offset->timer = 0;
	movq	-56(%rbp), %rax	# offset, tmp132
	movl	$0, 8(%rax)	#, offset_14(D)->timer
# FusionOffset.c:61:         return gyroscope;
	movq	-72(%rbp), %rax	# gyroscope, tmp133
	movq	%rax, -48(%rbp)	# tmp133, D.26819
	movl	-64(%rbp), %eax	# gyroscope, tmp134
	movl	%eax, -40(%rbp)	# tmp134, D.26819
	jmp	.L17	#
.L20:
# FusionOffset.c:65:     if (offset->timer < offset->timeout) {
	movq	-56(%rbp), %rax	# offset, tmp135
	movl	8(%rax), %edx	# offset_14(D)->timer, _7
# FusionOffset.c:65:     if (offset->timer < offset->timeout) {
	movq	-56(%rbp), %rax	# offset, tmp136
	movl	4(%rax), %eax	# offset_14(D)->timeout, _8
# FusionOffset.c:65:     if (offset->timer < offset->timeout) {
	cmpl	%eax, %edx	# _8, _7
	jnb	.L18	#,
# FusionOffset.c:66:         offset->timer++;
	movq	-56(%rbp), %rax	# offset, tmp137
	movl	8(%rax), %eax	# offset_14(D)->timer, _9
# FusionOffset.c:66:         offset->timer++;
	leal	1(%rax), %edx	#, _10
	movq	-56(%rbp), %rax	# offset, tmp138
	movl	%edx, 8(%rax)	# _10, offset_14(D)->timer
# FusionOffset.c:67:         return gyroscope;
	movq	-72(%rbp), %rax	# gyroscope, tmp139
	movq	%rax, -48(%rbp)	# tmp139, D.26819
	movl	-64(%rbp), %eax	# gyroscope, tmp140
	movl	%eax, -40(%rbp)	# tmp140, D.26819
	jmp	.L17	#
.L18:
# FusionOffset.c:71:     offset->gyroscopeOffset = FusionVectorAdd(offset->gyroscopeOffset, FusionVectorMultiplyScalar(gyroscope, offset->filterCoefficient));
	movq	-56(%rbp), %rax	# offset, tmp141
	movss	(%rax), %xmm0	# offset_14(D)->filterCoefficient, _11
	movq	-72(%rbp), %rax	# gyroscope, tmp142
	movd	-64(%rbp), %xmm1	# gyroscope, tmp143
	movaps	%xmm0, %xmm2	# _11,
	movq	%rax, %xmm0	# tmp142,
	call	_ZL26FusionVectorMultiplyScalar12FusionVectorf	#
	movq	%xmm0, %rax	#, tmp144
	movq	%xmm1, %rdx	#, tmp145
	movq	%rax, -36(%rbp)	# tmp144, D.26822
	movl	-28(%rbp), %eax	# D.26822, tmp147
	andl	$0, %eax	#, tmp148
	orl	%edx, %eax	# tmp145, tmp149
	movl	%eax, -28(%rbp)	# tmp149, D.26822
# FusionOffset.c:71:     offset->gyroscopeOffset = FusionVectorAdd(offset->gyroscopeOffset, FusionVectorMultiplyScalar(gyroscope, offset->filterCoefficient));
	movq	-56(%rbp), %rbx	# offset, tmp150
	movq	-36(%rbp), %xmm2	# D.26822, tmp151
	movd	-28(%rbp), %xmm0	# D.26822, tmp152
	movq	-56(%rbp), %rax	# offset, tmp153
	movq	12(%rax), %rdx	# offset_14(D)->gyroscopeOffset, tmp154
	movd	20(%rax), %xmm1	# offset_14(D)->gyroscopeOffset, tmp155
	movdqa	%xmm0, %xmm3	# tmp152,
	movq	%rdx, %xmm0	# tmp154,
	call	_ZL15FusionVectorAdd12FusionVectorS_	#
	movq	%xmm0, %rax	#, tmp156
	movq	%xmm1, %rdx	#, tmp157
	movq	%rax, 12(%rbx)	# tmp156, offset_14(D)->gyroscopeOffset
	movl	20(%rbx), %eax	# offset_14(D)->gyroscopeOffset, tmp159
	andl	$0, %eax	#, tmp160
	orl	%edx, %eax	# tmp157, tmp161
	movl	%eax, 20(%rbx)	# tmp161, offset_14(D)->gyroscopeOffset
# FusionOffset.c:72:     return gyroscope;
	movq	-72(%rbp), %rax	# gyroscope, tmp162
	movq	%rax, -48(%rbp)	# tmp162, D.26819
	movl	-64(%rbp), %eax	# gyroscope, tmp163
	movl	%eax, -40(%rbp)	# tmp163, D.26819
.L17:
# FusionOffset.c:73: }
	movq	-48(%rbp), %rdx	# D.26819, tmp164
	movl	-40(%rbp), %eax	# D.26819, tmp165
	movq	%rax, %xmm1	# tmp165, <retval>
	movq	-24(%rbp), %rax	# D.26842, tmp166
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp166
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
	movq	%rdx, %xmm0	# <retval>,
	movq	-8(%rbp), %rbx	#,
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
