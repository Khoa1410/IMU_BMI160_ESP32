	.file	"accel_ekf.cpp"
# GNU C++17 (GCC) version 15.2.1 20260103 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.1 20260103, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB1053:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# D.25218, D.25218
	movq	%rsi, -16(%rbp)	# __p, __p
# /usr/include//15.2.1/new:208: { return __p; }
	movq	-16(%rbp), %rax	# __p, _2
# /usr/include//15.2.1/new:208: { return __p; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1053:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, @function
_ZdlPvS_:
.LFB1055:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# D.25226, D.25226
	movq	%rsi, -16(%rbp)	# D.25227, D.25227
# /usr/include//15.2.1/new:219: { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1055:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.text._ZNSt11char_traitsIcE6assignERcRKc,"axG",@progbits,_ZNSt11char_traitsIcE6assignERcRKc,comdat
	.weak	_ZNSt11char_traitsIcE6assignERcRKc
	.type	_ZNSt11char_traitsIcE6assignERcRKc, @function
_ZNSt11char_traitsIcE6assignERcRKc:
.LFB1105:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __c1, __c1
	movq	%rsi, -16(%rbp)	# __c2, __c2
# /usr/include//15.2.1/bits/char_traits.h:352: 	__c1 = __c2;
	movq	-16(%rbp), %rax	# __c2, tmp99
	movzbl	(%rax), %edx	# *__c2_3(D), _1
# /usr/include//15.2.1/bits/char_traits.h:352: 	__c1 = __c2;
	movq	-8(%rbp), %rax	# __c1, tmp100
	movb	%dl, (%rax)	# _1, *__c1_4(D)
# /usr/include//15.2.1/bits/char_traits.h:353:       }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1105:
	.size	_ZNSt11char_traitsIcE6assignERcRKc, .-_ZNSt11char_traitsIcE6assignERcRKc
	.section	.text._ZNSt11char_traitsIcE4copyEPcPKcm,"axG",@progbits,_ZNSt11char_traitsIcE4copyEPcPKcm,comdat
	.weak	_ZNSt11char_traitsIcE4copyEPcPKcm
	.type	_ZNSt11char_traitsIcE4copyEPcPKcm, @function
