	.file	"ekf.cpp"
# GNU C++17 (GCC) version 15.2.1 20260103 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.1 20260103, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZN6MatrixC2EssNS_8InitZeroE,"axG",@progbits,_ZN6MatrixC5EssNS_8InitZeroE,comdat
	.align 2
	.weak	_ZN6MatrixC2EssNS_8InitZeroE
	.type	_ZN6MatrixC2EssNS_8InitZeroE, @function
_ZN6MatrixC2EssNS_8InitZeroE:
.LFB2908:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movl	%edx, %eax	# _i16col, tmp100
	movl	%ecx, -20(%rbp)	# _init, _init
	movl	%esi, %edx	# tmp98, tmp99
	movw	%dx, -12(%rbp)	# tmp99, _i16row
	movw	%ax, -16(%rbp)	# tmp101, _i16col
# matrix.h:354:   this->i16row = _i16row;
	movq	-8(%rbp), %rax	# this, tmp102
	movzwl	-12(%rbp), %edx	# _i16row, tmp103
	movw	%dx, (%rax)	# tmp103, this_3(D)->i16row
# matrix.h:355:   this->i16col = _i16col;
	movq	-8(%rbp), %rax	# this, tmp104
	movzwl	-16(%rbp), %edx	# _i16col, tmp105
	movw	%dx, 2(%rax)	# tmp105, this_3(D)->i16col
# matrix.h:357:   if (_init == InitMatWithZero) {
	cmpl	$0, -20(%rbp)	#, _init
	jne	.L3	#,
# matrix.h:358:     this->vSetHomogen(0.0);
	movq	-8(%rbp), %rax	# this, tmp106
	movq	.LC0(%rip), %rdx	#, tmp107
	movq	%rdx, %xmm0	# tmp107,
	movq	%rax, %rdi	# tmp106,
	call	_ZN6Matrix11vSetHomogenEd	#
.L3:
# matrix.h:360: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2908:
	.size	_ZN6MatrixC2EssNS_8InitZeroE, .-_ZN6MatrixC2EssNS_8InitZeroE
	.weak	_ZN6MatrixC1EssNS_8InitZeroE
	.set	_ZN6MatrixC1EssNS_8InitZeroE,_ZN6MatrixC2EssNS_8InitZeroE
	.section	.text._ZN6MatrixC2ERKS_,"axG",@progbits,_ZN6MatrixC5ERKS_,comdat
	.align 2
	.weak	_ZN6MatrixC2ERKS_
	.type	_ZN6MatrixC2ERKS_, @function
_ZN6MatrixC2ERKS_:
.LFB2914:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# old_obj, old_obj
# matrix.h:381:   this->i16row = old_obj.i16row;
	movq	-48(%rbp), %rax	# old_obj, tmp107
	movzwl	(%rax), %edx	# old_obj_17(D)->i16row, _1
# matrix.h:381:   this->i16row = old_obj.i16row;
	movq	-40(%rbp), %rax	# this, tmp108
	movw	%dx, (%rax)	# _1, this_15(D)->i16row
# matrix.h:382:   this->i16col = old_obj.i16col;
	movq	-48(%rbp), %rax	# old_obj, tmp109
	movzwl	2(%rax), %edx	# old_obj_17(D)->i16col, _2
# matrix.h:382:   this->i16col = old_obj.i16col;
	movq	-40(%rbp), %rax	# this, tmp110
	movw	%dx, 2(%rax)	# _2, this_15(D)->i16col
# matrix.h:384:   const float_prec *sourc = old_obj.floatData[0];
	movq	-48(%rbp), %rax	# old_obj, tmp114
	addq	$8, %rax	#, tmp113
	movq	%rax, -16(%rbp)	# tmp113, sourc
# matrix.h:385:   float_prec *desti = this->floatData[0];
	movq	-40(%rbp), %rax	# this, tmp118
	addq	$8, %rax	#, tmp117
	movq	%rax, -8(%rbp)	# tmp117, desti
# matrix.h:387:   for (int16_t _i = 0; _i < i16row; _i++) {
	movw	$0, -18(%rbp)	#, _i
# matrix.h:387:   for (int16_t _i = 0; _i < i16row; _i++) {
	jmp	.L5	#
.L6:
# matrix.h:389:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	movq	-40(%rbp), %rax	# this, tmp119
	movzwl	2(%rax), %eax	# this_15(D)->i16col, _3
# matrix.h:389:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	movswq	%ax, %rax	# _3, _4
# matrix.h:389:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	leaq	0(,%rax,8), %rdx	#, _5
	movq	-16(%rbp), %rcx	# sourc, tmp120
	movq	-8(%rbp), %rax	# desti, tmp121
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	memcpy@PLT	#
# matrix.h:390:     sourc += (MATRIX_MAXIMUM_SIZE);
	addq	$48, -16(%rbp)	#, sourc
# matrix.h:391:     desti += (MATRIX_MAXIMUM_SIZE);
	addq	$48, -8(%rbp)	#, desti
# matrix.h:387:   for (int16_t _i = 0; _i < i16row; _i++) {
	movzwl	-18(%rbp), %eax	# _i, _i.37_6
	addl	$1, %eax	#, _8
	movw	%ax, -18(%rbp)	# _8, _i
.L5:
# matrix.h:387:   for (int16_t _i = 0; _i < i16row; _i++) {
	movq	-40(%rbp), %rax	# this, tmp122
	movzwl	(%rax), %eax	# this_15(D)->i16row, _9
# matrix.h:387:   for (int16_t _i = 0; _i < i16row; _i++) {
	cmpw	%ax, -18(%rbp)	# _9, _i
	jl	.L6	#,
# matrix.h:393: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2914:
	.size	_ZN6MatrixC2ERKS_, .-_ZN6MatrixC2ERKS_
	.weak	_ZN6MatrixC1ERKS_
	.set	_ZN6MatrixC1ERKS_,_ZN6MatrixC2ERKS_
	.section	.text._ZN6MatrixaSERKS_,"axG",@progbits,_ZN6MatrixaSERKS_,comdat
	.align 2
	.weak	_ZN6MatrixaSERKS_
	.type	_ZN6MatrixaSERKS_, @function
_ZN6MatrixaSERKS_:
.LFB2916:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# obj, obj
# matrix.h:398:   this->i16row = obj.i16row;
	movq	-48(%rbp), %rax	# obj, tmp109
	movzwl	(%rax), %edx	# obj_15(D)->i16row, _1
# matrix.h:398:   this->i16row = obj.i16row;
	movq	-40(%rbp), %rax	# this, tmp110
	movw	%dx, (%rax)	# _1, this_16(D)->i16row
# matrix.h:399:   this->i16col = obj.i16col;
	movq	-48(%rbp), %rax	# obj, tmp111
	movzwl	2(%rax), %edx	# obj_15(D)->i16col, _2
# matrix.h:399:   this->i16col = obj.i16col;
	movq	-40(%rbp), %rax	# this, tmp112
	movw	%dx, 2(%rax)	# _2, this_16(D)->i16col
# matrix.h:401:   const float_prec *sourc = obj.floatData[0];
	movq	-48(%rbp), %rax	# obj, tmp116
	addq	$8, %rax	#, tmp115
	movq	%rax, -16(%rbp)	# tmp115, sourc
# matrix.h:402:   float_prec *desti = this->floatData[0];
	movq	-40(%rbp), %rax	# this, tmp120
	addq	$8, %rax	#, tmp119
	movq	%rax, -8(%rbp)	# tmp119, desti
# matrix.h:404:   for (int16_t _i = 0; _i < i16row; _i++) {
	movw	$0, -18(%rbp)	#, _i
# matrix.h:404:   for (int16_t _i = 0; _i < i16row; _i++) {
	jmp	.L8	#
.L9:
# matrix.h:406:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	movq	-40(%rbp), %rax	# this, tmp121
	movzwl	2(%rax), %eax	# this_16(D)->i16col, _3
# matrix.h:406:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	movswq	%ax, %rax	# _3, _4
# matrix.h:406:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	leaq	0(,%rax,8), %rdx	#, _5
	movq	-16(%rbp), %rcx	# sourc, tmp122
	movq	-8(%rbp), %rax	# desti, tmp123
	movq	%rcx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	memcpy@PLT	#
# matrix.h:407:     sourc += (MATRIX_MAXIMUM_SIZE);
	addq	$48, -16(%rbp)	#, sourc
# matrix.h:408:     desti += (MATRIX_MAXIMUM_SIZE);
	addq	$48, -8(%rbp)	#, desti
# matrix.h:404:   for (int16_t _i = 0; _i < i16row; _i++) {
	movzwl	-18(%rbp), %eax	# _i, _i.5_6
	addl	$1, %eax	#, _8
	movw	%ax, -18(%rbp)	# _8, _i
.L8:
# matrix.h:404:   for (int16_t _i = 0; _i < i16row; _i++) {
	movq	-40(%rbp), %rax	# this, tmp124
	movzwl	(%rax), %eax	# this_16(D)->i16row, _9
# matrix.h:404:   for (int16_t _i = 0; _i < i16row; _i++) {
	cmpw	%ax, -18(%rbp)	# _9, _i
	jl	.L9	#,
# matrix.h:411:   return *this;
	movq	-40(%rbp), %rax	# this, _22
# matrix.h:412: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2916:
	.size	_ZN6MatrixaSERKS_, .-_ZN6MatrixaSERKS_
	.section	.text._ZN6MatrixD2Ev,"axG",@progbits,_ZN6MatrixD5Ev,comdat
	.align 2
	.weak	_ZN6MatrixD2Ev
	.type	_ZN6MatrixD2Ev, @function
_ZN6MatrixD2Ev:
.LFB2918:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# matrix.h:418: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2918:
	.size	_ZN6MatrixD2Ev, .-_ZN6MatrixD2Ev
	.weak	_ZN6MatrixD1Ev
	.set	_ZN6MatrixD1Ev,_ZN6MatrixD2Ev
	.section	.rodata
	.align 8
.LC1:
	.string	"Matrix index out-of-bounds (at row evaluation)"
	.align 8
.LC2:
	.string	"Matrix index out-of-bounds (at column _column)"
	.section	.text._ZN6MatrixclEss,"axG",@progbits,_ZN6MatrixclEss,comdat
	.align 2
	.weak	_ZN6MatrixclEss
	.type	_ZN6MatrixclEss, @function
_ZN6MatrixclEss:
.LFB2920:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, %ecx	# _row, tmp104
	movl	%edx, %eax	# _col, tmp106
	movl	%ecx, %edx	# tmp104, tmp105
	movw	%dx, -12(%rbp)	# tmp105, _row
	movw	%ax, -16(%rbp)	# tmp107, _col
# matrix.h:428:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	cmpw	$0, -12(%rbp)	#, _row
	js	.L13	#,
# matrix.h:428:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	movq	-8(%rbp), %rax	# this, tmp108
	movzwl	(%rax), %eax	# this_9(D)->i16row, _1
	cmpw	%ax, -12(%rbp)	# _1, _row
	jge	.L13	#,
# matrix.h:428:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	cmpw	$5, -12(%rbp)	#, _row
	jle	.L14	#,
.L13:
# matrix.h:428:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	leaq	.LC1(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	_Z14SPEW_THE_ERRORPKc@PLT	#
.L14:
# matrix.h:430:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	cmpw	$0, -16(%rbp)	#, _col
	js	.L15	#,
# matrix.h:430:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	movq	-8(%rbp), %rax	# this, tmp110
	movzwl	2(%rax), %eax	# this_9(D)->i16col, _2
	cmpw	%ax, -16(%rbp)	# _2, _col
	jge	.L15	#,
# matrix.h:430:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	cmpw	$5, -16(%rbp)	#, _col
	jle	.L16	#,
.L15:
# matrix.h:430:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	leaq	.LC2(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	_Z14SPEW_THE_ERRORPKc@PLT	#
.L16:
# matrix.h:435:   return this->floatData[_row][_col];
	movswl	-12(%rbp), %eax	# _row, _3
# matrix.h:435:   return this->floatData[_row][_col];
	movswl	-16(%rbp), %edx	# _col, _4
# matrix.h:435:   return this->floatData[_row][_col];
	movslq	%edx, %rcx	# _4, tmp112
	movslq	%eax, %rdx	# _3, tmp113
	movq	%rdx, %rax	# tmp113, tmp114
	addq	%rax, %rax	# tmp114
	addq	%rdx, %rax	# tmp113, tmp114
	addq	%rax, %rax	# tmp115
	addq	%rcx, %rax	# tmp112, tmp116
	leaq	0(,%rax,8), %rdx	#, tmp117
	movq	-8(%rbp), %rax	# this, tmp119
	addq	%rdx, %rax	# tmp117, tmp118
	addq	$8, %rax	#, _13
# matrix.h:436: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2920:
	.size	_ZN6MatrixclEss, .-_ZN6MatrixclEss
	.section	.text._ZNK6MatrixclEss,"axG",@progbits,_ZNK6MatrixclEss,comdat
	.align 2
	.weak	_ZNK6MatrixclEss
	.type	_ZNK6MatrixclEss, @function
_ZNK6MatrixclEss:
.LFB2921:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, %ecx	# _row, tmp104
	movl	%edx, %eax	# _col, tmp106
	movl	%ecx, %edx	# tmp104, tmp105
	movw	%dx, -12(%rbp)	# tmp105, _row
	movw	%ax, -16(%rbp)	# tmp107, _col
# matrix.h:440:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	cmpw	$0, -12(%rbp)	#, _row
	js	.L19	#,
# matrix.h:440:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	movq	-8(%rbp), %rax	# this, tmp108
	movzwl	(%rax), %eax	# this_9(D)->i16row, _1
	cmpw	%ax, -12(%rbp)	# _1, _row
	jge	.L19	#,
# matrix.h:440:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	cmpw	$5, -12(%rbp)	#, _row
	jle	.L20	#,
.L19:
# matrix.h:440:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	leaq	.LC1(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	_Z14SPEW_THE_ERRORPKc@PLT	#
.L20:
# matrix.h:442:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	cmpw	$0, -16(%rbp)	#, _col
	js	.L21	#,
# matrix.h:442:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	movq	-8(%rbp), %rax	# this, tmp110
	movzwl	2(%rax), %eax	# this_9(D)->i16col, _2
	cmpw	%ax, -16(%rbp)	# _2, _col
	jge	.L21	#,
# matrix.h:442:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	cmpw	$5, -16(%rbp)	#, _col
	jle	.L22	#,
.L21:
# matrix.h:442:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	leaq	.LC2(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	_Z14SPEW_THE_ERRORPKc@PLT	#
.L22:
# matrix.h:447:   return this->floatData[_row][_col];
	movswl	-12(%rbp), %eax	# _row, _3
# matrix.h:447:   return this->floatData[_row][_col];
	movswl	-16(%rbp), %edx	# _col, _4
# matrix.h:447:   return this->floatData[_row][_col];
	movq	-8(%rbp), %rcx	# this, tmp112
	movslq	%edx, %rsi	# _4, tmp113
	movslq	%eax, %rdx	# _3, tmp114
	movq	%rdx, %rax	# tmp114, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# tmp114, tmp115
	addq	%rax, %rax	# tmp116
	addq	%rsi, %rax	# tmp113, tmp117
	movsd	8(%rcx,%rax,8), %xmm0	# this_9(D)->floatData[_3][_4], _13
# matrix.h:448: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2921:
	.size	_ZNK6MatrixclEss, .-_ZNK6MatrixclEss
	.section	.text._ZN6Matrix14bMatrixIsValidEv,"axG",@progbits,_ZN6Matrix14bMatrixIsValidEv,comdat
	.align 2
	.weak	_ZN6Matrix14bMatrixIsValidEv
	.type	_ZN6Matrix14bMatrixIsValidEv, @function
_ZN6Matrix14bMatrixIsValidEv:
.LFB2926:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# matrix.h:500:   if ((this->i16row > 0) && (this->i16row <= MATRIX_MAXIMUM_SIZE) &&
	movq	-8(%rbp), %rax	# this, tmp104
	movzwl	(%rax), %eax	# this_7(D)->i16row, _1