_ZNSt11char_traitsIcE4copyEPcPKcm:
.LFB1112:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __s1, __s1
	movq	%rsi, -16(%rbp)	# __s2, __s2
	movq	%rdx, -24(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/char_traits.h:423: 	if (__n == 0)
	cmpq	$0, -24(%rbp)	#, __n
	jne	.L6	#,
# /usr/include//15.2.1/bits/char_traits.h:424: 	  return __s1;
	movq	-8(%rbp), %rax	# __s1, _1
	jmp	.L7	#
.L6:
# /usr/include//15.2.1/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	-8(%rbp), %rdx	# __s1, tmp100
	movq	-16(%rbp), %rax	# __s2, tmp101
	movq	%rdx, %rcx	# tmp100, tmp103
	movq	%rax, %rsi	# tmp101, tmp104
	movq	-24(%rbp), %rax	# __n, tmp105
	movq	%rax, %rdx	# tmp105,
	movq	%rcx, %rdi	# tmp103,
	call	memcpy@PLT	#
# /usr/include//15.2.1/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	nop	
.L7:
# /usr/include//15.2.1/bits/char_traits.h:430:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1112:
	.size	_ZNSt11char_traitsIcE4copyEPcPKcm, .-_ZNSt11char_traitsIcE4copyEPcPKcm
	.section	.rodata
.LC0:
	.string	"stod"
	.section	.text._ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm,"axG",@progbits,_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm,comdat
	.weak	_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm
	.type	_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm, @function
_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm:
.LFB1781:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __str, __str
	movq	%rsi, -16(%rbp)	# __idx, __idx
# /usr/include//15.2.1/bits/basic_string.h:4490:   { return __gnu_cxx::__stoa(&std::strtod, "stod", __str.c_str(), __idx); }
	movq	-8(%rbp), %rax	# __str, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv	#
	movq	%rax, %rdx	#, _1
# /usr/include//15.2.1/bits/basic_string.h:4490:   { return __gnu_cxx::__stoa(&std::strtod, "stod", __str.c_str(), __idx); }
	movq	-16(%rbp), %rax	# __idx, tmp102
	leaq	.LC0(%rip), %rsi	#, tmp103
	movq	strtod@GOTPCREL(%rip), %rcx	#, tmp105
	movq	%rcx, %rdi	# tmp105, tmp104
	movq	%rax, %rcx	# tmp102,
	call	_ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_	#
# /usr/include//15.2.1/bits/basic_string.h:4490:   { return __gnu_cxx::__stoa(&std::strtod, "stod", __str.c_str(), __idx); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1781:
	.size	_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm, .-_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm
	.section	.text._ZStorSt13_Ios_OpenmodeS_,"axG",@progbits,_ZStorSt13_Ios_OpenmodeS_,comdat
	.weak	_ZStorSt13_Ios_OpenmodeS_
	.type	_ZStorSt13_Ios_OpenmodeS_, @function
_ZStorSt13_Ios_OpenmodeS_:
.LFB2208:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# __a, __a
	movl	%esi, -8(%rbp)	# __b, __b
# /usr/include//15.2.1/bits/ios_base.h:151:   { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	-4(%rbp), %eax	# __a, tmp100
	orl	-8(%rbp), %eax	# __b, _3
# /usr/include//15.2.1/bits/ios_base.h:151:   { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2208:
	.size	_ZStorSt13_Ios_OpenmodeS_, .-_ZStorSt13_Ios_OpenmodeS_
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZN6Matrix5ProxyC2EPds,"axG",@progbits,_ZN6Matrix5ProxyC5EPds,comdat
	.align 2
	.weak	_ZN6Matrix5ProxyC2EPds
	.type	_ZN6Matrix5ProxyC2EPds, @function
_ZN6Matrix5ProxyC2EPds:
.LFB3363:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# _inpArr, _inpArr
	movl	%edx, %eax	# _maxCol, tmp98
	movw	%ax, -20(%rbp)	# tmp99, _maxCol
# library/ekf_accel/matrix.h:197:       _array.ptr = _inpArr;
	movq	-8(%rbp), %rax	# this, tmp100
	movq	-16(%rbp), %rdx	# _inpArr, tmp101
	movq	%rdx, (%rax)	# tmp101, this_2(D)->_array.ptr
# library/ekf_accel/matrix.h:198:       this->_maxCol = _maxCol;
	movq	-8(%rbp), %rax	# this, tmp102
	movzwl	-20(%rbp), %edx	# _maxCol, tmp103
	movw	%dx, 8(%rax)	# tmp103, this_2(D)->_maxCol
# library/ekf_accel/matrix.h:199:     }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3363:
	.size	_ZN6Matrix5ProxyC2EPds, .-_ZN6Matrix5ProxyC2EPds
	.weak	_ZN6Matrix5ProxyC1EPds
	.set	_ZN6Matrix5ProxyC1EPds,_ZN6Matrix5ProxyC2EPds
	.section	.text._ZN6MatrixC2EssNS_8InitZeroE,"axG",@progbits,_ZN6MatrixC5EssNS_8InitZeroE,comdat
	.align 2
	.weak	_ZN6MatrixC2EssNS_8InitZeroE
	.type	_ZN6MatrixC2EssNS_8InitZeroE, @function
_ZN6MatrixC2EssNS_8InitZeroE:
.LFB3371:
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
# library/ekf_accel/matrix.h:354:   this->i16row = _i16row;
	movq	-8(%rbp), %rax	# this, tmp102
	movzwl	-12(%rbp), %edx	# _i16row, tmp103
	movw	%dx, (%rax)	# tmp103, this_3(D)->i16row
# library/ekf_accel/matrix.h:355:   this->i16col = _i16col;
	movq	-8(%rbp), %rax	# this, tmp104
	movzwl	-16(%rbp), %edx	# _i16col, tmp105
	movw	%dx, 2(%rax)	# tmp105, this_3(D)->i16col
# library/ekf_accel/matrix.h:357:   if (_init == InitMatWithZero) {
	cmpl	$0, -20(%rbp)	#, _init
	jne	.L15	#,
# library/ekf_accel/matrix.h:358:     this->vSetHomogen(0.0);
	movq	-8(%rbp), %rax	# this, tmp106
	movq	.LC1(%rip), %rdx	#, tmp107
	movq	%rdx, %xmm0	# tmp107,
	movq	%rax, %rdi	# tmp106,
	call	_ZN6Matrix11vSetHomogenEd	#
.L15:
# library/ekf_accel/matrix.h:360: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3371:
	.size	_ZN6MatrixC2EssNS_8InitZeroE, .-_ZN6MatrixC2EssNS_8InitZeroE
	.weak	_ZN6MatrixC1EssNS_8InitZeroE
	.set	_ZN6MatrixC1EssNS_8InitZeroE,_ZN6MatrixC2EssNS_8InitZeroE
	.section	.text._ZN6MatrixC2ERKS_,"axG",@progbits,_ZN6MatrixC5ERKS_,comdat
	.align 2
	.weak	_ZN6MatrixC2ERKS_
	.type	_ZN6MatrixC2ERKS_, @function
_ZN6MatrixC2ERKS_:
.LFB3377:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# old_obj, old_obj
# library/ekf_accel/matrix.h:381:   this->i16row = old_obj.i16row;
	movq	-48(%rbp), %rax	# old_obj, tmp107
	movzwl	(%rax), %edx	# old_obj_17(D)->i16row, _1
# library/ekf_accel/matrix.h:381:   this->i16row = old_obj.i16row;
	movq	-40(%rbp), %rax	# this, tmp108
	movw	%dx, (%rax)	# _1, this_15(D)->i16row
# library/ekf_accel/matrix.h:382:   this->i16col = old_obj.i16col;
	movq	-48(%rbp), %rax	# old_obj, tmp109
	movzwl	2(%rax), %edx	# old_obj_17(D)->i16col, _2
# library/ekf_accel/matrix.h:382:   this->i16col = old_obj.i16col;
	movq	-40(%rbp), %rax	# this, tmp110
	movw	%dx, 2(%rax)	# _2, this_15(D)->i16col
# library/ekf_accel/matrix.h:384:   const float_prec *sourc = old_obj.floatData[0];
	movq	-48(%rbp), %rax	# old_obj, tmp114
	addq	$8, %rax	#, tmp113
	movq	%rax, -16(%rbp)	# tmp113, sourc
# library/ekf_accel/matrix.h:385:   float_prec *desti = this->floatData[0];
	movq	-40(%rbp), %rax	# this, tmp118
	addq	$8, %rax	#, tmp117
	movq	%rax, -8(%rbp)	# tmp117, desti
# library/ekf_accel/matrix.h:387:   for (int16_t _i = 0; _i < i16row; _i++) {
	movw	$0, -18(%rbp)	#, _i
# library/ekf_accel/matrix.h:387:   for (int16_t _i = 0; _i < i16row; _i++) {
	jmp	.L17	#
.L18:
# library/ekf_accel/matrix.h:389:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	movq	-40(%rbp), %rax	# this, tmp119
	movzwl	2(%rax), %eax	# this_15(D)->i16col, _3
# library/ekf_accel/matrix.h:389:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	movswq	%ax, %rax	# _3, _4
# library/ekf_accel/matrix.h:389:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	leaq	0(,%rax,8), %rdx	#, _5
	movq	-16(%rbp), %rcx	# sourc, tmp120
	movq	-8(%rbp), %rax	# desti, tmp121
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	memcpy@PLT	#
# library/ekf_accel/matrix.h:390:     sourc += (MATRIX_MAXIMUM_SIZE);
	addq	$48, -16(%rbp)	#, sourc
# library/ekf_accel/matrix.h:391:     desti += (MATRIX_MAXIMUM_SIZE);
	addq	$48, -8(%rbp)	#, desti
# library/ekf_accel/matrix.h:387:   for (int16_t _i = 0; _i < i16row; _i++) {
	movzwl	-18(%rbp), %eax	# _i, _i.56_6
	addl	$1, %eax	#, _8
	movw	%ax, -18(%rbp)	# _8, _i
.L17:
# library/ekf_accel/matrix.h:387:   for (int16_t _i = 0; _i < i16row; _i++) {
	movq	-40(%rbp), %rax	# this, tmp122
	movzwl	(%rax), %eax	# this_15(D)->i16row, _9
# library/ekf_accel/matrix.h:387:   for (int16_t _i = 0; _i < i16row; _i++) {
	cmpw	%ax, -18(%rbp)	# _9, _i
	jl	.L18	#,
# library/ekf_accel/matrix.h:393: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3377:
	.size	_ZN6MatrixC2ERKS_, .-_ZN6MatrixC2ERKS_
	.weak	_ZN6MatrixC1ERKS_
	.set	_ZN6MatrixC1ERKS_,_ZN6MatrixC2ERKS_
	.section	.text._ZN6MatrixaSERKS_,"axG",@progbits,_ZN6MatrixaSERKS_,comdat
	.align 2
	.weak	_ZN6MatrixaSERKS_
	.type	_ZN6MatrixaSERKS_, @function
_ZN6MatrixaSERKS_:
.LFB3379:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# obj, obj
# library/ekf_accel/matrix.h:398:   this->i16row = obj.i16row;
	movq	-48(%rbp), %rax	# obj, tmp109
	movzwl	(%rax), %edx	# obj_15(D)->i16row, _1
# library/ekf_accel/matrix.h:398:   this->i16row = obj.i16row;
	movq	-40(%rbp), %rax	# this, tmp110
	movw	%dx, (%rax)	# _1, this_16(D)->i16row
# library/ekf_accel/matrix.h:399:   this->i16col = obj.i16col;
	movq	-48(%rbp), %rax	# obj, tmp111
	movzwl	2(%rax), %edx	# obj_15(D)->i16col, _2
# library/ekf_accel/matrix.h:399:   this->i16col = obj.i16col;
	movq	-40(%rbp), %rax	# this, tmp112
	movw	%dx, 2(%rax)	# _2, this_16(D)->i16col
# library/ekf_accel/matrix.h:401:   const float_prec *sourc = obj.floatData[0];
	movq	-48(%rbp), %rax	# obj, tmp116
	addq	$8, %rax	#, tmp115
	movq	%rax, -16(%rbp)	# tmp115, sourc
# library/ekf_accel/matrix.h:402:   float_prec *desti = this->floatData[0];
	movq	-40(%rbp), %rax	# this, tmp120
	addq	$8, %rax	#, tmp119
	movq	%rax, -8(%rbp)	# tmp119, desti
# library/ekf_accel/matrix.h:404:   for (int16_t _i = 0; _i < i16row; _i++) {
	movw	$0, -18(%rbp)	#, _i
# library/ekf_accel/matrix.h:404:   for (int16_t _i = 0; _i < i16row; _i++) {
	jmp	.L20	#
.L21:
# library/ekf_accel/matrix.h:406:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	movq	-40(%rbp), %rax	# this, tmp121
	movzwl	2(%rax), %eax	# this_16(D)->i16col, _3
# library/ekf_accel/matrix.h:406:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	movswq	%ax, %rax	# _3, _4
# library/ekf_accel/matrix.h:406:     memcpy(desti, sourc, sizeof(float_prec) * size_t((this->i16col)));
	leaq	0(,%rax,8), %rdx	#, _5
	movq	-16(%rbp), %rcx	# sourc, tmp122
	movq	-8(%rbp), %rax	# desti, tmp123
	movq	%rcx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	memcpy@PLT	#
# library/ekf_accel/matrix.h:407:     sourc += (MATRIX_MAXIMUM_SIZE);
	addq	$48, -16(%rbp)	#, sourc
# library/ekf_accel/matrix.h:408:     desti += (MATRIX_MAXIMUM_SIZE);
	addq	$48, -8(%rbp)	#, desti
# library/ekf_accel/matrix.h:404:   for (int16_t _i = 0; _i < i16row; _i++) {
	movzwl	-18(%rbp), %eax	# _i, _i.5_6
	addl	$1, %eax	#, _8
	movw	%ax, -18(%rbp)	# _8, _i
.L20:
# library/ekf_accel/matrix.h:404:   for (int16_t _i = 0; _i < i16row; _i++) {
	movq	-40(%rbp), %rax	# this, tmp124
	movzwl	(%rax), %eax	# this_16(D)->i16row, _9
# library/ekf_accel/matrix.h:404:   for (int16_t _i = 0; _i < i16row; _i++) {
	cmpw	%ax, -18(%rbp)	# _9, _i
	jl	.L21	#,
# library/ekf_accel/matrix.h:411:   return *this;
	movq	-40(%rbp), %rax	# this, _22
# library/ekf_accel/matrix.h:412: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3379:
	.size	_ZN6MatrixaSERKS_, .-_ZN6MatrixaSERKS_
	.section	.text._ZN6MatrixD2Ev,"axG",@progbits,_ZN6MatrixD5Ev,comdat
	.align 2
	.weak	_ZN6MatrixD2Ev
	.type	_ZN6MatrixD2Ev, @function
_ZN6MatrixD2Ev:
.LFB3381:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# library/ekf_accel/matrix.h:418: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3381:
	.size	_ZN6MatrixD2Ev, .-_ZN6MatrixD2Ev
	.weak	_ZN6MatrixD1Ev
	.set	_ZN6MatrixD1Ev,_ZN6MatrixD2Ev
	.section	.rodata
	.align 8
.LC2:
	.string	"Matrix index out-of-bounds (at row evaluation)"
	.align 8
.LC3:
	.string	"Matrix index out-of-bounds (at column _column)"
	.section	.text._ZN6MatrixclEss,"axG",@progbits,_ZN6MatrixclEss,comdat
	.align 2
	.weak	_ZN6MatrixclEss
	.type	_ZN6MatrixclEss, @function
_ZN6MatrixclEss:
.LFB3383:
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
# library/ekf_accel/matrix.h:428:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	cmpw	$0, -12(%rbp)	#, _row
	js	.L25	#,
# library/ekf_accel/matrix.h:428:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	movq	-8(%rbp), %rax	# this, tmp108
	movzwl	(%rax), %eax	# this_9(D)->i16row, _1
	cmpw	%ax, -12(%rbp)	# _1, _row
	jge	.L25	#,
# library/ekf_accel/matrix.h:428:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	cmpw	$5, -12(%rbp)	#, _row
	jle	.L26	#,
.L25:
# library/ekf_accel/matrix.h:428:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	leaq	.LC2(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	_Z14SPEW_THE_ERRORPKc@PLT	#
.L26:
# library/ekf_accel/matrix.h:430:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	cmpw	$0, -16(%rbp)	#, _col
	js	.L27	#,
# library/ekf_accel/matrix.h:430:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	movq	-8(%rbp), %rax	# this, tmp110
	movzwl	2(%rax), %eax	# this_9(D)->i16col, _2
	cmpw	%ax, -16(%rbp)	# _2, _col
	jge	.L27	#,
# library/ekf_accel/matrix.h:430:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	cmpw	$5, -16(%rbp)	#, _col
	jle	.L28	#,
.L27:
# library/ekf_accel/matrix.h:430:   ASSERT((_col >= 0) && (_col < this->i16col) && (_col < MATRIX_MAXIMUM_SIZE),
	leaq	.LC3(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	_Z14SPEW_THE_ERRORPKc@PLT	#
.L28:
# library/ekf_accel/matrix.h:435:   return this->floatData[_row][_col];
	movswl	-12(%rbp), %eax	# _row, _3
# library/ekf_accel/matrix.h:435:   return this->floatData[_row][_col];
	movswl	-16(%rbp), %edx	# _col, _4
# library/ekf_accel/matrix.h:435:   return this->floatData[_row][_col];
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
# library/ekf_accel/matrix.h:436: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3383:
	.size	_ZN6MatrixclEss, .-_ZN6MatrixclEss
	.section	.rodata
	.align 8
.LC4:
	.string	"Matrix index out-of-bounds (at column evaluation)"
	.section	.text._ZN6Matrix5ProxyixEs,"axG",@progbits,_ZN6Matrix5ProxyixEs,comdat
	.align 2
	.weak	_ZN6Matrix5ProxyixEs
	.type	_ZN6Matrix5ProxyixEs, @function
_ZN6Matrix5ProxyixEs:
.LFB3385:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movl	%esi, %eax	# _col, tmp104
	movw	%ax, -12(%rbp)	# tmp105, _col
# library/ekf_accel/matrix.h:456:   ASSERT((_col >= 0) && (_col < this->_maxCol) && (_col < MATRIX_MAXIMUM_SIZE),
	cmpw	$0, -12(%rbp)	#, _col
	js	.L31	#,
# library/ekf_accel/matrix.h:456:   ASSERT((_col >= 0) && (_col < this->_maxCol) && (_col < MATRIX_MAXIMUM_SIZE),
	movq	-8(%rbp), %rax	# this, tmp106
	movzwl	8(%rax), %eax	# this_8(D)->_maxCol, _1
	cmpw	%ax, -12(%rbp)	# _1, _col
	jge	.L31	#,
# library/ekf_accel/matrix.h:456:   ASSERT((_col >= 0) && (_col < this->_maxCol) && (_col < MATRIX_MAXIMUM_SIZE),
	cmpw	$5, -12(%rbp)	#, _col
	jle	.L32	#,
.L31:
# library/ekf_accel/matrix.h:456:   ASSERT((_col >= 0) && (_col < this->_maxCol) && (_col < MATRIX_MAXIMUM_SIZE),
	leaq	.LC4(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	_Z14SPEW_THE_ERRORPKc@PLT	#
.L32:
# library/ekf_accel/matrix.h:461:   return _array.ptr[_col];
	movq	-8(%rbp), %rax	# this, tmp108
	movq	(%rax), %rax	# this_8(D)->_array.ptr, _2
# library/ekf_accel/matrix.h:461:   return _array.ptr[_col];
	movswq	-12(%rbp), %rdx	# _col, _3
# library/ekf_accel/matrix.h:461:   return _array.ptr[_col];
	salq	$3, %rdx	#, _4
	addq	%rdx, %rax	# _4, _10
# library/ekf_accel/matrix.h:462: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3385:
	.size	_ZN6Matrix5ProxyixEs, .-_ZN6Matrix5ProxyixEs
	.section	.text._ZN6MatrixixEs,"axG",@progbits,_ZN6MatrixixEs,comdat
	.align 2
	.weak	_ZN6MatrixixEs
	.type	_ZN6MatrixixEs, @function
_ZN6MatrixixEs:
.LFB3387:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
	movl	%esi, %eax	# _row, tmp105
	movw	%ax, -44(%rbp)	# tmp106, _row
# library/ekf_accel/matrix.h:472: inline Matrix::Proxy Matrix::operator[](const int16_t _row) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -8(%rbp)	# tmp107, D.90273
	xorl	%eax, %eax	# tmp107
# library/ekf_accel/matrix.h:474:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	cmpw	$0, -44(%rbp)	#, _row
	js	.L35	#,
# library/ekf_accel/matrix.h:474:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	movq	-40(%rbp), %rax	# this, tmp108
	movzwl	(%rax), %eax	# this_9(D)->i16row, _1
	cmpw	%ax, -44(%rbp)	# _1, _row
	jge	.L35	#,
# library/ekf_accel/matrix.h:474:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	cmpw	$5, -44(%rbp)	#, _row
	jle	.L36	#,
.L35:
# library/ekf_accel/matrix.h:474:   ASSERT((_row >= 0) && (_row < this->i16row) && (_row < MATRIX_MAXIMUM_SIZE),
	leaq	.LC2(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	_Z14SPEW_THE_ERRORPKc@PLT	#
.L36:
# library/ekf_accel/matrix.h:480:                this->i16col); /* Parsing column index for bound checking */
	movq	-40(%rbp), %rax	# this, tmp110
	movzwl	2(%rax), %eax	# this_9(D)->i16col, _2
# library/ekf_accel/matrix.h:480:                this->i16col); /* Parsing column index for bound checking */
	movswl	%ax, %ecx	# _2, _3
# library/ekf_accel/matrix.h:479:   return Proxy(floatData[_row],
	movswl	-44(%rbp), %eax	# _row, _4
# library/ekf_accel/matrix.h:479:   return Proxy(floatData[_row],
	movslq	%eax, %rdx	# _4, tmp111
	movq	%rdx, %rax	# tmp111, tmp112
	addq	%rax, %rax	# tmp112
	addq	%rdx, %rax	# tmp111, tmp112
	salq	$4, %rax	#, tmp113
	movq	-40(%rbp), %rdx	# this, tmp115
	addq	%rdx, %rax	# tmp115, tmp114
	leaq	8(%rax), %rsi	#, _5
# library/ekf_accel/matrix.h:480:                this->i16col); /* Parsing column index for bound checking */
	leaq	-32(%rbp), %rax	#, tmp116
	movl	%ecx, %edx	# _3,
	movq	%rax, %rdi	# tmp116,
	call	_ZN6Matrix5ProxyC1EPds	#
# library/ekf_accel/matrix.h:480:                this->i16col); /* Parsing column index for bound checking */
	movq	-32(%rbp), %rax	# D.77081, D.89470
	movq	-24(%rbp), %rdx	# D.77081, D.89470
# library/ekf_accel/matrix.h:481: }
	movq	-8(%rbp), %rcx	# D.90273, tmp118
	subq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	je	.L38	#,
	call	__stack_chk_fail@PLT	#
.L38:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3387:
	.size	_ZN6MatrixixEs, .-_ZN6MatrixixEs
	.section	.text._ZN6Matrix11vSetHomogenEd,"axG",@progbits,_ZN6Matrix11vSetHomogenEd,comdat
	.align 2
	.weak	_ZN6Matrix11vSetHomogenEd
	.type	_ZN6Matrix11vSetHomogenEd, @function
_ZN6Matrix11vSetHomogenEd:
.LFB3407:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movsd	%xmm0, -32(%rbp)	# _val, _val
# library/ekf_accel/matrix.h:710:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movw	$0, -4(%rbp)	#, _i
# library/ekf_accel/matrix.h:710:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	jmp	.L40	#
.L43:
# library/ekf_accel/matrix.h:711:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movw	$0, -2(%rbp)	#, _j
# library/ekf_accel/matrix.h:711:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	jmp	.L41	#
.L42:
# library/ekf_accel/matrix.h:712:       (*this)(_i, _j) = _val;
	movsd	-32(%rbp), %xmm1	# _val, _val.19_1
	movsd	%xmm1, -40(%rbp)	# _val.19_1, %sfp
# library/ekf_accel/matrix.h:712:       (*this)(_i, _j) = _val;
	movswl	-2(%rbp), %edx	# _j, _2
	movswl	-4(%rbp), %ecx	# _i, _3
	movq	-24(%rbp), %rax	# this, tmp110
	movl	%ecx, %esi	# _3,
	movq	%rax, %rdi	# tmp110,
	call	_ZN6MatrixclEss	#
# library/ekf_accel/matrix.h:712:       (*this)(_i, _j) = _val;
	movsd	-40(%rbp), %xmm1	# %sfp, _val.19_1
	movsd	%xmm1, (%rax)	# _val.19_1, *_4
# library/ekf_accel/matrix.h:711:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movzwl	-2(%rbp), %eax	# _j, _j.20_5
	addl	$1, %eax	#, _7
	movw	%ax, -2(%rbp)	# _7, _j
.L41:
# library/ekf_accel/matrix.h:711:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movq	-24(%rbp), %rax	# this, tmp111
	movzwl	2(%rax), %eax	# this_19(D)->i16col, _8
# library/ekf_accel/matrix.h:711:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	cmpw	%ax, -2(%rbp)	# _8, _j
	jl	.L42	#,
# library/ekf_accel/matrix.h:710:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movzwl	-4(%rbp), %eax	# _i, _i.22_9
	addl	$1, %eax	#, _11
	movw	%ax, -4(%rbp)	# _11, _i
.L40:
# library/ekf_accel/matrix.h:710:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movq	-24(%rbp), %rax	# this, tmp112
	movzwl	(%rax), %eax	# this_19(D)->i16row, _12
# library/ekf_accel/matrix.h:710:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	cmpw	%ax, -4(%rbp)	# _12, _i
	jl	.L43	#,
# library/ekf_accel/matrix.h:715: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3407:
	.size	_ZN6Matrix11vSetHomogenEd, .-_ZN6Matrix11vSetHomogenEd
	.section	.text._ZN6Matrix10vSetToZeroEv,"axG",@progbits,_ZN6Matrix10vSetToZeroEv,comdat
	.align 2
	.weak	_ZN6Matrix10vSetToZeroEv
	.type	_ZN6Matrix10vSetToZeroEv, @function
_ZN6Matrix10vSetToZeroEv:
.LFB3408:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# library/ekf_accel/matrix.h:717: inline void Matrix::vSetToZero(void) { this->vSetHomogen(0.0); }
	movq	-8(%rbp), %rax	# this, tmp98
	movq	.LC1(%rip), %rdx	#, tmp99
	movq	%rdx, %xmm0	# tmp99,
	movq	%rax, %rdi	# tmp98,
	call	_ZN6Matrix11vSetHomogenEd	#
# library/ekf_accel/matrix.h:717: inline void Matrix::vSetToZero(void) { this->vSetHomogen(0.0); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3408:
	.size	_ZN6Matrix10vSetToZeroEv, .-_ZN6Matrix10vSetToZeroEv
	.section	.text._ZN6Matrix8vSetDiagEd,"axG",@progbits,_ZN6Matrix8vSetDiagEd,comdat
	.align 2
	.weak	_ZN6Matrix8vSetDiagEd
	.type	_ZN6Matrix8vSetDiagEd, @function
_ZN6Matrix8vSetDiagEd:
.LFB3410:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movsd	%xmm0, -32(%rbp)	# _val, _val
# library/ekf_accel/matrix.h:729:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movw	$0, -4(%rbp)	#, _i
# library/ekf_accel/matrix.h:729:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	jmp	.L46	#
.L51:
# library/ekf_accel/matrix.h:730:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movw	$0, -2(%rbp)	#, _j
# library/ekf_accel/matrix.h:730:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	jmp	.L47	#
.L50:
# library/ekf_accel/matrix.h:731:       if (_i == _j) {
	movzwl	-4(%rbp), %eax	# _i, tmp113
	cmpw	-2(%rbp), %ax	# _j, tmp113
	jne	.L48	#,
# library/ekf_accel/matrix.h:732:         (*this)(_i, _j) = _val;
	movsd	-32(%rbp), %xmm1	# _val, _val.0_1
	movsd	%xmm1, -40(%rbp)	# _val.0_1, %sfp
# library/ekf_accel/matrix.h:732:         (*this)(_i, _j) = _val;
	movswl	-2(%rbp), %edx	# _j, _2
	movswl	-4(%rbp), %ecx	# _i, _3
	movq	-24(%rbp), %rax	# this, tmp114
	movl	%ecx, %esi	# _3,
	movq	%rax, %rdi	# tmp114,
	call	_ZN6MatrixclEss	#
# library/ekf_accel/matrix.h:732:         (*this)(_i, _j) = _val;
	movsd	-40(%rbp), %xmm1	# %sfp, _val.0_1
	movsd	%xmm1, (%rax)	# _val.0_1, *_4
	jmp	.L49	#
.L48:
# library/ekf_accel/matrix.h:734:         (*this)(_i, _j) = 0.0;
	movswl	-2(%rbp), %edx	# _j, _5
	movswl	-4(%rbp), %ecx	# _i, _6
	movq	-24(%rbp), %rax	# this, tmp115
	movl	%ecx, %esi	# _6,
	movq	%rax, %rdi	# tmp115,
	call	_ZN6MatrixclEss	#
# library/ekf_accel/matrix.h:734:         (*this)(_i, _j) = 0.0;
	pxor	%xmm0, %xmm0	# tmp116
	movsd	%xmm0, (%rax)	# tmp116, *_7
.L49:
# library/ekf_accel/matrix.h:730:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movzwl	-2(%rbp), %eax	# _j, _j.1_8
	addl	$1, %eax	#, _10
	movw	%ax, -2(%rbp)	# _10, _j
.L47:
# library/ekf_accel/matrix.h:730:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	movq	-24(%rbp), %rax	# this, tmp117
	movzwl	2(%rax), %eax	# this_23(D)->i16col, _11
# library/ekf_accel/matrix.h:730:     for (int16_t _j = 0; _j < this->i16col; _j++) {
	cmpw	%ax, -2(%rbp)	# _11, _j
	jl	.L50	#,
# library/ekf_accel/matrix.h:729:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movzwl	-4(%rbp), %eax	# _i, _i.3_12
	addl	$1, %eax	#, _14
	movw	%ax, -4(%rbp)	# _14, _i
.L46:
# library/ekf_accel/matrix.h:729:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	movq	-24(%rbp), %rax	# this, tmp118
	movzwl	(%rax), %eax	# this_23(D)->i16row, _15
# library/ekf_accel/matrix.h:729:   for (int16_t _i = 0; _i < this->i16row; _i++) {
	cmpw	%ax, -4(%rbp)	# _15, _i
	jl	.L51	#,
# library/ekf_accel/matrix.h:738: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3410:
	.size	_ZN6Matrix8vSetDiagEd, .-_ZN6Matrix8vSetDiagEd
	.section	.text._ZN6Matrix12vSetIdentityEv,"axG",@progbits,_ZN6Matrix12vSetIdentityEv,comdat
	.align 2
	.weak	_ZN6Matrix12vSetIdentityEv
	.type	_ZN6Matrix12vSetIdentityEv, @function
_ZN6Matrix12vSetIdentityEv:
.LFB3411:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# library/ekf_accel/matrix.h:740: inline void Matrix::vSetIdentity(void) { this->vSetDiag(1.0); }
	movq	.LC5(%rip), %rdx	#, tmp98
	movq	-8(%rbp), %rax	# this, tmp99
	movq	%rdx, %xmm0	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	_ZN6Matrix8vSetDiagEd	#
# library/ekf_accel/matrix.h:740: inline void Matrix::vSetIdentity(void) { this->vSetDiag(1.0); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3411:
	.size	_ZN6Matrix12vSetIdentityEv, .-_ZN6Matrix12vSetIdentityEv
	.section	.text._ZNK3EKF4GetXEv,"axG",@progbits,_ZNK3EKF4GetXEv,comdat
	.align 2
	.weak	_ZNK3EKF4GetXEv
	.type	_ZNK3EKF4GetXEv, @function
_ZNK3EKF4GetXEv:
.LFB3429:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -16(%rbp)	# this, this
# library/ekf_accel/ekf.h:23:     const Matrix GetX()   const { return X_Est; }
	movq	-16(%rbp), %rax	# this, tmp99
	leaq	32(%rax), %rdx	#, _1
	movq	-8(%rbp), %rax	# <retval>, tmp100
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# tmp100,
	call	_ZN6MatrixC1ERKS_	#
# library/ekf_accel/ekf.h:23:     const Matrix GetX()   const { return X_Est; }
	movq	-8(%rbp), %rax	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3429:
	.size	_ZNK3EKF4GetXEv, .-_ZNK3EKF4GetXEv
	.text
	.globl	_Z6F_funcR6MatrixRKS_S2_
	.type	_Z6F_funcR6MatrixRKS_S2_, @function
_Z6F_funcR6MatrixRKS_S2_:
.LFB3433:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# F, F
	movq	%rsi, -16(%rbp)	# X, X
	movq	%rdx, -24(%rbp)	# U, U
# accel_ekf.cpp:22:   F.vSetIdentity();
	movq	-8(%rbp), %rax	# F, tmp100
	movq	%rax, %rdi	# tmp100,
	call	_ZN6Matrix12vSetIdentityEv	#
# accel_ekf.cpp:23:   return true;
	movl	$1, %eax	#, _4
# accel_ekf.cpp:24: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3433:
	.size	_Z6F_funcR6MatrixRKS_S2_, .-_Z6F_funcR6MatrixRKS_S2_
	.globl	_Z12Predict_funcR6MatrixRKS_S2_
	.type	_Z12Predict_funcR6MatrixRKS_S2_, @function
_Z12Predict_funcR6MatrixRKS_S2_:
.LFB3434:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# X_Next, X_Next
	movq	%rsi, -16(%rbp)	# X, X
	movq	%rdx, -24(%rbp)	# U, U
# accel_ekf.cpp:28:   X_Next = X;
	movq	-16(%rbp), %rdx	# X, tmp100
	movq	-8(%rbp), %rax	# X_Next, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	_ZN6MatrixaSERKS_	#
# accel_ekf.cpp:29:   return true;
	movl	$1, %eax	#, _5
# accel_ekf.cpp:30: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3434:
	.size	_Z12Predict_funcR6MatrixRKS_S2_, .-_Z12Predict_funcR6MatrixRKS_S2_
	.globl	_Z6H_funcR6MatrixRKS_S2_
	.type	_Z6H_funcR6MatrixRKS_S2_, @function
_Z6H_funcR6MatrixRKS_S2_:
.LFB3435:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# H, H
	movq	%rsi, -16(%rbp)	# X, X
	movq	%rdx, -24(%rbp)	# U, U
# accel_ekf.cpp:34:   H.vSetIdentity();
	movq	-8(%rbp), %rax	# H, tmp100
	movq	%rax, %rdi	# tmp100,
	call	_ZN6Matrix12vSetIdentityEv	#
# accel_ekf.cpp:35:   return true;
	movl	$1, %eax	#, _4
# accel_ekf.cpp:36: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3435:
	.size	_Z6H_funcR6MatrixRKS_S2_, .-_Z6H_funcR6MatrixRKS_S2_
	.globl	_Z12Measure_funcR6MatrixRKS_S2_
	.type	_Z12Measure_funcR6MatrixRKS_S2_, @function
_Z12Measure_funcR6MatrixRKS_S2_:
.LFB3436:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# Y, Y
	movq	%rsi, -16(%rbp)	# X, X
	movq	%rdx, -24(%rbp)	# U, U
# accel_ekf.cpp:40:   Y = X;
	movq	-16(%rbp), %rdx	# X, tmp100
	movq	-8(%rbp), %rax	# Y, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	_ZN6MatrixaSERKS_	#
# accel_ekf.cpp:41:   return true;
	movl	$1, %eax	#, _5
# accel_ekf.cpp:42: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3436:
	.size	_Z12Measure_funcR6MatrixRKS_S2_, .-_Z12Measure_funcR6MatrixRKS_S2_
	.section	.text._ZN3EKFD2Ev,"axG",@progbits,_ZN3EKFD5Ev,comdat
	.align 2
	.weak	_ZN3EKFD2Ev
	.type	_ZN3EKFD2Ev, @function
_ZN3EKFD2Ev:
.LFB3439:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# library/ekf_accel/ekf.h:13: class EKF
	movq	-8(%rbp), %rax	# this, tmp108
	addq	$2696, %rax	#, _1
	movq	%rax, %rdi	# _1,
	call	_ZN6MatrixD1Ev	#
# library/ekf_accel/ekf.h:13: class EKF
	movq	-8(%rbp), %rax	# this, tmp109
	addq	$2400, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	_ZN6MatrixD1Ev	#
# library/ekf_accel/ekf.h:13: class EKF
	movq	-8(%rbp), %rax	# this, tmp110
	addq	$2104, %rax	#, _3
	movq	%rax, %rdi	# _3,
	call	_ZN6MatrixD1Ev	#
# library/ekf_accel/ekf.h:13: class EKF
	movq	-8(%rbp), %rax	# this, tmp111
	addq	$1808, %rax	#, _4
	movq	%rax, %rdi	# _4,
	call	_ZN6MatrixD1Ev	#
# library/ekf_accel/ekf.h:13: class EKF
	movq	-8(%rbp), %rax	# this, tmp112
	addq	$1512, %rax	#, _5
	movq	%rax, %rdi	# _5,
	call	_ZN6MatrixD1Ev	#
# library/ekf_accel/ekf.h:13: class EKF
	movq	-8(%rbp), %rax	# this, tmp113
	addq	$1216, %rax	#, _6
	movq	%rax, %rdi	# _6,
	call	_ZN6MatrixD1Ev	#
# library/ekf_accel/ekf.h:13: class EKF
	movq	-8(%rbp), %rax	# this, tmp114
	addq	$920, %rax	#, _7
	movq	%rax, %rdi	# _7,
	call	_ZN6MatrixD1Ev	#
# library/ekf_accel/ekf.h:13: class EKF
	movq	-8(%rbp), %rax	# this, tmp115
	addq	$624, %rax	#, _8
	movq	%rax, %rdi	# _8,
	call	_ZN6MatrixD1Ev	#
# library/ekf_accel/ekf.h:13: class EKF
	movq	-8(%rbp), %rax	# this, tmp116
	addq	$328, %rax	#, _9
	movq	%rax, %rdi	# _9,
	call	_ZN6MatrixD1Ev	#
# library/ekf_accel/ekf.h:13: class EKF
	movq	-8(%rbp), %rax	# this, tmp117
	addq	$32, %rax	#, _10
	movq	%rax, %rdi	# _10,
	call	_ZN6MatrixD1Ev	#
# library/ekf_accel/ekf.h:13: class EKF
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3439:
	.size	_ZN3EKFD2Ev, .-_ZN3EKFD2Ev
	.weak	_ZN3EKFD1Ev
	.set	_ZN3EKFD1Ev,_ZN3EKFD2Ev
	.section	.text._ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD2Ev:
.LFB3445:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	-24(%rbp), %rax	# this, tmp98
	movq	%rax, -8(%rbp)	# tmp98, this
# /usr/include//15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	movq	-8(%rbp), %rax	# this, tmp99
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt15__new_allocatorI7IMUDataED2Ev	#
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:139:       struct _Vector_impl
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3445:
	.size	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI7IMUDataSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7IMUDataSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI7IMUDataSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseI7IMUDataSaIS0_EEC2Ev:
.LFB3447:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:321:       _Vector_base() = default;
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC1Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3447:
	.size	_ZNSt12_Vector_baseI7IMUDataSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI7IMUDataSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI7IMUDataSaIS0_EEC1Ev,_ZNSt12_Vector_baseI7IMUDataSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EEC2Ev
	.type	_ZNSt6vectorI7IMUDataSaIS0_EEC2Ev, @function
_ZNSt6vectorI7IMUDataSaIS0_EEC2Ev:
.LFB3449:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:561:       vector() = default;
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseI7IMUDataSaIS0_EEC2Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3449:
	.size	_ZNSt6vectorI7IMUDataSaIS0_EEC2Ev, .-_ZNSt6vectorI7IMUDataSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EEC1Ev
	.set	_ZNSt6vectorI7IMUDataSaIS0_EEC1Ev,_ZNSt6vectorI7IMUDataSaIS0_EEC2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev:
.LFB3455:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	-24(%rbp), %rax	# this, tmp98
	movq	%rax, -8(%rbp)	# tmp98, this
# /usr/include//15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	movq	-8(%rbp), %rax	# this, tmp99
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev	#
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:139:       struct _Vector_impl
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3455:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev:
.LFB3457:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:321:       _Vector_base() = default;
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3457:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev:
.LFB3459:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:561:       vector() = default;
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3459:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.section	.text._ZN7IMUDataC2Ev,"axG",@progbits,_ZN7IMUDataC5Ev,comdat
	.align 2
	.weak	_ZN7IMUDataC2Ev
	.type	_ZN7IMUDataC2Ev, @function
_ZN7IMUDataC2Ev:
.LFB3462:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# accel_ekf.cpp:12: struct IMUData {
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3462:
	.size	_ZN7IMUDataC2Ev, .-_ZN7IMUDataC2Ev
	.weak	_ZN7IMUDataC1Ev
	.set	_ZN7IMUDataC1Ev,_ZN7IMUDataC2Ev
	.section	.text._ZN7IMUDataD2Ev,"axG",@progbits,_ZN7IMUDataD5Ev,comdat
	.align 2
	.weak	_ZN7IMUDataD2Ev
	.type	_ZN7IMUDataD2Ev, @function
_ZN7IMUDataD2Ev:
.LFB3465:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# accel_ekf.cpp:12: struct IMUData {
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3465:
	.size	_ZN7IMUDataD2Ev, .-_ZN7IMUDataD2Ev
	.weak	_ZN7IMUDataD1Ev
	.set	_ZN7IMUDataD1Ev,_ZN7IMUDataD2Ev
	.section	.rodata
.LC9:
	.string	"fusioned.csv"
	.align 8
.LC10:
	.string	"Error: Could not open fusioned.csv"
.LC11:
	.string	"fusioned_ekf.csv"
	.align 8
.LC12:
	.string	"Error: Could not create fusioned_ekf.csv"
	.align 8
.LC13:
	.string	",ekf_accel_x,ekf_accel_y,ekf_accel_z"
.LC14:
	.string	"Error: Empty input file"
.LC15:
	.string	"Read "
.LC16:
	.string	" samples."
.LC17:
	.string	","
.LC18:
	.string	"EKF Update Failed at sample "
.LC19:
	.string	"Processed "
	.align 8
.LC20:
	.string	"Output saved to fusioned_ekf.csv"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3437:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3437
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$6520, %rsp	#,
	.cfi_offset 3, -24
# accel_ekf.cpp:44: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp196
	movq	%rax, -24(%rbp)	# tmp196, D.90279
	xorl	%eax, %eax	# tmp196
# accel_ekf.cpp:47:   Matrix XInit(3, 1);
	leaq	-6288(%rbp), %rax	#, tmp197
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp197,
.LEHB0:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE0:
# accel_ekf.cpp:48:   XInit.vSetToZero(); // Initialize with 0
	leaq	-6288(%rbp), %rax	#, tmp198
	movq	%rax, %rdi	# tmp198,
.LEHB1:
	call	_ZN6Matrix10vSetToZeroEv	#
# accel_ekf.cpp:51:   Matrix P(3, 3);
	leaq	-5984(%rbp), %rax	#, tmp199
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp199,
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE1:
# accel_ekf.cpp:52:   P.vSetDiag(100.0); // Initial uncertainty
	movq	.LC6(%rip), %rdx	#, tmp200
	leaq	-5984(%rbp), %rax	#, tmp201
	movq	%rdx, %xmm0	# tmp200,
	movq	%rax, %rdi	# tmp201,
.LEHB2:
	call	_ZN6Matrix8vSetDiagEd	#
# accel_ekf.cpp:54:   Matrix Q(3, 3);
	leaq	-5680(%rbp), %rax	#, tmp202
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp202,
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE2:
# accel_ekf.cpp:55:   Q.vSetDiag(0.01); // Process noise (smoothness factor)
	movq	.LC7(%rip), %rdx	#, tmp203
	leaq	-5680(%rbp), %rax	#, tmp204
	movq	%rdx, %xmm0	# tmp203,
	movq	%rax, %rdi	# tmp204,
.LEHB3:
	call	_ZN6Matrix8vSetDiagEd	#
# accel_ekf.cpp:57:   Matrix R(3, 3);
	leaq	-5376(%rbp), %rax	#, tmp205
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp205,
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE3:
# accel_ekf.cpp:58:   R.vSetDiag(0.1); // Measurement noise
	movq	.LC8(%rip), %rdx	#, tmp206
	leaq	-5376(%rbp), %rax	#, tmp207
	movq	%rdx, %xmm0	# tmp206,
	movq	%rax, %rdi	# tmp207,
.LEHB4:
	call	_ZN6Matrix8vSetDiagEd	#
# accel_ekf.cpp:61:   EKF ekf(XInit, P, Q, R, Predict_func, Measure_func, F_func, H_func);
	leaq	_Z12Predict_funcR6MatrixRKS_S2_(%rip), %r9	#, tmp208
	leaq	-5376(%rbp), %r8	#, tmp209
	leaq	-5680(%rbp), %rcx	#, tmp210
	leaq	-5984(%rbp), %rdx	#, tmp211
	leaq	-6288(%rbp), %rsi	#, tmp212
	leaq	-3024(%rbp), %rax	#, tmp213
	subq	$8, %rsp	#,
	leaq	_Z6H_funcR6MatrixRKS_S2_(%rip), %rdi	#, tmp214
	pushq	%rdi	# tmp214
	leaq	_Z6F_funcR6MatrixRKS_S2_(%rip), %rdi	#, tmp215
	pushq	%rdi	# tmp215
	leaq	_Z12Measure_funcR6MatrixRKS_S2_(%rip), %rdi	#, tmp216
	pushq	%rdi	# tmp216
	movq	%rax, %rdi	# tmp213,
	.cfi_escape 0x2e,0x20
	call	_ZN3EKFC1ERK6MatrixS2_S2_S2_PFbRS0_S2_S2_ES5_S5_S5_@PLT	#
.LEHE4:
	addq	$32, %rsp	#,
# accel_ekf.cpp:63:   std::ifstream inputFile("fusioned.csv");
	leaq	.LC9(%rip), %rcx	#, tmp217
	leaq	-3552(%rbp), %rax	#, tmp218
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp217,
	movq	%rax, %rdi	# tmp218,
.LEHB5:
	.cfi_escape 0x2e,0
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT	#
.LEHE5:
# accel_ekf.cpp:64:   if (!inputFile.is_open()) {
	leaq	-3552(%rbp), %rax	#, tmp219
	movq	%rax, %rdi	# tmp219,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv@PLT	#
# accel_ekf.cpp:64:   if (!inputFile.is_open()) {
	xorl	$1, %eax	#, retval.7_127
# accel_ekf.cpp:64:   if (!inputFile.is_open()) {
	testb	%al, %al	# retval.7_127
	je	.L73	#,
# accel_ekf.cpp:65:     std::cerr << "Error: Could not open fusioned.csv" << std::endl;
	leaq	.LC10(%rip), %rdx	#, tmp220
	leaq	_ZSt4cerr(%rip), %rax	#, tmp221
	movq	%rdx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
.LEHB6:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# accel_ekf.cpp:65:     std::cerr << "Error: Could not open fusioned.csv" << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp223
	movq	%rdx, %rsi	# tmp222,
	movq	%rax, %rdi	# _2,
	call	_ZNSolsEPFRSoS_E@PLT	#
# accel_ekf.cpp:66:     return 1;
	movl	$1, %ebx	#, _75
	jmp	.L74	#
.L73:
# accel_ekf.cpp:69:   std::ofstream outputFile("fusioned_ekf.csv");
	leaq	.LC11(%rip), %rcx	#, tmp224
	leaq	-4064(%rbp), %rax	#, tmp225
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# tmp224,
	movq	%rax, %rdi	# tmp225,
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT	#
.LEHE6:
# accel_ekf.cpp:70:   if (!outputFile.is_open()) {
	leaq	-4064(%rbp), %rax	#, tmp226
	movq	%rax, %rdi	# tmp226,
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv@PLT	#
# accel_ekf.cpp:70:   if (!outputFile.is_open()) {
	xorl	$1, %eax	#, retval.8_130
# accel_ekf.cpp:70:   if (!outputFile.is_open()) {
	testb	%al, %al	# retval.8_130
	je	.L75	#,
# accel_ekf.cpp:71:     std::cerr << "Error: Could not create fusioned_ekf.csv" << std::endl;
	leaq	.LC12(%rip), %rdx	#, tmp227
	leaq	_ZSt4cerr(%rip), %rax	#, tmp228
	movq	%rdx, %rsi	# tmp227,
	movq	%rax, %rdi	# tmp228,
.LEHB7:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# accel_ekf.cpp:71:     std::cerr << "Error: Could not create fusioned_ekf.csv" << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp230
	movq	%rdx, %rsi	# tmp229,
	movq	%rax, %rdi	# _4,
	call	_ZNSolsEPFRSoS_E@PLT	#
.LEHE7:
# accel_ekf.cpp:72:     return 1;
	movl	$1, %ebx	#, _75
	jmp	.L76	#
.L75:
# accel_ekf.cpp:75:   std::string line;
	leaq	-6352(%rbp), %rax	#, tmp231
	movq	%rax, %rdi	# tmp231,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev	#
# accel_ekf.cpp:76:   std::string header;
	leaq	-6320(%rbp), %rax	#, tmp232
	movq	%rax, %rdi	# tmp232,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev	#
# accel_ekf.cpp:77:   std::vector<IMUData> dataList;
	leaq	-6416(%rbp), %rax	#, tmp233
	movq	%rax, %rdi	# tmp233,
	call	_ZNSt6vectorI7IMUDataSaIS0_EEC1Ev	#
# accel_ekf.cpp:80:   if (std::getline(inputFile, header)) {
	leaq	-6320(%rbp), %rdx	#, tmp234
	leaq	-3552(%rbp), %rax	#, tmp235
	movq	%rdx, %rsi	# tmp234,
	movq	%rax, %rdi	# tmp235,
.LEHB8:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT	#
# accel_ekf.cpp:80:   if (std::getline(inputFile, header)) {
	movq	(%rax), %rdx	# _136->_vptr.basic_istream, _5
	subq	$24, %rdx	#, _6
	movq	(%rdx), %rdx	# MEM[(long int *)_6], _7
	addq	%rdx, %rax	# _8, _9
	movq	%rax, %rdi	# _9,
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@PLT	#
# accel_ekf.cpp:80:   if (std::getline(inputFile, header)) {
	testb	%al, %al	# _138
	je	.L77	#,
# accel_ekf.cpp:81:     outputFile << header << ",ekf_accel_x,ekf_accel_y,ekf_accel_z" << std::endl;
	leaq	-6320(%rbp), %rdx	#, tmp236
	leaq	-4064(%rbp), %rax	#, tmp237
	movq	%rdx, %rsi	# tmp236,
	movq	%rax, %rdi	# tmp237,
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT	#
	movq	%rax, %rdx	#, _10
# accel_ekf.cpp:81:     outputFile << header << ",ekf_accel_x,ekf_accel_y,ekf_accel_z" << std::endl;
	leaq	.LC13(%rip), %rax	#, tmp238
	movq	%rax, %rsi	# tmp238,
	movq	%rdx, %rdi	# _10,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# accel_ekf.cpp:81:     outputFile << header << ",ekf_accel_x,ekf_accel_y,ekf_accel_z" << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp240
	movq	%rdx, %rsi	# tmp239,
	movq	%rax, %rdi	# _11,
	call	_ZNSolsEPFRSoS_E@PLT	#
	jmp	.L133	#
.L77:
# accel_ekf.cpp:83:     std::cerr << "Error: Empty input file" << std::endl;
	leaq	.LC14(%rip), %rdx	#, tmp241
	leaq	_ZSt4cerr(%rip), %rax	#, tmp242
	movq	%rdx, %rsi	# tmp241,
	movq	%rax, %rdi	# tmp242,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# accel_ekf.cpp:83:     std::cerr << "Error: Empty input file" << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp244
	movq	%rdx, %rsi	# tmp243,
	movq	%rax, %rdi	# _12,
	call	_ZNSolsEPFRSoS_E@PLT	#
# accel_ekf.cpp:84:     return 1;
	movl	$1, %ebx	#, _75
	jmp	.L79	#
.L133:
# accel_ekf.cpp:89:   while (std::getline(inputFile, line)) {
	jmp	.L80	#
.L91:
# accel_ekf.cpp:90:     std::stringstream ss(line);
	movl	$8, %esi	#,
	movl	$16, %edi	#,
	call	_ZStorSt13_Ios_OpenmodeS_	#
	movl	%eax, %edx	#, _13
# accel_ekf.cpp:90:     std::stringstream ss(line);
	leaq	-6352(%rbp), %rcx	#, tmp245
	leaq	-4464(%rbp), %rax	#, tmp246
	movq	%rcx, %rsi	# tmp245,
	movq	%rax, %rdi	# tmp246,
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode@PLT	#
.LEHE8:
# accel_ekf.cpp:91:     std::string token;
	leaq	-5072(%rbp), %rax	#, tmp247
	movq	%rax, %rdi	# tmp247,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev	#
# accel_ekf.cpp:92:     std::vector<std::string> tokens;
	leaq	-6384(%rbp), %rax	#, tmp248
	movq	%rax, %rdi	# tmp248,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev	#
# accel_ekf.cpp:94:     while (std::getline(ss, token, ',')) {
	jmp	.L81	#
.L82:
# accel_ekf.cpp:95:       tokens.push_back(token);
	leaq	-5072(%rbp), %rdx	#, tmp249
	leaq	-6384(%rbp), %rax	#, tmp250
	movq	%rdx, %rsi	# tmp249,
	movq	%rax, %rdi	# tmp250,
.LEHB9:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_	#
.L81:
# accel_ekf.cpp:94:     while (std::getline(ss, token, ',')) {
	leaq	-5072(%rbp), %rcx	#, tmp251
	leaq	-4464(%rbp), %rax	#, tmp252
	movl	$44, %edx	#,
	movq	%rcx, %rsi	# tmp251,
	movq	%rax, %rdi	# tmp252,
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT	#
# accel_ekf.cpp:94:     while (std::getline(ss, token, ',')) {
	movq	(%rax), %rdx	# _275->_vptr.basic_istream, _14
	subq	$24, %rdx	#, _15
	movq	(%rdx), %rdx	# MEM[(long int *)_15], _16
	addq	%rdx, %rax	# _17, _18
	movq	%rax, %rdi	# _18,
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@PLT	#
.LEHE9:
# accel_ekf.cpp:94:     while (std::getline(ss, token, ',')) {
	testb	%al, %al	# _277
	jne	.L82	#,
# accel_ekf.cpp:98:     if (tokens.size() >= 11) {
	leaq	-6384(%rbp), %rax	#, tmp253
	movq	%rax, %rdi	# tmp253,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
# accel_ekf.cpp:98:     if (tokens.size() >= 11) {
	cmpq	$10, %rax	#, _19
	seta	%al	#, retval.11_280
# accel_ekf.cpp:98:     if (tokens.size() >= 11) {
	testb	%al, %al	# retval.11_280
	je	.L83	#,
# accel_ekf.cpp:99:       IMUData d;
	leaq	-4768(%rbp), %rax	#, tmp254
	movq	%rax, %rdi	# tmp254,
	call	_ZN7IMUDataC1Ev	#
# accel_ekf.cpp:100:       d.original_line = line;
	leaq	-6352(%rbp), %rdx	#, tmp255
	leaq	-4768(%rbp), %rax	#, tmp256
	movq	%rdx, %rsi	# tmp255,
	movq	%rax, %rdi	# tmp256,
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_	#
.LEHE10:
# accel_ekf.cpp:102:         d.ax = std::stod(tokens[8]);
	leaq	-6384(%rbp), %rax	#, tmp257
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp257,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm	#
# accel_ekf.cpp:102:         d.ax = std::stod(tokens[8]);
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _20,
.LEHB11:
	call	_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm	#
	movq	%xmm0, %rax	#, _21
# accel_ekf.cpp:102:         d.ax = std::stod(tokens[8]);
	movq	%rax, -4736(%rbp)	# _21, MEM[(struct IMUData *)_378].ax
# accel_ekf.cpp:103:         d.ay = std::stod(tokens[9]);
	leaq	-6384(%rbp), %rax	#, tmp258
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp258,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm	#
# accel_ekf.cpp:103:         d.ay = std::stod(tokens[9]);
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _22,
	call	_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm	#
	movq	%xmm0, %rax	#, _23
# accel_ekf.cpp:103:         d.ay = std::stod(tokens[9]);
	movq	%rax, -4728(%rbp)	# _23, MEM[(struct IMUData *)_378].ay
# accel_ekf.cpp:104:         d.az = std::stod(tokens[10]);
	leaq	-6384(%rbp), %rax	#, tmp259
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp259,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm	#
# accel_ekf.cpp:104:         d.az = std::stod(tokens[10]);
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _24,
	call	_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm	#
	movq	%xmm0, %rax	#, _25
# accel_ekf.cpp:104:         d.az = std::stod(tokens[10]);
	movq	%rax, -4720(%rbp)	# _25, MEM[(struct IMUData *)_378].az
# accel_ekf.cpp:105:         dataList.push_back(d);
	leaq	-4768(%rbp), %rdx	#, tmp260
	leaq	-6416(%rbp), %rax	#, tmp261
	movq	%rdx, %rsi	# tmp260,
	movq	%rax, %rdi	# tmp261,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE9push_backERKS0_	#
.LEHE11:
# accel_ekf.cpp:109:     }
	movl	$1, %ebx	#, finally_tmp.15_78
.L103:
# accel_ekf.cpp:109:     }
	leaq	-4768(%rbp), %rax	#, tmp262
	movq	%rax, %rdi	# tmp262,
	call	_ZN7IMUDataD1Ev	#
# accel_ekf.cpp:109:     }
	cmpl	$1, %ebx	#, finally_tmp.15_78
	je	.L83	#,
	movl	$0, %ebx	#, finally_tmp.16_79
	jmp	.L85	#
.L83:
# accel_ekf.cpp:110:   }
	movl	$1, %ebx	#, finally_tmp.16_79
.L85:
# accel_ekf.cpp:110:   }
	leaq	-6384(%rbp), %rax	#, tmp263
	movq	%rax, %rdi	# tmp263,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev	#
# accel_ekf.cpp:110:   }
	cmpl	$1, %ebx	#, finally_tmp.16_79
	jne	.L86	#,
# accel_ekf.cpp:110:   }
	movl	$1, %ebx	#, finally_tmp.17_80
	jmp	.L87	#
.L86:
	movl	$0, %ebx	#, finally_tmp.17_80
.L87:
# accel_ekf.cpp:110:   }
	leaq	-5072(%rbp), %rax	#, tmp264
	movq	%rax, %rdi	# tmp264,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# accel_ekf.cpp:110:   }
	cmpl	$1, %ebx	#, finally_tmp.17_80
	jne	.L88	#,
# accel_ekf.cpp:110:   }
	movl	$1, %ebx	#, finally_tmp.18_81
	jmp	.L89	#
.L88:
	movl	$0, %ebx	#, finally_tmp.18_81
.L89:
# accel_ekf.cpp:110:   }
	leaq	-4464(%rbp), %rax	#, tmp265
	movq	%rax, %rdi	# tmp265,
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT	#
# accel_ekf.cpp:110:   }
	cmpl	$1, %ebx	#, finally_tmp.18_81
	jne	.L80	#,
# accel_ekf.cpp:110:   }
	nop	
.L80:
# accel_ekf.cpp:89:   while (std::getline(inputFile, line)) {
	leaq	-6352(%rbp), %rdx	#, tmp266
	leaq	-3552(%rbp), %rax	#, tmp267
	movq	%rdx, %rsi	# tmp266,
	movq	%rax, %rdi	# tmp267,
.LEHB12:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT	#
# accel_ekf.cpp:89:   while (std::getline(inputFile, line)) {
	movq	(%rax), %rdx	# _151->_vptr.basic_istream, _27
	subq	$24, %rdx	#, _28
	movq	(%rdx), %rdx	# MEM[(long int *)_28], _29
	addq	%rdx, %rax	# _30, _31
	movq	%rax, %rdi	# _31,
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@PLT	#
# accel_ekf.cpp:89:   while (std::getline(inputFile, line)) {
	testb	%al, %al	# _153
	jne	.L91	#,
# accel_ekf.cpp:111:   inputFile.close();
	leaq	-3552(%rbp), %rax	#, tmp268
	movq	%rax, %rdi	# tmp268,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv@PLT	#
# accel_ekf.cpp:112:   std::cout << "Read " << dataList.size() << " samples." << std::endl;
	leaq	.LC15(%rip), %rdx	#, tmp269
	leaq	_ZSt4cout(%rip), %rax	#, tmp270
	movq	%rdx, %rsi	# tmp269,
	movq	%rax, %rdi	# tmp270,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rbx	#, _32
# accel_ekf.cpp:112:   std::cout << "Read " << dataList.size() << " samples." << std::endl;
	leaq	-6416(%rbp), %rax	#, tmp271
	movq	%rax, %rdi	# tmp271,
	call	_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv	#
# accel_ekf.cpp:112:   std::cout << "Read " << dataList.size() << " samples." << std::endl;
	movq	%rax, %rsi	# _33,
	movq	%rbx, %rdi	# _32,
	call	_ZNSolsEm@PLT	#
	movq	%rax, %rdx	#, _34
# accel_ekf.cpp:112:   std::cout << "Read " << dataList.size() << " samples." << std::endl;
	leaq	.LC16(%rip), %rax	#, tmp272
	movq	%rax, %rsi	# tmp272,
	movq	%rdx, %rdi	# _34,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# accel_ekf.cpp:112:   std::cout << "Read " << dataList.size() << " samples." << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp274
	movq	%rdx, %rsi	# tmp273,
	movq	%rax, %rdi	# _35,
	call	_ZNSolsEPFRSoS_E@PLT	#
# accel_ekf.cpp:114:   Matrix Y(3, 1);
	leaq	-5072(%rbp), %rax	#, tmp275
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp275,
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE12:
# accel_ekf.cpp:115:   Matrix U(3, 1); // Dummy input
	leaq	-4768(%rbp), %rax	#, tmp276
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp276,
.LEHB13:
	call	_ZN6MatrixC1EssNS_8InitZeroE	#
.LEHE13:
# accel_ekf.cpp:117:   int processedCount = 0;
	movl	$0, -6500(%rbp)	#, processedCount
# accel_ekf.cpp:118:   for (const auto &data : dataList) {
	leaq	-6416(%rbp), %rax	#, tmp277
	movq	%rax, -6480(%rbp)	# tmp277, __for_range
	movq	-6480(%rbp), %rax	# __for_range, tmp278
	movq	%rax, %rdi	# tmp278,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE5beginEv	#
	movq	%rax, -6496(%rbp)	# tmp280, __for_begin
# accel_ekf.cpp:118:   for (const auto &data : dataList) {
	movq	-6480(%rbp), %rax	# __for_range, tmp281
	movq	%rax, %rdi	# tmp281,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE3endEv	#
	movq	%rax, -6488(%rbp)	# tmp283, __for_end
# accel_ekf.cpp:118:   for (const auto &data : dataList) {
	jmp	.L92	#
.L100:
# /usr/include//15.2.1/bits/stl_iterator.h:1090:       { return *_M_current; }
	movq	-6496(%rbp), %rax	# __for_begin._M_current, D.90246
# accel_ekf.cpp:118:   for (const auto &data : dataList) {
	movq	%rax, -6472(%rbp)	# D.90246, data
# accel_ekf.cpp:120:     Y[0][0] = data.ax;
	movq	-6472(%rbp), %rax	# data, tmp284
	movsd	32(%rax), %xmm1	# data_187->ax, _36
	movsd	%xmm1, -6520(%rbp)	# _36, %sfp
# accel_ekf.cpp:120:     Y[0][0] = data.ax;
	leaq	-5072(%rbp), %rax	#, tmp285
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp285,
.LEHB14:
	call	_ZN6MatrixixEs	#
	movq	%rax, -6384(%rbp)	# tmp287, MEM[(struct Proxy *)_398]
	movq	%rdx, -6376(%rbp)	#, MEM[(struct Proxy *)_398]
# accel_ekf.cpp:120:     Y[0][0] = data.ax;
	leaq	-6384(%rbp), %rax	#, tmp288
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp288,
	call	_ZN6Matrix5ProxyixEs	#
# accel_ekf.cpp:120:     Y[0][0] = data.ax;
	movsd	-6520(%rbp), %xmm1	# %sfp, _36
	movsd	%xmm1, (%rax)	# _36, *_37
# accel_ekf.cpp:121:     Y[1][0] = data.ay;
	movq	-6472(%rbp), %rax	# data, tmp289
	movsd	40(%rax), %xmm2	# data_187->ay, _38
	movsd	%xmm2, -6520(%rbp)	# _38, %sfp
# accel_ekf.cpp:121:     Y[1][0] = data.ay;
	leaq	-5072(%rbp), %rax	#, tmp290
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp290,
	call	_ZN6MatrixixEs	#
	movq	%rax, -6384(%rbp)	# tmp292, MEM[(struct Proxy *)_398]
	movq	%rdx, -6376(%rbp)	#, MEM[(struct Proxy *)_398]
# accel_ekf.cpp:121:     Y[1][0] = data.ay;
	leaq	-6384(%rbp), %rax	#, tmp293
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp293,
	call	_ZN6Matrix5ProxyixEs	#
# accel_ekf.cpp:121:     Y[1][0] = data.ay;
	movsd	-6520(%rbp), %xmm2	# %sfp, _38
	movsd	%xmm2, (%rax)	# _38, *_39
# accel_ekf.cpp:122:     Y[2][0] = data.az;
	movq	-6472(%rbp), %rax	# data, tmp294
	movsd	48(%rax), %xmm3	# data_187->az, _40
	movsd	%xmm3, -6520(%rbp)	# _40, %sfp
# accel_ekf.cpp:122:     Y[2][0] = data.az;
	leaq	-5072(%rbp), %rax	#, tmp295
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp295,
	call	_ZN6MatrixixEs	#
	movq	%rax, -6384(%rbp)	# tmp297, MEM[(struct Proxy *)_398]
	movq	%rdx, -6376(%rbp)	#, MEM[(struct Proxy *)_398]
# accel_ekf.cpp:122:     Y[2][0] = data.az;
	leaq	-6384(%rbp), %rax	#, tmp298
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp298,
	call	_ZN6Matrix5ProxyixEs	#
# accel_ekf.cpp:122:     Y[2][0] = data.az;
	movsd	-6520(%rbp), %xmm3	# %sfp, _40
	movsd	%xmm3, (%rax)	# _40, *_41
# accel_ekf.cpp:125:     if (ekf.bUpdate(Y, U)) {
	leaq	-4768(%rbp), %rdx	#, tmp299
	leaq	-5072(%rbp), %rcx	#, tmp300
	leaq	-3024(%rbp), %rax	#, tmp301
	movq	%rcx, %rsi	# tmp300,
	movq	%rax, %rdi	# tmp301,
	call	_ZN3EKF7bUpdateERK6MatrixS2_@PLT	#
.LEHE14:
# accel_ekf.cpp:125:     if (ekf.bUpdate(Y, U)) {
	testb	%al, %al	# _204
	je	.L94	#,
# accel_ekf.cpp:126:       Matrix X_Est = ekf.GetX();
	leaq	-4464(%rbp), %rax	#, tmp302
	leaq	-3024(%rbp), %rdx	#, tmp303
	movq	%rdx, %rsi	# tmp303,
	movq	%rax, %rdi	# tmp302,
	call	_ZNK3EKF4GetXEv	#
# accel_ekf.cpp:127:       outputFile << data.original_line << "," << X_Est[0][0] << ","
	movq	-6472(%rbp), %rdx	# data, _42
# accel_ekf.cpp:127:       outputFile << data.original_line << "," << X_Est[0][0] << ","
	leaq	-4064(%rbp), %rax	#, tmp304
	movq	%rdx, %rsi	# _42,
	movq	%rax, %rdi	# tmp304,
.LEHB15:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT	#
	movq	%rax, %rdx	#, _43
# accel_ekf.cpp:127:       outputFile << data.original_line << "," << X_Est[0][0] << ","
	leaq	.LC17(%rip), %rax	#, tmp305
	movq	%rax, %rsi	# tmp305,
	movq	%rdx, %rdi	# _43,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rbx	#, _44
# accel_ekf.cpp:127:       outputFile << data.original_line << "," << X_Est[0][0] << ","
	leaq	-4464(%rbp), %rax	#, tmp306
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp306,
	call	_ZN6MatrixixEs	#
	movq	%rax, -6448(%rbp)	# tmp308, D.80732
	movq	%rdx, -6440(%rbp)	#, D.80732
# accel_ekf.cpp:127:       outputFile << data.original_line << "," << X_Est[0][0] << ","
	leaq	-6448(%rbp), %rax	#, tmp309
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp309,
	call	_ZN6Matrix5ProxyixEs	#
# accel_ekf.cpp:127:       outputFile << data.original_line << "," << X_Est[0][0] << ","
	movq	(%rax), %rax	# *_45, _46
	movq	%rax, %xmm0	# _46,
	movq	%rbx, %rdi	# _44,
	call	_ZNSolsEd@PLT	#
	movq	%rax, %rdx	#, _47
# accel_ekf.cpp:127:       outputFile << data.original_line << "," << X_Est[0][0] << ","
	leaq	.LC17(%rip), %rax	#, tmp310
	movq	%rax, %rsi	# tmp310,
	movq	%rdx, %rdi	# _47,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rbx	#, _48
# accel_ekf.cpp:128:                  << X_Est[1][0] << "," << X_Est[2][0] << std::endl;
	leaq	-4464(%rbp), %rax	#, tmp311
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp311,
	call	_ZN6MatrixixEs	#
	movq	%rax, -6432(%rbp)	# tmp313, D.80733
	movq	%rdx, -6424(%rbp)	#, D.80733
# accel_ekf.cpp:128:                  << X_Est[1][0] << "," << X_Est[2][0] << std::endl;
	leaq	-6432(%rbp), %rax	#, tmp314
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp314,
	call	_ZN6Matrix5ProxyixEs	#
# accel_ekf.cpp:128:                  << X_Est[1][0] << "," << X_Est[2][0] << std::endl;
	movq	(%rax), %rax	# *_49, _50
	movq	%rax, %xmm0	# _50,
	movq	%rbx, %rdi	# _48,
	call	_ZNSolsEd@PLT	#
	movq	%rax, %rdx	#, _51
# accel_ekf.cpp:128:                  << X_Est[1][0] << "," << X_Est[2][0] << std::endl;
	leaq	.LC17(%rip), %rax	#, tmp315
	movq	%rax, %rsi	# tmp315,
	movq	%rdx, %rdi	# _51,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rbx	#, _52
# accel_ekf.cpp:128:                  << X_Est[1][0] << "," << X_Est[2][0] << std::endl;
	leaq	-4464(%rbp), %rax	#, tmp316
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp316,
	call	_ZN6MatrixixEs	#
	movq	%rax, -6384(%rbp)	# tmp318, MEM[(struct Proxy *)_398]
	movq	%rdx, -6376(%rbp)	#, MEM[(struct Proxy *)_398]
# accel_ekf.cpp:128:                  << X_Est[1][0] << "," << X_Est[2][0] << std::endl;
	leaq	-6384(%rbp), %rax	#, tmp319
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp319,
	call	_ZN6Matrix5ProxyixEs	#
# accel_ekf.cpp:128:                  << X_Est[1][0] << "," << X_Est[2][0] << std::endl;
	movq	(%rax), %rax	# *_53, _54
	movq	%rax, %xmm0	# _54,
	movq	%rbx, %rdi	# _52,
	call	_ZNSolsEd@PLT	#
# accel_ekf.cpp:128:                  << X_Est[1][0] << "," << X_Est[2][0] << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp321
	movq	%rdx, %rsi	# tmp320,
	movq	%rax, %rdi	# _55,
	call	_ZNSolsEPFRSoS_E@PLT	#
.LEHE15:
# accel_ekf.cpp:129:       processedCount++;
	addl	$1, -6500(%rbp)	#, processedCount
# accel_ekf.cpp:130:     } else {
	leaq	-4464(%rbp), %rax	#, tmp322
	movq	%rax, %rdi	# tmp322,
	call	_ZN6MatrixD1Ev	#
	jmp	.L95	#
.L94:
# accel_ekf.cpp:131:       std::cerr << "EKF Update Failed at sample " << processedCount
	leaq	.LC18(%rip), %rdx	#, tmp323
	leaq	_ZSt4cerr(%rip), %rax	#, tmp324
	movq	%rdx, %rsi	# tmp323,
	movq	%rax, %rdi	# tmp324,
.LEHB16:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _56
# accel_ekf.cpp:131:       std::cerr << "EKF Update Failed at sample " << processedCount
	movl	-6500(%rbp), %eax	# processedCount, tmp325
	movl	%eax, %esi	# tmp325,
	movq	%rdx, %rdi	# _56,
	call	_ZNSolsEi@PLT	#
# accel_ekf.cpp:132:                 << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp327
	movq	%rdx, %rsi	# tmp326,
	movq	%rax, %rdi	# _57,
	call	_ZNSolsEPFRSoS_E@PLT	#
# accel_ekf.cpp:133:       outputFile << data.original_line << "," << data.ax << "," << data.ay
	movq	-6472(%rbp), %rdx	# data, _58
# accel_ekf.cpp:133:       outputFile << data.original_line << "," << data.ax << "," << data.ay
	leaq	-4064(%rbp), %rax	#, tmp328
	movq	%rdx, %rsi	# _58,
	movq	%rax, %rdi	# tmp328,
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT	#
	movq	%rax, %rdx	#, _59
# accel_ekf.cpp:133:       outputFile << data.original_line << "," << data.ax << "," << data.ay
	leaq	.LC17(%rip), %rax	#, tmp329
	movq	%rax, %rsi	# tmp329,
	movq	%rdx, %rdi	# _59,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _60
# accel_ekf.cpp:133:       outputFile << data.original_line << "," << data.ax << "," << data.ay
	movq	-6472(%rbp), %rax	# data, tmp330
	movq	32(%rax), %rax	# data_187->ax, _61
	movq	%rax, %xmm0	# _61,
	movq	%rdx, %rdi	# _60,
	call	_ZNSolsEd@PLT	#
	movq	%rax, %rdx	#, _62
# accel_ekf.cpp:133:       outputFile << data.original_line << "," << data.ax << "," << data.ay
	leaq	.LC17(%rip), %rax	#, tmp331
	movq	%rax, %rsi	# tmp331,
	movq	%rdx, %rdi	# _62,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _63
# accel_ekf.cpp:133:       outputFile << data.original_line << "," << data.ax << "," << data.ay
	movq	-6472(%rbp), %rax	# data, tmp332
	movq	40(%rax), %rax	# data_187->ay, _64
	movq	%rax, %xmm0	# _64,
	movq	%rdx, %rdi	# _63,
	call	_ZNSolsEd@PLT	#
	movq	%rax, %rdx	#, _65
# accel_ekf.cpp:134:                  << "," << data.az << std::endl; // Fallback to raw
	leaq	.LC17(%rip), %rax	#, tmp333
	movq	%rax, %rsi	# tmp333,
	movq	%rdx, %rdi	# _65,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _66
# accel_ekf.cpp:134:                  << "," << data.az << std::endl; // Fallback to raw
	movq	-6472(%rbp), %rax	# data, tmp334
	movq	48(%rax), %rax	# data_187->az, _67
	movq	%rax, %xmm0	# _67,
	movq	%rdx, %rdi	# _66,
	call	_ZNSolsEd@PLT	#
# accel_ekf.cpp:134:                  << "," << data.az << std::endl; // Fallback to raw
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp336
	movq	%rdx, %rsi	# tmp335,
	movq	%rax, %rdi	# _68,
	call	_ZNSolsEPFRSoS_E@PLT	#
.L95:
# /usr/include//15.2.1/bits/stl_iterator.h:1103: 	++_M_current;
	movq	-6496(%rbp), %rax	# __for_begin._M_current, _380
# /usr/include//15.2.1/bits/stl_iterator.h:1103: 	++_M_current;
	addq	$56, %rax	#, _381
	movq	%rax, -6496(%rbp)	# _381, __for_begin._M_current
# /usr/include//15.2.1/bits/stl_iterator.h:1104: 	return *this;
	nop	
.L92:
	leaq	-6496(%rbp), %rax	#, tmp337
	movq	%rax, -6464(%rbp)	# tmp337, this
# /usr/include//15.2.1/bits/stl_iterator.h:1166:       { return _M_current; }
	movq	-6464(%rbp), %rax	# this, _384
# /usr/include//15.2.1/bits/stl_iterator.h:1247:     { return __lhs.base() != __rhs.base(); }
	movq	(%rax), %rdx	# *_386, _387
	leaq	-6488(%rbp), %rax	#, tmp338
	movq	%rax, -6456(%rbp)	# tmp338, this
# /usr/include//15.2.1/bits/stl_iterator.h:1166:       { return _M_current; }
	movq	-6456(%rbp), %rax	# this, _389
# /usr/include//15.2.1/bits/stl_iterator.h:1247:     { return __lhs.base() != __rhs.base(); }
	movq	(%rax), %rax	# *_391, _392
# /usr/include//15.2.1/bits/stl_iterator.h:1247:     { return __lhs.base() != __rhs.base(); }
	cmpq	%rax, %rdx	# _392, _387
	setne	%al	#, D.90259
# accel_ekf.cpp:118:   for (const auto &data : dataList) {
	testb	%al, %al	# D.90259
	jne	.L100	#,
# accel_ekf.cpp:138:   outputFile.close();
	leaq	-4064(%rbp), %rax	#, tmp339
	movq	%rax, %rdi	# tmp339,
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT	#
# accel_ekf.cpp:139:   std::cout << "Processed " << processedCount << " samples." << std::endl;
	leaq	.LC19(%rip), %rdx	#, tmp340
	leaq	_ZSt4cout(%rip), %rax	#, tmp341
	movq	%rdx, %rsi	# tmp340,
	movq	%rax, %rdi	# tmp341,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _69
# accel_ekf.cpp:139:   std::cout << "Processed " << processedCount << " samples." << std::endl;
	movl	-6500(%rbp), %eax	# processedCount, tmp342
	movl	%eax, %esi	# tmp342,
	movq	%rdx, %rdi	# _69,
	call	_ZNSolsEi@PLT	#
	movq	%rax, %rdx	#, _70
# accel_ekf.cpp:139:   std::cout << "Processed " << processedCount << " samples." << std::endl;
	leaq	.LC16(%rip), %rax	#, tmp343
	movq	%rax, %rsi	# tmp343,
	movq	%rdx, %rdi	# _70,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# accel_ekf.cpp:139:   std::cout << "Processed " << processedCount << " samples." << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp345
	movq	%rdx, %rsi	# tmp344,
	movq	%rax, %rdi	# _71,
	call	_ZNSolsEPFRSoS_E@PLT	#
# accel_ekf.cpp:140:   std::cout << "Output saved to fusioned_ekf.csv" << std::endl;
	leaq	.LC20(%rip), %rdx	#, tmp346
	leaq	_ZSt4cout(%rip), %rax	#, tmp347
	movq	%rdx, %rsi	# tmp346,
	movq	%rax, %rdi	# tmp347,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# accel_ekf.cpp:140:   std::cout << "Output saved to fusioned_ekf.csv" << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp349
	movq	%rdx, %rsi	# tmp348,
	movq	%rax, %rdi	# _72,
	call	_ZNSolsEPFRSoS_E@PLT	#
.LEHE16:
# accel_ekf.cpp:142:   return 0;
	movl	$0, %ebx	#, _75
# accel_ekf.cpp:143: }
	leaq	-4768(%rbp), %rax	#, tmp350
	movq	%rax, %rdi	# tmp350,
	call	_ZN6MatrixD1Ev	#
# accel_ekf.cpp:143: }
	leaq	-5072(%rbp), %rax	#, tmp351
	movq	%rax, %rdi	# tmp351,
	call	_ZN6MatrixD1Ev	#
.L79:
# accel_ekf.cpp:143: }
	leaq	-6416(%rbp), %rax	#, tmp352
	movq	%rax, %rdi	# tmp352,
	call	_ZNSt6vectorI7IMUDataSaIS0_EED1Ev	#
# accel_ekf.cpp:143: }
	leaq	-6320(%rbp), %rax	#, tmp353
	movq	%rax, %rdi	# tmp353,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# accel_ekf.cpp:143: }
	leaq	-6352(%rbp), %rax	#, tmp354
	movq	%rax, %rdi	# tmp354,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
.L76:
# accel_ekf.cpp:143: }
	leaq	-4064(%rbp), %rax	#, tmp355
	movq	%rax, %rdi	# tmp355,
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT	#
.L74:
# accel_ekf.cpp:143: }
	leaq	-3552(%rbp), %rax	#, tmp356
	movq	%rax, %rdi	# tmp356,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT	#
# accel_ekf.cpp:143: }
	leaq	-3024(%rbp), %rax	#, tmp357
	movq	%rax, %rdi	# tmp357,
	call	_ZN3EKFD1Ev	#
# accel_ekf.cpp:143: }
	leaq	-5376(%rbp), %rax	#, tmp358
	movq	%rax, %rdi	# tmp358,
	call	_ZN6MatrixD1Ev	#
# accel_ekf.cpp:143: }
	leaq	-5680(%rbp), %rax	#, tmp359
	movq	%rax, %rdi	# tmp359,
	call	_ZN6MatrixD1Ev	#
# accel_ekf.cpp:143: }
	leaq	-5984(%rbp), %rax	#, tmp360
	movq	%rax, %rdi	# tmp360,
	call	_ZN6MatrixD1Ev	#
# accel_ekf.cpp:143: }
	leaq	-6288(%rbp), %rax	#, tmp361
	movq	%rax, %rdi	# tmp361,
	call	_ZN6MatrixD1Ev	#
# accel_ekf.cpp:143: }
	movl	%ebx, %eax	# _75, <retval>
	movq	-24(%rbp), %rdx	# D.90279, tmp415
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp415
	je	.L118	#,
	jmp	.L134	#
.L129:
# accel_ekf.cpp:106:       } catch (...) {
	movq	%rax, %rdi	# _26,
	call	__cxa_begin_catch@PLT	#
# accel_ekf.cpp:107:         continue;
	nop	
.LEHB17:
# accel_ekf.cpp:108:       }
	call	__cxa_end_catch@PLT	#
.LEHE17:
	movl	$0, %ebx	#, finally_tmp.15_78
	jmp	.L103	#
.L128:
# accel_ekf.cpp:109:     }
	movq	%rax, %rbx	#, tmp366
	leaq	-4768(%rbp), %rax	#, tmp364
	movq	%rax, %rdi	# tmp364,
	call	_ZN7IMUDataD1Ev	#
	jmp	.L105	#
.L127:
# accel_ekf.cpp:110:   }
	movq	%rax, %rbx	#, tmp365
.L105:
	leaq	-6384(%rbp), %rax	#, tmp369
	movq	%rax, %rdi	# tmp369,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev	#
	leaq	-5072(%rbp), %rax	#, tmp372
	movq	%rax, %rdi	# tmp372,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	leaq	-4464(%rbp), %rax	#, tmp375
	movq	%rax, %rdi	# tmp375,
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT	#
	jmp	.L106	#
.L131:
# accel_ekf.cpp:130:     } else {
	movq	%rax, %rbx	#, tmp380
	leaq	-4464(%rbp), %rax	#, tmp378
	movq	%rax, %rdi	# tmp378,
	call	_ZN6MatrixD1Ev	#
	jmp	.L108	#
.L132:
# accel_ekf.cpp:143: }
	movq	%rax, %rbx	#, tmp379
.L108:
	leaq	-4768(%rbp), %rax	#, tmp383
	movq	%rax, %rdi	# tmp383,
	call	_ZN6MatrixD1Ev	#
	jmp	.L109	#
.L130:
	movq	%rax, %rbx	#, tmp384
.L109:
	leaq	-5072(%rbp), %rax	#, tmp386
	movq	%rax, %rdi	# tmp386,
	call	_ZN6MatrixD1Ev	#
	jmp	.L106	#
.L126:
	movq	%rax, %rbx	#, tmp376
.L106:
	leaq	-6416(%rbp), %rax	#, tmp387
	movq	%rax, %rdi	# tmp387,
	call	_ZNSt6vectorI7IMUDataSaIS0_EED1Ev	#
	leaq	-6320(%rbp), %rax	#, tmp390
	movq	%rax, %rdi	# tmp390,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	leaq	-6352(%rbp), %rax	#, tmp393
	movq	%rax, %rdi	# tmp393,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	jmp	.L110	#
.L125:
	movq	%rax, %rbx	#, tmp394
.L110:
	leaq	-4064(%rbp), %rax	#, tmp396
	movq	%rax, %rdi	# tmp396,
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT	#
	jmp	.L111	#
.L124:
	movq	%rax, %rbx	#, tmp397
.L111:
	leaq	-3552(%rbp), %rax	#, tmp399
	movq	%rax, %rdi	# tmp399,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT	#
	jmp	.L112	#
.L123:
	movq	%rax, %rbx	#, tmp400
.L112:
	leaq	-3024(%rbp), %rax	#, tmp402
	movq	%rax, %rdi	# tmp402,
	call	_ZN3EKFD1Ev	#
	jmp	.L113	#
.L122:
	movq	%rax, %rbx	#, tmp403
.L113:
	leaq	-5376(%rbp), %rax	#, tmp405
	movq	%rax, %rdi	# tmp405,
	call	_ZN6MatrixD1Ev	#
	jmp	.L114	#
.L121:
	movq	%rax, %rbx	#, tmp406
.L114:
	leaq	-5680(%rbp), %rax	#, tmp408
	movq	%rax, %rdi	# tmp408,
	call	_ZN6MatrixD1Ev	#
	jmp	.L115	#
.L120:
	movq	%rax, %rbx	#, tmp409
.L115:
	leaq	-5984(%rbp), %rax	#, tmp411
	movq	%rax, %rdi	# tmp411,
	call	_ZN6MatrixD1Ev	#
	jmp	.L116	#
.L119:
	movq	%rax, %rbx	#, tmp412
.L116:
	leaq	-6288(%rbp), %rax	#, tmp414
	movq	%rax, %rdi	# tmp414,
	call	_ZN6MatrixD1Ev	#
	movq	%rbx, %rax	# tmp412, D.90277
	movq	-24(%rbp), %rdx	# D.90279, tmp416
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp416
	je	.L117	#,
	call	__stack_chk_fail@PLT	#
.L117:
	movq	%rax, %rdi	# D.90277,
.LEHB18:
	call	_Unwind_Resume@PLT	#
.LEHE18:
.L134:
	call	__stack_chk_fail@PLT	#
.L118:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3437:
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA3437:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3437-.LLSDATTD3437
.LLSDATTD3437:
	.byte	0x1
	.uleb128 .LLSDACSE3437-.LLSDACSB3437
.LLSDACSB3437:
	.uleb128 .LEHB0-.LFB3437
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3437
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L119-.LFB3437
	.uleb128 0
	.uleb128 .LEHB2-.LFB3437
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L120-.LFB3437
	.uleb128 0
	.uleb128 .LEHB3-.LFB3437
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L121-.LFB3437
	.uleb128 0
	.uleb128 .LEHB4-.LFB3437
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L122-.LFB3437
	.uleb128 0
	.uleb128 .LEHB5-.LFB3437
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L123-.LFB3437
	.uleb128 0
	.uleb128 .LEHB6-.LFB3437
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L124-.LFB3437
	.uleb128 0
	.uleb128 .LEHB7-.LFB3437
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L125-.LFB3437
	.uleb128 0
	.uleb128 .LEHB8-.LFB3437
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L126-.LFB3437
	.uleb128 0
	.uleb128 .LEHB9-.LFB3437
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L127-.LFB3437
	.uleb128 0
	.uleb128 .LEHB10-.LFB3437
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L128-.LFB3437
	.uleb128 0
	.uleb128 .LEHB11-.LFB3437
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L129-.LFB3437
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB3437
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L126-.LFB3437
	.uleb128 0
	.uleb128 .LEHB13-.LFB3437
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L130-.LFB3437
	.uleb128 0
	.uleb128 .LEHB14-.LFB3437
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L132-.LFB3437
	.uleb128 0
	.uleb128 .LEHB15-.LFB3437
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L131-.LFB3437
	.uleb128 0
	.uleb128 .LEHB16-.LFB3437
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L132-.LFB3437
	.uleb128 0
	.uleb128 .LEHB17-.LFB3437
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L128-.LFB3437
	.uleb128 0
	.uleb128 .LEHB18-.LFB3437
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE3437:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3437:
	.text
	.size	main, .-main
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv:
.LFB3547:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:2874:       { return _M_data(); }
	movq	-8(%rbp), %rax	# this, tmp100
	movq	%rax, %rdi	# tmp100,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
# /usr/include//15.2.1/bits/basic_string.h:2874:       { return _M_data(); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3547:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	.section	.text._ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, @function
_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB3595:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/ext/string_conversions.h:67: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	__errno_location@PLT	#
# /usr/include//15.2.1/ext/string_conversions.h:67: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	movl	(%rax), %edx	# *_1, _2
	movq	-8(%rbp), %rax	# this, tmp101
	movl	%edx, (%rax)	# _2, this_5(D)->_M_errno
# /usr/include//15.2.1/ext/string_conversions.h:67: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	__errno_location@PLT	#
# /usr/include//15.2.1/ext/string_conversions.h:67: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	movl	$0, (%rax)	#, *_3
# /usr/include//15.2.1/ext/string_conversions.h:67: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3595:
	.size	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, @function
_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB3598:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	__errno_location@PLT	#
# /usr/include//15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	movl	(%rax), %eax	# *_1, _2
# /usr/include//15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	testl	%eax, %eax	# _2
	jne	.L140	#,
# /usr/include//15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	__errno_location@PLT	#
# /usr/include//15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	movq	-8(%rbp), %rdx	# this, tmp102
	movl	(%rdx), %edx	# this_7(D)->_M_errno, _4
# /usr/include//15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	movl	%edx, (%rax)	# _4, *_3
.L140:
# /usr/include//15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3598:
	.size	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEdSt17integral_constantIbLb0EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEdSt17integral_constantIbLb0EE,comdat
	.weak	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEdSt17integral_constantIbLb0EE
	.type	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEdSt17integral_constantIbLb0EE, @function
_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEdSt17integral_constantIbLb0EE:
.LFB3600:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)	# D.81951, D.81951
# /usr/include//15.2.1/ext/string_conversions.h:74: 	  _S_chk(_TRet, std::false_type) { return false; }
	movl	$0, %eax	#, _1
# /usr/include//15.2.1/ext/string_conversions.h:74: 	  _S_chk(_TRet, std::false_type) { return false; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3600:
	.size	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEdSt17integral_constantIbLb0EE, .-_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEdSt17integral_constantIbLb0EE
	.section	.text._ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3593:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3593
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# __convf, __convf
	movq	%rsi, -80(%rbp)	# __name, __name
	movq	%rdx, -88(%rbp)	# __str, __str
	movq	%rcx, -96(%rbp)	# __idx, __idx
# /usr/include//15.2.1/ext/string_conversions.h:58:     __stoa(_TRet (*__convf) (const _CharT*, _CharT**, _Base...),
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp113
	movq	%rax, -24(%rbp)	# tmp113, D.90294
	xorl	%eax, %eax	# tmp113
# /usr/include//15.2.1/ext/string_conversions.h:70:       } const __save_errno;
	leaq	-52(%rbp), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev	#
# /usr/include//15.2.1/ext/string_conversions.h:84:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	movq	-72(%rbp), %rcx	# __convf, __convf.48_1
	leaq	-48(%rbp), %rdx	#, tmp115
	movq	-88(%rbp), %rax	# __str, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
.LEHB19:
	call	*%rcx	# __convf.48_1
	movq	%xmm0, %rax	#, _20
# /usr/include//15.2.1/ext/string_conversions.h:84:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	movq	%rax, -40(%rbp)	# _20, __tmp
# /usr/include//15.2.1/ext/string_conversions.h:86:       if (__endptr == __str)
	movq	-48(%rbp), %rax	# __endptr, __endptr.49_2
# /usr/include//15.2.1/ext/string_conversions.h:86:       if (__endptr == __str)
	cmpq	%rax, -88(%rbp)	# __endptr.49_2, __str
	jne	.L144	#,
# /usr/include//15.2.1/ext/string_conversions.h:87: 	std::__throw_invalid_argument(__name);
	movq	-24(%rbp), %rax	# D.90294, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L145	#,
	call	__stack_chk_fail@PLT	#
.L145:
	movq	-80(%rbp), %rax	# __name, tmp117
	movq	%rax, %rdi	# tmp117,
	call	_ZSt24__throw_invalid_argumentPKc@PLT	#
.L144:
# /usr/include//15.2.1/ext/string_conversions.h:88:       else if (errno == ERANGE
	call	__errno_location@PLT	#
# /usr/include//15.2.1/ext/string_conversions.h:88:       else if (errno == ERANGE
	movl	(%rax), %eax	# *_3, _4
# /usr/include//15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmpl	$34, %eax	#, _4
	je	.L146	#,
# /usr/include//15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	movq	-40(%rbp), %rax	# __tmp, tmp118
	movq	%rax, %xmm0	# tmp118,
	call	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEdSt17integral_constantIbLb0EE	#
# /usr/include//15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	testb	%al, %al	# _6
	je	.L147	#,
.L146:
# /usr/include//15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	movl	$1, %eax	#, iftmp.51_10
# /usr/include//15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	jmp	.L148	#
.L147:
# /usr/include//15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	movl	$0, %eax	#, iftmp.51_10
.L148:
# /usr/include//15.2.1/ext/string_conversions.h:88:       else if (errno == ERANGE
	testb	%al, %al	# iftmp.51_10
	je	.L149	#,
# /usr/include//15.2.1/ext/string_conversions.h:90: 	std::__throw_out_of_range(__name);
	movq	-24(%rbp), %rax	# D.90294, tmp127
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp127
	je	.L150	#,
	call	__stack_chk_fail@PLT	#
.L150:
	movq	-80(%rbp), %rax	# __name, tmp119
	movq	%rax, %rdi	# tmp119,
	call	_ZSt20__throw_out_of_rangePKc@PLT	#
.LEHE19:
.L149:
# /usr/include//15.2.1/ext/string_conversions.h:92: 	__ret = __tmp;
	movsd	-40(%rbp), %xmm0	# __tmp, tmp120
	movsd	%xmm0, -32(%rbp)	# tmp120, __ret
# /usr/include//15.2.1/ext/string_conversions.h:94:       if (__idx)
	cmpq	$0, -96(%rbp)	#, __idx
	je	.L151	#,
# /usr/include//15.2.1/ext/string_conversions.h:95: 	*__idx = __endptr - __str;
	movq	-48(%rbp), %rax	# __endptr, __endptr.52_7
	subq	-88(%rbp), %rax	# __str, _8
	movq	%rax, %rdx	# _8, _9
# /usr/include//15.2.1/ext/string_conversions.h:95: 	*__idx = __endptr - __str;
	movq	-96(%rbp), %rax	# __idx, tmp121
	movq	%rdx, (%rax)	# _9, *__idx_28(D)
.L151:
# /usr/include//15.2.1/ext/string_conversions.h:97:       return __ret;
	movsd	-32(%rbp), %xmm1	# __ret, _30
	movsd	%xmm1, -104(%rbp)	# _30, %sfp
# /usr/include//15.2.1/ext/string_conversions.h:98:     }
	leaq	-52(%rbp), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev	#
# /usr/include//15.2.1/ext/string_conversions.h:97:       return __ret;
	movsd	-104(%rbp), %xmm0	# %sfp, <retval>
# /usr/include//15.2.1/ext/string_conversions.h:98:     }
	movq	-24(%rbp), %rax	# D.90294, tmp128
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	je	.L155	#,
	jmp	.L157	#
.L156:
	movq	%rax, %rbx	#, tmp125
	leaq	-52(%rbp), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev	#
	movq	%rbx, %rax	# tmp125, D.90293
	movq	-24(%rbp), %rdx	# D.90294, tmp129
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp129
	je	.L154	#,
	call	__stack_chk_fail@PLT	#
.L154:
	movq	%rax, %rdi	# D.90293,
.LEHB20:
	call	_Unwind_Resume@PLT	#
.LEHE20:
.L157:
	call	__stack_chk_fail@PLT	#
.L155:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3593:
	.section	.gcc_except_table
.LLSDA3593:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3593-.LLSDACSB3593
.LLSDACSB3593:
	.uleb128 .LEHB19-.LFB3593
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L156-.LFB3593
	.uleb128 0
	.uleb128 .LEHB20-.LFB3593
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE3593:
	.section	.text._ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB3622:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	-24(%rbp), %rax	# this, tmp98
	movq	%rax, -8(%rbp)	# tmp98, this
# /usr/include//15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	movq	-8(%rbp), %rax	# this, tmp99
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
# /usr/include//15.2.1/bits/basic_string.h:197:       struct _Alloc_hider : allocator_type // TODO check __is_final
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3622:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev:
.LFB3624:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3624
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:585:       basic_string()
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp101
	movq	%rax, -24(%rbp)	# tmp101, D.90295
	xorl	%eax, %eax	# tmp101
# /usr/include//15.2.1/bits/basic_string.h:590:       : _M_dataplus(_M_local_data())
	movq	-56(%rbp), %rbx	# this, _1
	leaq	-41(%rbp), %rax	#, tmp102
	movq	%rax, -32(%rbp)	# tmp102, this
# /usr/include//15.2.1/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include//15.2.1/bits/allocator.h:168:       allocator() _GLIBCXX_NOTHROW { }
	nop	
# /usr/include//15.2.1/bits/basic_string.h:590:       : _M_dataplus(_M_local_data())
	movq	-56(%rbp), %rax	# this, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
	movq	%rax, %rcx	#, _2
# /usr/include//15.2.1/bits/basic_string.h:590:       : _M_dataplus(_M_local_data())
	leaq	-41(%rbp), %rax	#, tmp104
	movq	%rax, %rdx	# tmp104,
	movq	%rcx, %rsi	# _2,
	movq	%rbx, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_	#
# /usr/include//15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	leaq	-41(%rbp), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
	movq	-56(%rbp), %rax	# this, tmp106
	movq	%rax, -40(%rbp)	# tmp106, this
# /usr/include//15.2.1/bits/basic_string.h:378:       }
	nop	
# /usr/include//15.2.1/bits/basic_string.h:593: 	_M_set_length(0);
	movq	-56(%rbp), %rax	# this, tmp107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm	#
# /usr/include//15.2.1/bits/basic_string.h:594:       }
	nop	
	movq	-24(%rbp), %rax	# D.90295, tmp108
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	je	.L160	#,
	call	__stack_chk_fail@PLT	#
.L160:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3624:
	.section	.gcc_except_table
.LLSDA3624:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3624-.LLSDACSB3624
.LLSDACSB3624:
.LLSDACSE3624:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5Ev,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev:
.LFB3627:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3627
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:896:       { _M_dispose(); }
	movq	-8(%rbp), %rax	# this, tmp99
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	#
# /usr/include//15.2.1/bits/basic_string.h:896:       { _M_dispose(); }
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev	#
# /usr/include//15.2.1/bits/basic_string.h:896:       { _M_dispose(); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3627:
	.section	.gcc_except_table
.LLSDA3627:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3627-.LLSDACSB3627
.LLSDACSB3627:
.LLSDACSE3627:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED5Ev,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5EOS4_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_:
.LFB3635:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3635
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# this, this
	movq	%rsi, -64(%rbp)	# __str, __str
# /usr/include//15.2.1/bits/basic_string.h:743:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	-56(%rbp), %rbx	# this, _1
# /usr/include//15.2.1/bits/basic_string.h:743:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	-64(%rbp), %rax	# __str, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -40(%rbp)	# _2, __t
# /usr/include//15.2.1/bits/move.h:139:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-40(%rbp), %r12	# __t, D.89817
# /usr/include//15.2.1/bits/basic_string.h:743:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	-56(%rbp), %rax	# this, tmp113
	movq	%rax, %rdi	# tmp113,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
# /usr/include//15.2.1/bits/basic_string.h:743:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	%r12, %rdx	# D.89817,
	movq	%rax, %rsi	# _4,
	movq	%rbx, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_	#
# /usr/include//15.2.1/bits/basic_string.h:745: 	if (__str._M_is_local())
	movq	-64(%rbp), %rax	# __str, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv	#
# /usr/include//15.2.1/bits/basic_string.h:745: 	if (__str._M_is_local())
	testb	%al, %al	# _23
	je	.L164	#,
	movq	-56(%rbp), %rax	# this, tmp115
	movq	%rax, -32(%rbp)	# tmp115, this
# /usr/include//15.2.1/bits/basic_string.h:378:       }
	nop	
# /usr/include//15.2.1/bits/basic_string.h:749: 			      __str.length() + 1);
	movq	-64(%rbp), %rax	# __str, tmp116
	movq	%rax, %rdi	# tmp116,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	#
# /usr/include//15.2.1/bits/basic_string.h:748: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	leaq	1(%rax), %rdx	#, _6
# /usr/include//15.2.1/bits/basic_string.h:748: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	movq	-64(%rbp), %rax	# __str, tmp117
	leaq	16(%rax), %rcx	#, _7
# /usr/include//15.2.1/bits/basic_string.h:748: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	movq	-56(%rbp), %rax	# this, tmp118
	addq	$16, %rax	#, _8
# /usr/include//15.2.1/bits/basic_string.h:748: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	movq	%rcx, %rsi	# _7,
	movq	%rax, %rdi	# _8,
	call	_ZNSt11char_traitsIcE4copyEPcPKcm	#
	jmp	.L165	#
.L164:
# /usr/include//15.2.1/bits/basic_string.h:753: 	    _M_data(__str._M_data());
	movq	-64(%rbp), %rax	# __str, tmp119
	movq	%rax, %rdi	# tmp119,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rdx	#, _9
# /usr/include//15.2.1/bits/basic_string.h:753: 	    _M_data(__str._M_data());
	movq	-56(%rbp), %rax	# this, tmp120
	movq	%rdx, %rsi	# _9,
	movq	%rax, %rdi	# tmp120,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	#
# /usr/include//15.2.1/bits/basic_string.h:754: 	    _M_capacity(__str._M_allocated_capacity);
	movq	-64(%rbp), %rax	# __str, tmp121
	movq	16(%rax), %rdx	# __str_18(D)->D.37734._M_allocated_capacity, _10
	movq	-56(%rbp), %rax	# this, tmp122
	movq	%rdx, %rsi	# _10,
	movq	%rax, %rdi	# tmp122,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm	#
.L165:
# /usr/include//15.2.1/bits/basic_string.h:760: 	_M_length(__str.length());
	movq	-64(%rbp), %rax	# __str, tmp123
	movq	%rax, %rdi	# tmp123,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	#
	movq	%rax, %rdx	#, _11
# /usr/include//15.2.1/bits/basic_string.h:760: 	_M_length(__str.length());
	movq	-56(%rbp), %rax	# this, tmp124
	movq	%rdx, %rsi	# _11,
	movq	%rax, %rdi	# tmp124,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm	#
	movq	-64(%rbp), %rax	# __str, tmp125
	movq	%rax, -24(%rbp)	# tmp125, this
# /usr/include//15.2.1/bits/basic_string.h:388: 	return _M_local_data();
	movq	-24(%rbp), %rax	# this, tmp126
	movq	%rax, %rdi	# tmp126,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
	movq	%rax, %rdx	#, D.89822
# /usr/include//15.2.1/bits/basic_string.h:388: 	return _M_local_data();
	nop	
# /usr/include//15.2.1/bits/basic_string.h:761: 	__str._M_data(__str._M_use_local_data());
	movq	-64(%rbp), %rax	# __str, tmp127
	movq	%rdx, %rsi	# D.89822,
	movq	%rax, %rdi	# tmp127,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	#
# /usr/include//15.2.1/bits/basic_string.h:762: 	__str._M_set_length(0);
	movq	-64(%rbp), %rax	# __str, tmp128
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm	#
# /usr/include//15.2.1/bits/basic_string.h:763:       }
	nop	
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3635:
	.section	.gcc_except_table
.LLSDA3635:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3635-.LLSDACSB3635
.LLSDACSB3635:
.LLSDACSE3635:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5EOS4_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_
	.section	.text._ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC2Ev:
.LFB3837:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	-24(%rbp), %rax	# this, tmp99
	movq	%rax, -16(%rbp)	# tmp99, this
	movq	-16(%rbp), %rax	# this, tmp100
	movq	%rax, -8(%rbp)	# tmp100, this
# /usr/include//15.2.1/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include//15.2.1/bits/allocator.h:168:       allocator() _GLIBCXX_NOTHROW { }
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:148: 	: _Tp_alloc_type()
	movq	-24(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC2Ev	#
# /usr/include//15.2.1/bits/stl_vector.h:149: 	{ }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3837:
	.size	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseI7IMUDataSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7IMUDataSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI7IMUDataSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI7IMUDataSaIS0_EED2Ev:
.LFB3843:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3843
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-8(%rbp), %rax	# this, tmp105
	movq	16(%rax), %rdx	# this_9(D)->_M_impl.D.78625._M_end_of_storage, _1
# /usr/include//15.2.1/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-8(%rbp), %rax	# this, tmp106
	movq	(%rax), %rax	# this_9(D)->_M_impl.D.78625._M_start, _2
# /usr/include//15.2.1/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rax, %rdx	# _2, _3
	sarq	$3, %rdx	#, tmp107
	movabsq	$7905747460161236407, %rax	#, tmp109
	imulq	%rdx, %rax	# tmp107, _4
# /usr/include//15.2.1/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	movq	%rax, %rdx	# _4, _5
	movq	-8(%rbp), %rax	# this, tmp110
	movq	(%rax), %rcx	# this_9(D)->_M_impl.D.78625._M_start, _6
	movq	-8(%rbp), %rax	# this, tmp111
	movq	%rcx, %rsi	# _6,
	movq	%rax, %rdi	# tmp111,
	call	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE13_M_deallocateEPS0_m	#
# /usr/include//15.2.1/bits/stl_vector.h:377:       }
	movq	-8(%rbp), %rax	# this, _7
	movq	%rax, %rdi	# _7,
	call	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE12_Vector_implD1Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3843:
	.section	.gcc_except_table
.LLSDA3843:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3843-.LLSDACSB3843
.LLSDACSB3843:
.LLSDACSE3843:
	.section	.text._ZNSt12_Vector_baseI7IMUDataSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7IMUDataSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI7IMUDataSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI7IMUDataSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI7IMUDataSaIS0_EED1Ev,_ZNSt12_Vector_baseI7IMUDataSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EED2Ev
	.type	_ZNSt6vectorI7IMUDataSaIS0_EED2Ev, @function
_ZNSt6vectorI7IMUDataSaIS0_EED2Ev:
.LFB3846:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3846
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:803: 		      _M_get_Tp_allocator());
	movq	-40(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv	#
# /usr/include//15.2.1/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	-40(%rbp), %rdx	# this, tmp103
	movq	8(%rdx), %rdx	# this_6(D)->D.79322._M_impl.D.78625._M_finish, _3
# /usr/include//15.2.1/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	-40(%rbp), %rcx	# this, tmp104
	movq	(%rcx), %rcx	# this_6(D)->D.79322._M_impl.D.78625._M_start, _4
	movq	%rcx, -24(%rbp)	# _4, __first
	movq	%rdx, -16(%rbp)	# _3, __last
	movq	%rax, -8(%rbp)	# _2, D.89784
# /usr/include//15.2.1/bits/alloc_traits.h:1045:       std::_Destroy(__first, __last);
	movq	-16(%rbp), %rdx	# __last, tmp105
	movq	-24(%rbp), %rax	# __first, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	_ZSt8_DestroyIP7IMUDataEvT_S2_	#
# /usr/include//15.2.1/bits/alloc_traits.h:1046:     }
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:805:       }
	movq	-40(%rbp), %rax	# this, _5
	movq	%rax, %rdi	# _5,
	call	_ZNSt12_Vector_baseI7IMUDataSaIS0_EED2Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3846:
	.section	.gcc_except_table
.LLSDA3846:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3846-.LLSDACSB3846
.LLSDACSB3846:
.LLSDACSE3846:
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI7IMUDataSaIS0_EED2Ev, .-_ZNSt6vectorI7IMUDataSaIS0_EED2Ev
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EED1Ev
	.set	_ZNSt6vectorI7IMUDataSaIS0_EED1Ev,_ZNSt6vectorI7IMUDataSaIS0_EED2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev:
.LFB3863:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	-24(%rbp), %rax	# this, tmp99
	movq	%rax, -16(%rbp)	# tmp99, this
	movq	-16(%rbp), %rax	# this, tmp100
	movq	%rax, -8(%rbp)	# tmp100, this
# /usr/include//15.2.1/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include//15.2.1/bits/allocator.h:168:       allocator() _GLIBCXX_NOTHROW { }
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:148: 	: _Tp_alloc_type()
	movq	-24(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev	#
# /usr/include//15.2.1/bits/stl_vector.h:149: 	{ }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3863:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB3869:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3869
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-8(%rbp), %rax	# this, tmp105
	movq	16(%rax), %rdx	# this_9(D)->_M_impl.D.79795._M_end_of_storage, _1
# /usr/include//15.2.1/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-8(%rbp), %rax	# this, tmp106
	movq	(%rax), %rax	# this_9(D)->_M_impl.D.79795._M_start, _2
# /usr/include//15.2.1/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rax, %rdx	# _2, _3
	movq	%rdx, %rax	# _3, _3
	sarq	$5, %rax	#, _3
# /usr/include//15.2.1/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	movq	%rax, %rdx	# _4, _5
	movq	-8(%rbp), %rax	# this, tmp108
	movq	(%rax), %rcx	# this_9(D)->_M_impl.D.79795._M_start, _6
	movq	-8(%rbp), %rax	# this, tmp109
	movq	%rcx, %rsi	# _6,
	movq	%rax, %rdi	# tmp109,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m	#
# /usr/include//15.2.1/bits/stl_vector.h:377:       }
	movq	-8(%rbp), %rax	# this, _7
	movq	%rax, %rdi	# _7,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD1Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3869:
	.section	.gcc_except_table
.LLSDA3869:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3869-.LLSDACSB3869
.LLSDACSB3869:
.LLSDACSE3869:
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB3872:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3872
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:803: 		      _M_get_Tp_allocator());
	movq	-40(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv	#
# /usr/include//15.2.1/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	-40(%rbp), %rdx	# this, tmp103
	movq	8(%rdx), %rdx	# this_6(D)->D.80456._M_impl.D.79795._M_finish, _3
# /usr/include//15.2.1/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	-40(%rbp), %rcx	# this, tmp104
	movq	(%rcx), %rcx	# this_6(D)->D.80456._M_impl.D.79795._M_start, _4
	movq	%rcx, -24(%rbp)	# _4, __first
	movq	%rdx, -16(%rbp)	# _3, __last
	movq	%rax, -8(%rbp)	# _2, D.89791
# /usr/include//15.2.1/bits/alloc_traits.h:1045:       std::_Destroy(__first, __last);
	movq	-16(%rbp), %rdx	# __last, tmp105
	movq	-24(%rbp), %rax	# __first, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_	#
# /usr/include//15.2.1/bits/alloc_traits.h:1046:     }
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:805:       }
	movq	-40(%rbp), %rax	# this, _5
	movq	%rax, %rdi	# _5,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3872:
	.section	.gcc_except_table
.LLSDA3872:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3872-.LLSDACSB3872
.LLSDACSB3872:
.LLSDACSE3872:
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_:
.LFB3874:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3874
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)	# this, this
	movq	%rsi, -112(%rbp)	# __x, __x
# /usr/include//15.2.1/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-104(%rbp), %rax	# this, tmp111
	movq	8(%rax), %rdx	# this_9(D)->D.80456._M_impl.D.79795._M_finish, _1
# /usr/include//15.2.1/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-104(%rbp), %rax	# this, tmp112
	movq	16(%rax), %rax	# this_9(D)->D.80456._M_impl.D.79795._M_end_of_storage, _2
# /usr/include//15.2.1/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rax, %rdx	# _2, _1
	je	.L174	#,
# /usr/include//15.2.1/bits/stl_vector.h:1421: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	-104(%rbp), %rax	# this, tmp113
	movq	8(%rax), %rax	# this_9(D)->D.80456._M_impl.D.79795._M_finish, _3
# /usr/include//15.2.1/bits/stl_vector.h:1421: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	-104(%rbp), %rdx	# this, _4
	movq	%rdx, -96(%rbp)	# _4, __a
	movq	%rax, -88(%rbp)	# _3, __p
	movq	-112(%rbp), %rax	# __x, tmp114
	movq	%rax, -80(%rbp)	# tmp114, __args#0
	movq	-80(%rbp), %rax	# __args#0, tmp115
	movq	%rax, -72(%rbp)	# tmp115, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-72(%rbp), %rax	# __t, _17
	movq	-88(%rbp), %rdx	# __p, tmp116
	movq	%rdx, -64(%rbp)	# tmp116, __p
	movq	%rax, -56(%rbp)	# _17, __args#0
	movq	-96(%rbp), %rax	# __a, tmp117
	movq	%rax, -48(%rbp)	# tmp117, this
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-64(%rbp), %rbx	# __p, _23
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movl	$32, %edi	#,
	call	_ZnwmPv	#
	movq	%rax, %r12	#, _24
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$1, %r14d	#, _25
	movq	-56(%rbp), %rax	# __args#0, tmp118
	movq	%rax, -40(%rbp)	# tmp118, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-40(%rbp), %rax	# __t, _28
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %rsi	# _28,
	movq	%r12, %rdi	# _24,
.LEHB21:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_	#
.LEHE21:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$0, %eax	#, _31
	testb	%al, %al	# _31
	je	.L177	#,
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movq	%r12, %rdi	# _24,
	call	_ZdlPvS_	#
.L177:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:680: 	}
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:1423: 	    ++this->_M_impl._M_finish;
	movq	-104(%rbp), %rax	# this, tmp120
	movq	8(%rax), %rax	# this_9(D)->D.80456._M_impl.D.79795._M_finish, _5
# /usr/include//15.2.1/bits/stl_vector.h:1423: 	    ++this->_M_impl._M_finish;
	leaq	32(%rax), %rdx	#, _6
	movq	-104(%rbp), %rax	# this, tmp121
	movq	%rdx, 8(%rax)	# _6, this_9(D)->D.80456._M_impl.D.79795._M_finish
# /usr/include//15.2.1/bits/stl_vector.h:1428:       }
	jmp	.L183	#
.L182:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %r13	#, tmp119
	testb	%r14b, %r14b	# _25
	je	.L180	#,
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movq	%r12, %rdi	# _24,
	call	_ZdlPvS_	#
.L180:
	movq	%r13, %rax	# tmp119, D.90296
	movq	%rax, %rdi	# D.90296,
.LEHB22:
	call	_Unwind_Resume@PLT	#
.L174:
# /usr/include//15.2.1/bits/stl_vector.h:1427: 	  _M_realloc_append(__x);
	movq	-112(%rbp), %rdx	# __x, tmp122
	movq	-104(%rbp), %rax	# this, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_	#
.LEHE22:
.L183:
# /usr/include//15.2.1/bits/stl_vector.h:1428:       }
	nop	
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3874:
	.section	.gcc_except_table
.LLSDA3874:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3874-.LLSDACSB3874
.LLSDACSB3874:
	.uleb128 .LEHB21-.LFB3874
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L182-.LFB3874
	.uleb128 0
	.uleb128 .LEHB22-.LFB3874
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE3874:
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_,comdat
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv:
.LFB3876:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	-24(%rbp), %rax	# this, tmp103
	movq	8(%rax), %rdx	# this_5(D)->D.80456._M_impl.D.79795._M_finish, _1
# /usr/include//15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	-24(%rbp), %rax	# this, tmp104
	movq	(%rax), %rax	# this_5(D)->D.80456._M_impl.D.79795._M_start, _2
# /usr/include//15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%rax, %rdx	# _2, _3
# /usr/include//15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rdx, %rax	# _3, _3
	sarq	$5, %rax	#, _3
	movq	%rax, -8(%rbp)	# __dif_6, __dif
# /usr/include//15.2.1/bits/stl_vector.h:1120: 	if (__dif < 0)
	cmpq	$0, -8(%rbp)	#, __dif
# /usr/include//15.2.1/bits/stl_vector.h:1122: 	return size_type(__dif);
	movq	-8(%rbp), %rax	# __dif, _7
# /usr/include//15.2.1/bits/stl_vector.h:1123:       }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3876:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_:
.LFB3877:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __str, __str
# /usr/include//15.2.1/bits/basic_string.h:906: 	return this->assign(__str);
	movq	-16(%rbp), %rdx	# __str, tmp100
	movq	-8(%rbp), %rax	# this, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_	#
# /usr/include//15.2.1/bits/basic_string.h:907:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3877:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_
	.section	.rodata
.LC21:
	.string	"__n < this->size()"
	.align 8
.LC22:
	.ascii	"std::vector"
	.string	"<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::operator[](size_type) [with _Tp = std::__cxx11::basic_string<char>; _Alloc = std::allocator<std::__cxx11::basic_string<char> >; reference = std::__cxx11::basic_string<char>&; size_type = long unsigned int]"
	.align 8
.LC23:
	.string	"/usr/include//15.2.1/bits/stl_vector.h"
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm:
.LFB3878:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/stl_vector.h:1263: 	__glibcxx_requires_subscript(__n);
	movq	-8(%rbp), %rax	# this, tmp107
	movq	%rax, %rdi	# tmp107,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:1263: 	__glibcxx_requires_subscript(__n);
	cmpq	%rax, -16(%rbp)	# _1, __n
	setnb	%al	#, _2
	movzbl	%al, %eax	# _2, _3
# /usr/include//15.2.1/bits/stl_vector.h:1263: 	__glibcxx_requires_subscript(__n);
	testq	%rax, %rax	# _4
	setne	%al	#, retval.47_11
	testb	%al, %al	# retval.47_11
	je	.L190	#,
# /usr/include//15.2.1/bits/stl_vector.h:1263: 	__glibcxx_requires_subscript(__n);
	leaq	.LC21(%rip), %rcx	#, tmp108
	leaq	.LC22(%rip), %rdx	#, tmp109
	leaq	.LC23(%rip), %rax	#, tmp110
	movl	$1263, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_@PLT	#
.L190:
# /usr/include//15.2.1/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	movq	-8(%rbp), %rax	# this, tmp111
	movq	(%rax), %rax	# this_8(D)->D.80456._M_impl.D.79795._M_start, _5
# /usr/include//15.2.1/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	movq	-16(%rbp), %rdx	# __n, tmp112
	salq	$5, %rdx	#, _6
# /usr/include//15.2.1/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	addq	%rdx, %rax	# _6, _12
# /usr/include//15.2.1/bits/stl_vector.h:1265:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3878:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EE9push_backERKS0_,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EE9push_backERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EE9push_backERKS0_
	.type	_ZNSt6vectorI7IMUDataSaIS0_EE9push_backERKS0_, @function
_ZNSt6vectorI7IMUDataSaIS0_EE9push_backERKS0_:
.LFB3879:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3879
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)	# this, this
	movq	%rsi, -112(%rbp)	# __x, __x