# matrix.h:500:   if ((this->i16row > 0) && (this->i16row <= MATRIX_MAXIMUM_SIZE) &&
	testw	%ax, %ax	# _1
	jle	.L25	#,
# matrix.h:500:   if ((this->i16row > 0) && (this->i16row <= MATRIX_MAXIMUM_SIZE) &&
	movq	-8(%rbp), %rax	# this, tmp105
	movzwl	(%rax), %eax	# this_7(D)->i16row, _2
# matrix.h:500:   if ((this->i16row > 0) && (this->i16row <= MATRIX_MAXIMUM_SIZE) &&
	cmpw	$6, %ax	#, _2
	jg	.L25	#,
# matrix.h:501:       (this->i16col > 0) && (this->i16col <= MATRIX_MAXIMUM_SIZE)) {
	movq	-8(%rbp), %rax	# this, tmp106
	movzwl	2(%rax), %eax	# this_7(D)->i16col, _3
# matrix.h:500:   if ((this->i16row > 0) && (this->i16row <= MATRIX_MAXIMUM_SIZE) &&
	testw	%ax, %ax	# _3
	jle	.L25	#,
# matrix.h:501:       (this->i16col > 0) && (this->i16col <= MATRIX_MAXIMUM_SIZE)) {
	movq	-8(%rbp), %rax	# this, tmp107
	movzwl	2(%rax), %eax	# this_7(D)->i16col, _4
# matrix.h:501:       (this->i16col > 0) && (this->i16col <= MATRIX_MAXIMUM_SIZE)) {
	cmpw	$6, %ax	#, _4
	jg	.L25	#,
# matrix.h:502:     return true;
	movl	$1, %eax	#, _5
	jmp	.L26	#
.L25:
# matrix.h:504:     return false;
	movl	$0, %eax	#, _5
.L26:
# matrix.h:506: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2926:
	.size	_ZN6Matrix14bMatrixIsValidEv, .-_ZN6Matrix14bMatrixIsValidEv
	.section	.text._ZN6Matrix17vSetMatrixInvalidEv,"axG",@progbits,_ZN6Matrix17vSetMatrixInvalidEv,comdat
	.align 2
	.weak	_ZN6Matrix17vSetMatrixInvalidEv
	.type	_ZN6Matrix17vSetMatrixInvalidEv, @function
_ZN6Matrix17vSetMatrixInvalidEv:
.LFB2927:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# matrix.h:509:   this->i16row = -1;
	movq	-8(%rbp), %rax	# this, tmp98
	movw	$-1, (%rax)	#, this_2(D)->i16row
# matrix.h:510:   this->i16col = -1;
	movq	-8(%rbp), %rax	# this, tmp99
	movw	$-1, 2(%rax)	#, this_2(D)->i16col
# matrix.h:511: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2927:
	.size	_ZN6Matrix17vSetMatrixInvalidEv, .-_ZN6Matrix17vSetMatrixInvalidEv
	.section	.text._ZNK6MatrixplERKS_,"axG",@progbits,_ZNK6MatrixplERKS_,comdat
	.align 2
	.weak	_ZNK6MatrixplERKS_
	.type	_ZNK6MatrixplERKS_, @function
_ZNK6MatrixplERKS_:
.LFB2939:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2939
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -48(%rbp)	# this, this
	movq	%rdx, -56(%rbp)	# _matAdd, _matAdd
# matrix.h:640:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movq	-48(%rbp), %rax	# this, tmp128
	movzwl	2(%rax), %eax	# this_35(D)->i16col, _1
# matrix.h:640:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movswl	%ax, %edx	# _1, _2
# matrix.h:640:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movq	-48(%rbp), %rax	# this, tmp129
	movzwl	(%rax), %eax	# this_35(D)->i16row, _3
# matrix.h:640:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movswl	%ax, %esi	# _3, _4
	movq	-40(%rbp), %rax	# <retval>, tmp130
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp130,
.LEHB0:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE0:
# matrix.h:641:   if ((this->i16row != _matAdd.i16row) || (this->i16col != _matAdd.i16col)) {
	movq	-48(%rbp), %rax	# this, tmp131
	movzwl	(%rax), %edx	# this_35(D)->i16row, _5
# matrix.h:641:   if ((this->i16row != _matAdd.i16row) || (this->i16col != _matAdd.i16col)) {
	movq	-56(%rbp), %rax	# _matAdd, tmp132
	movzwl	(%rax), %eax	# _matAdd_38(D)->i16row, _6
# matrix.h:641:   if ((this->i16row != _matAdd.i16row) || (this->i16col != _matAdd.i16col)) {
	cmpw	%ax, %dx	# _6, _5
	jne	.L29	#,
# matrix.h:641:   if ((this->i16row != _matAdd.i16row) || (this->i16col != _matAdd.i16col)) {
	movq	-48(%rbp), %rax	# this, tmp133
	movzwl	2(%rax), %edx	# this_35(D)->i16col, _7
# matrix.h:641:   if ((this->i16row != _matAdd.i16row) || (this->i16col != _matAdd.i16col)) {
	movq	-56(%rbp), %rax	# _matAdd, tmp134
	movzwl	2(%rax), %eax	# _matAdd_38(D)->i16col, _8
# matrix.h:641:   if ((this->i16row != _matAdd.i16row) || (this->i16col != _matAdd.i16col)) {
	cmpw	%ax, %dx	# _8, _7
	je	.L30	#,
.L29:
# matrix.h:642:     _outp.vSetMatrixInvalid();
	movq	-40(%rbp), %rax	# <retval>, tmp135
	movq	%rax, %rdi	# tmp135,
	call	_ZN6Matrix17vSetMatrixInvalidEv	#
# matrix.h:643:     return _outp;
	jmp	.L38	#
.L30:
# matrix.h:646:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movw	$0, -20(%rbp)	#, _i
# matrix.h:646:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	jmp	.L32	#
.L35:
# matrix.h:647:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movw	$0, -18(%rbp)	#, _j
# matrix.h:647:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	jmp	.L33	#
.L34:
# matrix.h:648:       _outp(_i, _j) = (*this)(_i, _j) + _matAdd(_i, _j);
	movswl	-18(%rbp), %edx	# _j, _9
	movswl	-20(%rbp), %ecx	# _i, _10
	movq	-48(%rbp), %rax	# this, tmp136
	movl	%ecx, %esi	# _10,
	movq	%rax, %rdi	# tmp136,
.LEHB1:
	call	_ZNK6MatrixclEss	#
	movsd	%xmm0, -64(%rbp)	#, %sfp
# matrix.h:648:       _outp(_i, _j) = (*this)(_i, _j) + _matAdd(_i, _j);
	movswl	-18(%rbp), %edx	# _j, _12
	movswl	-20(%rbp), %ecx	# _i, _13
	movq	-56(%rbp), %rax	# _matAdd, tmp137
	movl	%ecx, %esi	# _13,
	movq	%rax, %rdi	# tmp137,
	call	_ZNK6MatrixclEss	#
# matrix.h:648:       _outp(_i, _j) = (*this)(_i, _j) + _matAdd(_i, _j);
	movapd	%xmm0, %xmm1	# _14, _14
	addsd	-64(%rbp), %xmm1	# %sfp, _14
	movsd	%xmm1, -64(%rbp)	# _14, %sfp
# matrix.h:648:       _outp(_i, _j) = (*this)(_i, _j) + _matAdd(_i, _j);
	movswl	-18(%rbp), %edx	# _j, _16
	movswl	-20(%rbp), %ecx	# _i, _17
	movq	-40(%rbp), %rax	# <retval>, tmp138
	movl	%ecx, %esi	# _17,
	movq	%rax, %rdi	# tmp138,
	call	_ZN6MatrixclEss	#
.LEHE1:
# matrix.h:648:       _outp(_i, _j) = (*this)(_i, _j) + _matAdd(_i, _j);
	movsd	-64(%rbp), %xmm1	# %sfp, _15
	movsd	%xmm1, (%rax)	# _15, *_18
# matrix.h:647:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movzwl	-18(%rbp), %eax	# _j, _j.49_19
	addl	$1, %eax	#, _21
	movw	%ax, -18(%rbp)	# _21, _j
.L33:
# matrix.h:647:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movq	-48(%rbp), %rax	# this, tmp139
	movzwl	2(%rax), %eax	# this_35(D)->i16col, _22
# matrix.h:647:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	cmpw	%ax, -18(%rbp)	# _22, _j
	jl	.L34	#,
# matrix.h:646:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movzwl	-20(%rbp), %eax	# _i, _i.51_23
	addl	$1, %eax	#, _25
	movw	%ax, -20(%rbp)	# _25, _i
.L32:
# matrix.h:646:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movq	-48(%rbp), %rax	# this, tmp140
	movzwl	(%rax), %eax	# this_35(D)->i16row, _26
# matrix.h:646:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	cmpw	%ax, -20(%rbp)	# _26, _i
	jl	.L35	#,
# matrix.h:651:   return _outp;
	jmp	.L38	#
.L37:
# matrix.h:652: }
	movq	%rax, %rbx	#, tmp142
	movq	-40(%rbp), %rax	# <retval>, tmp141
	movq	%rax, %rdi	# tmp141,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp142, D.77806
	movq	%rax, %rdi	# D.77806,
.LEHB2:
	call	_Unwind_Resume@PLT	#
.LEHE2:
.L38:
	movq	-40(%rbp), %rax	# <retval>,
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2939:
	.section	.gcc_except_table._ZNK6MatrixplERKS_,"aG",@progbits,_ZNK6MatrixplERKS_,comdat
.LLSDA2939:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2939-.LLSDACSB2939
.LLSDACSB2939:
	.uleb128 .LEHB0-.LFB2939
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2939
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L37-.LFB2939
	.uleb128 0
	.uleb128 .LEHB2-.LFB2939
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2939:
	.section	.text._ZNK6MatrixplERKS_,"axG",@progbits,_ZNK6MatrixplERKS_,comdat
	.size	_ZNK6MatrixplERKS_, .-_ZNK6MatrixplERKS_
	.section	.text._ZNK6MatrixmiERKS_,"axG",@progbits,_ZNK6MatrixmiERKS_,comdat
	.align 2
	.weak	_ZNK6MatrixmiERKS_
	.type	_ZNK6MatrixmiERKS_, @function
_ZNK6MatrixmiERKS_:
.LFB2940:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2940
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -48(%rbp)	# this, this
	movq	%rdx, -56(%rbp)	# _matSub, _matSub
# matrix.h:655:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movq	-48(%rbp), %rax	# this, tmp128
	movzwl	2(%rax), %eax	# this_35(D)->i16col, _1
# matrix.h:655:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movswl	%ax, %edx	# _1, _2
# matrix.h:655:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movq	-48(%rbp), %rax	# this, tmp129
	movzwl	(%rax), %eax	# this_35(D)->i16row, _3
# matrix.h:655:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movswl	%ax, %esi	# _3, _4
	movq	-40(%rbp), %rax	# <retval>, tmp130
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp130,
.LEHB3:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE3:
# matrix.h:656:   if ((this->i16row != _matSub.i16row) || (this->i16col != _matSub.i16col)) {
	movq	-48(%rbp), %rax	# this, tmp131
	movzwl	(%rax), %edx	# this_35(D)->i16row, _5
# matrix.h:656:   if ((this->i16row != _matSub.i16row) || (this->i16col != _matSub.i16col)) {
	movq	-56(%rbp), %rax	# _matSub, tmp132
	movzwl	(%rax), %eax	# _matSub_38(D)->i16row, _6
# matrix.h:656:   if ((this->i16row != _matSub.i16row) || (this->i16col != _matSub.i16col)) {
	cmpw	%ax, %dx	# _6, _5
	jne	.L40	#,
# matrix.h:656:   if ((this->i16row != _matSub.i16row) || (this->i16col != _matSub.i16col)) {
	movq	-48(%rbp), %rax	# this, tmp133
	movzwl	2(%rax), %edx	# this_35(D)->i16col, _7
# matrix.h:656:   if ((this->i16row != _matSub.i16row) || (this->i16col != _matSub.i16col)) {
	movq	-56(%rbp), %rax	# _matSub, tmp134
	movzwl	2(%rax), %eax	# _matSub_38(D)->i16col, _8
# matrix.h:656:   if ((this->i16row != _matSub.i16row) || (this->i16col != _matSub.i16col)) {
	cmpw	%ax, %dx	# _8, _7
	je	.L41	#,
.L40:
# matrix.h:657:     _outp.vSetMatrixInvalid();
	movq	-40(%rbp), %rax	# <retval>, tmp135
	movq	%rax, %rdi	# tmp135,
	call	_ZN6Matrix17vSetMatrixInvalidEv	#
# matrix.h:658:     return _outp;
	jmp	.L49	#
.L41:
# matrix.h:661:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movw	$0, -20(%rbp)	#, _i
# matrix.h:661:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	jmp	.L43	#
.L46:
# matrix.h:662:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movw	$0, -18(%rbp)	#, _j
# matrix.h:662:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	jmp	.L44	#
.L45:
# matrix.h:663:       _outp(_i, _j) = (*this)(_i, _j) - _matSub(_i, _j);
	movswl	-18(%rbp), %edx	# _j, _9
	movswl	-20(%rbp), %ecx	# _i, _10
	movq	-48(%rbp), %rax	# this, tmp136
	movl	%ecx, %esi	# _10,
	movq	%rax, %rdi	# tmp136,
.LEHB4:
	call	_ZNK6MatrixclEss	#
	movq	%xmm0, %rbx	#, _11
# matrix.h:663:       _outp(_i, _j) = (*this)(_i, _j) - _matSub(_i, _j);
	movswl	-18(%rbp), %edx	# _j, _12
	movswl	-20(%rbp), %ecx	# _i, _13
	movq	-56(%rbp), %rax	# _matSub, tmp137
	movl	%ecx, %esi	# _13,
	movq	%rax, %rdi	# tmp137,
	call	_ZNK6MatrixclEss	#
# matrix.h:663:       _outp(_i, _j) = (*this)(_i, _j) - _matSub(_i, _j);
	movq	%rbx, %xmm1	# _11, _11
	subsd	%xmm0, %xmm1	# _14, _11
	movsd	%xmm1, -64(%rbp)	# _11, %sfp
# matrix.h:663:       _outp(_i, _j) = (*this)(_i, _j) - _matSub(_i, _j);
	movswl	-18(%rbp), %edx	# _j, _16
	movswl	-20(%rbp), %ecx	# _i, _17
	movq	-40(%rbp), %rax	# <retval>, tmp138
	movl	%ecx, %esi	# _17,
	movq	%rax, %rdi	# tmp138,
	call	_ZN6MatrixclEss	#
.LEHE4:
# matrix.h:663:       _outp(_i, _j) = (*this)(_i, _j) - _matSub(_i, _j);
	movsd	-64(%rbp), %xmm1	# %sfp, _15
	movsd	%xmm1, (%rax)	# _15, *_18
# matrix.h:662:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movzwl	-18(%rbp), %eax	# _j, _j.53_19
	addl	$1, %eax	#, _21
	movw	%ax, -18(%rbp)	# _21, _j
.L44:
# matrix.h:662:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movq	-48(%rbp), %rax	# this, tmp139
	movzwl	2(%rax), %eax	# this_35(D)->i16col, _22
# matrix.h:662:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	cmpw	%ax, -18(%rbp)	# _22, _j
	jl	.L45	#,
# matrix.h:661:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movzwl	-20(%rbp), %eax	# _i, _i.55_23
	addl	$1, %eax	#, _25
	movw	%ax, -20(%rbp)	# _25, _i
.L43:
# matrix.h:661:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movq	-48(%rbp), %rax	# this, tmp140
	movzwl	(%rax), %eax	# this_35(D)->i16row, _26