# /usr/include//15.2.1/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-104(%rbp), %rax	# this, tmp111
	movq	8(%rax), %rdx	# this_9(D)->D.79322._M_impl.D.78625._M_finish, _1
# /usr/include//15.2.1/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-104(%rbp), %rax	# this, tmp112
	movq	16(%rax), %rax	# this_9(D)->D.79322._M_impl.D.78625._M_end_of_storage, _2
# /usr/include//15.2.1/bits/stl_vector.h:1418: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rax, %rdx	# _2, _1
	je	.L193	#,
# /usr/include//15.2.1/bits/stl_vector.h:1421: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	-104(%rbp), %rax	# this, tmp113
	movq	8(%rax), %rax	# this_9(D)->D.79322._M_impl.D.78625._M_finish, _3
# /usr/include//15.2.1/bits/stl_vector.h:1421: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	-104(%rbp), %rdx	# this, _4
	movq	%rdx, -96(%rbp)	# _4, __a
	movq	%rax, -88(%rbp)	# _3, __p
	movq	-112(%rbp), %rax	# __x, tmp114
	movq	%rax, -80(%rbp)	# tmp114, __args#0
	movq	-80(%rbp), %rax	# __args#0, tmp115
	movq	%rax, -72(%rbp)	# tmp115, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-72(%rbp), %rax	# __t, _17
	movq	-88(%rbp), %rdx	# __p, tmp116
	movq	%rdx, -64(%rbp)	# tmp116, __p
	movq	%rax, -56(%rbp)	# _17, __args#0
	movq	-96(%rbp), %rax	# __a, tmp117
	movq	%rax, -48(%rbp)	# tmp117, this
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-64(%rbp), %rbx	# __p, _23
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movl	$56, %edi	#,
	call	_ZnwmPv	#
	movq	%rax, %r12	#, _24
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$1, %r14d	#, _25
	movq	-56(%rbp), %rax	# __args#0, tmp118
	movq	%rax, -40(%rbp)	# tmp118, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-40(%rbp), %rax	# __t, _28
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %rsi	# _28,
	movq	%r12, %rdi	# _24,
.LEHB23:
	call	_ZN7IMUDataC1ERKS_	#
.LEHE23:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$0, %eax	#, _31
	testb	%al, %al	# _31
	je	.L196	#,
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movq	%r12, %rdi	# _24,
	call	_ZdlPvS_	#
.L196:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:680: 	}
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:1423: 	    ++this->_M_impl._M_finish;
	movq	-104(%rbp), %rax	# this, tmp120
	movq	8(%rax), %rax	# this_9(D)->D.79322._M_impl.D.78625._M_finish, _5
# /usr/include//15.2.1/bits/stl_vector.h:1423: 	    ++this->_M_impl._M_finish;
	leaq	56(%rax), %rdx	#, _6
	movq	-104(%rbp), %rax	# this, tmp121
	movq	%rdx, 8(%rax)	# _6, this_9(D)->D.79322._M_impl.D.78625._M_finish
# /usr/include//15.2.1/bits/stl_vector.h:1428:       }
	jmp	.L202	#
.L201:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %r13	#, tmp119
	testb	%r14b, %r14b	# _25
	je	.L199	#,
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movq	%r12, %rdi	# _24,
	call	_ZdlPvS_	#
.L199:
	movq	%r13, %rax	# tmp119, D.90300
	movq	%rax, %rdi	# D.90300,
.LEHB24:
	call	_Unwind_Resume@PLT	#
.L193:
# /usr/include//15.2.1/bits/stl_vector.h:1427: 	  _M_realloc_append(__x);
	movq	-112(%rbp), %rdx	# __x, tmp122
	movq	-104(%rbp), %rax	# this, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_	#
.LEHE24:
.L202:
# /usr/include//15.2.1/bits/stl_vector.h:1428:       }
	nop	
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3879:
	.section	.gcc_except_table
.LLSDA3879:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3879-.LLSDACSB3879
.LLSDACSB3879:
	.uleb128 .LEHB23-.LFB3879
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L201-.LFB3879
	.uleb128 0
	.uleb128 .LEHB24-.LFB3879
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE3879:
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EE9push_backERKS0_,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EE9push_backERKS0_,comdat
	.size	_ZNSt6vectorI7IMUDataSaIS0_EE9push_backERKS0_, .-_ZNSt6vectorI7IMUDataSaIS0_EE9push_backERKS0_
	.section	.text._ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv:
.LFB3882:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	-24(%rbp), %rax	# this, tmp103
	movq	8(%rax), %rdx	# this_5(D)->D.79322._M_impl.D.78625._M_finish, _1
# /usr/include//15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	-24(%rbp), %rax	# this, tmp104
	movq	(%rax), %rax	# this_5(D)->D.79322._M_impl.D.78625._M_start, _2
# /usr/include//15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%rax, %rdx	# _2, _3
# /usr/include//15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sarq	$3, %rdx	#, tmp105
	movabsq	$7905747460161236407, %rax	#, tmp107
	imulq	%rdx, %rax	# tmp105, __dif_6
	movq	%rax, -8(%rbp)	# __dif_6, __dif
# /usr/include//15.2.1/bits/stl_vector.h:1120: 	if (__dif < 0)
	cmpq	$0, -8(%rbp)	#, __dif
# /usr/include//15.2.1/bits/stl_vector.h:1122: 	return size_type(__dif);
	movq	-8(%rbp), %rax	# __dif, _7
# /usr/include//15.2.1/bits/stl_vector.h:1123:       }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3882:
	.size	_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv, .-_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EE5beginEv
	.type	_ZNSt6vectorI7IMUDataSaIS0_EE5beginEv, @function
_ZNSt6vectorI7IMUDataSaIS0_EE5beginEv:
.LFB3884:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:998:       begin() _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.90301
	xorl	%eax, %eax	# tmp102
# /usr/include//15.2.1/bits/stl_vector.h:999:       { return iterator(this->_M_impl._M_start); }
	movq	-40(%rbp), %rax	# this, _1
	movq	%rax, -16(%rbp)	# _1, __i
# /usr/include//15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	-16(%rbp), %rax	# __i, tmp103
	movq	(%rax), %rax	# *__i_6, _7
	movq	%rax, -24(%rbp)	# _7, D.83733._M_current