# matrix.h:661:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	cmpw	%ax, -20(%rbp)	# _26, _i
	jl	.L46	#,
# matrix.h:666:   return _outp;
	jmp	.L49	#
.L48:
# matrix.h:667: }
	movq	%rax, %rbx	#, tmp142
	movq	-40(%rbp), %rax	# <retval>, tmp141
	movq	%rax, %rdi	# tmp141,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp142, D.77809
	movq	%rax, %rdi	# D.77809,
.LEHB5:
	call	_Unwind_Resume@PLT	#
.LEHE5:
.L49:
	movq	-40(%rbp), %rax	# <retval>,
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2940:
	.section	.gcc_except_table._ZNK6MatrixmiERKS_,"aG",@progbits,_ZNK6MatrixmiERKS_,comdat
.LLSDA2940:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2940-.LLSDACSB2940
.LLSDACSB2940:
	.uleb128 .LEHB3-.LFB2940
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2940
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L48-.LFB2940
	.uleb128 0
	.uleb128 .LEHB5-.LFB2940
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2940:
	.section	.text._ZNK6MatrixmiERKS_,"axG",@progbits,_ZNK6MatrixmiERKS_,comdat
	.size	_ZNK6MatrixmiERKS_, .-_ZNK6MatrixmiERKS_
	.section	.text._ZNK6MatrixmlERKS_,"axG",@progbits,_ZNK6MatrixmlERKS_,comdat
	.align 2
	.weak	_ZNK6MatrixmlERKS_
	.type	_ZNK6MatrixmlERKS_, @function
_ZNK6MatrixmlERKS_:
.LFB2941:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2941
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -48(%rbp)	# this, this
	movq	%rdx, -56(%rbp)	# _matMul, _matMul
# matrix.h:670:   Matrix _outp(this->i16row, _matMul.i16col, NoInitMatZero);
	movq	-56(%rbp), %rax	# _matMul, tmp135
	movzwl	2(%rax), %eax	# _matMul_42(D)->i16col, _1
# matrix.h:670:   Matrix _outp(this->i16row, _matMul.i16col, NoInitMatZero);
	movswl	%ax, %edx	# _1, _2
# matrix.h:670:   Matrix _outp(this->i16row, _matMul.i16col, NoInitMatZero);
	movq	-48(%rbp), %rax	# this, tmp136
	movzwl	(%rax), %eax	# this_43(D)->i16row, _3
# matrix.h:670:   Matrix _outp(this->i16row, _matMul.i16col, NoInitMatZero);
	movswl	%ax, %esi	# _3, _4
	movq	-40(%rbp), %rax	# <retval>, tmp137
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp137,
.LEHB6:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE6:
# matrix.h:671:   if ((this->i16col != _matMul.i16row)) {
	movq	-48(%rbp), %rax	# this, tmp138
	movzwl	2(%rax), %edx	# this_43(D)->i16col, _5
# matrix.h:671:   if ((this->i16col != _matMul.i16row)) {
	movq	-56(%rbp), %rax	# _matMul, tmp139
	movzwl	(%rax), %eax	# _matMul_42(D)->i16row, _6
# matrix.h:671:   if ((this->i16col != _matMul.i16row)) {
	cmpw	%ax, %dx	# _6, _5
	je	.L51	#,
# matrix.h:672:     _outp.vSetMatrixInvalid();
	movq	-40(%rbp), %rax	# <retval>, tmp140
	movq	%rax, %rdi	# tmp140,
	call	_ZN6Matrix17vSetMatrixInvalidEv	#
# matrix.h:673:     return _outp;
	jmp	.L61	#
.L51:
# matrix.h:676:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movw	$0, -22(%rbp)	#, _i
# matrix.h:676:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	jmp	.L53	#
.L58:
# matrix.h:677:     for (int16_t _j = 0; _j < _matMul.i16col; _j++) {
	movw	$0, -20(%rbp)	#, _j
# matrix.h:677:     for (int16_t _j = 0; _j < _matMul.i16col; _j++) {
	jmp	.L54	#
.L57:
# matrix.h:678:       _outp(_i, _j) = 0.0;
	movswl	-20(%rbp), %edx	# _j, _7
	movswl	-22(%rbp), %ecx	# _i, _8
	movq	-40(%rbp), %rax	# <retval>, tmp141
	movl	%ecx, %esi	# _8,
	movq	%rax, %rdi	# tmp141,
.LEHB7:
	call	_ZN6MatrixclEss	#
# matrix.h:678:       _outp(_i, _j) = 0.0;
	pxor	%xmm0, %xmm0	# tmp142
	movsd	%xmm0, (%rax)	# tmp142, *_9
# matrix.h:679:       for (int16_t _k = 0; _k < this->i16col; _k++) {
	movw	$0, -18(%rbp)	#, _k
# matrix.h:679:       for (int16_t _k = 0; _k < this->i16col; _k++) {
	jmp	.L55	#
.L56:
# matrix.h:680:         _outp(_i, _j) += ((*this)(_i, _k) * _matMul(_k, _j));
	movswl	-18(%rbp), %edx	# _k, _10
	movswl	-22(%rbp), %ecx	# _i, _11
	movq	-48(%rbp), %rax	# this, tmp143
	movl	%ecx, %esi	# _11,
	movq	%rax, %rdi	# tmp143,
	call	_ZNK6MatrixclEss	#
	movsd	%xmm0, -64(%rbp)	#, %sfp
# matrix.h:680:         _outp(_i, _j) += ((*this)(_i, _k) * _matMul(_k, _j));
	movswl	-20(%rbp), %edx	# _j, _13
	movswl	-18(%rbp), %ecx	# _k, _14
	movq	-56(%rbp), %rax	# _matMul, tmp144
	movl	%ecx, %esi	# _14,
	movq	%rax, %rdi	# tmp144,
	call	_ZNK6MatrixclEss	#
# matrix.h:680:         _outp(_i, _j) += ((*this)(_i, _k) * _matMul(_k, _j));
	movapd	%xmm0, %xmm1	# _15, _15
	mulsd	-64(%rbp), %xmm1	# %sfp, _15
	movsd	%xmm1, -64(%rbp)	# _15, %sfp
# matrix.h:680:         _outp(_i, _j) += ((*this)(_i, _k) * _matMul(_k, _j));
	movswl	-20(%rbp), %edx	# _j, _16
	movswl	-22(%rbp), %ecx	# _i, _17
	movq	-40(%rbp), %rax	# <retval>, tmp145
	movl	%ecx, %esi	# _17,
	movq	%rax, %rdi	# tmp145,
	call	_ZN6MatrixclEss	#
.LEHE7:
# matrix.h:680:         _outp(_i, _j) += ((*this)(_i, _k) * _matMul(_k, _j));
	movsd	(%rax), %xmm0	# *_62, _18
# matrix.h:680:         _outp(_i, _j) += ((*this)(_i, _k) * _matMul(_k, _j));
	addsd	-64(%rbp), %xmm0	# %sfp, _19
	movsd	%xmm0, (%rax)	# _19, *_62
# matrix.h:679:       for (int16_t _k = 0; _k < this->i16col; _k++) {
	movzwl	-18(%rbp), %eax	# _k, _k.57_20
	addl	$1, %eax	#, _22
	movw	%ax, -18(%rbp)	# _22, _k
.L55:
# matrix.h:679:       for (int16_t _k = 0; _k < this->i16col; _k++) {
	movq	-48(%rbp), %rax	# this, tmp146
	movzwl	2(%rax), %eax	# this_43(D)->i16col, _23
# matrix.h:679:       for (int16_t _k = 0; _k < this->i16col; _k++) {
	cmpw	%ax, -18(%rbp)	# _23, _k
	jl	.L56	#,
# matrix.h:677:     for (int16_t _j = 0; _j < _matMul.i16col; _j++) {
	movzwl	-20(%rbp), %eax	# _j, _j.59_24
	addl	$1, %eax	#, _26
	movw	%ax, -20(%rbp)	# _26, _j
.L54:
# matrix.h:677:     for (int16_t _j = 0; _j < _matMul.i16col; _j++) {
	movq	-56(%rbp), %rax	# _matMul, tmp147
	movzwl	2(%rax), %eax	# _matMul_42(D)->i16col, _27
# matrix.h:677:     for (int16_t _j = 0; _j < _matMul.i16col; _j++) {
	cmpw	%ax, -20(%rbp)	# _27, _j
	jl	.L57	#,
# matrix.h:676:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movzwl	-22(%rbp), %eax	# _i, _i.61_28
	addl	$1, %eax	#, _30
	movw	%ax, -22(%rbp)	# _30, _i
.L53:
# matrix.h:676:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movq	-48(%rbp), %rax	# this, tmp148
	movzwl	(%rax), %eax	# this_43(D)->i16row, _31
# matrix.h:676:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	cmpw	%ax, -22(%rbp)	# _31, _i
	jl	.L58	#,
# matrix.h:684:   return _outp;
	jmp	.L61	#
.L60:
# matrix.h:685: }
	movq	%rax, %rbx	#, tmp150
	movq	-40(%rbp), %rax	# <retval>, tmp149
	movq	%rax, %rdi	# tmp149,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp150, D.77811
	movq	%rax, %rdi	# D.77811,
.LEHB8:
	call	_Unwind_Resume@PLT	#
.LEHE8:
.L61:
	movq	-40(%rbp), %rax	# <retval>,
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2941:
	.section	.gcc_except_table._ZNK6MatrixmlERKS_,"aG",@progbits,_ZNK6MatrixmlERKS_,comdat
.LLSDA2941:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2941-.LLSDACSB2941
.LLSDACSB2941:
	.uleb128 .LEHB6-.LFB2941
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2941
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L60-.LFB2941
	.uleb128 0
	.uleb128 .LEHB8-.LFB2941
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2941:
	.section	.text._ZNK6MatrixmlERKS_,"axG",@progbits,_ZNK6MatrixmlERKS_,comdat
	.size	_ZNK6MatrixmlERKS_, .-_ZNK6MatrixmlERKS_
	.section	.text._ZN6Matrix22vRoundingElementToZeroEss,"axG",@progbits,_ZN6Matrix22vRoundingElementToZeroEss,comdat
	.align 2
	.weak	_ZN6Matrix22vRoundingElementToZeroEss
	.type	_ZN6Matrix22vRoundingElementToZeroEss, @function
_ZN6Matrix22vRoundingElementToZeroEss:
.LFB2942:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, %ecx	# _i, tmp107
	movl	%edx, %eax	# _j, tmp109
	movl	%ecx, %edx	# tmp107, tmp108
	movw	%dx, -12(%rbp)	# tmp108, _i
	movw	%ax, -16(%rbp)	# tmp110, _j
# matrix.h:693:   if (fabs((*this)(_i, _j)) < float_prec(float_prec_ZERO_ECO)) {
	movswl	-16(%rbp), %edx	# _j, _1
	movswl	-12(%rbp), %ecx	# _i, _2
	movq	-8(%rbp), %rax	# this, tmp111
	movl	%ecx, %esi	# _2,
	movq	%rax, %rdi	# tmp111,
	call	_ZN6MatrixclEss	#
# matrix.h:693:   if (fabs((*this)(_i, _j)) < float_prec(float_prec_ZERO_ECO)) {
	movsd	(%rax), %xmm0	# *_3, _4
# matrix.h:693:   if (fabs((*this)(_i, _j)) < float_prec(float_prec_ZERO_ECO)) {
	movq	.LC3(%rip), %xmm1	#, tmp112
	andpd	%xmm0, %xmm1	# _4, _5
# matrix.h:693:   if (fabs((*this)(_i, _j)) < float_prec(float_prec_ZERO_ECO)) {
	movsd	.LC4(%rip), %xmm0	#, tmp113
	comisd	%xmm1, %xmm0	# _5, tmp113
	seta	%al	#, retval.44_16
# matrix.h:693:   if (fabs((*this)(_i, _j)) < float_prec(float_prec_ZERO_ECO)) {
	testb	%al, %al	# retval.44_16
	je	.L64	#,
# matrix.h:694:     (*this)(_i, _j) = 0.0;
	movswl	-16(%rbp), %edx	# _j, _6
	movswl	-12(%rbp), %ecx	# _i, _7
	movq	-8(%rbp), %rax	# this, tmp114
	movl	%ecx, %esi	# _7,
	movq	%rax, %rdi	# tmp114,
	call	_ZN6MatrixclEss	#
# matrix.h:694:     (*this)(_i, _j) = 0.0;
	pxor	%xmm0, %xmm0	# tmp115
	movsd	%xmm0, (%rax)	# tmp115, *_8
.L64:
# matrix.h:696: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2942:
	.size	_ZN6Matrix22vRoundingElementToZeroEss, .-_ZN6Matrix22vRoundingElementToZeroEss
	.section	.text._ZN6Matrix11vSetHomogenEd,"axG",@progbits,_ZN6Matrix11vSetHomogenEd,comdat
	.align 2
	.weak	_ZN6Matrix11vSetHomogenEd
	.type	_ZN6Matrix11vSetHomogenEd, @function
_ZN6Matrix11vSetHomogenEd:
.LFB2944:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movsd	%xmm0, -32(%rbp)	# _val, _val
# matrix.h:710:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movw	$0, -4(%rbp)	#, _i
# matrix.h:710:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	jmp	.L66	#
.L69:
# matrix.h:711:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movw	$0, -2(%rbp)	#, _j
# matrix.h:711:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	jmp	.L67	#
.L68:
# matrix.h:712:       (*this)(_i, _j) = _val;
	movsd	-32(%rbp), %xmm1	# _val, _val.0_1
	movsd	%xmm1, -40(%rbp)	# _val.0_1, %sfp
# matrix.h:712:       (*this)(_i, _j) = _val;
	movswl	-2(%rbp), %edx	# _j, _2
	movswl	-4(%rbp), %ecx	# _i, _3
	movq	-24(%rbp), %rax	# this, tmp110
	movl	%ecx, %esi	# _3,
	movq	%rax, %rdi	# tmp110,
	call	_ZN6MatrixclEss	#
# matrix.h:712:       (*this)(_i, _j) = _val;
	movsd	-40(%rbp), %xmm1	# %sfp, _val.0_1
	movsd	%xmm1, (%rax)	# _val.0_1, *_4
# matrix.h:711:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movzwl	-2(%rbp), %eax	# _j, _j.1_5
	addl	$1, %eax	#, _7
	movw	%ax, -2(%rbp)	# _7, _j
.L67:
# matrix.h:711:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movq	-24(%rbp), %rax	# this, tmp111
	movzwl	2(%rax), %eax	# this_19(D)->i16col, _8
# matrix.h:711:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	cmpw	%ax, -2(%rbp)	# _8, _j
	jl	.L68	#,
# matrix.h:710:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movzwl	-4(%rbp), %eax	# _i, _i.3_9
	addl	$1, %eax	#, _11
	movw	%ax, -4(%rbp)	# _11, _i
.L66:
# matrix.h:710:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movq	-24(%rbp), %rax	# this, tmp112
	movzwl	(%rax), %eax	# this_19(D)->i16row, _12
# matrix.h:710:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	cmpw	%ax, -4(%rbp)	# _12, _i
	jl	.L69	#,
# matrix.h:715: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2944:
	.size	_ZN6Matrix11vSetHomogenEd, .-_ZN6Matrix11vSetHomogenEd
	.section	.text._ZN6Matrix8vSetDiagEd,"axG",@progbits,_ZN6Matrix8vSetDiagEd,comdat
	.align 2
	.weak	_ZN6Matrix8vSetDiagEd
	.type	_ZN6Matrix8vSetDiagEd, @function
_ZN6Matrix8vSetDiagEd:
.LFB2947:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movsd	%xmm0, -32(%rbp)	# _val, _val
# matrix.h:729:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movw	$0, -4(%rbp)	#, _i
# matrix.h:729:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	jmp	.L71	#
.L76:
# matrix.h:730:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movw	$0, -2(%rbp)	#, _j
# matrix.h:730:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	jmp	.L72	#
.L75:
# matrix.h:731:       if (_i == _j) {
	movzwl	-4(%rbp), %eax	# _i, tmp113
	cmpw	-2(%rbp), %ax	# _j, tmp113
	jne	.L73	#,
# matrix.h:732:         (*this)(_i, _j) = _val;
	movsd	-32(%rbp), %xmm1	# _val, _val.39_1
	movsd	%xmm1, -40(%rbp)	# _val.39_1, %sfp
# matrix.h:732:         (*this)(_i, _j) = _val;
	movswl	-2(%rbp), %edx	# _j, _2
	movswl	-4(%rbp), %ecx	# _i, _3
	movq	-24(%rbp), %rax	# this, tmp114
	movl	%ecx, %esi	# _3,
	movq	%rax, %rdi	# tmp114,
	call	_ZN6MatrixclEss	#
# matrix.h:732:         (*this)(_i, _j) = _val;
	movsd	-40(%rbp), %xmm1	# %sfp, _val.39_1
	movsd	%xmm1, (%rax)	# _val.39_1, *_4
	jmp	.L74	#
.L73:
# matrix.h:734:         (*this)(_i, _j) = 0.0;
	movswl	-2(%rbp), %edx	# _j, _5
	movswl	-4(%rbp), %ecx	# _i, _6
	movq	-24(%rbp), %rax	# this, tmp115
	movl	%ecx, %esi	# _6,
	movq	%rax, %rdi	# tmp115,
	call	_ZN6MatrixclEss	#
# matrix.h:734:         (*this)(_i, _j) = 0.0;
	pxor	%xmm0, %xmm0	# tmp116
	movsd	%xmm0, (%rax)	# tmp116, *_7
.L74:
# matrix.h:730:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movzwl	-2(%rbp), %eax	# _j, _j.40_8
	addl	$1, %eax	#, _10
	movw	%ax, -2(%rbp)	# _10, _j
.L72:
# matrix.h:730:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movq	-24(%rbp), %rax	# this, tmp117
	movzwl	2(%rax), %eax	# this_23(D)->i16col, _11
# matrix.h:730:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	cmpw	%ax, -2(%rbp)	# _11, _j
	jl	.L75	#,
# matrix.h:729:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movzwl	-4(%rbp), %eax	# _i, _i.42_12
	addl	$1, %eax	#, _14
	movw	%ax, -4(%rbp)	# _14, _i
.L71:
# matrix.h:729:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movq	-24(%rbp), %rax	# this, tmp118
	movzwl	(%rax), %eax	# this_23(D)->i16row, _15
# matrix.h:729:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	cmpw	%ax, -4(%rbp)	# _15, _i
	jl	.L76	#,
# matrix.h:738: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2947:
	.size	_ZN6Matrix8vSetDiagEd, .-_ZN6Matrix8vSetDiagEd
	.section	.text._ZN6Matrix12vSetIdentityEv,"axG",@progbits,_ZN6Matrix12vSetIdentityEv,comdat
	.align 2
	.weak	_ZN6Matrix12vSetIdentityEv
	.type	_ZN6Matrix12vSetIdentityEv, @function
_ZN6Matrix12vSetIdentityEv:
.LFB2948:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# matrix.h:740: inline void Matrix::vSetIdentity(void) { this->vSetDiag(1.0); }
	movq	.LC5(%rip), %rdx	#, tmp98
	movq	-8(%rbp), %rax	# this, tmp99
	movq	%rdx, %xmm0	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	_ZN6Matrix8vSetDiagEd	#
# matrix.h:740: inline void Matrix::vSetIdentity(void) { this->vSetDiag(1.0); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2948:
	.size	_ZN6Matrix12vSetIdentityEv, .-_ZN6Matrix12vSetIdentityEv
	.section	.text._Z11MatIdentitys,"axG",@progbits,_Z11MatIdentitys,comdat
	.weak	_Z11MatIdentitys
	.type	_Z11MatIdentitys, @function
_Z11MatIdentitys:
.LFB2949:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2949
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# .result_ptr, .result_ptr
	movl	%esi, %eax	# _i16size, tmp103
	movw	%ax, -28(%rbp)	# tmp104, _i16size
# matrix.h:743:   Matrix _outp(_i16size, _i16size, Matrix::NoInitMatZero);
	movswl	-28(%rbp), %edx	# _i16size, _1
	movswl	-28(%rbp), %esi	# _i16size, _2
	movq	-24(%rbp), %rax	# <retval>, tmp105
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp105,
.LEHB9:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE9:
# matrix.h:744:   _outp.vSetDiag(1.0);
	movq	.LC5(%rip), %rdx	#, tmp106
	movq	-24(%rbp), %rax	# <retval>, tmp107
	movq	%rdx, %xmm0	# tmp106,
	movq	%rax, %rdi	# tmp107,
.LEHB10:
	call	_ZN6Matrix8vSetDiagEd	#
.LEHE10:
# matrix.h:745:   return _outp;
	jmp	.L82	#
.L81:
# matrix.h:746: }
	movq	%rax, %rbx	#, tmp109
	movq	-24(%rbp), %rax	# <retval>, tmp108
	movq	%rax, %rdi	# tmp108,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp109, D.77813
	movq	%rax, %rdi	# D.77813,
.LEHB11:
	call	_Unwind_Resume@PLT	#
.LEHE11:
.L82:
	movq	-24(%rbp), %rax	# <retval>,
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2949:
	.section	.gcc_except_table._Z11MatIdentitys,"aG",@progbits,_Z11MatIdentitys,comdat
.LLSDA2949:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2949-.LLSDACSB2949
.LLSDACSB2949:
	.uleb128 .LEHB9-.LFB2949
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB2949
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L81-.LFB2949
	.uleb128 0
	.uleb128 .LEHB11-.LFB2949
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE2949:
	.section	.text._Z11MatIdentitys,"axG",@progbits,_Z11MatIdentitys,comdat
	.size	_Z11MatIdentitys, .-_Z11MatIdentitys
	.section	.text._ZN6Matrix9TransposeEv,"axG",@progbits,_ZN6Matrix9TransposeEv,comdat
	.align 2
	.weak	_ZN6Matrix9TransposeEv
	.type	_ZN6Matrix9TransposeEv, @function
_ZN6Matrix9TransposeEv:
.LFB2950:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2950
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -48(%rbp)	# this, this
# matrix.h:750:   Matrix _outp(this->i16col, this->i16row, NoInitMatZero);
	movq	-48(%rbp), %rax	# this, tmp120
	movzwl	(%rax), %eax	# this_27(D)->i16row, _1
# matrix.h:750:   Matrix _outp(this->i16col, this->i16row, NoInitMatZero);
	movswl	%ax, %edx	# _1, _2
# matrix.h:750:   Matrix _outp(this->i16col, this->i16row, NoInitMatZero);
	movq	-48(%rbp), %rax	# this, tmp121
	movzwl	2(%rax), %eax	# this_27(D)->i16col, _3
# matrix.h:750:   Matrix _outp(this->i16col, this->i16row, NoInitMatZero);
	movswl	%ax, %esi	# _3, _4
	movq	-40(%rbp), %rax	# <retval>, tmp122
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp122,
.LEHB12:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE12:
# matrix.h:751:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movw	$0, -20(%rbp)	#, _i
# matrix.h:751:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	jmp	.L84	#
.L87:
# matrix.h:752:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movw	$0, -18(%rbp)	#, _j
# matrix.h:752:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	jmp	.L85	#
.L86:
# matrix.h:753:       _outp(_j, _i) = (*this)(_i, _j);
	movswl	-18(%rbp), %edx	# _j, _5
	movswl	-20(%rbp), %ecx	# _i, _6
	movq	-48(%rbp), %rax	# this, tmp123
	movl	%ecx, %esi	# _6,
	movq	%rax, %rdi	# tmp123,
.LEHB13:
	call	_ZN6MatrixclEss	#
# matrix.h:753:       _outp(_j, _i) = (*this)(_i, _j);
	movsd	(%rax), %xmm0	# *_7, _8
	movsd	%xmm0, -56(%rbp)	# _8, %sfp
# matrix.h:753:       _outp(_j, _i) = (*this)(_i, _j);
	movswl	-20(%rbp), %edx	# _i, _9
	movswl	-18(%rbp), %ecx	# _j, _10
	movq	-40(%rbp), %rax	# <retval>, tmp124
	movl	%ecx, %esi	# _10,
	movq	%rax, %rdi	# tmp124,
	call	_ZN6MatrixclEss	#
.LEHE13:
# matrix.h:753:       _outp(_j, _i) = (*this)(_i, _j);
	movsd	-56(%rbp), %xmm0	# %sfp, _8
	movsd	%xmm0, (%rax)	# _8, *_11
# matrix.h:752:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movzwl	-18(%rbp), %eax	# _j, _j.45_12
	addl	$1, %eax	#, _14
	movw	%ax, -18(%rbp)	# _14, _j
.L85:
# matrix.h:752:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movq	-48(%rbp), %rax	# this, tmp125
	movzwl	2(%rax), %eax	# this_27(D)->i16col, _15
# matrix.h:752:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	cmpw	%ax, -18(%rbp)	# _15, _j
	jl	.L86	#,
# matrix.h:751:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movzwl	-20(%rbp), %eax	# _i, _i.47_16
	addl	$1, %eax	#, _18
	movw	%ax, -20(%rbp)	# _18, _i
.L84:
# matrix.h:751:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movq	-48(%rbp), %rax	# this, tmp126
	movzwl	(%rax), %eax	# this_27(D)->i16row, _19
# matrix.h:751:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	cmpw	%ax, -20(%rbp)	# _19, _i
	jl	.L87	#,
# matrix.h:756:   return _outp;
	jmp	.L91	#
.L90:
# matrix.h:757: }
	movq	%rax, %rbx	#, tmp128
	movq	-40(%rbp), %rax	# <retval>, tmp127
	movq	%rax, %rdi	# tmp127,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp128, D.77815
	movq	%rax, %rdi	# D.77815,
.LEHB14:
	call	_Unwind_Resume@PLT	#
.LEHE14:
.L91:
	movq	-40(%rbp), %rax	# <retval>,
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2950:
	.section	.gcc_except_table._ZN6Matrix9TransposeEv,"aG",@progbits,_ZN6Matrix9TransposeEv,comdat
.LLSDA2950:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2950-.LLSDACSB2950
.LLSDACSB2950:
	.uleb128 .LEHB12-.LFB2950
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB2950
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L90-.LFB2950
	.uleb128 0
	.uleb128 .LEHB14-.LFB2950
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE2950:
	.section	.text._ZN6Matrix9TransposeEv,"axG",@progbits,_ZN6Matrix9TransposeEv,comdat
	.size	_ZN6Matrix9TransposeEv, .-_ZN6Matrix9TransposeEv
	.section	.text._ZNK6Matrix6InversEv,"axG",@progbits,_ZNK6Matrix6InversEv,comdat
	.align 2
	.weak	_ZNK6Matrix6InversEv
	.type	_ZNK6Matrix6InversEv, @function