# /usr/include//15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:999:       { return iterator(this->_M_impl._M_start); }
	movq	-24(%rbp), %rax	# D.83733, D.89456
# /usr/include//15.2.1/bits/stl_vector.h:999:       { return iterator(this->_M_impl._M_start); }
	movq	-8(%rbp), %rdx	# D.90301, tmp105
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	je	.L208	#,
	call	__stack_chk_fail@PLT	#
.L208:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3884:
	.size	_ZNSt6vectorI7IMUDataSaIS0_EE5beginEv, .-_ZNSt6vectorI7IMUDataSaIS0_EE5beginEv
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EE3endEv
	.type	_ZNSt6vectorI7IMUDataSaIS0_EE3endEv, @function
_ZNSt6vectorI7IMUDataSaIS0_EE3endEv:
.LFB3885:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:1018:       end() _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.90302
	xorl	%eax, %eax	# tmp102
# /usr/include//15.2.1/bits/stl_vector.h:1019:       { return iterator(this->_M_impl._M_finish); }
	movq	-40(%rbp), %rax	# this, tmp103
	addq	$8, %rax	#, _1
	movq	%rax, -16(%rbp)	# _1, __i
# /usr/include//15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	-16(%rbp), %rax	# __i, tmp104
	movq	(%rax), %rax	# *__i_6, _7
	movq	%rax, -24(%rbp)	# _7, D.83735._M_current
# /usr/include//15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:1019:       { return iterator(this->_M_impl._M_finish); }
	movq	-24(%rbp), %rax	# D.83735, D.89459
# /usr/include//15.2.1/bits/stl_vector.h:1019:       { return iterator(this->_M_impl._M_finish); }
	movq	-8(%rbp), %rdx	# D.90302, tmp106
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	je	.L211	#,
	call	__stack_chk_fail@PLT	#
.L211:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3885:
	.size	_ZNSt6vectorI7IMUDataSaIS0_EE3endEv, .-_ZNSt6vectorI7IMUDataSaIS0_EE3endEv
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv:
.LFB3941:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	movq	-8(%rbp), %rax	# this, tmp100
	movq	(%rax), %rax	# this_2(D)->_M_dataplus._M_p, _3
# /usr/include//15.2.1/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3941:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
.LFB3942:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	movq	-8(%rbp), %rax	# this, tmp101
	addq	$16, %rax	#, _1
# /usr/include//15.2.1/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	movq	%rax, %rdi	# _1,
	call	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc	#
# /usr/include//15.2.1/bits/basic_string.h:250:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3942:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC5EPcOS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_:
.LFB3944:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# this, this
	movq	%rsi, -64(%rbp)	# __dat, __dat
	movq	%rdx, -72(%rbp)	# __a, __a
	movq	-72(%rbp), %rax	# __a, tmp99
	movq	%rax, -8(%rbp)	# tmp99, __t
# /usr/include//15.2.1/bits/move.h:139:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-8(%rbp), %rax	# __t, D.89726
	movq	-56(%rbp), %rdx	# this, tmp100
	movq	%rdx, -40(%rbp)	# tmp100, this
	movq	%rax, -32(%rbp)	# D.89726, __a
	movq	-40(%rbp), %rax	# this, tmp101
	movq	%rax, -24(%rbp)	# tmp101, this
	movq	-32(%rbp), %rax	# __a, tmp102
	movq	%rax, -16(%rbp)	# tmp102, D.89724
# /usr/include//15.2.1/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include//15.2.1/bits/allocator.h:173:       : __allocator_base<_Tp>(__a) { }
	nop	
# /usr/include//15.2.1/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	-56(%rbp), %rax	# this, tmp103
	movq	-64(%rbp), %rdx	# __dat, tmp104
	movq	%rdx, (%rax)	# tmp104, this_3(D)->_M_p
# /usr/include//15.2.1/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3944:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm:
.LFB3947:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/basic_string.h:270:       _M_set_length(size_type __n)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp100
	movq	%rax, -8(%rbp)	# tmp100, D.90303
	xorl	%eax, %eax	# tmp100
# /usr/include//15.2.1/bits/basic_string.h:272: 	_M_length(__n);
	movq	-32(%rbp), %rdx	# __n, tmp101
	movq	-24(%rbp), %rax	# this, tmp102
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm	#
# /usr/include//15.2.1/bits/basic_string.h:273: 	traits_type::assign(_M_data()[__n], _CharT());
	movb	$0, -9(%rbp)	#, D.85132
# /usr/include//15.2.1/bits/basic_string.h:273: 	traits_type::assign(_M_data()[__n], _CharT());
	movq	-24(%rbp), %rax	# this, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
# /usr/include//15.2.1/bits/basic_string.h:273: 	traits_type::assign(_M_data()[__n], _CharT());
	movq	-32(%rbp), %rdx	# __n, tmp104
	addq	%rax, %rdx	# _1, _2
# /usr/include//15.2.1/bits/basic_string.h:273: 	traits_type::assign(_M_data()[__n], _CharT());
	leaq	-9(%rbp), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	movq	%rdx, %rdi	# _2,
	call	_ZNSt11char_traitsIcE6assignERcRKc	#
# /usr/include//15.2.1/bits/basic_string.h:274:       }
	nop	
	movq	-8(%rbp), %rax	# D.90303, tmp106
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	je	.L219	#,
	call	__stack_chk_fail@PLT	#
.L219:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3947:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB3948:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:298: 	if (!_M_is_local())
	movq	-8(%rbp), %rax	# this, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv	#
# /usr/include//15.2.1/bits/basic_string.h:298: 	if (!_M_is_local())
	xorl	$1, %eax	#, retval.46_8
# /usr/include//15.2.1/bits/basic_string.h:298: 	if (!_M_is_local())
	testb	%al, %al	# retval.46_8
	je	.L222	#,