_ZNK6Matrix6InversEv:
.LFB2956:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2956
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$392, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -376(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -384(%rbp)	# this, this
# matrix.h:934: inline Matrix Matrix::Invers(void) const {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp253
	movq	%rax, -24(%rbp)	# tmp253, D.77818
	xorl	%eax, %eax	# tmp253
# matrix.h:935:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movq	-384(%rbp), %rax	# this, tmp254
	movzwl	2(%rax), %eax	# this_163(D)->i16col, _1
# matrix.h:935:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movswl	%ax, %edx	# _1, _2
# matrix.h:935:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movq	-384(%rbp), %rax	# this, tmp255
	movzwl	(%rax), %eax	# this_163(D)->i16row, _3
# matrix.h:935:   Matrix _outp(this->i16row, this->i16col, NoInitMatZero);
	movswl	%ax, %esi	# _3, _4
	movq	-376(%rbp), %rax	# <retval>, tmp256
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp256,
.LEHB15:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE15:
# matrix.h:936:   Matrix _temp(*this);
	movq	-384(%rbp), %rdx	# this, tmp257
	leaq	-320(%rbp), %rax	#, tmp258
	movq	%rdx, %rsi	# tmp257,
	movq	%rax, %rdi	# tmp258,
	call	_ZN6MatrixC1ERKS_	#
# matrix.h:937:   _outp.vSetIdentity();
	movq	-376(%rbp), %rax	# <retval>, tmp259
	movq	%rax, %rdi	# tmp259,
.LEHB16:
	call	_ZN6Matrix12vSetIdentityEv	#
# matrix.h:940:   for (int16_t _j = 0; _j < (_temp.i16row) - 1; _j++) {
	movw	$0, -364(%rbp)	#, _j
# matrix.h:940:   for (int16_t _j = 0; _j < (_temp.i16row) - 1; _j++) {
	jmp	.L93	#
.L100:
# matrix.h:941:     for (int16_t _i = _j + 1; _i < _temp.i16row; _i++) {
	movzwl	-364(%rbp), %eax	# _j, _j.12_5
	addl	$1, %eax	#, _6
# matrix.h:941:     for (int16_t _i = _j + 1; _i < _temp.i16row; _i++) {
	movw	%ax, -362(%rbp)	# _6, _i
# matrix.h:941:     for (int16_t _i = _j + 1; _i < _temp.i16row; _i++) {
	jmp	.L94	#
.L99:
# matrix.h:942:       if (fabs(_temp(_j, _j)) < float_prec(float_prec_ZERO)) {
	movswl	-364(%rbp), %edx	# _j, _7
	movswl	-364(%rbp), %ecx	# _j, _8
	leaq	-320(%rbp), %rax	#, tmp260
	movl	%ecx, %esi	# _8,
	movq	%rax, %rdi	# tmp260,
	call	_ZN6MatrixclEss	#
# matrix.h:942:       if (fabs(_temp(_j, _j)) < float_prec(float_prec_ZERO)) {
	movsd	(%rax), %xmm0	# *_9, _10
# matrix.h:942:       if (fabs(_temp(_j, _j)) < float_prec(float_prec_ZERO)) {
	movq	.LC3(%rip), %xmm1	#, tmp261
	andpd	%xmm0, %xmm1	# _10, _11
# matrix.h:942:       if (fabs(_temp(_j, _j)) < float_prec(float_prec_ZERO)) {
	movsd	.LC6(%rip), %xmm0	#, tmp262
	comisd	%xmm1, %xmm0	# _11, tmp262
	seta	%al	#, retval.13_232
# matrix.h:942:       if (fabs(_temp(_j, _j)) < float_prec(float_prec_ZERO)) {
	testb	%al, %al	# retval.13_232
	je	.L95	#,
# matrix.h:944:         _outp.vSetMatrixInvalid();
	movq	-376(%rbp), %rax	# <retval>, tmp263
	movq	%rax, %rdi	# tmp263,
	call	_ZN6Matrix17vSetMatrixInvalidEv	#
# matrix.h:945:         return _outp;
	jmp	.L96	#
.L95:
# matrix.h:948:       float_prec _tempfloat = _temp(_i, _j) / _temp(_j, _j);
	movswl	-364(%rbp), %edx	# _j, _12
	movswl	-362(%rbp), %ecx	# _i, _13
	leaq	-320(%rbp), %rax	#, tmp264
	movl	%ecx, %esi	# _13,
	movq	%rax, %rdi	# tmp264,
	call	_ZN6MatrixclEss	#
# matrix.h:948:       float_prec _tempfloat = _temp(_i, _j) / _temp(_j, _j);
	movsd	(%rax), %xmm2	# *_14, _15
	movsd	%xmm2, -392(%rbp)	# _15, %sfp
# matrix.h:948:       float_prec _tempfloat = _temp(_i, _j) / _temp(_j, _j);
	movswl	-364(%rbp), %edx	# _j, _16
	movswl	-364(%rbp), %ecx	# _j, _17
	leaq	-320(%rbp), %rax	#, tmp265
	movl	%ecx, %esi	# _17,
	movq	%rax, %rdi	# tmp265,
	call	_ZN6MatrixclEss	#
# matrix.h:948:       float_prec _tempfloat = _temp(_i, _j) / _temp(_j, _j);
	movsd	(%rax), %xmm1	# *_18, _19
# matrix.h:948:       float_prec _tempfloat = _temp(_i, _j) / _temp(_j, _j);
	movsd	-392(%rbp), %xmm0	# %sfp, _15
	divsd	%xmm1, %xmm0	# _19, _15
	movsd	%xmm0, -328(%rbp)	# _tempfloat_237, _tempfloat
# matrix.h:950:       for (int16_t _k = 0; _k < _temp.i16col; _k++) {
	movw	$0, -360(%rbp)	#, _k
# matrix.h:950:       for (int16_t _k = 0; _k < _temp.i16col; _k++) {
	jmp	.L97	#
.L98:
# matrix.h:951:         _temp(_i, _k) -= (_temp(_j, _k) * _tempfloat);
	movswl	-360(%rbp), %edx	# _k, _20
	movswl	-364(%rbp), %ecx	# _j, _21
	leaq	-320(%rbp), %rax	#, tmp267
	movl	%ecx, %esi	# _21,
	movq	%rax, %rdi	# tmp267,
	call	_ZN6MatrixclEss	#
# matrix.h:951:         _temp(_i, _k) -= (_temp(_j, _k) * _tempfloat);
	movsd	(%rax), %xmm0	# *_22, _23
# matrix.h:951:         _temp(_i, _k) -= (_temp(_j, _k) * _tempfloat);
	mulsd	-328(%rbp), %xmm0	# _tempfloat, _23
	movsd	%xmm0, -392(%rbp)	# _23, %sfp
# matrix.h:951:         _temp(_i, _k) -= (_temp(_j, _k) * _tempfloat);
	movswl	-360(%rbp), %edx	# _k, _24
	movswl	-362(%rbp), %ecx	# _i, _25
	leaq	-320(%rbp), %rax	#, tmp268
	movl	%ecx, %esi	# _25,
	movq	%rax, %rdi	# tmp268,
	call	_ZN6MatrixclEss	#
# matrix.h:951:         _temp(_i, _k) -= (_temp(_j, _k) * _tempfloat);
	movsd	(%rax), %xmm0	# *_245, _26
# matrix.h:951:         _temp(_i, _k) -= (_temp(_j, _k) * _tempfloat);
	subsd	-392(%rbp), %xmm0	# %sfp, _27
	movsd	%xmm0, (%rax)	# _27, *_245
# matrix.h:952:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	movswl	-360(%rbp), %edx	# _k, _28
	movswl	-364(%rbp), %ecx	# _j, _29
	movq	-376(%rbp), %rax	# <retval>, tmp269
	movl	%ecx, %esi	# _29,
	movq	%rax, %rdi	# tmp269,
	call	_ZN6MatrixclEss	#
# matrix.h:952:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	movsd	(%rax), %xmm0	# *_30, _31
# matrix.h:952:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	mulsd	-328(%rbp), %xmm0	# _tempfloat, _31
	movsd	%xmm0, -392(%rbp)	# _31, %sfp
# matrix.h:952:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	movswl	-360(%rbp), %edx	# _k, _32
	movswl	-362(%rbp), %ecx	# _i, _33
	movq	-376(%rbp), %rax	# <retval>, tmp270
	movl	%ecx, %esi	# _33,
	movq	%rax, %rdi	# tmp270,
	call	_ZN6MatrixclEss	#
# matrix.h:952:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	movsd	(%rax), %xmm0	# *_252, _34
# matrix.h:952:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	subsd	-392(%rbp), %xmm0	# %sfp, _35
	movsd	%xmm0, (%rax)	# _35, *_252
# matrix.h:954:         _temp.vRoundingElementToZero(_i, _k);
	movswl	-360(%rbp), %edx	# _k, _36
	movswl	-362(%rbp), %ecx	# _i, _37
	leaq	-320(%rbp), %rax	#, tmp271
	movl	%ecx, %esi	# _37,
	movq	%rax, %rdi	# tmp271,
	call	_ZN6Matrix22vRoundingElementToZeroEss	#
# matrix.h:955:         _outp.vRoundingElementToZero(_i, _k);
	movswl	-360(%rbp), %edx	# _k, _38
	movswl	-362(%rbp), %ecx	# _i, _39
	movq	-376(%rbp), %rax	# <retval>, tmp272
	movl	%ecx, %esi	# _39,
	movq	%rax, %rdi	# tmp272,
	call	_ZN6Matrix22vRoundingElementToZeroEss	#
# matrix.h:950:       for (int16_t _k = 0; _k < _temp.i16col; _k++) {
	movzwl	-360(%rbp), %eax	# _k, _k.14_40
	addl	$1, %eax	#, _42
	movw	%ax, -360(%rbp)	# _42, _k
.L97:
# matrix.h:950:       for (int16_t _k = 0; _k < _temp.i16col; _k++) {
	movzwl	-318(%rbp), %eax	# _temp.i16col, _43
# matrix.h:950:       for (int16_t _k = 0; _k < _temp.i16col; _k++) {
	cmpw	%ax, -360(%rbp)	# _43, _k
	jl	.L98	#,
# matrix.h:941:     for (int16_t _i = _j + 1; _i < _temp.i16row; _i++) {
	movzwl	-362(%rbp), %eax	# _i, _i.16_44
	addl	$1, %eax	#, _46
	movw	%ax, -362(%rbp)	# _46, _i
.L94:
# matrix.h:941:     for (int16_t _i = _j + 1; _i < _temp.i16row; _i++) {
	movzwl	-320(%rbp), %eax	# _temp.i16row, _47
# matrix.h:941:     for (int16_t _i = _j + 1; _i < _temp.i16row; _i++) {
	cmpw	%ax, -362(%rbp)	# _47, _i
	jl	.L99	#,
# matrix.h:940:   for (int16_t _j = 0; _j < (_temp.i16row) - 1; _j++) {
	movzwl	-364(%rbp), %eax	# _j, _j.18_48
	addl	$1, %eax	#, _50
	movw	%ax, -364(%rbp)	# _50, _j
.L93:
# matrix.h:940:   for (int16_t _j = 0; _j < (_temp.i16row) - 1; _j++) {
	movswl	-364(%rbp), %edx	# _j, _51
# matrix.h:940:   for (int16_t _j = 0; _j < (_temp.i16row) - 1; _j++) {
	movzwl	-320(%rbp), %eax	# _temp.i16row, _52
	cwtl
# matrix.h:940:   for (int16_t _j = 0; _j < (_temp.i16row) - 1; _j++) {
	subl	$1, %eax	#, _54
# matrix.h:940:   for (int16_t _j = 0; _j < (_temp.i16row) - 1; _j++) {
	cmpl	%eax, %edx	# _54, _51
	jl	.L100	#,
# matrix.h:964:   for (int16_t _i = 1; _i < _temp.i16row; _i++) {
	movw	$1, -358(%rbp)	#, _i
# matrix.h:964:   for (int16_t _i = 1; _i < _temp.i16row; _i++) {
	jmp	.L101	#
.L104:
# matrix.h:965:     for (int16_t _j = 0; _j < _i; _j++) {
	movw	$0, -356(%rbp)	#, _j
# matrix.h:965:     for (int16_t _j = 0; _j < _i; _j++) {
	jmp	.L102	#
.L103:
# matrix.h:966:       _temp(_i, _j) = 0.0;
	movswl	-356(%rbp), %edx	# _j, _55
	movswl	-358(%rbp), %ecx	# _i, _56
	leaq	-320(%rbp), %rax	#, tmp273
	movl	%ecx, %esi	# _56,
	movq	%rax, %rdi	# tmp273,
	call	_ZN6MatrixclEss	#
# matrix.h:966:       _temp(_i, _j) = 0.0;
	pxor	%xmm0, %xmm0	# tmp274
	movsd	%xmm0, (%rax)	# tmp274, *_57
# matrix.h:965:     for (int16_t _j = 0; _j < _i; _j++) {
	movzwl	-356(%rbp), %eax	# _j, _j.20_58
	addl	$1, %eax	#, _60
	movw	%ax, -356(%rbp)	# _60, _j
.L102:
# matrix.h:965:     for (int16_t _j = 0; _j < _i; _j++) {
	movzwl	-356(%rbp), %eax	# _j, tmp275
	cmpw	-358(%rbp), %ax	# _i, tmp275
	jl	.L103	#,
# matrix.h:964:   for (int16_t _i = 1; _i < _temp.i16row; _i++) {
	movzwl	-358(%rbp), %eax	# _i, _i.22_61
	addl	$1, %eax	#, _63
	movw	%ax, -358(%rbp)	# _63, _i
.L101:
# matrix.h:964:   for (int16_t _i = 1; _i < _temp.i16row; _i++) {
	movzwl	-320(%rbp), %eax	# _temp.i16row, _64
# matrix.h:964:   for (int16_t _i = 1; _i < _temp.i16row; _i++) {
	cmpw	%ax, -358(%rbp)	# _64, _i
	jl	.L104	#,
# matrix.h:972:   for (int16_t _j = (_temp.i16row) - 1; _j > 0; _j--) {
	movzwl	-320(%rbp), %eax	# _temp.i16row, _65
# matrix.h:972:   for (int16_t _j = (_temp.i16row) - 1; _j > 0; _j--) {
	subl	$1, %eax	#, _67
# matrix.h:972:   for (int16_t _j = (_temp.i16row) - 1; _j > 0; _j--) {
	movw	%ax, -354(%rbp)	# _67, _j
# matrix.h:972:   for (int16_t _j = (_temp.i16row) - 1; _j > 0; _j--) {
	jmp	.L105	#
.L111:
# matrix.h:973:     for (int16_t _i = _j - 1; _i >= 0; _i--) {
	movzwl	-354(%rbp), %eax	# _j, _j.24_68
	subl	$1, %eax	#, _69
# matrix.h:973:     for (int16_t _i = _j - 1; _i >= 0; _i--) {
	movw	%ax, -352(%rbp)	# _69, _i
# matrix.h:973:     for (int16_t _i = _j - 1; _i >= 0; _i--) {
	jmp	.L106	#
.L110:
# matrix.h:974:       if (fabs(_temp(_j, _j)) < float_prec(float_prec_ZERO)) {
	movswl	-354(%rbp), %edx	# _j, _70
	movswl	-354(%rbp), %ecx	# _j, _71
	leaq	-320(%rbp), %rax	#, tmp276
	movl	%ecx, %esi	# _71,
	movq	%rax, %rdi	# tmp276,
	call	_ZN6MatrixclEss	#
# matrix.h:974:       if (fabs(_temp(_j, _j)) < float_prec(float_prec_ZERO)) {
	movsd	(%rax), %xmm0	# *_72, _73
# matrix.h:974:       if (fabs(_temp(_j, _j)) < float_prec(float_prec_ZERO)) {
	movq	.LC3(%rip), %xmm1	#, tmp277
	andpd	%xmm0, %xmm1	# _73, _74
# matrix.h:974:       if (fabs(_temp(_j, _j)) < float_prec(float_prec_ZERO)) {
	movsd	.LC6(%rip), %xmm0	#, tmp278
	comisd	%xmm1, %xmm0	# _74, tmp278
	seta	%al	#, retval.25_195
# matrix.h:974:       if (fabs(_temp(_j, _j)) < float_prec(float_prec_ZERO)) {
	testb	%al, %al	# retval.25_195
	je	.L107	#,
# matrix.h:976:         _outp.vSetMatrixInvalid();
	movq	-376(%rbp), %rax	# <retval>, tmp279
	movq	%rax, %rdi	# tmp279,
	call	_ZN6Matrix17vSetMatrixInvalidEv	#
# matrix.h:977:         return _outp;
	jmp	.L96	#
.L107:
# matrix.h:980:       float_prec _tempfloat = _temp(_i, _j) / _temp(_j, _j);
	movswl	-354(%rbp), %edx	# _j, _75
	movswl	-352(%rbp), %ecx	# _i, _76
	leaq	-320(%rbp), %rax	#, tmp280
	movl	%ecx, %esi	# _76,
	movq	%rax, %rdi	# tmp280,
	call	_ZN6MatrixclEss	#
# matrix.h:980:       float_prec _tempfloat = _temp(_i, _j) / _temp(_j, _j);
	movsd	(%rax), %xmm5	# *_77, _78
	movsd	%xmm5, -392(%rbp)	# _78, %sfp
# matrix.h:980:       float_prec _tempfloat = _temp(_i, _j) / _temp(_j, _j);
	movswl	-354(%rbp), %edx	# _j, _79
	movswl	-354(%rbp), %ecx	# _j, _80
	leaq	-320(%rbp), %rax	#, tmp281
	movl	%ecx, %esi	# _80,
	movq	%rax, %rdi	# tmp281,
	call	_ZN6MatrixclEss	#
# matrix.h:980:       float_prec _tempfloat = _temp(_i, _j) / _temp(_j, _j);
	movsd	(%rax), %xmm1	# *_81, _82
# matrix.h:980:       float_prec _tempfloat = _temp(_i, _j) / _temp(_j, _j);
	movsd	-392(%rbp), %xmm0	# %sfp, _78
	divsd	%xmm1, %xmm0	# _82, _78
	movsd	%xmm0, -336(%rbp)	# _tempfloat_200, _tempfloat
# matrix.h:981:       _temp(_i, _j) -= (_temp(_j, _j) * _tempfloat);
	movswl	-354(%rbp), %edx	# _j, _83
	movswl	-354(%rbp), %ecx	# _j, _84
	leaq	-320(%rbp), %rax	#, tmp283
	movl	%ecx, %esi	# _84,
	movq	%rax, %rdi	# tmp283,
	call	_ZN6MatrixclEss	#
# matrix.h:981:       _temp(_i, _j) -= (_temp(_j, _j) * _tempfloat);
	movsd	(%rax), %xmm0	# *_85, _86
# matrix.h:981:       _temp(_i, _j) -= (_temp(_j, _j) * _tempfloat);
	mulsd	-336(%rbp), %xmm0	# _tempfloat, _86
	movsd	%xmm0, -392(%rbp)	# _86, %sfp
# matrix.h:981:       _temp(_i, _j) -= (_temp(_j, _j) * _tempfloat);
	movswl	-354(%rbp), %edx	# _j, _87
	movswl	-352(%rbp), %ecx	# _i, _88
	leaq	-320(%rbp), %rax	#, tmp284
	movl	%ecx, %esi	# _88,
	movq	%rax, %rdi	# tmp284,
	call	_ZN6MatrixclEss	#
# matrix.h:981:       _temp(_i, _j) -= (_temp(_j, _j) * _tempfloat);
	movsd	(%rax), %xmm0	# *_206, _89
# matrix.h:981:       _temp(_i, _j) -= (_temp(_j, _j) * _tempfloat);
	subsd	-392(%rbp), %xmm0	# %sfp, _90
	movsd	%xmm0, (%rax)	# _90, *_206
# matrix.h:982:       _temp.vRoundingElementToZero(_i, _j);
	movswl	-354(%rbp), %edx	# _j, _91
	movswl	-352(%rbp), %ecx	# _i, _92
	leaq	-320(%rbp), %rax	#, tmp285
	movl	%ecx, %esi	# _92,
	movq	%rax, %rdi	# tmp285,
	call	_ZN6Matrix22vRoundingElementToZeroEss	#
# matrix.h:984:       for (int16_t _k = (_temp.i16row - 1); _k >= 0; _k--) {
	movzwl	-320(%rbp), %eax	# _temp.i16row, _93
# matrix.h:984:       for (int16_t _k = (_temp.i16row - 1); _k >= 0; _k--) {
	subl	$1, %eax	#, _95
# matrix.h:984:       for (int16_t _k = (_temp.i16row - 1); _k >= 0; _k--) {
	movw	%ax, -350(%rbp)	# _95, _k
# matrix.h:984:       for (int16_t _k = (_temp.i16row - 1); _k >= 0; _k--) {
	jmp	.L108	#
.L109:
# matrix.h:985:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	movswl	-350(%rbp), %edx	# _k, _96
	movswl	-354(%rbp), %ecx	# _j, _97
	movq	-376(%rbp), %rax	# <retval>, tmp286
	movl	%ecx, %esi	# _97,
	movq	%rax, %rdi	# tmp286,
	call	_ZN6MatrixclEss	#
# matrix.h:985:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	movsd	(%rax), %xmm0	# *_98, _99
# matrix.h:985:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	mulsd	-336(%rbp), %xmm0	# _tempfloat, _99
	movsd	%xmm0, -392(%rbp)	# _99, %sfp
# matrix.h:985:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	movswl	-350(%rbp), %edx	# _k, _100
	movswl	-352(%rbp), %ecx	# _i, _101
	movq	-376(%rbp), %rax	# <retval>, tmp287
	movl	%ecx, %esi	# _101,
	movq	%rax, %rdi	# tmp287,
	call	_ZN6MatrixclEss	#
# matrix.h:985:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	movsd	(%rax), %xmm0	# *_216, _102
# matrix.h:985:         _outp(_i, _k) -= (_outp(_j, _k) * _tempfloat);
	subsd	-392(%rbp), %xmm0	# %sfp, _103
	movsd	%xmm0, (%rax)	# _103, *_216
# matrix.h:986:         _outp.vRoundingElementToZero(_i, _k);
	movswl	-350(%rbp), %edx	# _k, _104
	movswl	-352(%rbp), %ecx	# _i, _105
	movq	-376(%rbp), %rax	# <retval>, tmp288
	movl	%ecx, %esi	# _105,
	movq	%rax, %rdi	# tmp288,
	call	_ZN6Matrix22vRoundingElementToZeroEss	#
# matrix.h:984:       for (int16_t _k = (_temp.i16row - 1); _k >= 0; _k--) {
	movzwl	-350(%rbp), %eax	# _k, _k.26_106
	subl	$1, %eax	#, _108
	movw	%ax, -350(%rbp)	# _108, _k
.L108:
# matrix.h:984:       for (int16_t _k = (_temp.i16row - 1); _k >= 0; _k--) {
	cmpw	$0, -350(%rbp)	#, _k
	jns	.L109	#,
# matrix.h:973:     for (int16_t _i = _j - 1; _i >= 0; _i--) {
	movzwl	-352(%rbp), %eax	# _i, _i.28_109
	subl	$1, %eax	#, _111
	movw	%ax, -352(%rbp)	# _111, _i
.L106:
# matrix.h:973:     for (int16_t _i = _j - 1; _i >= 0; _i--) {
	cmpw	$0, -352(%rbp)	#, _i
	jns	.L110	#,
# matrix.h:972:   for (int16_t _j = (_temp.i16row) - 1; _j > 0; _j--) {
	movzwl	-354(%rbp), %eax	# _j, _j.30_112
	subl	$1, %eax	#, _114
	movw	%ax, -354(%rbp)	# _114, _j
.L105:
# matrix.h:972:   for (int16_t _j = (_temp.i16row) - 1; _j > 0; _j--) {
	cmpw	$0, -354(%rbp)	#, _j
	jg	.L111	#,
# matrix.h:992:   for (int16_t _i = 0; _i < _temp.i16row; _i++) {
	movw	$0, -348(%rbp)	#, _i
# matrix.h:992:   for (int16_t _i = 0; _i < _temp.i16row; _i++) {
	jmp	.L112	#
.L116:
# matrix.h:993:     if (fabs(_temp(_i, _i)) < float_prec(float_prec_ZERO)) {
	movswl	-348(%rbp), %edx	# _i, _115
	movswl	-348(%rbp), %ecx	# _i, _116
	leaq	-320(%rbp), %rax	#, tmp289
	movl	%ecx, %esi	# _116,
	movq	%rax, %rdi	# tmp289,
	call	_ZN6MatrixclEss	#
# matrix.h:993:     if (fabs(_temp(_i, _i)) < float_prec(float_prec_ZERO)) {
	movsd	(%rax), %xmm0	# *_117, _118
# matrix.h:993:     if (fabs(_temp(_i, _i)) < float_prec(float_prec_ZERO)) {
	movq	.LC3(%rip), %xmm1	#, tmp290
	andpd	%xmm0, %xmm1	# _118, _119
# matrix.h:993:     if (fabs(_temp(_i, _i)) < float_prec(float_prec_ZERO)) {
	movsd	.LC6(%rip), %xmm0	#, tmp291
	comisd	%xmm1, %xmm0	# _119, tmp291
	seta	%al	#, retval.32_175
# matrix.h:993:     if (fabs(_temp(_i, _i)) < float_prec(float_prec_ZERO)) {
	testb	%al, %al	# retval.32_175
	je	.L113	#,
# matrix.h:995:       _outp.vSetMatrixInvalid();
	movq	-376(%rbp), %rax	# <retval>, tmp292
	movq	%rax, %rdi	# tmp292,
	call	_ZN6Matrix17vSetMatrixInvalidEv	#
# matrix.h:996:       return _outp;
	jmp	.L96	#
.L113:
# matrix.h:999:     float_prec _tempfloat = _temp(_i, _i);
	movswl	-348(%rbp), %edx	# _i, _120
	movswl	-348(%rbp), %ecx	# _i, _121
	leaq	-320(%rbp), %rax	#, tmp293
	movl	%ecx, %esi	# _121,
	movq	%rax, %rdi	# tmp293,
	call	_ZN6MatrixclEss	#
# matrix.h:999:     float_prec _tempfloat = _temp(_i, _i);
	movsd	(%rax), %xmm0	# *_122, tmp294
	movsd	%xmm0, -344(%rbp)	# tmp294, _tempfloat
# matrix.h:1000:     _temp(_i, _i) = 1.0;
	movswl	-348(%rbp), %edx	# _i, _123
	movswl	-348(%rbp), %ecx	# _i, _124
	leaq	-320(%rbp), %rax	#, tmp295
	movl	%ecx, %esi	# _124,
	movq	%rax, %rdi	# tmp295,
	call	_ZN6MatrixclEss	#
# matrix.h:1000:     _temp(_i, _i) = 1.0;
	movsd	.LC5(%rip), %xmm0	#, tmp296
	movsd	%xmm0, (%rax)	# tmp296, *_125
# matrix.h:1002:     for (int16_t _j = 0; _j < _temp.i16row; _j++) {
	movw	$0, -346(%rbp)	#, _j
# matrix.h:1002:     for (int16_t _j = 0; _j < _temp.i16row; _j++) {
	jmp	.L114	#
.L115:
# matrix.h:1003:       _outp(_i, _j) /= _tempfloat;
	movswl	-346(%rbp), %edx	# _j, _126
	movswl	-348(%rbp), %ecx	# _i, _127
	movq	-376(%rbp), %rax	# <retval>, tmp297
	movl	%ecx, %esi	# _127,
	movq	%rax, %rdi	# tmp297,
	call	_ZN6MatrixclEss	#
.LEHE16:
# matrix.h:1003:       _outp(_i, _j) /= _tempfloat;
	movsd	(%rax), %xmm0	# *_186, _128
# matrix.h:1003:       _outp(_i, _j) /= _tempfloat;
	divsd	-344(%rbp), %xmm0	# _tempfloat, _129
	movsd	%xmm0, (%rax)	# _129, *_186
# matrix.h:1002:     for (int16_t _j = 0; _j < _temp.i16row; _j++) {
	movzwl	-346(%rbp), %eax	# _j, _j.33_130
	addl	$1, %eax	#, _132
	movw	%ax, -346(%rbp)	# _132, _j
.L114:
# matrix.h:1002:     for (int16_t _j = 0; _j < _temp.i16row; _j++) {
	movzwl	-320(%rbp), %eax	# _temp.i16row, _133
# matrix.h:1002:     for (int16_t _j = 0; _j < _temp.i16row; _j++) {
	cmpw	%ax, -346(%rbp)	# _133, _j
	jl	.L115	#,
# matrix.h:992:   for (int16_t _i = 0; _i < _temp.i16row; _i++) {
	movzwl	-348(%rbp), %eax	# _i, _i.35_134
	addl	$1, %eax	#, _136
	movw	%ax, -348(%rbp)	# _136, _i
.L112:
# matrix.h:992:   for (int16_t _i = 0; _i < _temp.i16row; _i++) {
	movzwl	-320(%rbp), %eax	# _temp.i16row, _137
# matrix.h:992:   for (int16_t _i = 0; _i < _temp.i16row; _i++) {
	cmpw	%ax, -348(%rbp)	# _137, _i
	jl	.L116	#,
# matrix.h:1006:   return _outp;
	nop	
.L96:
# matrix.h:1007: }
	leaq	-320(%rbp), %rax	#, tmp298
	movq	%rax, %rdi	# tmp298,
	call	_ZN6MatrixD1Ev	#
	movq	-24(%rbp), %rax	# D.77818, tmp305
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp305
	je	.L120	#,
	jmp	.L122	#
.L121:
	movq	%rax, %rbx	#, tmp301
	leaq	-320(%rbp), %rax	#, tmp299
	movq	%rax, %rdi	# tmp299,
	call	_ZN6MatrixD1Ev	#
	movq	-376(%rbp), %rax	# <retval>, tmp304
	movq	%rax, %rdi	# tmp304,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp300, D.77817
	movq	-24(%rbp), %rdx	# D.77818, tmp306
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp306
	je	.L119	#,
	call	__stack_chk_fail@PLT	#
.L119:
	movq	%rax, %rdi	# D.77817,
.LEHB17:
	call	_Unwind_Resume@PLT	#
.LEHE17:
.L122:
	call	__stack_chk_fail@PLT	#
.L120:
	movq	-376(%rbp), %rax	# <retval>,
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2956:
	.section	.gcc_except_table._ZNK6Matrix6InversEv,"aG",@progbits,_ZNK6Matrix6InversEv,comdat
.LLSDA2956:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2956-.LLSDACSB2956
.LLSDACSB2956:
	.uleb128 .LEHB15-.LFB2956
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB2956
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L121-.LFB2956
	.uleb128 0
	.uleb128 .LEHB17-.LFB2956
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE2956:
	.section	.text._ZNK6Matrix6InversEv,"axG",@progbits,_ZNK6Matrix6InversEv,comdat
	.size	_ZNK6Matrix6InversEv, .-_ZNK6Matrix6InversEv
	.text
	.align 2
	.globl	_ZN3EKFC2ERK6MatrixS2_S2_S2_PFbRS0_S2_S2_ES5_S5_S5_
	.type	_ZN3EKFC2ERK6MatrixS2_S2_S2_PFbRS0_S2_S2_ES5_S5_S5_, @function
_ZN3EKFC2ERK6MatrixS2_S2_S2_PFbRS0_S2_S2_ES5_S5_S5_:
.LFB2971:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2971
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# XInit, XInit
	movq	%rdx, -40(%rbp)	# P, P
	movq	%rcx, -48(%rbp)	# Q, Q
	movq	%r8, -56(%rbp)	# R, R
	movq	%r9, -64(%rbp)	# bNonlinearUpdateX, bNonlinearUpdateX
# ekf.cpp:69:          bool (*bCalcJacobianH)(Matrix&, const Matrix&, const Matrix&))
	movq	-24(%rbp), %rax	# this, tmp123
	addq	$32, %rax	#, _1
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _1,
.LEHB18:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE18:
# ekf.cpp:69:          bool (*bCalcJacobianH)(Matrix&, const Matrix&, const Matrix&))
	movq	-24(%rbp), %rax	# this, tmp124
	addq	$328, %rax	#, _2
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _2,
.LEHB19:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE19:
# ekf.cpp:69:          bool (*bCalcJacobianH)(Matrix&, const Matrix&, const Matrix&))
	movq	-24(%rbp), %rax	# this, tmp125
	addq	$624, %rax	#, _3
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _3,
.LEHB20:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE20:
# ekf.cpp:69:          bool (*bCalcJacobianH)(Matrix&, const Matrix&, const Matrix&))
	movq	-24(%rbp), %rax	# this, tmp126
	addq	$920, %rax	#, _4
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _4,
.LEHB21:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE21:
# ekf.cpp:69:          bool (*bCalcJacobianH)(Matrix&, const Matrix&, const Matrix&))
	movq	-24(%rbp), %rax	# this, tmp127
	addq	$1216, %rax	#, _5
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _5,
.LEHB22:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE22:
# ekf.cpp:69:          bool (*bCalcJacobianH)(Matrix&, const Matrix&, const Matrix&))
	movq	-24(%rbp), %rax	# this, tmp128
	addq	$1512, %rax	#, _6
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _6,
.LEHB23:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE23:
# ekf.cpp:69:          bool (*bCalcJacobianH)(Matrix&, const Matrix&, const Matrix&))
	movq	-24(%rbp), %rax	# this, tmp129
	addq	$1808, %rax	#, _7
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _7,
.LEHB24:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE24:
# ekf.cpp:69:          bool (*bCalcJacobianH)(Matrix&, const Matrix&, const Matrix&))
	movq	-24(%rbp), %rax	# this, tmp130
	addq	$2104, %rax	#, _8
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _8,
.LEHB25:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE25:
# ekf.cpp:69:          bool (*bCalcJacobianH)(Matrix&, const Matrix&, const Matrix&))
	movq	-24(%rbp), %rax	# this, tmp131
	addq	$2400, %rax	#, _9
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _9,
.LEHB26:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE26:
# ekf.cpp:69:          bool (*bCalcJacobianH)(Matrix&, const Matrix&, const Matrix&))
	movq	-24(%rbp), %rax	# this, tmp132
	addq	$2696, %rax	#, _10
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _10,
.LEHB27:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE27:
# ekf.cpp:79:     this->X_Est = XInit;
	movq	-24(%rbp), %rax	# this, tmp133
	leaq	32(%rax), %rdx	#, _11
	movq	-32(%rbp), %rax	# XInit, tmp134
	movq	%rax, %rsi	# tmp134,
	movq	%rdx, %rdi	# _11,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:80:     this->P = P;
	movq	-24(%rbp), %rax	# this, tmp135
	leaq	328(%rax), %rdx	#, _12
	movq	-40(%rbp), %rax	# P, tmp136
	movq	%rax, %rsi	# tmp136,
	movq	%rdx, %rdi	# _12,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:81:     this->Q = Q;
	movq	-24(%rbp), %rax	# this, tmp137
	leaq	1808(%rax), %rdx	#, _13
	movq	-48(%rbp), %rax	# Q, tmp138
	movq	%rax, %rsi	# tmp138,
	movq	%rdx, %rdi	# _13,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:82:     this->R = R;
	movq	-24(%rbp), %rax	# this, tmp139
	leaq	2104(%rax), %rdx	#, _14
	movq	-56(%rbp), %rax	# R, tmp140
	movq	%rax, %rsi	# tmp140,
	movq	%rdx, %rdi	# _14,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:83:     this->bNonlinearUpdateX = bNonlinearUpdateX;
	movq	-24(%rbp), %rax	# this, tmp141
	movq	-64(%rbp), %rdx	# bNonlinearUpdateX, tmp142
	movq	%rdx, (%rax)	# tmp142, this_34(D)->bNonlinearUpdateX
# ekf.cpp:84:     this->bNonlinearUpdateY = bNonlinearUpdateY;
	movq	-24(%rbp), %rax	# this, tmp143
	movq	16(%rbp), %rdx	# bNonlinearUpdateY, tmp144
	movq	%rdx, 8(%rax)	# tmp144, this_34(D)->bNonlinearUpdateY
# ekf.cpp:85:     this->bCalcJacobianF = bCalcJacobianF;
	movq	-24(%rbp), %rax	# this, tmp145
	movq	24(%rbp), %rdx	# bCalcJacobianF, tmp146
	movq	%rdx, 16(%rax)	# tmp146, this_34(D)->bCalcJacobianF
# ekf.cpp:86:     this->bCalcJacobianH = bCalcJacobianH;
	movq	-24(%rbp), %rax	# this, tmp147
	movq	32(%rbp), %rdx	# bCalcJacobianH, tmp148
	movq	%rdx, 24(%rax)	# tmp148, this_34(D)->bCalcJacobianH
# ekf.cpp:87: }
	jmp	.L142	#
.L141:
	movq	%rax, %rbx	#, tmp151
	movq	-24(%rbp), %rax	# this, tmp149
	addq	$2400, %rax	#, _16
	movq	%rax, %rdi	# _16,
	call	_ZN6MatrixD1Ev	#
	jmp	.L125	#
.L140:
	movq	%rax, %rbx	#, tmp150
.L125:
	movq	-24(%rbp), %rax	# this, tmp154
	addq	$2104, %rax	#, _17
	movq	%rax, %rdi	# _17,
	call	_ZN6MatrixD1Ev	#
	jmp	.L126	#
.L139:
	movq	%rax, %rbx	#, tmp155
.L126:
	movq	-24(%rbp), %rax	# this, tmp157
	addq	$1808, %rax	#, _18
	movq	%rax, %rdi	# _18,
	call	_ZN6MatrixD1Ev	#
	jmp	.L127	#
.L138:
	movq	%rax, %rbx	#, tmp158
.L127:
	movq	-24(%rbp), %rax	# this, tmp160
	addq	$1512, %rax	#, _19
	movq	%rax, %rdi	# _19,
	call	_ZN6MatrixD1Ev	#
	jmp	.L128	#
.L137:
	movq	%rax, %rbx	#, tmp161
.L128:
	movq	-24(%rbp), %rax	# this, tmp163
	addq	$1216, %rax	#, _20
	movq	%rax, %rdi	# _20,
	call	_ZN6MatrixD1Ev	#
	jmp	.L129	#
.L136:
	movq	%rax, %rbx	#, tmp164
.L129:
	movq	-24(%rbp), %rax	# this, tmp166
	addq	$920, %rax	#, _21
	movq	%rax, %rdi	# _21,
	call	_ZN6MatrixD1Ev	#
	jmp	.L130	#
.L135:
	movq	%rax, %rbx	#, tmp167
.L130:
	movq	-24(%rbp), %rax	# this, tmp169
	addq	$624, %rax	#, _22
	movq	%rax, %rdi	# _22,
	call	_ZN6MatrixD1Ev	#
	jmp	.L131	#
.L134:
	movq	%rax, %rbx	#, tmp170
.L131:
	movq	-24(%rbp), %rax	# this, tmp172
	addq	$328, %rax	#, _23
	movq	%rax, %rdi	# _23,
	call	_ZN6MatrixD1Ev	#
	jmp	.L132	#
.L133:
	movq	%rax, %rbx	#, tmp173
.L132:
	movq	-24(%rbp), %rax	# this, tmp175
	addq	$32, %rax	#, _24
	movq	%rax, %rdi	# _24,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp173, D.77821
	movq	%rax, %rdi	# D.77821,
.LEHB28:
	call	_Unwind_Resume@PLT	#
.LEHE28:
.L142:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2971:
	.section	.gcc_except_table,"a",@progbits
.LLSDA2971:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2971-.LLSDACSB2971
.LLSDACSB2971:
	.uleb128 .LEHB18-.LFB2971
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB2971
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L133-.LFB2971
	.uleb128 0
	.uleb128 .LEHB20-.LFB2971
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L134-.LFB2971
	.uleb128 0
	.uleb128 .LEHB21-.LFB2971
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L135-.LFB2971
	.uleb128 0
	.uleb128 .LEHB22-.LFB2971
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L136-.LFB2971
	.uleb128 0
	.uleb128 .LEHB23-.LFB2971
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L137-.LFB2971
	.uleb128 0
	.uleb128 .LEHB24-.LFB2971
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L138-.LFB2971
	.uleb128 0
	.uleb128 .LEHB25-.LFB2971
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L139-.LFB2971
	.uleb128 0
	.uleb128 .LEHB26-.LFB2971
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L140-.LFB2971
	.uleb128 0
	.uleb128 .LEHB27-.LFB2971
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L141-.LFB2971
	.uleb128 0
	.uleb128 .LEHB28-.LFB2971
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE2971:
	.text
	.size	_ZN3EKFC2ERK6MatrixS2_S2_S2_PFbRS0_S2_S2_ES5_S5_S5_, .-_ZN3EKFC2ERK6MatrixS2_S2_S2_PFbRS0_S2_S2_ES5_S5_S5_
	.globl	_ZN3EKFC1ERK6MatrixS2_S2_S2_PFbRS0_S2_S2_ES5_S5_S5_
	.set	_ZN3EKFC1ERK6MatrixS2_S2_S2_PFbRS0_S2_S2_ES5_S5_S5_,_ZN3EKFC2ERK6MatrixS2_S2_S2_PFbRS0_S2_S2_ES5_S5_S5_
	.align 2
	.globl	_ZN3EKF6vResetERK6MatrixS2_S2_S2_
	.type	_ZN3EKF6vResetERK6MatrixS2_S2_S2_, @function
_ZN3EKF6vResetERK6MatrixS2_S2_S2_:
.LFB2973:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# XInit, XInit
	movq	%rdx, -24(%rbp)	# P, P
	movq	%rcx, -32(%rbp)	# Q, Q
	movq	%r8, -40(%rbp)	# R, R
# ekf.cpp:91:     this->X_Est = XInit;
	movq	-8(%rbp), %rax	# this, tmp102
	leaq	32(%rax), %rdx	#, _1
	movq	-16(%rbp), %rax	# XInit, tmp103
	movq	%rax, %rsi	# tmp103,
	movq	%rdx, %rdi	# _1,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:92:     this->P = P;
	movq	-8(%rbp), %rax	# this, tmp104
	leaq	328(%rax), %rdx	#, _2
	movq	-24(%rbp), %rax	# P, tmp105
	movq	%rax, %rsi	# tmp105,
	movq	%rdx, %rdi	# _2,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:93:     this->Q = Q;
	movq	-8(%rbp), %rax	# this, tmp106
	leaq	1808(%rax), %rdx	#, _3
	movq	-32(%rbp), %rax	# Q, tmp107
	movq	%rax, %rsi	# tmp107,
	movq	%rdx, %rdi	# _3,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:94:     this->R = R;
	movq	-8(%rbp), %rax	# this, tmp108
	leaq	2104(%rax), %rdx	#, _4
	movq	-40(%rbp), %rax	# R, tmp109
	movq	%rax, %rsi	# tmp109,
	movq	%rdx, %rdi	# _4,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:95: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2973:
	.size	_ZN3EKF6vResetERK6MatrixS2_S2_S2_, .-_ZN3EKF6vResetERK6MatrixS2_S2_S2_
	.align 2
	.globl	_ZN3EKF7bUpdateERK6MatrixS2_
	.type	_ZN3EKF7bUpdateERK6MatrixS2_, @function
_ZN3EKF7bUpdateERK6MatrixS2_:
.LFB2974:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2974
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1256, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -1240(%rbp)	# this, this
	movq	%rsi, -1248(%rbp)	# Y, Y
	movq	%rdx, -1256(%rbp)	# U, U
# ekf.cpp:98: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp150
	movq	%rax, -24(%rbp)	# tmp150, D.77828
	xorl	%eax, %eax	# tmp150
# ekf.cpp:104:     if (!bCalcJacobianF(F, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp151
	movq	16(%rax), %rcx	# this_58(D)->bCalcJacobianF, _1
# ekf.cpp:104:     if (!bCalcJacobianF(F, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp152
	leaq	32(%rax), %rsi	#, _2
# ekf.cpp:104:     if (!bCalcJacobianF(F, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp153
	leaq	624(%rax), %rdi	#, _3
# ekf.cpp:104:     if (!bCalcJacobianF(F, X_Est, U)) {
	movq	-1256(%rbp), %rax	# U, tmp154
	movq	%rax, %rdx	# tmp154,
.LEHB29:
	call	*%rcx	# _1
# ekf.cpp:104:     if (!bCalcJacobianF(F, X_Est, U)) {
	xorl	$1, %eax	#, retval.7_62
# ekf.cpp:104:     if (!bCalcJacobianF(F, X_Est, U)) {
	testb	%al, %al	# retval.7_62
	je	.L145	#,
# ekf.cpp:105:         return false;
	movl	$0, %eax	#, _41
	jmp	.L146	#
.L145:
# ekf.cpp:111:     if (!bNonlinearUpdateX(X_Est, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp155
	movq	(%rax), %rcx	# this_58(D)->bNonlinearUpdateX, _5
# ekf.cpp:111:     if (!bNonlinearUpdateX(X_Est, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp156
	leaq	32(%rax), %rsi	#, _6
# ekf.cpp:111:     if (!bNonlinearUpdateX(X_Est, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp157
	leaq	32(%rax), %rdi	#, _7
# ekf.cpp:111:     if (!bNonlinearUpdateX(X_Est, X_Est, U)) {
	movq	-1256(%rbp), %rax	# U, tmp158
	movq	%rax, %rdx	# tmp158,
	call	*%rcx	# _5
# ekf.cpp:111:     if (!bNonlinearUpdateX(X_Est, X_Est, U)) {
	xorl	$1, %eax	#, retval.8_65
# ekf.cpp:111:     if (!bNonlinearUpdateX(X_Est, X_Est, U)) {
	testb	%al, %al	# retval.8_65
	je	.L147	#,
# ekf.cpp:112:         return false;
	movl	$0, %eax	#, _41
	jmp	.L146	#
.L147:
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	movq	-1240(%rbp), %rax	# this, tmp159
	leaq	1808(%rax), %rbx	#, _9
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	movq	-1240(%rbp), %rax	# this, tmp160
	leaq	624(%rax), %rdx	#, _10
	leaq	-928(%rbp), %rax	#, tmp161
	movq	%rdx, %rsi	# _10,
	movq	%rax, %rdi	# tmp161,
	call	_ZN6Matrix9TransposeEv	#
.LEHE29:
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	movq	-1240(%rbp), %rax	# this, tmp162
	leaq	328(%rax), %rdx	#, _11
	movq	-1240(%rbp), %rax	# this, tmp163
	leaq	624(%rax), %rcx	#, _12
	leaq	-1232(%rbp), %rax	#, tmp164
	movq	%rcx, %rsi	# _12,
	movq	%rax, %rdi	# tmp164,
.LEHB30:
	call	_ZNK6MatrixmlERKS_	#
.LEHE30:
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	leaq	-624(%rbp), %rax	#, tmp165
	leaq	-928(%rbp), %rdx	#, tmp166
	leaq	-1232(%rbp), %rcx	#, tmp167
	movq	%rcx, %rsi	# tmp167,
	movq	%rax, %rdi	# tmp165,
.LEHB31:
	call	_ZNK6MatrixmlERKS_	#
.LEHE31:
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	leaq	-320(%rbp), %rax	#, tmp168
	leaq	-624(%rbp), %rcx	#, tmp169
	movq	%rbx, %rdx	# _9,
	movq	%rcx, %rsi	# tmp169,
	movq	%rax, %rdi	# tmp168,
.LEHB32:
	call	_ZNK6MatrixplERKS_	#
.LEHE32:
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	movq	-1240(%rbp), %rax	# this, tmp170
	leaq	328(%rax), %rdx	#, _13
	leaq	-320(%rbp), %rax	#, tmp171
	movq	%rax, %rsi	# tmp171,
	movq	%rdx, %rdi	# _13,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	leaq	-320(%rbp), %rax	#, tmp172
	movq	%rax, %rdi	# tmp172,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	leaq	-624(%rbp), %rax	#, tmp173
	movq	%rax, %rdi	# tmp173,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	leaq	-1232(%rbp), %rax	#, tmp174
	movq	%rax, %rdi	# tmp174,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	leaq	-928(%rbp), %rax	#, tmp175
	movq	%rax, %rdi	# tmp175,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:122:     if (!bCalcJacobianH(H, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp176
	movq	24(%rax), %rcx	# this_58(D)->bCalcJacobianH, _14
# ekf.cpp:122:     if (!bCalcJacobianH(H, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp177
	leaq	32(%rax), %rsi	#, _15
# ekf.cpp:122:     if (!bCalcJacobianH(H, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp178
	leaq	920(%rax), %rdi	#, _16
# ekf.cpp:122:     if (!bCalcJacobianH(H, X_Est, U)) {
	movq	-1256(%rbp), %rax	# U, tmp179
	movq	%rax, %rdx	# tmp179,
.LEHB33:
	call	*%rcx	# _14
# ekf.cpp:122:     if (!bCalcJacobianH(H, X_Est, U)) {
	xorl	$1, %eax	#, retval.9_81
# ekf.cpp:122:     if (!bCalcJacobianH(H, X_Est, U)) {
	testb	%al, %al	# retval.9_81
	je	.L148	#,
# ekf.cpp:123:         return false;
	movl	$0, %eax	#, _41
	jmp	.L146	#
.L148:
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	movq	-1240(%rbp), %rax	# this, tmp180
	leaq	2104(%rax), %rbx	#, _18
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	movq	-1240(%rbp), %rax	# this, tmp181
	leaq	920(%rax), %rdx	#, _19
	leaq	-928(%rbp), %rax	#, tmp182
	movq	%rdx, %rsi	# _19,
	movq	%rax, %rdi	# tmp182,
	call	_ZN6Matrix9TransposeEv	#
.LEHE33:
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	movq	-1240(%rbp), %rax	# this, tmp183
	leaq	328(%rax), %rdx	#, _20
	movq	-1240(%rbp), %rax	# this, tmp184
	leaq	920(%rax), %rcx	#, _21
	leaq	-1232(%rbp), %rax	#, tmp185
	movq	%rcx, %rsi	# _21,
	movq	%rax, %rdi	# tmp185,
.LEHB34:
	call	_ZNK6MatrixmlERKS_	#
.LEHE34:
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	leaq	-624(%rbp), %rax	#, tmp186
	leaq	-928(%rbp), %rdx	#, tmp187
	leaq	-1232(%rbp), %rcx	#, tmp188
	movq	%rcx, %rsi	# tmp188,
	movq	%rax, %rdi	# tmp186,
.LEHB35:
	call	_ZNK6MatrixmlERKS_	#
.LEHE35:
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	leaq	-320(%rbp), %rax	#, tmp189
	leaq	-624(%rbp), %rcx	#, tmp190
	movq	%rbx, %rdx	# _18,
	movq	%rcx, %rsi	# tmp190,
	movq	%rax, %rdi	# tmp189,
.LEHB36:
	call	_ZNK6MatrixplERKS_	#
.LEHE36:
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	movq	-1240(%rbp), %rax	# this, tmp191
	leaq	2400(%rax), %rdx	#, _22
	leaq	-320(%rbp), %rax	#, tmp192
	movq	%rax, %rsi	# tmp192,
	movq	%rdx, %rdi	# _22,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	leaq	-320(%rbp), %rax	#, tmp193
	movq	%rax, %rdi	# tmp193,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	leaq	-624(%rbp), %rax	#, tmp194
	movq	%rax, %rdi	# tmp194,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	leaq	-1232(%rbp), %rax	#, tmp195
	movq	%rax, %rdi	# tmp195,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	leaq	-928(%rbp), %rax	#, tmp196
	movq	%rax, %rdi	# tmp196,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	movq	-1240(%rbp), %rax	# this, tmp197
	leaq	2400(%rax), %rdx	#, _23
	leaq	-624(%rbp), %rax	#, tmp198
	movq	%rdx, %rsi	# _23,
	movq	%rax, %rdi	# tmp198,
.LEHB37:
	call	_ZNK6Matrix6InversEv	#
.LEHE37:
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	movq	-1240(%rbp), %rax	# this, tmp199
	leaq	920(%rax), %rdx	#, _24
	leaq	-1232(%rbp), %rax	#, tmp200
	movq	%rdx, %rsi	# _24,
	movq	%rax, %rdi	# tmp200,
.LEHB38:
	call	_ZN6Matrix9TransposeEv	#
.LEHE38:
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	movq	-1240(%rbp), %rax	# this, tmp201
	leaq	328(%rax), %rcx	#, _25
	leaq	-928(%rbp), %rax	#, tmp202
	leaq	-1232(%rbp), %rdx	#, tmp203
	movq	%rcx, %rsi	# _25,
	movq	%rax, %rdi	# tmp202,
.LEHB39:
	call	_ZNK6MatrixmlERKS_	#
.LEHE39:
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	leaq	-320(%rbp), %rax	#, tmp204
	leaq	-624(%rbp), %rdx	#, tmp205
	leaq	-928(%rbp), %rcx	#, tmp206
	movq	%rcx, %rsi	# tmp206,
	movq	%rax, %rdi	# tmp204,
.LEHB40:
	call	_ZNK6MatrixmlERKS_	#
.LEHE40:
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	movq	-1240(%rbp), %rax	# this, tmp207
	leaq	2696(%rax), %rdx	#, _26
	leaq	-320(%rbp), %rax	#, tmp208
	movq	%rax, %rsi	# tmp208,
	movq	%rdx, %rdi	# _26,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	leaq	-320(%rbp), %rax	#, tmp209
	movq	%rax, %rdi	# tmp209,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	leaq	-928(%rbp), %rax	#, tmp210
	movq	%rax, %rdi	# tmp210,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	leaq	-1232(%rbp), %rax	#, tmp211
	movq	%rax, %rdi	# tmp211,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	leaq	-624(%rbp), %rax	#, tmp212
	movq	%rax, %rdi	# tmp212,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:132:     if (!Gain.bMatrixIsValid()) {
	movq	-1240(%rbp), %rax	# this, tmp213
	addq	$2696, %rax	#, _27
	movq	%rax, %rdi	# _27,
	call	_ZN6Matrix14bMatrixIsValidEv	#
# ekf.cpp:132:     if (!Gain.bMatrixIsValid()) {
	xorl	$1, %eax	#, retval.10_109
# ekf.cpp:132:     if (!Gain.bMatrixIsValid()) {
	testb	%al, %al	# retval.10_109
	je	.L149	#,
# ekf.cpp:133:         return false;
	movl	$0, %eax	#, _41
	jmp	.L146	#
.L149:
# ekf.cpp:137:     if (!bNonlinearUpdateY(Y_Est, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp214
	movq	8(%rax), %rcx	# this_58(D)->bNonlinearUpdateY, _29
# ekf.cpp:137:     if (!bNonlinearUpdateY(Y_Est, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp215
	leaq	32(%rax), %rsi	#, _30
# ekf.cpp:137:     if (!bNonlinearUpdateY(Y_Est, X_Est, U)) {
	movq	-1240(%rbp), %rax	# this, tmp216
	leaq	1216(%rax), %rdi	#, _31
# ekf.cpp:137:     if (!bNonlinearUpdateY(Y_Est, X_Est, U)) {
	movq	-1256(%rbp), %rax	# U, tmp217
	movq	%rax, %rdx	# tmp217,
.LEHB41:
	call	*%rcx	# _29
# ekf.cpp:137:     if (!bNonlinearUpdateY(Y_Est, X_Est, U)) {
	xorl	$1, %eax	#, retval.11_112
# ekf.cpp:137:     if (!bNonlinearUpdateY(Y_Est, X_Est, U)) {
	testb	%al, %al	# retval.11_112
	je	.L150	#,
# ekf.cpp:138:         return false;
	movl	$0, %eax	#, _41
	jmp	.L146	#
.L150:
# ekf.cpp:140:     X_Est = X_Est + (Gain * (Y - Y_Est));
	movq	-1240(%rbp), %rax	# this, tmp218
	leaq	1216(%rax), %rdx	#, _33
	leaq	-928(%rbp), %rax	#, tmp219
	movq	-1248(%rbp), %rcx	# Y, tmp220
	movq	%rcx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp219,
	call	_ZNK6MatrixmiERKS_	#
.LEHE41:
# ekf.cpp:140:     X_Est = X_Est + (Gain * (Y - Y_Est));
	movq	-1240(%rbp), %rax	# this, tmp221
	leaq	2696(%rax), %rcx	#, _34
	leaq	-624(%rbp), %rax	#, tmp222
	leaq	-928(%rbp), %rdx	#, tmp223
	movq	%rcx, %rsi	# _34,
	movq	%rax, %rdi	# tmp222,
.LEHB42:
	call	_ZNK6MatrixmlERKS_	#
.LEHE42:
# ekf.cpp:140:     X_Est = X_Est + (Gain * (Y - Y_Est));
	movq	-1240(%rbp), %rax	# this, tmp224
	leaq	32(%rax), %rcx	#, _35
	leaq	-320(%rbp), %rax	#, tmp225
	leaq	-624(%rbp), %rdx	#, tmp226
	movq	%rcx, %rsi	# _35,
	movq	%rax, %rdi	# tmp225,
.LEHB43:
	call	_ZNK6MatrixplERKS_	#
.LEHE43:
# ekf.cpp:140:     X_Est = X_Est + (Gain * (Y - Y_Est));
	movq	-1240(%rbp), %rax	# this, tmp227
	leaq	32(%rax), %rdx	#, _36
	leaq	-320(%rbp), %rax	#, tmp228
	movq	%rax, %rsi	# tmp228,
	movq	%rdx, %rdi	# _36,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:140:     X_Est = X_Est + (Gain * (Y - Y_Est));
	leaq	-320(%rbp), %rax	#, tmp229
	movq	%rax, %rdi	# tmp229,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:140:     X_Est = X_Est + (Gain * (Y - Y_Est));
	leaq	-624(%rbp), %rax	#, tmp230
	movq	%rax, %rdi	# tmp230,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:140:     X_Est = X_Est + (Gain * (Y - Y_Est));
	leaq	-928(%rbp), %rax	#, tmp231
	movq	%rax, %rdi	# tmp231,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	movq	-1240(%rbp), %rax	# this, tmp232
	leaq	328(%rax), %rbx	#, _37
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	movq	-1240(%rbp), %rax	# this, tmp233
	leaq	920(%rax), %rdx	#, _38
	movq	-1240(%rbp), %rax	# this, tmp234
	leaq	2696(%rax), %rcx	#, _39
	leaq	-928(%rbp), %rax	#, tmp235
	movq	%rcx, %rsi	# _39,
	movq	%rax, %rdi	# tmp235,
.LEHB44:
	call	_ZNK6MatrixmlERKS_	#
.LEHE44:
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	leaq	-1232(%rbp), %rax	#, tmp236
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp236,
.LEHB45:
	call	_Z11MatIdentitys	#
.LEHE45:
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	leaq	-624(%rbp), %rax	#, tmp237
	leaq	-928(%rbp), %rdx	#, tmp238
	leaq	-1232(%rbp), %rcx	#, tmp239
	movq	%rcx, %rsi	# tmp239,
	movq	%rax, %rdi	# tmp237,
.LEHB46:
	call	_ZNK6MatrixmiERKS_	#
.LEHE46:
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	leaq	-320(%rbp), %rax	#, tmp240
	leaq	-624(%rbp), %rcx	#, tmp241
	movq	%rbx, %rdx	# _37,
	movq	%rcx, %rsi	# tmp241,
	movq	%rax, %rdi	# tmp240,
.LEHB47:
	call	_ZNK6MatrixmlERKS_	#
.LEHE47:
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	movq	-1240(%rbp), %rax	# this, tmp242
	leaq	328(%rax), %rdx	#, _40
	leaq	-320(%rbp), %rax	#, tmp243
	movq	%rax, %rsi	# tmp243,
	movq	%rdx, %rdi	# _40,
	call	_ZN6MatrixaSERKS_	#
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	leaq	-320(%rbp), %rax	#, tmp244
	movq	%rax, %rdi	# tmp244,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	leaq	-624(%rbp), %rax	#, tmp245
	movq	%rax, %rdi	# tmp245,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	leaq	-1232(%rbp), %rax	#, tmp246
	movq	%rax, %rdi	# tmp246,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	leaq	-928(%rbp), %rax	#, tmp247
	movq	%rax, %rdi	# tmp247,
	call	_ZN6MatrixD1Ev	#
# ekf.cpp:146:     return true;
	movl	$1, %eax	#, _41
.L146:
# ekf.cpp:147: }
	movq	-24(%rbp), %rdx	# D.77828, tmp291
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp291
	je	.L170	#,
	jmp	.L185	#
.L173:
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	movq	%rax, %rbx	#, tmp251
	leaq	-624(%rbp), %rax	#, tmp249
	movq	%rax, %rdi	# tmp249,
	call	_ZN6MatrixD1Ev	#
	jmp	.L152	#
.L172:
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	movq	%rax, %rbx	#, tmp250
.L152:
	leaq	-1232(%rbp), %rax	#, tmp254
	movq	%rax, %rdi	# tmp254,
	call	_ZN6MatrixD1Ev	#
	jmp	.L153	#
.L171:
# ekf.cpp:116:     P = F*P*(F.Transpose()) + Q;
	movq	%rax, %rbx	#, tmp255
.L153:
	leaq	-928(%rbp), %rax	#, tmp257
	movq	%rax, %rdi	# tmp257,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp255, D.77822
	movq	-24(%rbp), %rdx	# D.77828, tmp292
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp292
	je	.L154	#,
	call	__stack_chk_fail@PLT	#
.L154:
	movq	%rax, %rdi	# D.77822,
.LEHB48:
	call	_Unwind_Resume@PLT	#
.L176:
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	movq	%rax, %rbx	#, tmp260
	leaq	-624(%rbp), %rax	#, tmp258
	movq	%rax, %rdi	# tmp258,
	call	_ZN6MatrixD1Ev	#
	jmp	.L156	#
.L175:
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	movq	%rax, %rbx	#, tmp259
.L156:
	leaq	-1232(%rbp), %rax	#, tmp263
	movq	%rax, %rdi	# tmp263,
	call	_ZN6MatrixD1Ev	#
	jmp	.L157	#
.L174:
# ekf.cpp:128:     S = (H*P*(H.Transpose())) + R;
	movq	%rax, %rbx	#, tmp264
.L157:
	leaq	-928(%rbp), %rax	#, tmp266
	movq	%rax, %rdi	# tmp266,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp264, D.77823
	movq	-24(%rbp), %rdx	# D.77828, tmp293
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp293
	je	.L158	#,
	call	__stack_chk_fail@PLT	#
.L158:
	movq	%rax, %rdi	# D.77823,
	call	_Unwind_Resume@PLT	#
.L179:
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	movq	%rax, %rbx	#, tmp269
	leaq	-928(%rbp), %rax	#, tmp267
	movq	%rax, %rdi	# tmp267,
	call	_ZN6MatrixD1Ev	#
	jmp	.L160	#
.L178:
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	movq	%rax, %rbx	#, tmp268
.L160:
	leaq	-1232(%rbp), %rax	#, tmp272
	movq	%rax, %rdi	# tmp272,
	call	_ZN6MatrixD1Ev	#
	jmp	.L161	#
.L177:
# ekf.cpp:131:     Gain = P*(H.Transpose())*(S.Invers());
	movq	%rax, %rbx	#, tmp273
.L161:
	leaq	-624(%rbp), %rax	#, tmp275
	movq	%rax, %rdi	# tmp275,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp273, D.77824
	movq	-24(%rbp), %rdx	# D.77828, tmp294
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp294
	je	.L162	#,
	call	__stack_chk_fail@PLT	#
.L162:
	movq	%rax, %rdi	# D.77824,
	call	_Unwind_Resume@PLT	#
.L181:
# ekf.cpp:140:     X_Est = X_Est + (Gain * (Y - Y_Est));
	movq	%rax, %rbx	#, tmp278
	leaq	-624(%rbp), %rax	#, tmp276
	movq	%rax, %rdi	# tmp276,
	call	_ZN6MatrixD1Ev	#
	jmp	.L164	#
.L180:
# ekf.cpp:140:     X_Est = X_Est + (Gain * (Y - Y_Est));
	movq	%rax, %rbx	#, tmp277
.L164:
	leaq	-928(%rbp), %rax	#, tmp281
	movq	%rax, %rdi	# tmp281,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp277, D.77825
	movq	-24(%rbp), %rdx	# D.77828, tmp295
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp295
	je	.L165	#,
	call	__stack_chk_fail@PLT	#
.L165:
	movq	%rax, %rdi	# D.77825,
	call	_Unwind_Resume@PLT	#
.L184:
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	movq	%rax, %rbx	#, tmp284
	leaq	-624(%rbp), %rax	#, tmp282
	movq	%rax, %rdi	# tmp282,
	call	_ZN6MatrixD1Ev	#
	jmp	.L167	#
.L183:
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	movq	%rax, %rbx	#, tmp283
.L167:
	leaq	-1232(%rbp), %rax	#, tmp287
	movq	%rax, %rdi	# tmp287,
	call	_ZN6MatrixD1Ev	#
	jmp	.L168	#
.L182:
# ekf.cpp:143:     P = (MatIdentity(SS_X_LEN) - (Gain*H))*P;
	movq	%rax, %rbx	#, tmp288
.L168:
	leaq	-928(%rbp), %rax	#, tmp290
	movq	%rax, %rdi	# tmp290,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp288, D.77826
	movq	-24(%rbp), %rdx	# D.77828, tmp296
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp296
	je	.L169	#,
	call	__stack_chk_fail@PLT	#
.L169:
	movq	%rax, %rdi	# D.77826,
	call	_Unwind_Resume@PLT	#
.LEHE48:
.L185:
# ekf.cpp:147: }
	call	__stack_chk_fail@PLT	#
.L170:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2974:
	.section	.gcc_except_table
.LLSDA2974:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2974-.LLSDACSB2974
.LLSDACSB2974:
	.uleb128 .LEHB29-.LFB2974
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB2974
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L171-.LFB2974
	.uleb128 0
	.uleb128 .LEHB31-.LFB2974
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L172-.LFB2974
	.uleb128 0
	.uleb128 .LEHB32-.LFB2974
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L173-.LFB2974
	.uleb128 0
	.uleb128 .LEHB33-.LFB2974
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB2974
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L174-.LFB2974
	.uleb128 0
	.uleb128 .LEHB35-.LFB2974
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L175-.LFB2974
	.uleb128 0
	.uleb128 .LEHB36-.LFB2974
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L176-.LFB2974
	.uleb128 0
	.uleb128 .LEHB37-.LFB2974
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB38-.LFB2974
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L177-.LFB2974
	.uleb128 0
	.uleb128 .LEHB39-.LFB2974
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L178-.LFB2974
	.uleb128 0
	.uleb128 .LEHB40-.LFB2974
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L179-.LFB2974
	.uleb128 0
	.uleb128 .LEHB41-.LFB2974
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB2974
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L180-.LFB2974
	.uleb128 0
	.uleb128 .LEHB43-.LFB2974
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L181-.LFB2974
	.uleb128 0
	.uleb128 .LEHB44-.LFB2974
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB2974
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L182-.LFB2974
	.uleb128 0
	.uleb128 .LEHB46-.LFB2974
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L183-.LFB2974
	.uleb128 0
	.uleb128 .LEHB47-.LFB2974
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L184-.LFB2974
	.uleb128 0
	.uleb128 .LEHB48-.LFB2974
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
.LLSDACSE2974:
	.text
	.size	_ZN3EKF7bUpdateERK6MatrixS2_, .-_ZN3EKF7bUpdateERK6MatrixS2_
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	0
	.align 16
.LC3:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC4:
	.long	-500134854
	.long	1044740494
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	1749644930
	.long	1027352002
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
	.ident	"GCC: (GNU) 15.2.1 20260103"
	.section	.note.GNU-stack,"",@progbits