# /usr/include//15.2.1/bits/basic_string.h:299: 	  _M_destroy(_M_allocated_capacity);
	movq	-8(%rbp), %rax	# this, tmp102
	movq	16(%rax), %rdx	# this_5(D)->D.37734._M_allocated_capacity, _2
	movq	-8(%rbp), %rax	# this, tmp103
	movq	%rdx, %rsi	# _2,
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm	#
.L222:
# /usr/include//15.2.1/bits/basic_string.h:300:       }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3948:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
.LFB3951:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:360:       { return _M_dataplus; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include//15.2.1/bits/basic_string.h:360:       { return _M_dataplus; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3951:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv:
.LFB3953:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	movq	-24(%rbp), %rax	# this, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rbx	#, _1
# /usr/include//15.2.1/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	movq	-24(%rbp), %rax	# this, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
# /usr/include//15.2.1/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rbx	# _2, _1
	sete	%al	#, retval.37_9
# /usr/include//15.2.1/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	testb	%al, %al	# retval.37_9
	je	.L226	#,
# /usr/include//15.2.1/bits/basic_string.h:282: 	    if (_M_string_length > _S_local_capacity)
	movq	-24(%rbp), %rax	# this, tmp106
	movq	8(%rax), %rax	# this_6(D)->_M_string_length, _3
# /usr/include//15.2.1/bits/basic_string.h:282: 	    if (_M_string_length > _S_local_capacity)
	cmpq	$15, %rax	#, _3
# /usr/include//15.2.1/bits/basic_string.h:284: 	    return true;
	movl	$1, %eax	#, _4
	jmp	.L228	#
.L226:
# /usr/include//15.2.1/bits/basic_string.h:286: 	return false;
	movl	$0, %eax	#, _4
.L228:
# /usr/include//15.2.1/bits/basic_string.h:287:       }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3953:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv:
.LFB3954:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:1176:       { return size(); }
	movq	-8(%rbp), %rax	# this, tmp100
	movq	%rax, %rdi	# tmp100,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	#
# /usr/include//15.2.1/bits/basic_string.h:1176:       { return size(); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3954:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc:
.LFB3955:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __p, __p
# /usr/include//15.2.1/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	movq	-8(%rbp), %rax	# this, tmp98
	movq	-16(%rbp), %rdx	# __p, tmp99
	movq	%rdx, (%rax)	# tmp99, this_2(D)->_M_dataplus._M_p
# /usr/include//15.2.1/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3955:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm:
.LFB3956:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __capacity, __capacity
# /usr/include//15.2.1/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	movq	-8(%rbp), %rax	# this, tmp98
	movq	-16(%rbp), %rdx	# __capacity, tmp99
	movq	%rdx, 16(%rax)	# tmp99, this_2(D)->D.37734._M_allocated_capacity
# /usr/include//15.2.1/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3956:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm:
.LFB3957:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __length, __length
# /usr/include//15.2.1/bits/basic_string.h:234:       { _M_string_length = __length; }
	movq	-8(%rbp), %rax	# this, tmp98
	movq	-16(%rbp), %rdx	# __length, tmp99
	movq	%rdx, 8(%rax)	# tmp99, this_2(D)->_M_string_length
# /usr/include//15.2.1/bits/basic_string.h:234:       { _M_string_length = __length; }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3957:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv:
.LFB3988:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	movq	-24(%rbp), %rax	# this, tmp102
	movq	8(%rax), %rax	# this_3(D)->_M_string_length, tmp103
	movq	%rax, -8(%rbp)	# tmp103, __sz
# /usr/include//15.2.1/bits/basic_string.h:1166: 	if (__sz > max_size ())
	movq	-24(%rbp), %rax	# this, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	#
# /usr/include//15.2.1/bits/basic_string.h:1166: 	if (__sz > max_size ())
	cmpq	-8(%rbp), %rax	# __sz, _1
	setb	%al	#, retval.24_6
# /usr/include//15.2.1/bits/basic_string.h:1166: 	if (__sz > max_size ())
	testb	%al, %al	# retval.24_6
# /usr/include//15.2.1/bits/basic_string.h:1168: 	return __sz;
	movq	-8(%rbp), %rax	# __sz, _7
# /usr/include//15.2.1/bits/basic_string.h:1169:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3988:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIcED2Ev
	.type	_ZNSt15__new_allocatorIcED2Ev, @function
_ZNSt15__new_allocatorIcED2Ev:
.LFB3993:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/new_allocator.h:104:       ~__new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3993:
	.size	_ZNSt15__new_allocatorIcED2Ev, .-_ZNSt15__new_allocatorIcED2Ev
	.weak	_ZNSt15__new_allocatorIcED1Ev
	.set	_ZNSt15__new_allocatorIcED1Ev,_ZNSt15__new_allocatorIcED2Ev
	.section	.text._ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB4088:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	-8(%rbp), %rax	# this, tmp98
	movq	$0, (%rax)	#, this_2(D)->_M_start
# /usr/include//15.2.1/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	-8(%rbp), %rax	# this, tmp99
	movq	$0, 8(%rax)	#, this_2(D)->_M_finish
# /usr/include//15.2.1/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	-8(%rbp), %rax	# this, tmp100
	movq	$0, 16(%rax)	#, this_2(D)->_M_end_of_storage
# /usr/include//15.2.1/bits/stl_vector.h:107: 	{ }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4088:
	.size	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI7IMUDataSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorI7IMUDataED2Ev,"axG",@progbits,_ZNSt15__new_allocatorI7IMUDataED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorI7IMUDataED2Ev
	.type	_ZNSt15__new_allocatorI7IMUDataED2Ev, @function
_ZNSt15__new_allocatorI7IMUDataED2Ev:
.LFB4091:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/new_allocator.h:104:       ~__new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4091:
	.size	_ZNSt15__new_allocatorI7IMUDataED2Ev, .-_ZNSt15__new_allocatorI7IMUDataED2Ev
	.weak	_ZNSt15__new_allocatorI7IMUDataED1Ev
	.set	_ZNSt15__new_allocatorI7IMUDataED1Ev,_ZNSt15__new_allocatorI7IMUDataED2Ev
	.section	.text._ZNSt12_Vector_baseI7IMUDataSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI7IMUDataSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI7IMUDataSaIS0_EE13_M_deallocateEPS0_m:
.LFB4093:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# __p, __p
	movq	%rdx, -56(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/stl_vector.h:395: 	if (__p)
	cmpq	$0, -48(%rbp)	#, __p
	je	.L242	#,
# /usr/include//15.2.1/bits/stl_vector.h:396: 	  _Tr::deallocate(_M_impl, __p, __n);
	movq	-40(%rbp), %rax	# this, _1
	movq	%rax, -24(%rbp)	# _1, __a
	movq	-48(%rbp), %rax	# __p, tmp99
	movq	%rax, -16(%rbp)	# tmp99, __p
	movq	-56(%rbp), %rax	# __n, tmp100
	movq	%rax, -8(%rbp)	# tmp100, __n
# /usr/include//15.2.1/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	movq	-8(%rbp), %rdx	# __n, tmp101
	movq	-16(%rbp), %rcx	# __p, tmp102
	movq	-24(%rbp), %rax	# __a, tmp103
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt15__new_allocatorI7IMUDataE10deallocateEPS0_m	#
# /usr/include//15.2.1/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	nop	
.L242:
# /usr/include//15.2.1/bits/stl_vector.h:397:       }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4093:
	.size	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI7IMUDataSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZNSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB4094:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:308:       { return this->_M_impl; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include//15.2.1/bits/stl_vector.h:308:       { return this->_M_impl; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4094:
	.size	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev:
.LFB4115:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	-8(%rbp), %rax	# this, tmp98
	movq	$0, (%rax)	#, this_2(D)->_M_start
# /usr/include//15.2.1/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	-8(%rbp), %rax	# this, tmp99
	movq	$0, 8(%rax)	#, this_2(D)->_M_finish
# /usr/include//15.2.1/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	-8(%rbp), %rax	# this, tmp100
	movq	$0, 16(%rax)	#, this_2(D)->_M_end_of_storage
# /usr/include//15.2.1/bits/stl_vector.h:107: 	{ }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4115:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.type	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, @function
_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev:
.LFB4118:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/new_allocator.h:104:       ~__new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4118:
	.size	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, .-_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.weak	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev
	.set	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev,_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m:
.LFB4120:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# __p, __p
	movq	%rdx, -56(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/stl_vector.h:395: 	if (__p)
	cmpq	$0, -48(%rbp)	#, __p
	je	.L249	#,
# /usr/include//15.2.1/bits/stl_vector.h:396: 	  _Tr::deallocate(_M_impl, __p, __n);
	movq	-40(%rbp), %rax	# this, _1
	movq	%rax, -24(%rbp)	# _1, __a
	movq	-48(%rbp), %rax	# __p, tmp99
	movq	%rax, -16(%rbp)	# tmp99, __p
	movq	-56(%rbp), %rax	# __n, tmp100
	movq	%rax, -8(%rbp)	# tmp100, __n
# /usr/include//15.2.1/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	movq	-8(%rbp), %rdx	# __n, tmp101
	movq	-16(%rbp), %rcx	# __p, tmp102
	movq	-24(%rbp), %rax	# __a, tmp103
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m	#
# /usr/include//15.2.1/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	nop	
.L249:
# /usr/include//15.2.1/bits/stl_vector.h:397:       }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4120:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv:
.LFB4121:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:308:       { return this->_M_impl; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include//15.2.1/bits/stl_vector.h:308:       { return this->_M_impl; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4121:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.section	.rodata
.LC24:
	.string	"vector::_M_realloc_append"
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_:
.LFB4124:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4124
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$208, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -232(%rbp)	# this, this
	movq	%rsi, -240(%rbp)	# __args#0, __args#0
# /usr/include//15.2.1/bits/vector.tcc:557:       vector<_Tp, _Alloc>::
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	movq	%rax, -40(%rbp)	# tmp128, D.90306
	xorl	%eax, %eax	# tmp128
# /usr/include//15.2.1/bits/vector.tcc:566:       const size_type __len = _M_check_len(1u, "vector::_M_realloc_append");
	leaq	.LC24(%rip), %rdx	#, tmp129
	movq	-232(%rbp), %rax	# this, tmp130
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp130,
.LEHB25:
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc	#
# /usr/include//15.2.1/bits/vector.tcc:566:       const size_type __len = _M_check_len(1u, "vector::_M_realloc_append");
	movq	%rax, -208(%rbp)	# _20, __len
# /usr/include//15.2.1/bits/vector.tcc:567:       if (__len <= 0)
	cmpq	$0, -208(%rbp)	#, __len
# /usr/include//15.2.1/bits/vector.tcc:569:       pointer __old_start = this->_M_impl._M_start;
	movq	-232(%rbp), %rax	# this, tmp131
	movq	(%rax), %rax	# this_18(D)->D.80456._M_impl.D.79795._M_start, tmp132
	movq	%rax, -200(%rbp)	# tmp132, __old_start
# /usr/include//15.2.1/bits/vector.tcc:570:       pointer __old_finish = this->_M_impl._M_finish;
	movq	-232(%rbp), %rax	# this, tmp133
	movq	8(%rax), %rax	# this_18(D)->D.80456._M_impl.D.79795._M_finish, tmp134
	movq	%rax, -192(%rbp)	# tmp134, __old_finish
# /usr/include//15.2.1/bits/vector.tcc:571:       const size_type __elems = end() - begin();
	movq	-232(%rbp), %rax	# this, tmp135
	movq	%rax, %rdi	# tmp135,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv	#
	movq	%rax, -64(%rbp)	# tmp137, MEM[(struct __normal_iterator *)_94]
# /usr/include//15.2.1/bits/vector.tcc:571:       const size_type __elems = end() - begin();
	movq	-232(%rbp), %rax	# this, tmp138
	movq	%rax, %rdi	# tmp138,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv	#
	movq	%rax, -216(%rbp)	# tmp140, D.85868
	leaq	-216(%rbp), %rax	#, tmp141
	movq	%rax, -80(%rbp)	# tmp141, this
# /usr/include//15.2.1/bits/stl_iterator.h:1166:       { return _M_current; }
	movq	-80(%rbp), %rax	# this, _72
# /usr/include//15.2.1/bits/stl_iterator.h:1340:     { return __lhs.base() - __rhs.base(); }
	movq	(%rax), %rdx	# *_74, _75
	leaq	-64(%rbp), %rax	#, tmp142
	movq	%rax, -72(%rbp)	# tmp142, this
# /usr/include//15.2.1/bits/stl_iterator.h:1166:       { return _M_current; }
	movq	-72(%rbp), %rax	# this, _77
# /usr/include//15.2.1/bits/stl_iterator.h:1340:     { return __lhs.base() - __rhs.base(); }
	movq	(%rax), %rax	# *_79, _80
	subq	%rax, %rdx	# _80, _81
# /usr/include//15.2.1/bits/stl_iterator.h:1340:     { return __lhs.base() - __rhs.base(); }
	movq	%rdx, %rax	# _81, _81
	sarq	$5, %rax	#, _81
# /usr/include//15.2.1/bits/vector.tcc:571:       const size_type __elems = end() - begin();
	movq	%rax, -184(%rbp)	# D.90094, __elems
# /usr/include//15.2.1/bits/vector.tcc:572:       pointer __new_start(this->_M_allocate(__len));
	movq	-232(%rbp), %rax	# this, _2
	movq	-208(%rbp), %rdx	# __len, tmp144
	movq	%rdx, %rsi	# tmp144,
	movq	%rax, %rdi	# _2,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm	#
.LEHE25:
# /usr/include//15.2.1/bits/vector.tcc:572:       pointer __new_start(this->_M_allocate(__len));
	movq	%rax, -176(%rbp)	# _30, __new_start
# /usr/include//15.2.1/bits/vector.tcc:573:       pointer __new_finish(__new_start);
	movq	-176(%rbp), %rax	# __new_start, tmp145
	movq	%rax, -168(%rbp)	# tmp145, __new_finish
# /usr/include//15.2.1/bits/vector.tcc:576: 	_Guard_alloc __guard(__new_start, __len, *this);
	movq	-232(%rbp), %rcx	# this, _3
	movq	-208(%rbp), %rdx	# __len, tmp146
	movq	-176(%rbp), %rsi	# __new_start, tmp147
	leaq	-64(%rbp), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC1EPS5_mRSt12_Vector_baseIS5_S6_E	#
	movq	-240(%rbp), %rax	# __args#0, tmp149
	movq	%rax, -88(%rbp)	# tmp149, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-88(%rbp), %rax	# __t, D.90085
# /usr/include//15.2.1/bits/vector.tcc:587: 				 std::__to_address(__new_start + __elems),
	movq	-184(%rbp), %rdx	# __elems, tmp150
	movq	%rdx, %rcx	# tmp150, tmp150
	salq	$5, %rcx	#, tmp150
# /usr/include//15.2.1/bits/vector.tcc:586: 	_Alloc_traits::construct(this->_M_impl,
	movq	-176(%rbp), %rdx	# __new_start, tmp151
	addq	%rcx, %rdx	# _5, _6
	movq	%rdx, -96(%rbp)	# _6, __ptr
# /usr/include//15.2.1/bits/ptr_traits.h:211:       return __ptr;
	movq	-96(%rbp), %rdx	# __ptr, D.90081
# /usr/include//15.2.1/bits/vector.tcc:586: 	_Alloc_traits::construct(this->_M_impl,
	movq	-232(%rbp), %rcx	# this, _8
	movq	%rcx, -160(%rbp)	# _8, __a
	movq	%rdx, -152(%rbp)	# D.90081, __p
	movq	%rax, -144(%rbp)	# D.90085, __args#0
	movq	-144(%rbp), %rax	# __args#0, tmp152
	movq	%rax, -136(%rbp)	# tmp152, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-136(%rbp), %rax	# __t, _52
	movq	-152(%rbp), %rdx	# __p, tmp153
	movq	%rdx, -128(%rbp)	# tmp153, __p
	movq	%rax, -120(%rbp)	# _52, __args#0
	movq	-160(%rbp), %rax	# __a, tmp154
	movq	%rax, -112(%rbp)	# tmp154, this
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-128(%rbp), %rbx	# __p, _58
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _58,
	movl	$32, %edi	#,
	call	_ZnwmPv	#
	movq	%rax, %r12	#, _59
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$1, %r14d	#, _60
	movq	-120(%rbp), %rax	# __args#0, tmp155
	movq	%rax, -104(%rbp)	# tmp155, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-104(%rbp), %rax	# __t, _63
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %rsi	# _63,
	movq	%r12, %rdi	# _59,
.LEHB26:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_	#
.LEHE26:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$0, %eax	#, _66
	testb	%al, %al	# _66
	je	.L261	#,
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _58,
	movq	%r12, %rdi	# _59,
	call	_ZdlPvS_	#
.L261:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:680: 	}
	nop	
# /usr/include//15.2.1/bits/vector.tcc:600: 				       __new_start, _M_get_Tp_allocator());
	movq	-232(%rbp), %rax	# this, _9
	movq	%rax, %rdi	# _9,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv	#
	movq	%rax, %rcx	#, _10
# /usr/include//15.2.1/bits/vector.tcc:599: 	    __new_finish = _S_relocate(__old_start, __old_finish,
	movq	-176(%rbp), %rdx	# __new_start, tmp161
	movq	-192(%rbp), %rsi	# __old_finish, tmp162
	movq	-200(%rbp), %rax	# __old_start, tmp163
	movq	%rax, %rdi	# tmp163,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_	#
	movq	%rax, -168(%rbp)	# tmp164, __new_finish
# /usr/include//15.2.1/bits/vector.tcc:601: 	    ++__new_finish;
	addq	$32, -168(%rbp)	#, __new_finish
# /usr/include//15.2.1/bits/vector.tcc:638: 	__guard._M_storage = __old_start;
	movq	-200(%rbp), %rax	# __old_start, tmp165
	movq	%rax, -64(%rbp)	# tmp165, MEM[(struct _Guard_alloc *)_94]._M_storage
# /usr/include//15.2.1/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	-232(%rbp), %rax	# this, tmp166
	movq	16(%rax), %rax	# this_18(D)->D.80456._M_impl.D.79795._M_end_of_storage, _11
# /usr/include//15.2.1/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	-200(%rbp), %rax	# __old_start, _12
	sarq	$5, %rax	#, _13
# /usr/include//15.2.1/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%rax, -56(%rbp)	# _14, MEM[(struct _Guard_alloc *)_94]._M_len
# /usr/include//15.2.1/bits/vector.tcc:640:       }
	leaq	-64(%rbp), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD1Ev	#
# /usr/include//15.2.1/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	movq	-232(%rbp), %rax	# this, tmp169
	movq	-176(%rbp), %rdx	# __new_start, tmp170
	movq	%rdx, (%rax)	# tmp170, this_18(D)->D.80456._M_impl.D.79795._M_start
# /usr/include//15.2.1/bits/vector.tcc:645:       this->_M_impl._M_finish = __new_finish;
	movq	-232(%rbp), %rax	# this, tmp171
	movq	-168(%rbp), %rdx	# __new_finish, tmp172
	movq	%rdx, 8(%rax)	# tmp172, this_18(D)->D.80456._M_impl.D.79795._M_finish
# /usr/include//15.2.1/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	-208(%rbp), %rax	# __len, tmp173
	salq	$5, %rax	#, tmp173
	movq	%rax, %rdx	# tmp173, _15
	movq	-176(%rbp), %rax	# __new_start, tmp174
	addq	%rax, %rdx	# tmp174, _16
# /usr/include//15.2.1/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	-232(%rbp), %rax	# this, tmp175
	movq	%rdx, 16(%rax)	# _16, this_18(D)->D.80456._M_impl.D.79795._M_end_of_storage
# /usr/include//15.2.1/bits/vector.tcc:647:     }
	nop	
	movq	-40(%rbp), %rax	# D.90306, tmp176
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp176
	je	.L266	#,
	jmp	.L268	#
.L267:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %r13	#, tmp157
	testb	%r14b, %r14b	# _60
	je	.L264	#,
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _58,
	movq	%r12, %rdi	# _59,
	call	_ZdlPvS_	#
.L264:
	movq	%r13, %rbx	# tmp157, tmp156
# /usr/include//15.2.1/bits/vector.tcc:640:       }
	leaq	-64(%rbp), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD1Ev	#
	movq	%rbx, %rax	# tmp156, D.90304
	movq	-40(%rbp), %rdx	# D.90306, tmp177
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp177
	je	.L265	#,
	call	__stack_chk_fail@PLT	#
.L265:
	movq	%rax, %rdi	# D.90304,
.LEHB27:
	call	_Unwind_Resume@PLT	#
.LEHE27:
.L268:
# /usr/include//15.2.1/bits/vector.tcc:647:     }
	call	__stack_chk_fail@PLT	#
.L266:
	addq	$208, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4124:
	.section	.gcc_except_table
.LLSDA4124:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4124-.LLSDACSB4124
.LLSDACSB4124:
	.uleb128 .LEHB25-.LFB4124
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB4124
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L267-.LFB4124
	.uleb128 0
	.uleb128 .LEHB27-.LFB4124
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE4124:
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,comdat
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_:
.LFB4128:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4128
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# this, this
	movq	%rsi, -128(%rbp)	# __str, __str
# /usr/include//15.2.1/bits/basic_string.h:1740:       assign(const basic_string& __str)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	movq	%rax, -24(%rbp)	# tmp120, D.90309
	xorl	%eax, %eax	# tmp120
# /usr/include//15.2.1/ext/alloc_traits.h:108:     { return _Base_type::propagate_on_container_copy_assignment::value; }
	movl	$0, %eax	#, D.89840
# /usr/include//15.2.1/bits/basic_string.h:1743: 	if (_Alloc_traits::_S_propagate_on_copy_assign())
	testb	%al, %al	# D.89840
	je	.L271	#,
# /usr/include//15.2.1/ext/alloc_traits.h:120:     { return _Base_type::is_always_equal::value; }
	movl	$1, %eax	#, D.89843
# /usr/include//15.2.1/bits/basic_string.h:1745: 	    if (!_Alloc_traits::_S_always_equal() && !_M_is_local()
	xorl	$1, %eax	#, _2
# /usr/include//15.2.1/bits/basic_string.h:1746: 		&& _M_get_allocator() != __str._M_get_allocator())
	testb	%al, %al	# _2
	je	.L273	#,
# /usr/include//15.2.1/bits/basic_string.h:1745: 	    if (!_Alloc_traits::_S_always_equal() && !_M_is_local()
	movq	-120(%rbp), %rax	# this, tmp121
	movq	%rax, %rdi	# tmp121,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv	#
# /usr/include//15.2.1/bits/basic_string.h:1745: 	    if (!_Alloc_traits::_S_always_equal() && !_M_is_local()
	xorl	$1, %eax	#, _4
# /usr/include//15.2.1/bits/basic_string.h:1745: 	    if (!_Alloc_traits::_S_always_equal() && !_M_is_local()
	testb	%al, %al	# _4
	je	.L273	#,
# /usr/include//15.2.1/bits/basic_string.h:1746: 		&& _M_get_allocator() != __str._M_get_allocator())
	movq	-128(%rbp), %rax	# __str, tmp122
	movq	%rax, %rdi	# tmp122,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, %rbx	#, _5
# /usr/include//15.2.1/bits/basic_string.h:1746: 		&& _M_get_allocator() != __str._M_get_allocator())
	movq	-120(%rbp), %rax	# this, tmp123
	movq	%rax, %rdi	# tmp123,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -88(%rbp)	# _6, D.89846
	movq	%rbx, -80(%rbp)	# _5, D.89847
# /usr/include//15.2.1/bits/allocator.h:228:       { return false; }
	movl	$0, %eax	#, D.89848
# /usr/include//15.2.1/bits/basic_string.h:1746: 		&& _M_get_allocator() != __str._M_get_allocator())
	testb	%al, %al	# D.89848
	je	.L273	#,
# /usr/include//15.2.1/bits/basic_string.h:1746: 		&& _M_get_allocator() != __str._M_get_allocator())
	movl	$1, %eax	#, iftmp.40_16
# /usr/include//15.2.1/bits/basic_string.h:1746: 		&& _M_get_allocator() != __str._M_get_allocator())
	jmp	.L275	#
.L273:
# /usr/include//15.2.1/bits/basic_string.h:1746: 		&& _M_get_allocator() != __str._M_get_allocator())
	movl	$0, %eax	#, iftmp.40_16
.L275:
# /usr/include//15.2.1/bits/basic_string.h:1745: 	    if (!_Alloc_traits::_S_always_equal() && !_M_is_local()
	testb	%al, %al	# iftmp.40_16
	je	.L276	#,
# /usr/include//15.2.1/bits/basic_string.h:1750: 		if (__str.size() <= _S_local_capacity)
	movq	-128(%rbp), %rax	# __str, tmp124
	movq	%rax, %rdi	# tmp124,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	#
# /usr/include//15.2.1/bits/basic_string.h:1750: 		if (__str.size() <= _S_local_capacity)
	cmpq	$15, %rax	#, _8
	setbe	%al	#, retval.41_34
# /usr/include//15.2.1/bits/basic_string.h:1750: 		if (__str.size() <= _S_local_capacity)
	testb	%al, %al	# retval.41_34
	je	.L277	#,
# /usr/include//15.2.1/bits/basic_string.h:1752: 		    _M_destroy(_M_allocated_capacity);
	movq	-120(%rbp), %rax	# this, tmp125
	movq	16(%rax), %rdx	# this_24(D)->D.37734._M_allocated_capacity, _9
	movq	-120(%rbp), %rax	# this, tmp126
	movq	%rdx, %rsi	# _9,
	movq	%rax, %rdi	# tmp126,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm	#
	movq	-120(%rbp), %rax	# this, tmp127
	movq	%rax, -72(%rbp)	# tmp127, this
# /usr/include//15.2.1/bits/basic_string.h:388: 	return _M_local_data();
	movq	-72(%rbp), %rax	# this, tmp128
	movq	%rax, %rdi	# tmp128,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
	movq	%rax, %rdx	#, D.89852
# /usr/include//15.2.1/bits/basic_string.h:388: 	return _M_local_data();
	nop	
# /usr/include//15.2.1/bits/basic_string.h:1753: 		    _M_data(_M_use_local_data());
	movq	-120(%rbp), %rax	# this, tmp129
	movq	%rdx, %rsi	# D.89852,
	movq	%rax, %rdi	# tmp129,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	#
# /usr/include//15.2.1/bits/basic_string.h:1754: 		    _M_set_length(0);
	movq	-120(%rbp), %rax	# this, tmp130
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm	#
	jmp	.L276	#
.L277:
# /usr/include//15.2.1/bits/basic_string.h:1758: 		    const auto __len = __str.size();
	movq	-128(%rbp), %rax	# __str, tmp131
	movq	%rax, %rdi	# tmp131,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	#
	movq	%rax, -104(%rbp)	# tmp132, __len
# /usr/include//15.2.1/bits/basic_string.h:1759: 		    auto __alloc = __str._M_get_allocator();
	movq	-128(%rbp), %rax	# __str, tmp133
	movq	%rax, %rdi	# tmp133,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -64(%rbp)	# _11, __a
	leaq	-105(%rbp), %rax	#, tmp134
	movq	%rax, -56(%rbp)	# tmp134, this
	movq	-64(%rbp), %rax	# __a, tmp135
	movq	%rax, -48(%rbp)	# tmp135, D.89858
# /usr/include//15.2.1/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include//15.2.1/bits/allocator.h:173:       : __allocator_base<_Tp>(__a) { }
	nop	
# /usr/include//15.2.1/bits/basic_string.h:1761: 		    auto __ptr = _S_allocate(__alloc, __len + 1);
	movq	-104(%rbp), %rax	# __len, tmp136
	leaq	1(%rax), %rdx	#, _12
	leaq	-105(%rbp), %rax	#, tmp137
	movq	%rdx, %rsi	# _12,
	movq	%rax, %rdi	# tmp137,
.LEHB28:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m	#
.LEHE28:
# /usr/include//15.2.1/bits/basic_string.h:1761: 		    auto __ptr = _S_allocate(__alloc, __len + 1);
	movq	%rax, -96(%rbp)	# _39, __ptr
# /usr/include//15.2.1/bits/basic_string.h:1762: 		    _M_destroy(_M_allocated_capacity);
	movq	-120(%rbp), %rax	# this, tmp138
	movq	16(%rax), %rdx	# this_24(D)->D.37734._M_allocated_capacity, _13
	movq	-120(%rbp), %rax	# this, tmp139
	movq	%rdx, %rsi	# _13,
	movq	%rax, %rdi	# tmp139,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm	#
# /usr/include//15.2.1/bits/basic_string.h:1763: 		    _M_data(__ptr);
	movq	-96(%rbp), %rdx	# __ptr, tmp140
	movq	-120(%rbp), %rax	# this, tmp141
	movq	%rdx, %rsi	# tmp140,
	movq	%rax, %rdi	# tmp141,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	#
# /usr/include//15.2.1/bits/basic_string.h:1764: 		    _M_capacity(__len);
	movq	-104(%rbp), %rdx	# __len, tmp142
	movq	-120(%rbp), %rax	# this, tmp143
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# tmp143,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm	#
# /usr/include//15.2.1/bits/basic_string.h:1765: 		    _M_set_length(__len);
	movq	-104(%rbp), %rdx	# __len, tmp144
	movq	-120(%rbp), %rax	# this, tmp145
	movq	%rdx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp145,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm	#
# /usr/include//15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	leaq	-105(%rbp), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
.L276:
# /usr/include//15.2.1/bits/basic_string.h:1768: 	    std::__alloc_on_copy(_M_get_allocator(), __str._M_get_allocator());
	movq	-128(%rbp), %rax	# __str, tmp147
	movq	%rax, %rdi	# tmp147,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, %rbx	#, _14
# /usr/include//15.2.1/bits/basic_string.h:1768: 	    std::__alloc_on_copy(_M_get_allocator(), __str._M_get_allocator());
	movq	-120(%rbp), %rax	# this, tmp148
	movq	%rax, %rdi	# tmp148,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -40(%rbp)	# _15, __one
	movq	%rbx, -32(%rbp)	# _14, __two
# /usr/include//15.2.1/bits/alloc_traits.h:850:     }
	nop	
.L271:
# /usr/include//15.2.1/bits/basic_string.h:1771: 	this->_M_assign(__str);
	movq	-128(%rbp), %rdx	# __str, tmp149
	movq	-120(%rbp), %rax	# this, tmp150
	movq	%rdx, %rsi	# tmp149,
	movq	%rax, %rdi	# tmp150,
.LEHB29:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_	#
# /usr/include//15.2.1/bits/basic_string.h:1772: 	return *this;
	movq	-120(%rbp), %rax	# this, _53
# /usr/include//15.2.1/bits/basic_string.h:1773:       }
	movq	-24(%rbp), %rdx	# D.90309, tmp154
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	je	.L282	#,
	jmp	.L284	#
.L283:
# /usr/include//15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	movq	%rax, %rbx	#, tmp153
	leaq	-105(%rbp), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
	movq	%rbx, %rax	# tmp153, D.90308
	movq	-24(%rbp), %rdx	# D.90309, tmp155
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp155
	je	.L281	#,
	call	__stack_chk_fail@PLT	#
.L281:
	movq	%rax, %rdi	# D.90308,
	call	_Unwind_Resume@PLT	#
.LEHE29:
.L284:
# /usr/include//15.2.1/bits/basic_string.h:1773:       }
	call	__stack_chk_fail@PLT	#
.L282:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4128:
	.section	.gcc_except_table
.LLSDA4128:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4128-.LLSDACSB4128
.LLSDACSB4128:
	.uleb128 .LEHB28-.LFB4128
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L283-.LFB4128
	.uleb128 0
	.uleb128 .LEHB29-.LFB4128
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE4128:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	.type	_ZNSt6vectorI7IMUDataSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_, @function
_ZNSt6vectorI7IMUDataSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_:
.LFB4132:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4132
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$208, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -232(%rbp)	# this, this
	movq	%rsi, -240(%rbp)	# __args#0, __args#0
# /usr/include//15.2.1/bits/vector.tcc:557:       vector<_Tp, _Alloc>::
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	movq	%rax, -40(%rbp)	# tmp128, D.90312
	xorl	%eax, %eax	# tmp128
# /usr/include//15.2.1/bits/vector.tcc:566:       const size_type __len = _M_check_len(1u, "vector::_M_realloc_append");
	leaq	.LC24(%rip), %rdx	#, tmp129
	movq	-232(%rbp), %rax	# this, tmp130
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp130,
.LEHB30:
	call	_ZNKSt6vectorI7IMUDataSaIS0_EE12_M_check_lenEmPKc	#
# /usr/include//15.2.1/bits/vector.tcc:566:       const size_type __len = _M_check_len(1u, "vector::_M_realloc_append");
	movq	%rax, -208(%rbp)	# _20, __len
# /usr/include//15.2.1/bits/vector.tcc:567:       if (__len <= 0)
	cmpq	$0, -208(%rbp)	#, __len
# /usr/include//15.2.1/bits/vector.tcc:569:       pointer __old_start = this->_M_impl._M_start;
	movq	-232(%rbp), %rax	# this, tmp131
	movq	(%rax), %rax	# this_18(D)->D.79322._M_impl.D.78625._M_start, tmp132
	movq	%rax, -200(%rbp)	# tmp132, __old_start
# /usr/include//15.2.1/bits/vector.tcc:570:       pointer __old_finish = this->_M_impl._M_finish;
	movq	-232(%rbp), %rax	# this, tmp133
	movq	8(%rax), %rax	# this_18(D)->D.79322._M_impl.D.78625._M_finish, tmp134
	movq	%rax, -192(%rbp)	# tmp134, __old_finish
# /usr/include//15.2.1/bits/vector.tcc:571:       const size_type __elems = end() - begin();
	movq	-232(%rbp), %rax	# this, tmp135
	movq	%rax, %rdi	# tmp135,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE5beginEv	#
	movq	%rax, -64(%rbp)	# tmp137, MEM[(struct __normal_iterator *)_94]
# /usr/include//15.2.1/bits/vector.tcc:571:       const size_type __elems = end() - begin();
	movq	-232(%rbp), %rax	# this, tmp138
	movq	%rax, %rdi	# tmp138,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE3endEv	#
	movq	%rax, -216(%rbp)	# tmp140, D.86328
	leaq	-216(%rbp), %rax	#, tmp141
	movq	%rax, -80(%rbp)	# tmp141, this
# /usr/include//15.2.1/bits/stl_iterator.h:1166:       { return _M_current; }
	movq	-80(%rbp), %rax	# this, _72
# /usr/include//15.2.1/bits/stl_iterator.h:1340:     { return __lhs.base() - __rhs.base(); }
	movq	(%rax), %rdx	# *_74, _75
	leaq	-64(%rbp), %rax	#, tmp142
	movq	%rax, -72(%rbp)	# tmp142, this
# /usr/include//15.2.1/bits/stl_iterator.h:1166:       { return _M_current; }
	movq	-72(%rbp), %rax	# this, _77
# /usr/include//15.2.1/bits/stl_iterator.h:1340:     { return __lhs.base() - __rhs.base(); }
	movq	(%rax), %rax	# *_79, _80
	subq	%rax, %rdx	# _80, _81
# /usr/include//15.2.1/bits/stl_iterator.h:1340:     { return __lhs.base() - __rhs.base(); }
	sarq	$3, %rdx	#, tmp143
	movabsq	$7905747460161236407, %rax	#, tmp145
	imulq	%rdx, %rax	# tmp143, _82
# /usr/include//15.2.1/bits/vector.tcc:571:       const size_type __elems = end() - begin();
	movq	%rax, -184(%rbp)	# D.90220, __elems
# /usr/include//15.2.1/bits/vector.tcc:572:       pointer __new_start(this->_M_allocate(__len));
	movq	-232(%rbp), %rax	# this, _2
	movq	-208(%rbp), %rdx	# __len, tmp146
	movq	%rdx, %rsi	# tmp146,
	movq	%rax, %rdi	# _2,
	call	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE11_M_allocateEm	#
.LEHE30:
# /usr/include//15.2.1/bits/vector.tcc:572:       pointer __new_start(this->_M_allocate(__len));
	movq	%rax, -176(%rbp)	# _30, __new_start
# /usr/include//15.2.1/bits/vector.tcc:573:       pointer __new_finish(__new_start);
	movq	-176(%rbp), %rax	# __new_start, tmp147
	movq	%rax, -168(%rbp)	# tmp147, __new_finish
# /usr/include//15.2.1/bits/vector.tcc:576: 	_Guard_alloc __guard(__new_start, __len, *this);
	movq	-232(%rbp), %rcx	# this, _3
	movq	-208(%rbp), %rdx	# __len, tmp148
	movq	-176(%rbp), %rsi	# __new_start, tmp149
	leaq	-64(%rbp), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E	#
	movq	-240(%rbp), %rax	# __args#0, tmp151
	movq	%rax, -88(%rbp)	# tmp151, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-88(%rbp), %rax	# __t, D.90211
# /usr/include//15.2.1/bits/vector.tcc:587: 				 std::__to_address(__new_start + __elems),
	movq	-184(%rbp), %rdx	# __elems, tmp152
	imulq	$56, %rdx, %rcx	#, tmp152, _5
# /usr/include//15.2.1/bits/vector.tcc:586: 	_Alloc_traits::construct(this->_M_impl,
	movq	-176(%rbp), %rdx	# __new_start, tmp153
	addq	%rcx, %rdx	# _5, _6
	movq	%rdx, -96(%rbp)	# _6, __ptr
# /usr/include//15.2.1/bits/ptr_traits.h:211:       return __ptr;
	movq	-96(%rbp), %rdx	# __ptr, D.90207
# /usr/include//15.2.1/bits/vector.tcc:586: 	_Alloc_traits::construct(this->_M_impl,
	movq	-232(%rbp), %rcx	# this, _8
	movq	%rcx, -160(%rbp)	# _8, __a
	movq	%rdx, -152(%rbp)	# D.90207, __p
	movq	%rax, -144(%rbp)	# D.90211, __args#0
	movq	-144(%rbp), %rax	# __args#0, tmp154
	movq	%rax, -136(%rbp)	# tmp154, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-136(%rbp), %rax	# __t, _52
	movq	-152(%rbp), %rdx	# __p, tmp155
	movq	%rdx, -128(%rbp)	# tmp155, __p
	movq	%rax, -120(%rbp)	# _52, __args#0
	movq	-160(%rbp), %rax	# __a, tmp156
	movq	%rax, -112(%rbp)	# tmp156, this
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-128(%rbp), %rbx	# __p, _58
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _58,
	movl	$56, %edi	#,
	call	_ZnwmPv	#
	movq	%rax, %r12	#, _59
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$1, %r14d	#, _60
	movq	-120(%rbp), %rax	# __args#0, tmp157
	movq	%rax, -104(%rbp)	# tmp157, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-104(%rbp), %rax	# __t, _63
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %rsi	# _63,
	movq	%r12, %rdi	# _59,
.LEHB31:
	call	_ZN7IMUDataC1ERKS_	#
.LEHE31:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$0, %eax	#, _66
	testb	%al, %al	# _66
	je	.L294	#,
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _58,
	movq	%r12, %rdi	# _59,
	call	_ZdlPvS_	#
.L294:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:680: 	}
	nop	
# /usr/include//15.2.1/bits/vector.tcc:600: 				       __new_start, _M_get_Tp_allocator());
	movq	-232(%rbp), %rax	# this, _9
	movq	%rax, %rdi	# _9,
	call	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv	#
	movq	%rax, %rcx	#, _10
# /usr/include//15.2.1/bits/vector.tcc:599: 	    __new_finish = _S_relocate(__old_start, __old_finish,
	movq	-176(%rbp), %rdx	# __new_start, tmp163
	movq	-192(%rbp), %rsi	# __old_finish, tmp164
	movq	-200(%rbp), %rax	# __old_start, tmp165
	movq	%rax, %rdi	# tmp165,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_	#
	movq	%rax, -168(%rbp)	# tmp166, __new_finish
# /usr/include//15.2.1/bits/vector.tcc:601: 	    ++__new_finish;
	addq	$56, -168(%rbp)	#, __new_finish
# /usr/include//15.2.1/bits/vector.tcc:638: 	__guard._M_storage = __old_start;
	movq	-200(%rbp), %rax	# __old_start, tmp167
	movq	%rax, -64(%rbp)	# tmp167, MEM[(struct _Guard_alloc *)_94]._M_storage
# /usr/include//15.2.1/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	-232(%rbp), %rax	# this, tmp168
	movq	16(%rax), %rax	# this_18(D)->D.79322._M_impl.D.78625._M_end_of_storage, _11
# /usr/include//15.2.1/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	-200(%rbp), %rax	# __old_start, _12
	sarq	$3, %rax	#, _12
	movq	%rax, %rdx	# _12, tmp169
	movabsq	$7905747460161236407, %rax	#, tmp171
	imulq	%rdx, %rax	# tmp169, _13
# /usr/include//15.2.1/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%rax, -56(%rbp)	# _14, MEM[(struct _Guard_alloc *)_94]._M_len
# /usr/include//15.2.1/bits/vector.tcc:640:       }
	leaq	-64(%rbp), %rax	#, tmp172
	movq	%rax, %rdi	# tmp172,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD1Ev	#
# /usr/include//15.2.1/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	movq	-232(%rbp), %rax	# this, tmp173
	movq	-176(%rbp), %rdx	# __new_start, tmp174
	movq	%rdx, (%rax)	# tmp174, this_18(D)->D.79322._M_impl.D.78625._M_start
# /usr/include//15.2.1/bits/vector.tcc:645:       this->_M_impl._M_finish = __new_finish;
	movq	-232(%rbp), %rax	# this, tmp175
	movq	-168(%rbp), %rdx	# __new_finish, tmp176
	movq	%rdx, 8(%rax)	# tmp176, this_18(D)->D.79322._M_impl.D.78625._M_finish
# /usr/include//15.2.1/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	-208(%rbp), %rax	# __len, tmp177
	imulq	$56, %rax, %rdx	#, tmp177, _15
	movq	-176(%rbp), %rax	# __new_start, tmp178
	addq	%rax, %rdx	# tmp178, _16
# /usr/include//15.2.1/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	-232(%rbp), %rax	# this, tmp179
	movq	%rdx, 16(%rax)	# _16, this_18(D)->D.79322._M_impl.D.78625._M_end_of_storage
# /usr/include//15.2.1/bits/vector.tcc:647:     }
	nop	
	movq	-40(%rbp), %rax	# D.90312, tmp180
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp180
	je	.L299	#,
	jmp	.L301	#
.L300:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %r13	#, tmp159
	testb	%r14b, %r14b	# _60
	je	.L297	#,
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _58,
	movq	%r12, %rdi	# _59,
	call	_ZdlPvS_	#
.L297:
	movq	%r13, %rbx	# tmp159, tmp158
# /usr/include//15.2.1/bits/vector.tcc:640:       }
	leaq	-64(%rbp), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD1Ev	#
	movq	%rbx, %rax	# tmp158, D.90310
	movq	-40(%rbp), %rdx	# D.90312, tmp181
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp181
	je	.L298	#,
	call	__stack_chk_fail@PLT	#
.L298:
	movq	%rax, %rdi	# D.90310,
.LEHB32:
	call	_Unwind_Resume@PLT	#
.LEHE32:
.L301:
# /usr/include//15.2.1/bits/vector.tcc:647:     }
	call	__stack_chk_fail@PLT	#
.L299:
	addq	$208, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4132:
	.section	.gcc_except_table
.LLSDA4132:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4132-.LLSDACSB4132
.LLSDACSB4132:
	.uleb128 .LEHB30-.LFB4132
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB4132
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L300-.LFB4132
	.uleb128 0
	.uleb128 .LEHB32-.LFB4132
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE4132:
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_,comdat
	.size	_ZNSt6vectorI7IMUDataSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_, .-_ZNSt6vectorI7IMUDataSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	.section	.text._ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc,"axG",@progbits,_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc,comdat
	.weak	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
	.type	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc, @function
_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc:
.LFB4168:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# __r, __r
	movq	-24(%rbp), %rax	# __r, tmp100
	movq	%rax, -16(%rbp)	# tmp100, __r
	movq	-16(%rbp), %rax	# __r, tmp101
	movq	%rax, -8(%rbp)	# tmp101, __r
# /usr/include//15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-8(%rbp), %rax	# __r, D.89754
# /usr/include//15.2.1/bits/move.h:177:     { return std::__addressof(__r); }
	nop	
# /usr/include//15.2.1/bits/ptr_traits.h:135:       { return std::addressof(__r); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4168:
	.size	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc, .-_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm:
.LFB4172:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# this, this
	movq	%rsi, -64(%rbp)	# __size, __size
# /usr/include//15.2.1/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	-64(%rbp), %rax	# __size, tmp101
	leaq	1(%rax), %r12	#, _1
	movq	-56(%rbp), %rax	# this, tmp102
	movq	%rax, %rdi	# tmp102,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rbx	#, _2
# /usr/include//15.2.1/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	-56(%rbp), %rax	# this, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -40(%rbp)	# _3, __a
	movq	%rbx, -32(%rbp)	# _2, __p
	movq	%r12, -24(%rbp)	# _1, __n
# /usr/include//15.2.1/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	movq	-24(%rbp), %rdx	# __n, tmp104
	movq	-32(%rbp), %rcx	# __p, tmp105
	movq	-40(%rbp), %rax	# __a, tmp106
	movq	%rcx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	_ZNSt15__new_allocatorIcE10deallocateEPcm	#
# /usr/include//15.2.1/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	nop	
# /usr/include//15.2.1/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	nop	
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4172:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv:
.LFB4173:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	movq	-24(%rbp), %rax	# this, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv	#
# /usr/include//15.2.1/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	testb	%al, %al	# _1
	je	.L308	#,
# /usr/include//15.2.1/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	movq	$15, -8(%rbp)	#, __sz
	jmp	.L309	#
.L308:
# /usr/include//15.2.1/bits/basic_string.h:1279: 	size_t __sz = _M_is_local() ? size_type(_S_local_capacity)
	movq	-24(%rbp), %rax	# this, tmp104
	movq	16(%rax), %rax	# this_8(D)->D.37734._M_allocated_capacity, tmp105
	movq	%rax, -8(%rbp)	# tmp105, __sz
.L309:
# /usr/include//15.2.1/bits/basic_string.h:1281: 	if (__sz < _S_local_capacity || __sz > max_size ())
	cmpq	$14, -8(%rbp)	#, __sz
	jbe	.L310	#,
# /usr/include//15.2.1/bits/basic_string.h:1281: 	if (__sz < _S_local_capacity || __sz > max_size ())
	movq	-24(%rbp), %rax	# this, tmp106
	movq	%rax, %rdi	# tmp106,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	#
# /usr/include//15.2.1/bits/basic_string.h:1281: 	if (__sz < _S_local_capacity || __sz > max_size ())
	cmpq	-8(%rbp), %rax	# __sz, _2
	jnb	.L311	#,
.L310:
# /usr/include//15.2.1/bits/basic_string.h:1281: 	if (__sz < _S_local_capacity || __sz > max_size ())
	movl	$1, %eax	#, iftmp.45_4
# /usr/include//15.2.1/bits/basic_string.h:1281: 	if (__sz < _S_local_capacity || __sz > max_size ())
	jmp	.L312	#
.L311:
# /usr/include//15.2.1/bits/basic_string.h:1281: 	if (__sz < _S_local_capacity || __sz > max_size ())
	movl	$0, %eax	#, iftmp.45_4
.L312:
# /usr/include//15.2.1/bits/basic_string.h:1281: 	if (__sz < _S_local_capacity || __sz > max_size ())
	testb	%al, %al	# iftmp.45_4
# /usr/include//15.2.1/bits/basic_string.h:1283: 	return __sz;
	movq	-8(%rbp), %rax	# __sz, _17
# /usr/include//15.2.1/bits/basic_string.h:1284:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4173:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv
	.section	.rodata
.LC25:
	.string	"basic_string::_M_create"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm:
.LFB4174:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __capacity, __capacity
	movq	%rdx, -40(%rbp)	# __old_capacity, __old_capacity
# /usr/include//15.2.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	movq	-32(%rbp), %rax	# __capacity, tmp114
	movq	(%rax), %rbx	# *__capacity_15(D), _1
# /usr/include//15.2.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	movq	-24(%rbp), %rax	# this, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	#
# /usr/include//15.2.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmpq	%rbx, %rax	# _1, _2
	setb	%al	#, retval.30_18
# /usr/include//15.2.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	testb	%al, %al	# retval.30_18
	je	.L316	#,
# /usr/include//15.2.1/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	leaq	.LC25(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	_ZSt20__throw_length_errorPKc@PLT	#
.L316:
# /usr/include//15.2.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movq	-32(%rbp), %rax	# __capacity, tmp117
	movq	(%rax), %rax	# *__capacity_15(D), _3
# /usr/include//15.2.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rax, -40(%rbp)	# _3, __old_capacity
	jnb	.L317	#,
# /usr/include//15.2.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movq	-32(%rbp), %rax	# __capacity, tmp118
	movq	(%rax), %rdx	# *__capacity_15(D), _4
# /usr/include//15.2.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movq	-40(%rbp), %rax	# __old_capacity, tmp119
	addq	%rax, %rax	# _5
# /usr/include//15.2.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rax, %rdx	# _5, _4
	jnb	.L317	#,
# /usr/include//15.2.1/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	movq	-40(%rbp), %rax	# __old_capacity, tmp120
	leaq	(%rax,%rax), %rdx	#, _6
# /usr/include//15.2.1/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	movq	-32(%rbp), %rax	# __capacity, tmp121
	movq	%rdx, (%rax)	# _6, *__capacity_15(D)
# /usr/include//15.2.1/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	movq	-32(%rbp), %rax	# __capacity, tmp122
	movq	(%rax), %rbx	# *__capacity_15(D), _7
# /usr/include//15.2.1/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	movq	-24(%rbp), %rax	# this, tmp123
	movq	%rax, %rdi	# tmp123,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	#
# /usr/include//15.2.1/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	cmpq	%rbx, %rax	# _7, _8
	setb	%al	#, retval.31_22
# /usr/include//15.2.1/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	testb	%al, %al	# retval.31_22
	je	.L317	#,
# /usr/include//15.2.1/bits/basic_string.tcc:159: 	    __capacity = max_size();
	movq	-24(%rbp), %rax	# this, tmp124
	movq	%rax, %rdi	# tmp124,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	#
# /usr/include//15.2.1/bits/basic_string.tcc:159: 	    __capacity = max_size();
	movq	-32(%rbp), %rdx	# __capacity, tmp125
	movq	%rax, (%rdx)	# _9, *__capacity_15(D)
.L317:
# /usr/include//15.2.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movq	-32(%rbp), %rax	# __capacity, tmp126
	movq	(%rax), %rax	# *__capacity_15(D), _10
	leaq	1(%rax), %rbx	#, _11
# /usr/include//15.2.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movq	-24(%rbp), %rax	# this, tmp127
	movq	%rax, %rdi	# tmp127,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
# /usr/include//15.2.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movq	%rbx, %rsi	# _11,
	movq	%rax, %rdi	# _12,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m	#
# /usr/include//15.2.1/bits/basic_string.tcc:165:     }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4174:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm:
.LFB4175:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __d, __d
	movq	%rsi, -16(%rbp)	# __s, __s
	movq	%rdx, -24(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/basic_string.h:450: 	if (__n == 1)
	cmpq	$1, -24(%rbp)	#, __n
	jne	.L320	#,
# /usr/include//15.2.1/bits/basic_string.h:451: 	  traits_type::assign(*__d, *__s);
	movq	-16(%rbp), %rdx	# __s, tmp98
	movq	-8(%rbp), %rax	# __d, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt11char_traitsIcE6assignERcRKc	#
# /usr/include//15.2.1/bits/basic_string.h:454:       }
	jmp	.L322	#
.L320:
# /usr/include//15.2.1/bits/basic_string.h:453: 	  traits_type::copy(__d, __s, __n);
	movq	-24(%rbp), %rdx	# __n, tmp100
	movq	-16(%rbp), %rcx	# __s, tmp101
	movq	-8(%rbp), %rax	# __d, tmp102
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	_ZNSt11char_traitsIcE4copyEPcPKcm	#
.L322:
# /usr/include//15.2.1/bits/basic_string.h:454:       }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4175:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
.LFB4176:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	movq	-8(%rbp), %rax	# this, tmp101
	addq	$16, %rax	#, _1
# /usr/include//15.2.1/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	movq	%rax, %rdi	# _1,
	call	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_	#
# /usr/include//15.2.1/bits/basic_string.h:261:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4176:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB4199:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __a, __a
	movq	%rsi, -16(%rbp)	# __b, __b
# /usr/include//15.2.1/bits/stl_algobase.h:239:       if (__b < __a)
	movq	-16(%rbp), %rax	# __b, tmp102
	movq	(%rax), %rdx	# *__b_5(D), _1
	movq	-8(%rbp), %rax	# __a, tmp103
	movq	(%rax), %rax	# *__a_6(D), _2
# /usr/include//15.2.1/bits/stl_algobase.h:239:       if (__b < __a)
	cmpq	%rax, %rdx	# _2, _1
	jnb	.L326	#,
# /usr/include//15.2.1/bits/stl_algobase.h:240: 	return __b;
	movq	-16(%rbp), %rax	# __b, _3
	jmp	.L327	#
.L326:
# /usr/include//15.2.1/bits/stl_algobase.h:241:       return __a;
	movq	-8(%rbp), %rax	# __a, _3
.L327:
# /usr/include//15.2.1/bits/stl_algobase.h:242:     }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4199:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv:
.LFB4198:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:1181:       max_size() const _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp104
	movq	%rax, -8(%rbp)	# tmp104, D.90314
	xorl	%eax, %eax	# tmp104
# /usr/include//15.2.1/bits/basic_string.h:1183: 	const size_t __diffmax
	movabsq	$9223372036854775807, %rax	#, tmp113
	movq	%rax, -48(%rbp)	# tmp113, __diffmax
# /usr/include//15.2.1/bits/basic_string.h:1185: 	const size_t __allocmax = _Alloc_traits::max_size(_M_get_allocator());
	movq	-56(%rbp), %rax	# this, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -32(%rbp)	# _1, __a
	movq	-32(%rbp), %rax	# __a, tmp106
	movq	%rax, -24(%rbp)	# tmp106, this
	movq	-24(%rbp), %rax	# this, tmp107
	movq	%rax, -16(%rbp)	# tmp107, this
# /usr/include//15.2.1/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$9223372036854775807, %rax	#, D.89809
# /usr/include//15.2.1/bits/new_allocator.h:183:       { return _M_max_size(); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:712: 	return __a.max_size();
	nop	
# /usr/include//15.2.1/bits/basic_string.h:1185: 	const size_t __allocmax = _Alloc_traits::max_size(_M_get_allocator());
	movq	%rax, -40(%rbp)	# D.89809, __allocmax
# /usr/include//15.2.1/bits/basic_string.h:1186: 	return (std::min)(__diffmax, __allocmax) - 1;
	leaq	-40(%rbp), %rdx	#, tmp108
	leaq	-48(%rbp), %rax	#, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	_ZSt3minImERKT_S2_S2_	#
# /usr/include//15.2.1/bits/basic_string.h:1186: 	return (std::min)(__diffmax, __allocmax) - 1;
	movq	(%rax), %rax	# *_3, _4
# /usr/include//15.2.1/bits/basic_string.h:1186: 	return (std::min)(__diffmax, __allocmax) - 1;
	subq	$1, %rax	#, _11
# /usr/include//15.2.1/bits/basic_string.h:1187:       }
	movq	-8(%rbp), %rdx	# D.90314, tmp111
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	je	.L333	#,
	call	__stack_chk_fail@PLT	#
.L333:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4198:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	.section	.text._ZSt8_DestroyIP7IMUDataEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP7IMUDataEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP7IMUDataEvT_S2_
	.type	_ZSt8_DestroyIP7IMUDataEvT_S2_, @function
_ZSt8_DestroyIP7IMUDataEvT_S2_:
.LFB4241:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
# /usr/include//15.2.1/bits/stl_construct.h:225: 	for (; __first != __last; ++__first)
	jmp	.L335	#
.L337:
	movq	-24(%rbp), %rax	# __first, tmp99
	movq	%rax, -8(%rbp)	# tmp99, __r
# /usr/include//15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-8(%rbp), %rax	# __r, D.89779
# /usr/include//15.2.1/bits/stl_construct.h:226: 	  std::_Destroy(std::__addressof(*__first));
	movq	%rax, %rdi	# D.89779,
	call	_ZSt8_DestroyI7IMUDataEvPT_	#
# /usr/include//15.2.1/bits/stl_construct.h:225: 	for (; __first != __last; ++__first)
	addq	$56, -24(%rbp)	#, __first
.L335:
# /usr/include//15.2.1/bits/stl_construct.h:225: 	for (; __first != __last; ++__first)
	movq	-24(%rbp), %rax	# __first, tmp100
	cmpq	-32(%rbp), %rax	# __last, tmp100
	jne	.L337	#,
# /usr/include//15.2.1/bits/stl_construct.h:236:     }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4241:
	.size	_ZSt8_DestroyIP7IMUDataEvT_S2_, .-_ZSt8_DestroyIP7IMUDataEvT_S2_
	.section	.text._ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.type	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, @function
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_:
.LFB4251:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
# /usr/include//15.2.1/bits/stl_construct.h:225: 	for (; __first != __last; ++__first)
	jmp	.L339	#
.L341:
	movq	-24(%rbp), %rax	# __first, tmp99
	movq	%rax, -8(%rbp)	# tmp99, __r
# /usr/include//15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-8(%rbp), %rax	# __r, D.89786
# /usr/include//15.2.1/bits/stl_construct.h:226: 	  std::_Destroy(std::__addressof(*__first));
	movq	%rax, %rdi	# D.89786,
	call	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_	#
# /usr/include//15.2.1/bits/stl_construct.h:225: 	for (; __first != __last; ++__first)
	addq	$32, -24(%rbp)	#, __first
.L339:
# /usr/include//15.2.1/bits/stl_construct.h:225: 	for (; __first != __last; ++__first)
	movq	-24(%rbp), %rax	# __first, tmp100
	cmpq	-32(%rbp), %rax	# __last, tmp100
	jne	.L341	#,
# /usr/include//15.2.1/bits/stl_construct.h:236:     }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4251:
	.size	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, .-_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc:
.LFB4254:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# this, this
	movq	%rsi, -64(%rbp)	# __n, __n
	movq	%rdx, -72(%rbp)	# __s, __s
# /usr/include//15.2.1/bits/stl_vector.h:2197:       _M_check_len(size_type __n, const char* __s) const
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	movq	%rax, -24(%rbp)	# tmp111, D.90315
	xorl	%eax, %eax	# tmp111
# /usr/include//15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	movq	-56(%rbp), %rax	# this, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv	#
	movq	%rax, %rbx	#, _1
# /usr/include//15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	movq	-56(%rbp), %rax	# this, tmp113
	movq	%rax, %rdi	# tmp113,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	subq	%rax, %rbx	# _2, _1
	movq	%rbx, %rdx	# _1, _3
# /usr/include//15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	movq	-64(%rbp), %rax	# __n, __n.34_4
	cmpq	%rax, %rdx	# __n.34_4, _3
	setb	%al	#, retval.33_18
# /usr/include//15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	testb	%al, %al	# retval.33_18
	je	.L343	#,
# /usr/include//15.2.1/bits/stl_vector.h:2200: 	  __throw_length_error(__N(__s));
	movq	-24(%rbp), %rax	# D.90315, tmp124
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp124
	je	.L344	#,
	call	__stack_chk_fail@PLT	#
.L344:
	movq	-72(%rbp), %rax	# __s, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZSt20__throw_length_errorPKc@PLT	#
.L343:
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	-56(%rbp), %rax	# this, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
	movq	%rax, %rbx	#, _5
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	-56(%rbp), %rax	# this, tmp116
	movq	%rax, %rdi	# tmp116,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	%rax, -40(%rbp)	# _6, D.87778
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	leaq	-64(%rbp), %rdx	#, tmp117
	leaq	-40(%rbp), %rax	#, tmp118
	movq	%rdx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	_ZSt3maxImERKT_S2_S2_	#
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	(%rax), %rax	# *_7, _8
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rbx, %rax	# _5, tmp119
	movq	%rax, -32(%rbp)	# tmp119, __len
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp120
	movq	%rax, %rdi	# tmp120,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	%rax, -32(%rbp)	# _9, __len
	jb	.L345	#,
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp121
	movq	%rax, %rdi	# tmp121,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	-32(%rbp), %rax	# __len, _10
	jnb	.L346	#,
.L345:
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp122
	movq	%rax, %rdi	# tmp122,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	jmp	.L348	#
.L346:
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-32(%rbp), %rax	# __len, _11
.L348:
# /usr/include//15.2.1/bits/stl_vector.h:2204:       }
	movq	-24(%rbp), %rdx	# D.90315, tmp125
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	je	.L349	#,
	call	__stack_chk_fail@PLT	#
.L349:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4254:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv:
.LFB4255:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:1018:       end() _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.90316
	xorl	%eax, %eax	# tmp102
# /usr/include//15.2.1/bits/stl_vector.h:1019:       { return iterator(this->_M_impl._M_finish); }
	movq	-40(%rbp), %rax	# this, tmp103
	addq	$8, %rax	#, _1
	movq	%rax, -16(%rbp)	# _1, __i
# /usr/include//15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	-16(%rbp), %rax	# __i, tmp104
	movq	(%rax), %rax	# *__i_6, _7
	movq	%rax, -24(%rbp)	# _7, D.87798._M_current
# /usr/include//15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:1019:       { return iterator(this->_M_impl._M_finish); }
	movq	-24(%rbp), %rax	# D.87798, D.89167
# /usr/include//15.2.1/bits/stl_vector.h:1019:       { return iterator(this->_M_impl._M_finish); }
	movq	-8(%rbp), %rdx	# D.90316, tmp106
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	je	.L352	#,
	call	__stack_chk_fail@PLT	#
.L352:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4255:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv:
.LFB4256:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:998:       begin() _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.90317
	xorl	%eax, %eax	# tmp102
# /usr/include//15.2.1/bits/stl_vector.h:999:       { return iterator(this->_M_impl._M_start); }
	movq	-40(%rbp), %rax	# this, _1
	movq	%rax, -16(%rbp)	# _1, __i
# /usr/include//15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	-16(%rbp), %rax	# __i, tmp103
	movq	(%rax), %rax	# *__i_6, _7
	movq	%rax, -24(%rbp)	# _7, D.87800._M_current
# /usr/include//15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:999:       { return iterator(this->_M_impl._M_start); }
	movq	-24(%rbp), %rax	# D.87800, D.89164
# /usr/include//15.2.1/bits/stl_vector.h:999:       { return iterator(this->_M_impl._M_start); }
	movq	-8(%rbp), %rdx	# D.90317, tmp105
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	je	.L355	#,
	call	__stack_chk_fail@PLT	#
.L355:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4256:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm:
.LFB4258:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cmpq	$0, -32(%rbp)	#, __n
	je	.L357	#,
# /usr/include//15.2.1/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movq	-24(%rbp), %rax	# this, _1
	movq	%rax, -16(%rbp)	# _1, __a
	movq	-32(%rbp), %rax	# __n, tmp101
	movq	%rax, -8(%rbp)	# tmp101, __n
# /usr/include//15.2.1/bits/alloc_traits.h:614:       { return __a.allocate(__n); }
	movq	-8(%rbp), %rcx	# __n, tmp102
	movq	-16(%rbp), %rax	# __a, tmp103
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv	#
# /usr/include//15.2.1/bits/alloc_traits.h:614:       { return __a.allocate(__n); }
	nop	
	jmp	.L359	#
.L357:
# /usr/include//15.2.1/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movl	$0, %eax	#, D.89931
.L359:
# /usr/include//15.2.1/bits/stl_vector.h:388:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4258:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC5EPS5_mRSt12_Vector_baseIS5_S6_E,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E:
.LFB4260:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __s, __s
	movq	%rdx, -24(%rbp)	# __l, __l
	movq	%rcx, -32(%rbp)	# __vect, __vect
# /usr/include//15.2.1/bits/stl_vector.h:1876: 	: _M_storage(__s), _M_len(__l), _M_vect(__vect)
	movq	-8(%rbp), %rax	# this, tmp98
	movq	-16(%rbp), %rdx	# __s, tmp99
	movq	%rdx, (%rax)	# tmp99, this_2(D)->_M_storage
# /usr/include//15.2.1/bits/stl_vector.h:1876: 	: _M_storage(__s), _M_len(__l), _M_vect(__vect)
	movq	-8(%rbp), %rax	# this, tmp100
	movq	-24(%rbp), %rdx	# __l, tmp101
	movq	%rdx, 8(%rax)	# tmp101, this_2(D)->_M_len
# /usr/include//15.2.1/bits/stl_vector.h:1876: 	: _M_storage(__s), _M_len(__l), _M_vect(__vect)
	movq	-8(%rbp), %rax	# this, tmp102
	movq	-32(%rbp), %rdx	# __vect, tmp103
	movq	%rdx, 16(%rax)	# tmp103, this_2(D)->_M_vect
# /usr/include//15.2.1/bits/stl_vector.h:1877: 	{ }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4260:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC1EPS5_mRSt12_Vector_baseIS5_S6_E
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC1EPS5_mRSt12_Vector_baseIS5_S6_E,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev:
.LFB4263:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:1882: 	  if (_M_storage)
	movq	-8(%rbp), %rax	# this, tmp102
	movq	(%rax), %rax	# this_7(D)->_M_storage, _1
# /usr/include//15.2.1/bits/stl_vector.h:1882: 	  if (_M_storage)
	testq	%rax, %rax	# _1
	je	.L364	#,
# /usr/include//15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	-8(%rbp), %rax	# this, tmp103
	movq	16(%rax), %rax	# this_7(D)->_M_vect, _2
# /usr/include//15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	-8(%rbp), %rdx	# this, tmp104
	movq	8(%rdx), %rdx	# this_7(D)->_M_len, _3
# /usr/include//15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	-8(%rbp), %rcx	# this, tmp105
	movq	(%rcx), %rcx	# this_7(D)->_M_storage, _4
# /usr/include//15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	%rcx, %rsi	# _4,
	movq	%rax, %rdi	# _2,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m	#
.L364:
# /usr/include//15.2.1/bits/stl_vector.h:1884: 	}
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4263:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_:
.LFB4266:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __first, __first
	movq	%rsi, -16(%rbp)	# __last, __last
	movq	%rdx, -24(%rbp)	# __result, __result
	movq	%rcx, -32(%rbp)	# __alloc, __alloc
# /usr/include//15.2.1/bits/stl_vector.h:539: 	return std::__relocate_a(__first, __last, __result, __alloc);
	movq	-32(%rbp), %rcx	# __alloc, tmp100
	movq	-24(%rbp), %rdx	# __result, tmp101
	movq	-16(%rbp), %rsi	# __last, tmp102
	movq	-8(%rbp), %rax	# __first, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_	#
# /usr/include//15.2.1/bits/stl_vector.h:544:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4266:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
.LFB4267:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/basic_string.h:365:       { return _M_dataplus; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include//15.2.1/bits/basic_string.h:365:       { return _M_dataplus; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4267:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m:
.LFB4269:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# __a, __a
	movq	%rsi, -48(%rbp)	# __n, __n
	movq	-40(%rbp), %rax	# __a, tmp101
	movq	%rax, -16(%rbp)	# tmp101, __a
	movq	-48(%rbp), %rax	# __n, tmp102
	movq	%rax, -8(%rbp)	# tmp102, __n
# /usr/include//15.2.1/bits/alloc_traits.h:614:       { return __a.allocate(__n); }
	movq	-8(%rbp), %rcx	# __n, tmp103
	movq	-16(%rbp), %rax	# __a, tmp104
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	_ZNSt15__new_allocatorIcE8allocateEmPKv	#
# /usr/include//15.2.1/bits/alloc_traits.h:614:       { return __a.allocate(__n); }
	nop	
# /usr/include//15.2.1/bits/basic_string.h:142: 	pointer __p = _Alloc_traits::allocate(__a, __n);
	movq	%rax, -24(%rbp)	# D.89831, __p
# /usr/include//15.2.1/bits/basic_string.h:152: 	return __p;
	movq	-24(%rbp), %rax	# __p, _6
# /usr/include//15.2.1/bits/basic_string.h:153:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4269:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:
.LFB4271:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# this, this
	movq	%rsi, -80(%rbp)	# __str, __str
# /usr/include//15.2.1/bits/basic_string.tcc:308:     basic_string<_CharT, _Traits, _Alloc>::
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp104
	movq	%rax, -24(%rbp)	# tmp104, D.90318
	xorl	%eax, %eax	# tmp104
	movq	-80(%rbp), %rax	# __str, tmp105
	movq	%rax, -32(%rbp)	# tmp105, __r
# /usr/include//15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-32(%rbp), %rax	# __r, D.89837
# /usr/include//15.2.1/bits/basic_string.tcc:311:       if (this != std::__addressof(__str))
	cmpq	%rax, -72(%rbp)	# D.89837, this
	setne	%al	#, retval.42_12
# /usr/include//15.2.1/bits/basic_string.tcc:311:       if (this != std::__addressof(__str))
	testb	%al, %al	# retval.42_12
	je	.L378	#,
# /usr/include//15.2.1/bits/basic_string.tcc:313: 	  const size_type __rsize = __str.length();
	movq	-80(%rbp), %rax	# __str, tmp106
	movq	%rax, %rdi	# tmp106,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	#
	movq	%rax, -56(%rbp)	# tmp107, __rsize
# /usr/include//15.2.1/bits/basic_string.tcc:314: 	  const size_type __capacity = capacity();
	movq	-72(%rbp), %rax	# this, tmp108
	movq	%rax, %rdi	# tmp108,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv	#
	movq	%rax, -48(%rbp)	# tmp109, __capacity
# /usr/include//15.2.1/bits/basic_string.tcc:316: 	  if (__rsize > __capacity)
	movq	-56(%rbp), %rax	# __rsize, tmp110
	cmpq	%rax, -48(%rbp)	# tmp110, __capacity
	jnb	.L375	#,
# /usr/include//15.2.1/bits/basic_string.tcc:318: 	      size_type __new_capacity = __rsize;
	movq	-56(%rbp), %rax	# __rsize, tmp111
	movq	%rax, -64(%rbp)	# tmp111, __new_capacity
# /usr/include//15.2.1/bits/basic_string.tcc:319: 	      pointer __tmp = _M_create(__new_capacity, __capacity);
	movq	-48(%rbp), %rdx	# __capacity, tmp112
	leaq	-64(%rbp), %rcx	#, tmp113
	movq	-72(%rbp), %rax	# this, tmp114
	movq	%rcx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm	#
# /usr/include//15.2.1/bits/basic_string.tcc:319: 	      pointer __tmp = _M_create(__new_capacity, __capacity);
	movq	%rax, -40(%rbp)	# _19, __tmp
# /usr/include//15.2.1/bits/basic_string.tcc:320: 	      _M_dispose();
	movq	-72(%rbp), %rax	# this, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	#
# /usr/include//15.2.1/bits/basic_string.tcc:321: 	      _M_data(__tmp);
	movq	-40(%rbp), %rdx	# __tmp, tmp116
	movq	-72(%rbp), %rax	# this, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	#
# /usr/include//15.2.1/bits/basic_string.tcc:322: 	      _M_capacity(__new_capacity);
	movq	-64(%rbp), %rdx	# __new_capacity, __new_capacity.43_2
	movq	-72(%rbp), %rax	# this, tmp118
	movq	%rdx, %rsi	# __new_capacity.43_2,
	movq	%rax, %rdi	# tmp118,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm	#
.L375:
# /usr/include//15.2.1/bits/basic_string.tcc:325: 	  if (__rsize)
	cmpq	$0, -56(%rbp)	#, __rsize
	je	.L376	#,
# /usr/include//15.2.1/bits/basic_string.tcc:326: 	    this->_S_copy(_M_data(), __str._M_data(), __rsize);
	movq	-80(%rbp), %rax	# __str, tmp119
	movq	%rax, %rdi	# tmp119,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rbx	#, _3
# /usr/include//15.2.1/bits/basic_string.tcc:326: 	    this->_S_copy(_M_data(), __str._M_data(), __rsize);
	movq	-72(%rbp), %rax	# this, tmp120
	movq	%rax, %rdi	# tmp120,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rcx	#, _4
# /usr/include//15.2.1/bits/basic_string.tcc:326: 	    this->_S_copy(_M_data(), __str._M_data(), __rsize);
	movq	-56(%rbp), %rax	# __rsize, tmp121
	movq	%rax, %rdx	# tmp121,
	movq	%rbx, %rsi	# _3,
	movq	%rcx, %rdi	# _4,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm	#
.L376:
# /usr/include//15.2.1/bits/basic_string.tcc:328: 	  _M_set_length(__rsize);
	movq	-56(%rbp), %rdx	# __rsize, tmp122
	movq	-72(%rbp), %rax	# this, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm	#
.L378:
# /usr/include//15.2.1/bits/basic_string.tcc:330:     }
	nop	
	movq	-24(%rbp), %rax	# D.90318, tmp124
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp124
	je	.L377	#,
	call	__stack_chk_fail@PLT	#
.L377:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4271:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	.section	.text._ZN7IMUDataC2ERKS_,"axG",@progbits,_ZN7IMUDataC5ERKS_,comdat
	.align 2
	.weak	_ZN7IMUDataC2ERKS_
	.type	_ZN7IMUDataC2ERKS_, @function
_ZN7IMUDataC2ERKS_:
.LFB4275:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# D.80540, D.80540
# accel_ekf.cpp:12: struct IMUData {
	movq	-8(%rbp), %rax	# this, _1
	movq	-16(%rbp), %rdx	# D.80540, _2
	movq	%rdx, %rsi	# _2,
	movq	%rax, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_	#
# accel_ekf.cpp:12: struct IMUData {
	movq	-16(%rbp), %rax	# D.80540, tmp104
	movsd	32(%rax), %xmm0	# _10(D)->ax, _3
	movq	-8(%rbp), %rax	# this, tmp105
	movsd	%xmm0, 32(%rax)	# _3, this_8(D)->ax
	movq	-16(%rbp), %rax	# D.80540, tmp106
	movsd	40(%rax), %xmm0	# _10(D)->ay, _4
	movq	-8(%rbp), %rax	# this, tmp107
	movsd	%xmm0, 40(%rax)	# _4, this_8(D)->ay
	movq	-16(%rbp), %rax	# D.80540, tmp108
	movsd	48(%rax), %xmm0	# _10(D)->az, _5
	movq	-8(%rbp), %rax	# this, tmp109
	movsd	%xmm0, 48(%rax)	# _5, this_8(D)->az
# accel_ekf.cpp:12: struct IMUData {
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4275:
	.size	_ZN7IMUDataC2ERKS_, .-_ZN7IMUDataC2ERKS_
	.weak	_ZN7IMUDataC1ERKS_
	.set	_ZN7IMUDataC1ERKS_,_ZN7IMUDataC2ERKS_
	.section	.text._ZNKSt6vectorI7IMUDataSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI7IMUDataSaIS0_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorI7IMUDataSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorI7IMUDataSaIS0_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorI7IMUDataSaIS0_EE12_M_check_lenEmPKc:
.LFB4277:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# this, this
	movq	%rsi, -64(%rbp)	# __n, __n
	movq	%rdx, -72(%rbp)	# __s, __s
# /usr/include//15.2.1/bits/stl_vector.h:2197:       _M_check_len(size_type __n, const char* __s) const
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	movq	%rax, -24(%rbp)	# tmp111, D.90319
	xorl	%eax, %eax	# tmp111
# /usr/include//15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	movq	-56(%rbp), %rax	# this, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_ZNKSt6vectorI7IMUDataSaIS0_EE8max_sizeEv	#
	movq	%rax, %rbx	#, _1
# /usr/include//15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	movq	-56(%rbp), %rax	# this, tmp113
	movq	%rax, %rdi	# tmp113,
	call	_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	subq	%rax, %rbx	# _2, _1
	movq	%rbx, %rdx	# _1, _3
# /usr/include//15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	movq	-64(%rbp), %rax	# __n, __n.54_4
	cmpq	%rax, %rdx	# __n.54_4, _3
	setb	%al	#, retval.53_18
# /usr/include//15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	testb	%al, %al	# retval.53_18
	je	.L381	#,
# /usr/include//15.2.1/bits/stl_vector.h:2200: 	  __throw_length_error(__N(__s));
	movq	-24(%rbp), %rax	# D.90319, tmp124
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp124
	je	.L382	#,
	call	__stack_chk_fail@PLT	#
.L382:
	movq	-72(%rbp), %rax	# __s, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZSt20__throw_length_errorPKc@PLT	#
.L381:
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	-56(%rbp), %rax	# this, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv	#
	movq	%rax, %rbx	#, _5
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	-56(%rbp), %rax	# this, tmp116
	movq	%rax, %rdi	# tmp116,
	call	_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	%rax, -40(%rbp)	# _6, D.87867
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	leaq	-64(%rbp), %rdx	#, tmp117
	leaq	-40(%rbp), %rax	#, tmp118
	movq	%rdx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	_ZSt3maxImERKT_S2_S2_	#
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	(%rax), %rax	# *_7, _8
# /usr/include//15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rbx, %rax	# _5, tmp119
	movq	%rax, -32(%rbp)	# tmp119, __len
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp120
	movq	%rax, %rdi	# tmp120,
	call	_ZNKSt6vectorI7IMUDataSaIS0_EE4sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	%rax, -32(%rbp)	# _9, __len
	jb	.L383	#,
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp121
	movq	%rax, %rdi	# tmp121,
	call	_ZNKSt6vectorI7IMUDataSaIS0_EE8max_sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	-32(%rbp), %rax	# __len, _10
	jnb	.L384	#,
.L383:
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp122
	movq	%rax, %rdi	# tmp122,
	call	_ZNKSt6vectorI7IMUDataSaIS0_EE8max_sizeEv	#
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	jmp	.L386	#
.L384:
# /usr/include//15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-32(%rbp), %rax	# __len, _11
.L386:
# /usr/include//15.2.1/bits/stl_vector.h:2204:       }
	movq	-24(%rbp), %rdx	# D.90319, tmp125
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	je	.L387	#,
	call	__stack_chk_fail@PLT	#
.L387:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4277:
	.size	_ZNKSt6vectorI7IMUDataSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorI7IMUDataSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZNSt12_Vector_baseI7IMUDataSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI7IMUDataSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI7IMUDataSaIS0_EE11_M_allocateEm:
.LFB4279:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cmpq	$0, -32(%rbp)	#, __n
	je	.L389	#,
# /usr/include//15.2.1/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movq	-24(%rbp), %rax	# this, _1
	movq	%rax, -16(%rbp)	# _1, __a
	movq	-32(%rbp), %rax	# __n, tmp101
	movq	%rax, -8(%rbp)	# tmp101, __n
# /usr/include//15.2.1/bits/alloc_traits.h:614:       { return __a.allocate(__n); }
	movq	-8(%rbp), %rcx	# __n, tmp102
	movq	-16(%rbp), %rax	# __a, tmp103
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt15__new_allocatorI7IMUDataE8allocateEmPKv	#
# /usr/include//15.2.1/bits/alloc_traits.h:614:       { return __a.allocate(__n); }
	nop	
	jmp	.L391	#
.L389:
# /usr/include//15.2.1/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movl	$0, %eax	#, D.89941
.L391:
# /usr/include//15.2.1/bits/stl_vector.h:388:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4279:
	.size	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI7IMUDataSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC2EPS0_mRSt12_Vector_baseIS0_S1_E,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC5EPS0_mRSt12_Vector_baseIS0_S1_E,comdat
	.align 2
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC2EPS0_mRSt12_Vector_baseIS0_S1_E
	.type	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC2EPS0_mRSt12_Vector_baseIS0_S1_E, @function
_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC2EPS0_mRSt12_Vector_baseIS0_S1_E:
.LFB4281:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __s, __s
	movq	%rdx, -24(%rbp)	# __l, __l
	movq	%rcx, -32(%rbp)	# __vect, __vect
# /usr/include//15.2.1/bits/stl_vector.h:1876: 	: _M_storage(__s), _M_len(__l), _M_vect(__vect)
	movq	-8(%rbp), %rax	# this, tmp98
	movq	-16(%rbp), %rdx	# __s, tmp99
	movq	%rdx, (%rax)	# tmp99, this_2(D)->_M_storage
# /usr/include//15.2.1/bits/stl_vector.h:1876: 	: _M_storage(__s), _M_len(__l), _M_vect(__vect)
	movq	-8(%rbp), %rax	# this, tmp100
	movq	-24(%rbp), %rdx	# __l, tmp101
	movq	%rdx, 8(%rax)	# tmp101, this_2(D)->_M_len
# /usr/include//15.2.1/bits/stl_vector.h:1876: 	: _M_storage(__s), _M_len(__l), _M_vect(__vect)
	movq	-8(%rbp), %rax	# this, tmp102
	movq	-32(%rbp), %rdx	# __vect, tmp103
	movq	%rdx, 16(%rax)	# tmp103, this_2(D)->_M_vect
# /usr/include//15.2.1/bits/stl_vector.h:1877: 	{ }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4281:
	.size	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC2EPS0_mRSt12_Vector_baseIS0_S1_E, .-_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC2EPS0_mRSt12_Vector_baseIS0_S1_E
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E
	.set	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC1EPS0_mRSt12_Vector_baseIS0_S1_E,_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocC2EPS0_mRSt12_Vector_baseIS0_S1_E
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD2Ev,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD2Ev
	.type	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD2Ev, @function
_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD2Ev:
.LFB4284:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:1882: 	  if (_M_storage)
	movq	-8(%rbp), %rax	# this, tmp102
	movq	(%rax), %rax	# this_7(D)->_M_storage, _1
# /usr/include//15.2.1/bits/stl_vector.h:1882: 	  if (_M_storage)
	testq	%rax, %rax	# _1
	je	.L396	#,
# /usr/include//15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	-8(%rbp), %rax	# this, tmp103
	movq	16(%rax), %rax	# this_7(D)->_M_vect, _2
# /usr/include//15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	-8(%rbp), %rdx	# this, tmp104
	movq	8(%rdx), %rdx	# this_7(D)->_M_len, _3
# /usr/include//15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	-8(%rbp), %rcx	# this, tmp105
	movq	(%rcx), %rcx	# this_7(D)->_M_storage, _4
# /usr/include//15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	%rcx, %rsi	# _4,
	movq	%rax, %rdi	# _2,
	call	_ZNSt12_Vector_baseI7IMUDataSaIS0_EE13_M_deallocateEPS0_m	#
.L396:
# /usr/include//15.2.1/bits/stl_vector.h:1884: 	}
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4284:
	.size	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD2Ev, .-_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD2Ev
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD1Ev
	.set	_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD1Ev,_ZNSt6vectorI7IMUDataSaIS0_EE12_Guard_allocD2Ev
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,comdat
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.type	_ZNSt6vectorI7IMUDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, @function
_ZNSt6vectorI7IMUDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB4287:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __first, __first
	movq	%rsi, -16(%rbp)	# __last, __last
	movq	%rdx, -24(%rbp)	# __result, __result
	movq	%rcx, -32(%rbp)	# __alloc, __alloc
# /usr/include//15.2.1/bits/stl_vector.h:539: 	return std::__relocate_a(__first, __last, __result, __alloc);
	movq	-32(%rbp), %rcx	# __alloc, tmp100
	movq	-24(%rbp), %rdx	# __result, tmp101
	movq	-16(%rbp), %rsi	# __last, tmp102
	movq	-8(%rbp), %rax	# __first, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZSt12__relocate_aIP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_	#
# /usr/include//15.2.1/bits/stl_vector.h:544:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4287:
	.size	_ZNSt6vectorI7IMUDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, .-_ZNSt6vectorI7IMUDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.section	.text._ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_,"axG",@progbits,_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_,comdat
	.weak	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	.type	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_, @function
_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_:
.LFB4307:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# __r, __r
	movq	-24(%rbp), %rax	# __r, tmp100
	movq	%rax, -16(%rbp)	# tmp100, __r
	movq	-16(%rbp), %rax	# __r, tmp101
	movq	%rax, -8(%rbp)	# tmp101, __r
# /usr/include//15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-8(%rbp), %rax	# __r, D.89773
# /usr/include//15.2.1/bits/move.h:177:     { return std::__addressof(__r); }
	nop	
# /usr/include//15.2.1/bits/ptr_traits.h:135:       { return std::addressof(__r); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4307:
	.size	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_, .-_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	.section	.text._ZNSt15__new_allocatorI7IMUDataE10deallocateEPS0_m,"axG",@progbits,_ZNSt15__new_allocatorI7IMUDataE10deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorI7IMUDataE10deallocateEPS0_m
	.type	_ZNSt15__new_allocatorI7IMUDataE10deallocateEPS0_m, @function
_ZNSt15__new_allocatorI7IMUDataE10deallocateEPS0_m:
.LFB4358:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __p, __p
	movq	%rdx, -24(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	-24(%rbp), %rax	# __n, tmp99
	imulq	$56, %rax, %rdx	#, tmp99, _2
	movq	-16(%rbp), %rax	# __p, tmp100
	movq	%rdx, %rsi	# _2,
	movq	%rax, %rdi	# tmp100,
	call	_ZdlPvm@PLT	#
# /usr/include//15.2.1/bits/new_allocator.h:173:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4358:
	.size	_ZNSt15__new_allocatorI7IMUDataE10deallocateEPS0_m, .-_ZNSt15__new_allocatorI7IMUDataE10deallocateEPS0_m
	.section	.text._ZSt8_DestroyI7IMUDataEvPT_,"axG",@progbits,_ZSt8_DestroyI7IMUDataEvPT_,comdat
	.weak	_ZSt8_DestroyI7IMUDataEvPT_
	.type	_ZSt8_DestroyI7IMUDataEvPT_, @function
_ZSt8_DestroyI7IMUDataEvPT_:
.LFB4360:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __pointer, __pointer
# /usr/include//15.2.1/bits/stl_construct.h:166:       __pointer->~_Tp();
	movq	-8(%rbp), %rax	# __pointer, tmp98
	movq	%rax, %rdi	# tmp98,
	call	_ZN7IMUDataD1Ev	#
# /usr/include//15.2.1/bits/stl_construct.h:168:     }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4360:
	.size	_ZSt8_DestroyI7IMUDataEvPT_, .-_ZSt8_DestroyI7IMUDataEvPT_
	.section	.text._ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m,"axG",@progbits,_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m
	.type	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m, @function
_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m:
.LFB4362:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __p, __p
	movq	%rdx, -24(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	-24(%rbp), %rax	# __n, tmp99
	salq	$5, %rax	#, tmp99
	movq	%rax, %rdx	# tmp99, _2
	movq	-16(%rbp), %rax	# __p, tmp100
	movq	%rdx, %rsi	# _2,
	movq	%rax, %rdi	# tmp100,
	call	_ZdlPvm@PLT	#
# /usr/include//15.2.1/bits/new_allocator.h:173:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4362:
	.size	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m, .-_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m
	.section	.text._ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_,"axG",@progbits,_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_,comdat
	.weak	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
	.type	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, @function
_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_:
.LFB4364:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __pointer, __pointer
# /usr/include//15.2.1/bits/stl_construct.h:166:       __pointer->~_Tp();
	movq	-8(%rbp), %rax	# __pointer, tmp98
	movq	%rax, %rdi	# tmp98,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# /usr/include//15.2.1/bits/stl_construct.h:168:     }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4364:
	.size	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, .-_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5ERKS4_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_:
.LFB4366:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4366
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# this, this
	movq	%rsi, -96(%rbp)	# __str, __str
# /usr/include//15.2.1/bits/basic_string.h:613:       basic_string(const basic_string& __str)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	movq	%rax, -24(%rbp)	# tmp106, D.90321
	xorl	%eax, %eax	# tmp106
# /usr/include//15.2.1/bits/basic_string.h:614:       : _M_dataplus(_M_local_data(),
	movq	-88(%rbp), %rbx	# this, _1
# /usr/include//15.2.1/bits/basic_string.h:615: 		    _Alloc_traits::_S_select_on_copy(__str._M_get_allocator()))
	movq	-96(%rbp), %rax	# __str, tmp107
	movq	%rax, %rdi	# tmp107,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -72(%rbp)	# _2, __a
	leaq	-73(%rbp), %rax	#, retvalptr.58
	movq	-72(%rbp), %rdx	# __a, tmp108
	movq	%rdx, -64(%rbp)	# tmp108, __rhs
	movq	%rax, -56(%rbp)	# retvalptr.58, this
	movq	-64(%rbp), %rax	# __rhs, tmp109
	movq	%rax, -48(%rbp)	# tmp109, __a
	movq	-56(%rbp), %rax	# this, tmp110
	movq	%rax, -40(%rbp)	# tmp110, this
	movq	-48(%rbp), %rax	# __a, tmp111
	movq	%rax, -32(%rbp)	# tmp111, D.89881
# /usr/include//15.2.1/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include//15.2.1/bits/allocator.h:173:       : __allocator_base<_Tp>(__a) { }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:726:       { return __rhs; }
	nop	
# /usr/include//15.2.1/ext/alloc_traits.h:100:     { return _Base_type::select_on_container_copy_construction(__a); }
	nop	
# /usr/include//15.2.1/bits/basic_string.h:614:       : _M_dataplus(_M_local_data(),
	movq	-88(%rbp), %rax	# this, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
	movq	%rax, %rcx	#, _3
# /usr/include//15.2.1/bits/basic_string.h:614:       : _M_dataplus(_M_local_data(),
	leaq	-73(%rbp), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	movq	%rcx, %rsi	# _3,
	movq	%rbx, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_	#
# /usr/include//15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	leaq	-73(%rbp), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
# /usr/include//15.2.1/bits/basic_string.h:617: 	_M_construct<true>(__str._M_data(), __str.length());
	movq	-96(%rbp), %rax	# __str, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	#
	movq	%rax, %rbx	#, _4
# /usr/include//15.2.1/bits/basic_string.h:617: 	_M_construct<true>(__str._M_data(), __str.length());
	movq	-96(%rbp), %rax	# __str, tmp116
	movq	%rax, %rdi	# tmp116,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rcx	#, _5
# /usr/include//15.2.1/bits/basic_string.h:617: 	_M_construct<true>(__str._M_data(), __str.length());
	movq	-88(%rbp), %rax	# this, tmp117
	movq	%rbx, %rdx	# _4,
	movq	%rcx, %rsi	# _5,
	movq	%rax, %rdi	# tmp117,
.LEHB33:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm	#
.LEHE33:
# /usr/include//15.2.1/bits/basic_string.h:618:       }
	jmp	.L416	#
.L415:
	movq	%rax, %rbx	#, tmp118
	movq	-88(%rbp), %rax	# this, _6
	movq	%rax, %rdi	# _6,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev	#
	movq	%rbx, %rax	# tmp118, D.90320
	movq	-24(%rbp), %rdx	# D.90321, tmp119
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	je	.L413	#,
	call	__stack_chk_fail@PLT	#
.L413:
	movq	%rax, %rdi	# D.90320,
.LEHB34:
	call	_Unwind_Resume@PLT	#
.LEHE34:
.L416:
	movq	-24(%rbp), %rax	# D.90321, tmp120
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	je	.L414	#,
	call	__stack_chk_fail@PLT	#
.L414:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4366:
	.section	.gcc_except_table
.LLSDA4366:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4366-.LLSDACSB4366
.LLSDACSB4366:
	.uleb128 .LEHB33-.LFB4366
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L415-.LFB4366
	.uleb128 0
	.uleb128 .LEHB34-.LFB4366
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
.LLSDACSE4366:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5ERKS4_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv:
.LFB4368:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:1129:       { return _S_max_size(_M_get_Tp_allocator()); }
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv	#
# /usr/include//15.2.1/bits/stl_vector.h:1129:       { return _S_max_size(_M_get_Tp_allocator()); }
	movq	%rax, %rdi	# _2,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_	#
# /usr/include//15.2.1/bits/stl_vector.h:1129:       { return _S_max_size(_M_get_Tp_allocator()); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4368:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB4369:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __a, __a
	movq	%rsi, -16(%rbp)	# __b, __b
# /usr/include//15.2.1/bits/stl_algobase.h:263:       if (__a < __b)
	movq	-8(%rbp), %rax	# __a, tmp102
	movq	(%rax), %rdx	# *__a_5(D), _1
	movq	-16(%rbp), %rax	# __b, tmp103
	movq	(%rax), %rax	# *__b_6(D), _2
# /usr/include//15.2.1/bits/stl_algobase.h:263:       if (__a < __b)
	cmpq	%rax, %rdx	# _2, _1
	jnb	.L420	#,
# /usr/include//15.2.1/bits/stl_algobase.h:264: 	return __b;
	movq	-16(%rbp), %rax	# __b, _3
	jmp	.L421	#
.L420:
# /usr/include//15.2.1/bits/stl_algobase.h:265:       return __a;
	movq	-8(%rbp), %rax	# __a, _3
.L421:
# /usr/include//15.2.1/bits/stl_algobase.h:266:     }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4369:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,"axG",@progbits,_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,comdat
	.weak	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.type	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, @function
_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_:
.LFB4375:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# __first, __first
	movq	%rsi, -48(%rbp)	# __last, __last
	movq	%rdx, -56(%rbp)	# __result, __result
	movq	%rcx, -64(%rbp)	# __alloc, __alloc
	movq	-56(%rbp), %rax	# __result, tmp103
	movq	%rax, -8(%rbp)	# tmp103, __it
# /usr/include//15.2.1/bits/stl_iterator.h:3011:     { return __it; }
	movq	-8(%rbp), %rdx	# __it, D.90059
	movq	-48(%rbp), %rax	# __last, tmp104
	movq	%rax, -16(%rbp)	# tmp104, __it
	movq	-16(%rbp), %rsi	# __it, D.90055
	movq	-40(%rbp), %rax	# __first, tmp105
	movq	%rax, -24(%rbp)	# tmp105, __it
	movq	-24(%rbp), %rax	# __it, D.90051
# /usr/include//15.2.1/bits/stl_uninitialized.h:1359:       return std::__relocate_a_1(std::__niter_base(__first),
	movq	-64(%rbp), %rcx	# __alloc, tmp106
	movq	%rax, %rdi	# D.90051,
	call	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_	#
# /usr/include//15.2.1/bits/stl_uninitialized.h:1362:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4375:
	.size	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, .-_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.section	.text._ZNKSt6vectorI7IMUDataSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI7IMUDataSaIS0_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI7IMUDataSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorI7IMUDataSaIS0_EE8max_sizeEv, @function
_ZNKSt6vectorI7IMUDataSaIS0_EE8max_sizeEv:
.LFB4378:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:1129:       { return _S_max_size(_M_get_Tp_allocator()); }
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNKSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv	#
# /usr/include//15.2.1/bits/stl_vector.h:1129:       { return _S_max_size(_M_get_Tp_allocator()); }
	movq	%rax, %rdi	# _2,
	call	_ZNSt6vectorI7IMUDataSaIS0_EE11_S_max_sizeERKS1_	#
# /usr/include//15.2.1/bits/stl_vector.h:1129:       { return _S_max_size(_M_get_Tp_allocator()); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4378:
	.size	_ZNKSt6vectorI7IMUDataSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorI7IMUDataSaIS0_EE8max_sizeEv
	.section	.text._ZSt12__relocate_aIP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt12__relocate_aIP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt12__relocate_aIP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt12__relocate_aIP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt12__relocate_aIP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB4380:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# __first, __first
	movq	%rsi, -48(%rbp)	# __last, __last
	movq	%rdx, -56(%rbp)	# __result, __result
	movq	%rcx, -64(%rbp)	# __alloc, __alloc
	movq	-56(%rbp), %rax	# __result, tmp103
	movq	%rax, -8(%rbp)	# tmp103, __it
# /usr/include//15.2.1/bits/stl_iterator.h:3011:     { return __it; }
	movq	-8(%rbp), %rdx	# __it, D.90185
	movq	-48(%rbp), %rax	# __last, tmp104
	movq	%rax, -16(%rbp)	# tmp104, __it
	movq	-16(%rbp), %rsi	# __it, D.90181
	movq	-40(%rbp), %rax	# __first, tmp105
	movq	%rax, -24(%rbp)	# tmp105, __it
	movq	-24(%rbp), %rax	# __it, D.90177
# /usr/include//15.2.1/bits/stl_uninitialized.h:1359:       return std::__relocate_a_1(std::__niter_base(__first),
	movq	-64(%rbp), %rcx	# __alloc, tmp106
	movq	%rax, %rdi	# D.90177,
	call	_ZSt14__relocate_a_1IP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_	#
# /usr/include//15.2.1/bits/stl_uninitialized.h:1362:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4380:
	.size	_ZSt12__relocate_aIP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt12__relocate_aIP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZNSt15__new_allocatorIcE10deallocateEPcm,"axG",@progbits,_ZNSt15__new_allocatorIcE10deallocateEPcm,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIcE10deallocateEPcm
	.type	_ZNSt15__new_allocatorIcE10deallocateEPcm, @function
_ZNSt15__new_allocatorIcE10deallocateEPcm:
.LFB4386:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __p, __p
	movq	%rdx, -24(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	-24(%rbp), %rdx	# __n, tmp98
	movq	-16(%rbp), %rax	# __p, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	_ZdlPvm@PLT	#
# /usr/include//15.2.1/bits/new_allocator.h:173:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4386:
	.size	_ZNSt15__new_allocatorIcE10deallocateEPcm, .-_ZNSt15__new_allocatorIcE10deallocateEPcm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm:
.LFB4415:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# this, this
	movq	%rsi, -64(%rbp)	# __str, __str
	movq	%rdx, -72(%rbp)	# __n, __n
# /usr/include//15.2.1/bits/basic_string.tcc:286:     basic_string<_CharT, _Traits, _Alloc>::
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	movq	%rax, -24(%rbp)	# tmp105, D.90322
	xorl	%eax, %eax	# tmp105
# /usr/include//15.2.1/bits/basic_string.tcc:289:       if (__n > size_type(_S_local_capacity))
	movq	-72(%rbp), %rax	# __n, __n.25_1
# /usr/include//15.2.1/bits/basic_string.tcc:289:       if (__n > size_type(_S_local_capacity))
	cmpq	$15, %rax	#, __n.25_1
	jbe	.L437	#,
# /usr/include//15.2.1/bits/basic_string.tcc:291: 	  _M_data(_M_create(__n, size_type(0)));
	leaq	-72(%rbp), %rcx	#, tmp106
	movq	-56(%rbp), %rax	# this, tmp107
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm	#
	movq	%rax, %rdx	#, _2
# /usr/include//15.2.1/bits/basic_string.tcc:291: 	  _M_data(_M_create(__n, size_type(0)));
	movq	-56(%rbp), %rax	# this, tmp108
	movq	%rdx, %rsi	# _2,
	movq	%rax, %rdi	# tmp108,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	#
# /usr/include//15.2.1/bits/basic_string.tcc:292: 	  _M_capacity(__n);
	movq	-72(%rbp), %rdx	# __n, __n.26_3
	movq	-56(%rbp), %rax	# this, tmp109
	movq	%rdx, %rsi	# __n.26_3,
	movq	%rax, %rdi	# tmp109,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm	#
	jmp	.L438	#
.L437:
	movq	-56(%rbp), %rax	# this, tmp110
	movq	%rax, -32(%rbp)	# tmp110, this
# /usr/include//15.2.1/bits/basic_string.h:378:       }
	nop	
.L438:
# /usr/include//15.2.1/bits/basic_string.tcc:298: 	this->_S_copy(_M_data(), __str, __n + _Terminated);
	movq	-72(%rbp), %rax	# __n, __n.27_4
	leaq	1(%rax), %rbx	#, _5
	movq	-56(%rbp), %rax	# this, tmp111
	movq	%rax, %rdi	# tmp111,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rcx	#, _6
# /usr/include//15.2.1/bits/basic_string.tcc:298: 	this->_S_copy(_M_data(), __str, __n + _Terminated);
	movq	-64(%rbp), %rax	# __str, tmp112
	movq	%rbx, %rdx	# _5,
	movq	%rax, %rsi	# tmp112,
	movq	%rcx, %rdi	# _6,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm	#
# /usr/include//15.2.1/bits/basic_string.tcc:300:       _M_length(__n);
	movq	-72(%rbp), %rdx	# __n, __n.28_7
	movq	-56(%rbp), %rax	# this, tmp113
	movq	%rdx, %rsi	# __n.28_7,
	movq	%rax, %rdi	# tmp113,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm	#
# /usr/include//15.2.1/bits/basic_string.tcc:303:     }
	nop	
	movq	-24(%rbp), %rax	# D.90322, tmp114
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp114
	je	.L439	#,
	call	__stack_chk_fail@PLT	#
.L439:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4415:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_:
.LFB4416:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# __a, __a
# /usr/include//15.2.1/bits/stl_vector.h:2217:       _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.90323
	xorl	%eax, %eax	# tmp102
# /usr/include//15.2.1/bits/stl_vector.h:2222: 	const size_t __diffmax
	movabsq	$288230376151711743, %rax	#, tmp111
	movq	%rax, -48(%rbp)	# tmp111, __diffmax
	movq	-56(%rbp), %rax	# __a, tmp103
	movq	%rax, -32(%rbp)	# tmp103, __a
	movq	-32(%rbp), %rax	# __a, tmp104
	movq	%rax, -24(%rbp)	# tmp104, this
	movq	-24(%rbp), %rax	# this, tmp105
	movq	%rax, -16(%rbp)	# tmp105, this
# /usr/include//15.2.1/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$288230376151711743, %rax	#, D.89962
# /usr/include//15.2.1/bits/new_allocator.h:183:       { return _M_max_size(); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:712: 	return __a.max_size();
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:2224: 	const size_t __allocmax = _Alloc_traits::max_size(__a);
	movq	%rax, -40(%rbp)	# D.89962, __allocmax
# /usr/include//15.2.1/bits/stl_vector.h:2225: 	return (std::min)(__diffmax, __allocmax);
	leaq	-40(%rbp), %rdx	#, tmp106
	leaq	-48(%rbp), %rax	#, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	_ZSt3minImERKT_S2_S2_	#
# /usr/include//15.2.1/bits/stl_vector.h:2225: 	return (std::min)(__diffmax, __allocmax);
	movq	(%rax), %rax	# *_2, _8
# /usr/include//15.2.1/bits/stl_vector.h:2226:       }
	movq	-8(%rbp), %rdx	# D.90323, tmp109
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	je	.L445	#,
	call	__stack_chk_fail@PLT	#
.L445:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4416:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_
	.section	.text._ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv:
.LFB4417:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:313:       { return this->_M_impl; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include//15.2.1/bits/stl_vector.h:313:       { return this->_M_impl; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4417:
	.size	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, @function
_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv:
.LFB4418:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __n, __n
	movq	%rdx, -40(%rbp)	# D.88630, D.88630
	movq	-24(%rbp), %rax	# this, tmp106
	movq	%rax, -8(%rbp)	# tmp106, this
# /usr/include//15.2.1/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$288230376151711743, %rax	#, D.89926
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	cmpq	-32(%rbp), %rax	# __n, D.89926
	setb	%al	#, _2
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movzbl	%al, %eax	# _2, _3
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testq	%rax, %rax	# _4
	setne	%al	#, retval.35_9
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testb	%al, %al	# retval.35_9
	je	.L450	#,
# /usr/include//15.2.1/bits/new_allocator.h:138: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	movabsq	$576460752303423487, %rax	#, tmp107
	cmpq	-32(%rbp), %rax	# __n, tmp107
	jnb	.L451	#,
# /usr/include//15.2.1/bits/new_allocator.h:139: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv@PLT	#
.L451:
# /usr/include//15.2.1/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv@PLT	#
.L450:
# /usr/include//15.2.1/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	-32(%rbp), %rax	# __n, tmp108
	salq	$5, %rax	#, _6
	movq	%rax, %rdi	# _6,
	call	_Znwm@PLT	#
# /usr/include//15.2.1/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	nop	
# /usr/include//15.2.1/bits/new_allocator.h:152:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4418:
	.size	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, .-_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv
	.section	.text._ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.type	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, @function
_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_:
.LFB4420:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# __first, __first
	movq	%rsi, -48(%rbp)	# __last, __last
	movq	%rdx, -56(%rbp)	# __result, __result
	movq	%rcx, -64(%rbp)	# __alloc, __alloc
# /usr/include//15.2.1/bits/stl_uninitialized.h:1315:       _ForwardIterator __cur = __result;
	movq	-56(%rbp), %rax	# __result, tmp102
	movq	%rax, -24(%rbp)	# tmp102, __cur
# /usr/include//15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	jmp	.L454	#
.L457:
	movq	-40(%rbp), %rax	# __first, tmp103
	movq	%rax, -8(%rbp)	# tmp103, __r
# /usr/include//15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-8(%rbp), %rcx	# __r, D.90047
	movq	-24(%rbp), %rax	# __cur, tmp104
	movq	%rax, -16(%rbp)	# tmp104, __r
	movq	-16(%rbp), %rax	# __r, D.90043
# /usr/include//15.2.1/bits/stl_uninitialized.h:1317: 	std::__relocate_object_a(std::__addressof(*__cur),
	movq	-64(%rbp), %rdx	# __alloc, tmp105
	movq	%rcx, %rsi	# D.90047,
	movq	%rax, %rdi	# D.90043,
	call	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_	#
# /usr/include//15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	addq	$32, -40(%rbp)	#, __first
# /usr/include//15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	addq	$32, -24(%rbp)	#, __cur
.L454:
# /usr/include//15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	movq	-40(%rbp), %rax	# __first, tmp106
	cmpq	-48(%rbp), %rax	# __last, tmp106
	jne	.L457	#,
# /usr/include//15.2.1/bits/stl_uninitialized.h:1319:       return __cur;
	movq	-24(%rbp), %rax	# __cur, _11
# /usr/include//15.2.1/bits/stl_uninitialized.h:1320:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4420:
	.size	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, .-_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.section	.text._ZNSt15__new_allocatorIcE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIcE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIcE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIcE8allocateEmPKv, @function
_ZNSt15__new_allocatorIcE8allocateEmPKv:
.LFB4421:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __n, __n
	movq	%rdx, -40(%rbp)	# D.88648, D.88648
	movq	-24(%rbp), %rax	# this, tmp105
	movq	%rax, -8(%rbp)	# tmp105, this
# /usr/include//15.2.1/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$9223372036854775807, %rax	#, D.89826
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	cmpq	-32(%rbp), %rax	# __n, D.89826
	setb	%al	#, _2
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movzbl	%al, %eax	# _2, _3
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testq	%rax, %rax	# _4
	setne	%al	#, retval.32_8
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testb	%al, %al	# retval.32_8
	je	.L461	#,
# /usr/include//15.2.1/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv@PLT	#
.L461:
# /usr/include//15.2.1/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	-32(%rbp), %rax	# __n, tmp106
	movq	%rax, %rdi	# tmp106,
	call	_Znwm@PLT	#
# /usr/include//15.2.1/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	nop	
# /usr/include//15.2.1/bits/new_allocator.h:152:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4421:
	.size	_ZNSt15__new_allocatorIcE8allocateEmPKv, .-_ZNSt15__new_allocatorIcE8allocateEmPKv
	.section	.text._ZNSt6vectorI7IMUDataSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI7IMUDataSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorI7IMUDataSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI7IMUDataSaIS0_EE11_S_max_sizeERKS1_, @function
_ZNSt6vectorI7IMUDataSaIS0_EE11_S_max_sizeERKS1_:
.LFB4422:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# __a, __a
# /usr/include//15.2.1/bits/stl_vector.h:2217:       _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.90324
	xorl	%eax, %eax	# tmp102
# /usr/include//15.2.1/bits/stl_vector.h:2222: 	const size_t __diffmax
	movabsq	$164703072086692425, %rax	#, tmp111
	movq	%rax, -48(%rbp)	# tmp111, __diffmax
	movq	-56(%rbp), %rax	# __a, tmp103
	movq	%rax, -32(%rbp)	# tmp103, __a
	movq	-32(%rbp), %rax	# __a, tmp104
	movq	%rax, -24(%rbp)	# tmp104, this
	movq	-24(%rbp), %rax	# this, tmp105
	movq	%rax, -16(%rbp)	# tmp105, this
# /usr/include//15.2.1/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$164703072086692425, %rax	#, D.89986
# /usr/include//15.2.1/bits/new_allocator.h:183:       { return _M_max_size(); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:712: 	return __a.max_size();
	nop	
# /usr/include//15.2.1/bits/stl_vector.h:2224: 	const size_t __allocmax = _Alloc_traits::max_size(__a);
	movq	%rax, -40(%rbp)	# D.89986, __allocmax
# /usr/include//15.2.1/bits/stl_vector.h:2225: 	return (std::min)(__diffmax, __allocmax);
	leaq	-40(%rbp), %rdx	#, tmp106
	leaq	-48(%rbp), %rax	#, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	_ZSt3minImERKT_S2_S2_	#
# /usr/include//15.2.1/bits/stl_vector.h:2225: 	return (std::min)(__diffmax, __allocmax);
	movq	(%rax), %rax	# *_2, _8
# /usr/include//15.2.1/bits/stl_vector.h:2226:       }
	movq	-8(%rbp), %rdx	# D.90324, tmp109
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	je	.L468	#,
	call	__stack_chk_fail@PLT	#
.L468:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4422:
	.size	_ZNSt6vectorI7IMUDataSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI7IMUDataSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNKSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB4423:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include//15.2.1/bits/stl_vector.h:313:       { return this->_M_impl; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include//15.2.1/bits/stl_vector.h:313:       { return this->_M_impl; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4423:
	.size	_ZNKSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI7IMUDataSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorI7IMUDataE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorI7IMUDataE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorI7IMUDataE8allocateEmPKv
	.type	_ZNSt15__new_allocatorI7IMUDataE8allocateEmPKv, @function
_ZNSt15__new_allocatorI7IMUDataE8allocateEmPKv:
.LFB4424:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __n, __n
	movq	%rdx, -40(%rbp)	# D.88657, D.88657
	movq	-24(%rbp), %rax	# this, tmp106
	movq	%rax, -8(%rbp)	# tmp106, this
# /usr/include//15.2.1/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$164703072086692425, %rax	#, D.89936
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	cmpq	-32(%rbp), %rax	# __n, D.89936
	setb	%al	#, _2
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movzbl	%al, %eax	# _2, _3
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testq	%rax, %rax	# _4
	setne	%al	#, retval.55_9
# /usr/include//15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testb	%al, %al	# retval.55_9
	je	.L473	#,
# /usr/include//15.2.1/bits/new_allocator.h:138: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	movabsq	$329406144173384850, %rax	#, tmp107
	cmpq	-32(%rbp), %rax	# __n, tmp107
	jnb	.L474	#,
# /usr/include//15.2.1/bits/new_allocator.h:139: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv@PLT	#
.L474:
# /usr/include//15.2.1/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv@PLT	#
.L473:
# /usr/include//15.2.1/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	-32(%rbp), %rax	# __n, tmp108
	imulq	$56, %rax, %rax	#, tmp108, _6
	movq	%rax, %rdi	# _6,
	call	_Znwm@PLT	#
# /usr/include//15.2.1/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	nop	
# /usr/include//15.2.1/bits/new_allocator.h:152:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4424:
	.size	_ZNSt15__new_allocatorI7IMUDataE8allocateEmPKv, .-_ZNSt15__new_allocatorI7IMUDataE8allocateEmPKv
	.section	.text._ZSt14__relocate_a_1IP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt14__relocate_a_1IP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt14__relocate_a_1IP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB4426:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# __first, __first
	movq	%rsi, -48(%rbp)	# __last, __last
	movq	%rdx, -56(%rbp)	# __result, __result
	movq	%rcx, -64(%rbp)	# __alloc, __alloc
# /usr/include//15.2.1/bits/stl_uninitialized.h:1315:       _ForwardIterator __cur = __result;
	movq	-56(%rbp), %rax	# __result, tmp102
	movq	%rax, -24(%rbp)	# tmp102, __cur
# /usr/include//15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	jmp	.L477	#
.L480:
	movq	-40(%rbp), %rax	# __first, tmp103
	movq	%rax, -8(%rbp)	# tmp103, __r
# /usr/include//15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-8(%rbp), %rcx	# __r, D.90173
	movq	-24(%rbp), %rax	# __cur, tmp104
	movq	%rax, -16(%rbp)	# tmp104, __r
	movq	-16(%rbp), %rax	# __r, D.90169
# /usr/include//15.2.1/bits/stl_uninitialized.h:1317: 	std::__relocate_object_a(std::__addressof(*__cur),
	movq	-64(%rbp), %rdx	# __alloc, tmp105
	movq	%rcx, %rsi	# D.90173,
	movq	%rax, %rdi	# D.90169,
	call	_ZSt19__relocate_object_aI7IMUDataS0_SaIS0_EEvPT_PT0_RT1_	#
# /usr/include//15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	addq	$56, -40(%rbp)	#, __first
# /usr/include//15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	addq	$56, -24(%rbp)	#, __cur
.L477:
# /usr/include//15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	movq	-40(%rbp), %rax	# __first, tmp106
	cmpq	-48(%rbp), %rax	# __last, tmp106
	jne	.L480	#,
# /usr/include//15.2.1/bits/stl_uninitialized.h:1319:       return __cur;
	movq	-24(%rbp), %rax	# __cur, _11
# /usr/include//15.2.1/bits/stl_uninitialized.h:1320:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4426:
	.size	_ZSt14__relocate_a_1IP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt14__relocate_a_1IP7IMUDataS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_:
.LFB4444:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$144, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)	# __dest, __dest
	movq	%rsi, -144(%rbp)	# __orig, __orig
	movq	%rdx, -152(%rbp)	# __alloc, __alloc
	movq	-144(%rbp), %rax	# __orig, tmp106
	movq	%rax, -24(%rbp)	# tmp106, __t
# /usr/include//15.2.1/bits/move.h:139:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-24(%rbp), %rax	# __t, D.90039
	movq	-152(%rbp), %rdx	# __alloc, tmp107
	movq	%rdx, -88(%rbp)	# tmp107, __a
	movq	-136(%rbp), %rdx	# __dest, tmp108
	movq	%rdx, -80(%rbp)	# tmp108, __p
	movq	%rax, -72(%rbp)	# D.90039, __args#0
	movq	-72(%rbp), %rax	# __args#0, tmp109
	movq	%rax, -64(%rbp)	# tmp109, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-64(%rbp), %rax	# __t, _17
	movq	-80(%rbp), %rdx	# __p, tmp110
	movq	%rdx, -56(%rbp)	# tmp110, __p
	movq	%rax, -48(%rbp)	# _17, __args#0
	movq	-88(%rbp), %rax	# __a, tmp111
	movq	%rax, -40(%rbp)	# tmp111, this
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-56(%rbp), %rbx	# __p, _23
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movl	$32, %edi	#,
	call	_ZnwmPv	#
	movq	%rax, %r12	#, _24
	movq	-48(%rbp), %rax	# __args#0, tmp112
	movq	%rax, -32(%rbp)	# tmp112, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-32(%rbp), %rax	# __t, _28
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %rsi	# _28,
	movq	%r12, %rdi	# _24,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_	#
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$0, %eax	#, _31
	testb	%al, %al	# _31
	je	.L486	#,
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movq	%r12, %rdi	# _24,
	call	_ZdlPvS_	#
.L486:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:680: 	}
	nop	
	movq	-144(%rbp), %rax	# __orig, tmp113
	movq	%rax, -96(%rbp)	# tmp113, __r
# /usr/include//15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-96(%rbp), %rax	# __r, D.90018
	movq	-152(%rbp), %rdx	# __alloc, tmp114
	movq	%rdx, -128(%rbp)	# tmp114, __a
	movq	%rax, -120(%rbp)	# D.90018, __p
	movq	-120(%rbp), %rax	# __p, tmp115
	movq	%rax, -112(%rbp)	# tmp115, __p
	movq	-128(%rbp), %rax	# __a, tmp116
	movq	%rax, -104(%rbp)	# tmp116, this
# /usr/include//15.2.1/bits/new_allocator.h:198: 	{ __p->~_Up(); }
	movq	-112(%rbp), %rax	# __p, tmp117
	movq	%rax, %rdi	# tmp117,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# /usr/include//15.2.1/bits/new_allocator.h:198: 	{ __p->~_Up(); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:700: 	}
	nop	
# /usr/include//15.2.1/bits/stl_uninitialized.h:1290:     }
	nop	
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4444:
	.size	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_
	.section	.text._ZSt19__relocate_object_aI7IMUDataS0_SaIS0_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aI7IMUDataS0_SaIS0_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aI7IMUDataS0_SaIS0_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aI7IMUDataS0_SaIS0_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aI7IMUDataS0_SaIS0_EEvPT_PT0_RT1_:
.LFB4447:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$144, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)	# __dest, __dest
	movq	%rsi, -144(%rbp)	# __orig, __orig
	movq	%rdx, -152(%rbp)	# __alloc, __alloc
	movq	-144(%rbp), %rax	# __orig, tmp106
	movq	%rax, -24(%rbp)	# tmp106, __t
# /usr/include//15.2.1/bits/move.h:139:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-24(%rbp), %rax	# __t, D.90165
	movq	-152(%rbp), %rdx	# __alloc, tmp107
	movq	%rdx, -88(%rbp)	# tmp107, __a
	movq	-136(%rbp), %rdx	# __dest, tmp108
	movq	%rdx, -80(%rbp)	# tmp108, __p
	movq	%rax, -72(%rbp)	# D.90165, __args#0
	movq	-72(%rbp), %rax	# __args#0, tmp109
	movq	%rax, -64(%rbp)	# tmp109, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-64(%rbp), %rax	# __t, _17
	movq	-80(%rbp), %rdx	# __p, tmp110
	movq	%rdx, -56(%rbp)	# tmp110, __p
	movq	%rax, -48(%rbp)	# _17, __args#0
	movq	-88(%rbp), %rax	# __a, tmp111
	movq	%rax, -40(%rbp)	# tmp111, this
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-56(%rbp), %rbx	# __p, _23
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movl	$56, %edi	#,
	call	_ZnwmPv	#
	movq	%rax, %r12	#, _24
	movq	-48(%rbp), %rax	# __args#0, tmp112
	movq	%rax, -32(%rbp)	# tmp112, __t
# /usr/include//15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-32(%rbp), %rax	# __t, _28
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %rsi	# _28,
	movq	%r12, %rdi	# _24,
	call	_ZN7IMUDataC1EOS_	#
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$0, %eax	#, _31
	testb	%al, %al	# _31
	je	.L492	#,
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movq	%r12, %rdi	# _24,
	call	_ZdlPvS_	#
.L492:
# /usr/include//15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:680: 	}
	nop	
	movq	-144(%rbp), %rax	# __orig, tmp113
	movq	%rax, -96(%rbp)	# tmp113, __r
# /usr/include//15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-96(%rbp), %rax	# __r, D.90144
	movq	-152(%rbp), %rdx	# __alloc, tmp114
	movq	%rdx, -128(%rbp)	# tmp114, __a
	movq	%rax, -120(%rbp)	# D.90144, __p
	movq	-120(%rbp), %rax	# __p, tmp115
	movq	%rax, -112(%rbp)	# tmp115, __p
	movq	-128(%rbp), %rax	# __a, tmp116
	movq	%rax, -104(%rbp)	# tmp116, this
# /usr/include//15.2.1/bits/new_allocator.h:198: 	{ __p->~_Up(); }
	movq	-112(%rbp), %rax	# __p, tmp117
	movq	%rax, %rdi	# tmp117,
	call	_ZN7IMUDataD1Ev	#
# /usr/include//15.2.1/bits/new_allocator.h:198: 	{ __p->~_Up(); }
	nop	
# /usr/include//15.2.1/bits/alloc_traits.h:700: 	}
	nop	
# /usr/include//15.2.1/bits/stl_uninitialized.h:1290:     }
	nop	
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4447:
	.size	_ZSt19__relocate_object_aI7IMUDataS0_SaIS0_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aI7IMUDataS0_SaIS0_EEvPT_PT0_RT1_
	.section	.text._ZN7IMUDataC2EOS_,"axG",@progbits,_ZN7IMUDataC5EOS_,comdat
	.align 2
	.weak	_ZN7IMUDataC2EOS_
	.type	_ZN7IMUDataC2EOS_, @function
_ZN7IMUDataC2EOS_:
.LFB4467:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# D.80549, D.80549
# accel_ekf.cpp:12: struct IMUData {
	movq	-8(%rbp), %rax	# this, _1
	movq	-16(%rbp), %rdx	# D.80549, _2
	movq	%rdx, %rsi	# _2,
	movq	%rax, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_	#
# accel_ekf.cpp:12: struct IMUData {
	movq	-16(%rbp), %rax	# D.80549, tmp104
	movsd	32(%rax), %xmm0	# _10(D)->ax, _3
	movq	-8(%rbp), %rax	# this, tmp105
	movsd	%xmm0, 32(%rax)	# _3, this_8(D)->ax
	movq	-16(%rbp), %rax	# D.80549, tmp106
	movsd	40(%rax), %xmm0	# _10(D)->ay, _4
	movq	-8(%rbp), %rax	# this, tmp107
	movsd	%xmm0, 40(%rax)	# _4, this_8(D)->ay
	movq	-16(%rbp), %rax	# D.80549, tmp108
	movsd	48(%rax), %xmm0	# _10(D)->az, _5
	movq	-8(%rbp), %rax	# this, tmp109
	movsd	%xmm0, 48(%rax)	# _5, this_8(D)->az
# accel_ekf.cpp:12: struct IMUData {
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4467:
	.size	_ZN7IMUDataC2EOS_, .-_ZN7IMUDataC2EOS_
	.weak	_ZN7IMUDataC1EOS_
	.set	_ZN7IMUDataC1EOS_,_ZN7IMUDataC2EOS_
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	0
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	0
	.long	1079574528
	.align 8
.LC7:
	.long	1202590843
	.long	1065646817
	.align 8
.LC8:
	.long	-1717986918
	.long	1069128089
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
