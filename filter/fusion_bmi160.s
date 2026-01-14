	.file	"fusion_bmi160.cpp"
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
# /usr/include/c++/15.2.1/new:208: { return __p; }
	movq	-16(%rbp), %rax	# __p, _2
# /usr/include/c++/15.2.1/new:208: { return __p; }
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
# /usr/include/c++/15.2.1/new:219: { }
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
# /usr/include/c++/15.2.1/bits/char_traits.h:352: 	__c1 = __c2;
	movq	-16(%rbp), %rax	# __c2, tmp99
	movzbl	(%rax), %edx	# *__c2_3(D), _1
# /usr/include/c++/15.2.1/bits/char_traits.h:352: 	__c1 = __c2;
	movq	-8(%rbp), %rax	# __c1, tmp100
	movb	%dl, (%rax)	# _1, *__c1_4(D)
# /usr/include/c++/15.2.1/bits/char_traits.h:353:       }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1105:
	.size	_ZNSt11char_traitsIcE6assignERcRKc, .-_ZNSt11char_traitsIcE6assignERcRKc
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB1109:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __s, __s
# /usr/include/c++/15.2.1/x86_64-pc-linux-gnu/bits/c++config.h:589:     return __builtin_is_constant_evaluated();
	movl	$0, %eax	#, D.80854
# /usr/include/c++/15.2.1/bits/char_traits.h:390: 	if (std::__is_constant_evaluated())
	testb	%al, %al	# D.80854
	je	.L7	#,
# /usr/include/c++/15.2.1/bits/char_traits.h:391: 	  return __gnu_cxx::char_traits<char_type>::length(__s);
	movq	-8(%rbp), %rax	# __s, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc	#
# /usr/include/c++/15.2.1/bits/char_traits.h:391: 	  return __gnu_cxx::char_traits<char_type>::length(__s);
	jmp	.L8	#
.L7:
# /usr/include/c++/15.2.1/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	movq	-8(%rbp), %rax	# __s, tmp103
	movq	%rax, %rdi	# tmp103,
	call	strlen@PLT	#
# /usr/include/c++/15.2.1/bits/char_traits.h:393: 	return __builtin_strlen(__s);
	nop	
.L8:
# /usr/include/c++/15.2.1/bits/char_traits.h:394:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1109:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt11char_traitsIcE4findEPKcmRS1_,"axG",@progbits,_ZNSt11char_traitsIcE4findEPKcmRS1_,comdat
	.weak	_ZNSt11char_traitsIcE4findEPKcmRS1_
	.type	_ZNSt11char_traitsIcE4findEPKcmRS1_, @function
_ZNSt11char_traitsIcE4findEPKcmRS1_:
.LFB1110:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __s, __s
	movq	%rsi, -16(%rbp)	# __n, __n
	movq	%rdx, -24(%rbp)	# __a, __a
# /usr/include/c++/15.2.1/bits/char_traits.h:399: 	if (__n == 0)
	cmpq	$0, -16(%rbp)	#, __n
	jne	.L10	#,
# /usr/include/c++/15.2.1/bits/char_traits.h:400: 	  return 0;
	movl	$0, %eax	#, _3
	jmp	.L11	#
.L10:
# /usr/include/c++/15.2.1/x86_64-pc-linux-gnu/bits/c++config.h:589:     return __builtin_is_constant_evaluated();
	movl	$0, %eax	#, D.80857
# /usr/include/c++/15.2.1/bits/char_traits.h:402: 	if (std::__is_constant_evaluated())
	testb	%al, %al	# D.80857
	je	.L13	#,
# /usr/include/c++/15.2.1/bits/char_traits.h:403: 	  return __gnu_cxx::char_traits<char_type>::find(__s, __n, __a);
	movq	-24(%rbp), %rdx	# __a, tmp103
	movq	-16(%rbp), %rcx	# __n, tmp104
	movq	-8(%rbp), %rax	# __s, tmp105
	movq	%rcx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_	#
# /usr/include/c++/15.2.1/bits/char_traits.h:403: 	  return __gnu_cxx::char_traits<char_type>::find(__s, __n, __a);
	jmp	.L11	#
.L13:
# /usr/include/c++/15.2.1/bits/char_traits.h:405: 	return static_cast<const char_type*>(__builtin_memchr(__s, __a, __n));
	movq	-24(%rbp), %rax	# __a, tmp106
	movzbl	(%rax), %eax	# *__a_8(D), _1
# /usr/include/c++/15.2.1/bits/char_traits.h:405: 	return static_cast<const char_type*>(__builtin_memchr(__s, __a, __n));
	movsbl	%al, %ecx	# _1, _2
	movq	-16(%rbp), %rdx	# __n, tmp107
	movq	-8(%rbp), %rax	# __s, tmp108
	movl	%ecx, %esi	# _2,
	movq	%rax, %rdi	# tmp108,
	call	memchr@PLT	#
# /usr/include/c++/15.2.1/bits/char_traits.h:405: 	return static_cast<const char_type*>(__builtin_memchr(__s, __a, __n));
	nop	
.L11:
# /usr/include/c++/15.2.1/bits/char_traits.h:406:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1110:
	.size	_ZNSt11char_traitsIcE4findEPKcmRS1_, .-_ZNSt11char_traitsIcE4findEPKcmRS1_
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
# /usr/include/c++/15.2.1/bits/char_traits.h:423: 	if (__n == 0)
	cmpq	$0, -24(%rbp)	#, __n
	jne	.L15	#,
# /usr/include/c++/15.2.1/bits/char_traits.h:424: 	  return __s1;
	movq	-8(%rbp), %rax	# __s1, _1
	jmp	.L16	#
.L15:
# /usr/include/c++/15.2.1/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	-8(%rbp), %rdx	# __s1, tmp100
	movq	-16(%rbp), %rax	# __s2, tmp101
	movq	%rdx, %rcx	# tmp100, tmp103
	movq	%rax, %rsi	# tmp101, tmp104
	movq	-24(%rbp), %rax	# __n, tmp105
	movq	%rax, %rdx	# tmp105,
	movq	%rcx, %rdi	# tmp103,
	call	memcpy@PLT	#
# /usr/include/c++/15.2.1/bits/char_traits.h:429: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	nop	
.L16:
# /usr/include/c++/15.2.1/bits/char_traits.h:430:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1112:
	.size	_ZNSt11char_traitsIcE4copyEPcPKcm, .-_ZNSt11char_traitsIcE4copyEPcPKcm
	.section	.rodata
.LC0:
	.string	"stof"
	.section	.text._ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm,"axG",@progbits,_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm,comdat
	.weak	_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm
	.type	_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm, @function
_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm:
.LFB1782:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __str, __str
	movq	%rsi, -16(%rbp)	# __idx, __idx
# /usr/include/c++/15.2.1/bits/basic_string.h:4496:   { return __gnu_cxx::__stoa(&std::strtof, "stof", __str.c_str(), __idx); }
	movq	-8(%rbp), %rax	# __str, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv	#
	movq	%rax, %rdx	#, _1
# /usr/include/c++/15.2.1/bits/basic_string.h:4496:   { return __gnu_cxx::__stoa(&std::strtof, "stof", __str.c_str(), __idx); }
	movq	-16(%rbp), %rax	# __idx, tmp102
	leaq	.LC0(%rip), %rsi	#, tmp103
	movq	strtof@GOTPCREL(%rip), %rcx	#, tmp105
	movq	%rcx, %rdi	# tmp105, tmp104
	movq	%rax, %rcx	# tmp102,
	call	_ZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_	#
# /usr/include/c++/15.2.1/bits/basic_string.h:4496:   { return __gnu_cxx::__stoa(&std::strtof, "stof", __str.c_str(), __idx); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1782:
	.size	_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm, .-_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm
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
# /usr/include/c++/15.2.1/bits/ios_base.h:151:   { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
	movl	-4(%rbp), %eax	# __a, tmp100
	orl	-8(%rbp), %eax	# __b, _3
# /usr/include/c++/15.2.1/bits/ios_base.h:151:   { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2208:
	.size	_ZStorSt13_Ios_OpenmodeS_, .-_ZStorSt13_Ios_OpenmodeS_
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.text
	.type	FusionRadiansToDegrees, @function
FusionRadiansToDegrees:
.LFB3179:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)	# radians, radians
# library/Fusion-1.2.11/Fusion/FusionMath.h:137:     return radians * (180.0f / (float) M_PI);
	movss	-4(%rbp), %xmm1	# radians, tmp100
	movss	.LC1(%rip), %xmm0	#, tmp101
	mulss	%xmm1, %xmm0	# tmp100, _2
# library/Fusion-1.2.11/Fusion/FusionMath.h:138: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3179:
	.size	FusionRadiansToDegrees, .-FusionRadiansToDegrees
	.type	FusionAsin, @function
FusionAsin:
.LFB3180:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# value, value
# library/Fusion-1.2.11/Fusion/FusionMath.h:149:     if (value <= -1.0f) {
	movss	.LC2(%rip), %xmm0	#, tmp100
	comiss	-4(%rbp), %xmm0	# value, tmp100
	jb	.L31	#,
# library/Fusion-1.2.11/Fusion/FusionMath.h:150:         return (float) M_PI / -2.0f;
	movl	.LC3(%rip), %eax	#, _1
	jmp	.L26	#
.L31:
# library/Fusion-1.2.11/Fusion/FusionMath.h:152:     if (value >= 1.0f) {
	movss	-4(%rbp), %xmm0	# value, tmp101
	movss	.LC4(%rip), %xmm1	#, tmp102
	comiss	%xmm1, %xmm0	# tmp102, tmp101
	jb	.L32	#,
# library/Fusion-1.2.11/Fusion/FusionMath.h:153:         return (float) M_PI / 2.0f;
	movl	.LC5(%rip), %eax	#, _1
	jmp	.L26	#
.L32:
# library/Fusion-1.2.11/Fusion/FusionMath.h:155:     return asinf(value);
	movl	-4(%rbp), %eax	# value, tmp103
	movd	%eax, %xmm0	# tmp103,
	call	asinf@PLT	#
	movd	%xmm0, %eax	#, _1
# library/Fusion-1.2.11/Fusion/FusionMath.h:155:     return asinf(value);
	nop	
.L26:
# library/Fusion-1.2.11/Fusion/FusionMath.h:156: }
	movd	%eax, %xmm0	# _1, <retval>
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3180:
	.size	FusionAsin, .-FusionAsin
	.type	FusionEulerFrom, @function
FusionEulerFrom:
.LFB3199:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%xmm0, %rax	# quaternion, tmp145
	movdqa	%xmm1, %xmm0	# quaternion, tmp146
	movq	%rax, %rax	# tmp145, tmp144
	movl	$0, %edx	#,
	movq	%xmm0, %rdx	# tmp146,
	movq	%rax, -48(%rbp)	# tmp144, quaternion
	movq	%rdx, -40(%rbp)	#, quaternion
# library/Fusion-1.2.11/Fusion/FusionMath.h:484: static inline FusionEuler FusionEulerFrom(const FusionQuaternion quaternion) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp147
	movq	%rax, -8(%rbp)	# tmp147, D.81251
	xorl	%eax, %eax	# tmp147
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movss	-40(%rbp), %xmm1	# quaternion.element.y, _1
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movss	-40(%rbp), %xmm0	# quaternion.element.y, _2
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	mulss	%xmm0, %xmm1	# _2, _3
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movss	.LC6(%rip), %xmm0	#, tmp148
	subss	%xmm1, %xmm0	# _3, _4
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movss	-44(%rbp), %xmm2	# quaternion.element.x, _5
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movss	-44(%rbp), %xmm1	# quaternion.element.x, _6
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	mulss	%xmm2, %xmm1	# _5, _7
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movaps	%xmm0, %xmm3	# _4, _4
	subss	%xmm1, %xmm3	# _7, _4
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movss	-48(%rbp), %xmm1	# quaternion.element.w, _9
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movss	-44(%rbp), %xmm0	# quaternion.element.x, _10
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	mulss	%xmm0, %xmm1	# _10, _11
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movss	-40(%rbp), %xmm2	# quaternion.element.y, _12
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movss	-36(%rbp), %xmm0	# quaternion.element.z, _13
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	mulss	%xmm2, %xmm0	# _12, _14
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	addss	%xmm0, %xmm1	# _14, _11
	movd	%xmm1, %eax	# _11, _15
	movaps	%xmm3, %xmm1	# _8,
	movd	%eax, %xmm0	# _15,
	call	atan2f@PLT	#
	movd	%xmm0, %eax	#, _16
# library/Fusion-1.2.11/Fusion/FusionMath.h:488:             .roll = FusionRadiansToDegrees(atan2f(Q.w * Q.x + Q.y * Q.z, 0.5f - Q.y * Q.y - Q.x * Q.x)),
	movd	%eax, %xmm0	# _16,
	call	FusionRadiansToDegrees	#
	movd	%xmm0, %eax	#, _17
# library/Fusion-1.2.11/Fusion/FusionMath.h:492:     };
	movl	%eax, -32(%rbp)	# _17, euler.angle.roll
# library/Fusion-1.2.11/Fusion/FusionMath.h:489:             .pitch = FusionRadiansToDegrees(FusionAsin(2.0f * (Q.w * Q.y - Q.z * Q.x))),
	movss	-48(%rbp), %xmm1	# quaternion.element.w, _18
# library/Fusion-1.2.11/Fusion/FusionMath.h:489:             .pitch = FusionRadiansToDegrees(FusionAsin(2.0f * (Q.w * Q.y - Q.z * Q.x))),
	movss	-40(%rbp), %xmm0	# quaternion.element.y, _19
# library/Fusion-1.2.11/Fusion/FusionMath.h:489:             .pitch = FusionRadiansToDegrees(FusionAsin(2.0f * (Q.w * Q.y - Q.z * Q.x))),
	mulss	%xmm1, %xmm0	# _18, _20
# library/Fusion-1.2.11/Fusion/FusionMath.h:489:             .pitch = FusionRadiansToDegrees(FusionAsin(2.0f * (Q.w * Q.y - Q.z * Q.x))),
	movss	-36(%rbp), %xmm2	# quaternion.element.z, _21
# library/Fusion-1.2.11/Fusion/FusionMath.h:489:             .pitch = FusionRadiansToDegrees(FusionAsin(2.0f * (Q.w * Q.y - Q.z * Q.x))),
	movss	-44(%rbp), %xmm1	# quaternion.element.x, _22
# library/Fusion-1.2.11/Fusion/FusionMath.h:489:             .pitch = FusionRadiansToDegrees(FusionAsin(2.0f * (Q.w * Q.y - Q.z * Q.x))),
	mulss	%xmm2, %xmm1	# _21, _23
# library/Fusion-1.2.11/Fusion/FusionMath.h:489:             .pitch = FusionRadiansToDegrees(FusionAsin(2.0f * (Q.w * Q.y - Q.z * Q.x))),
	subss	%xmm1, %xmm0	# _23, _24
# library/Fusion-1.2.11/Fusion/FusionMath.h:489:             .pitch = FusionRadiansToDegrees(FusionAsin(2.0f * (Q.w * Q.y - Q.z * Q.x))),
	addss	%xmm0, %xmm0	# _24, _24
	movd	%xmm0, %eax	# _24, _25
	movd	%eax, %xmm0	# _25,
	call	FusionAsin	#
	movd	%xmm0, %eax	#, _26
# library/Fusion-1.2.11/Fusion/FusionMath.h:489:             .pitch = FusionRadiansToDegrees(FusionAsin(2.0f * (Q.w * Q.y - Q.z * Q.x))),
	movd	%eax, %xmm0	# _26,
	call	FusionRadiansToDegrees	#
	movd	%xmm0, %eax	#, _27
# library/Fusion-1.2.11/Fusion/FusionMath.h:492:     };
	movl	%eax, -28(%rbp)	# _27, euler.angle.pitch
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movss	-40(%rbp), %xmm1	# quaternion.element.y, _28
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movss	-40(%rbp), %xmm0	# quaternion.element.y, _29
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	mulss	%xmm0, %xmm1	# _29, _30
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movss	.LC6(%rip), %xmm0	#, tmp149
	subss	%xmm1, %xmm0	# _30, _31
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movss	-36(%rbp), %xmm2	# quaternion.element.z, _32
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movss	-36(%rbp), %xmm1	# quaternion.element.z, _33
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	mulss	%xmm2, %xmm1	# _32, _34
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movaps	%xmm0, %xmm3	# _31, _31
	subss	%xmm1, %xmm3	# _34, _31
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movss	-48(%rbp), %xmm1	# quaternion.element.w, _36
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movss	-36(%rbp), %xmm0	# quaternion.element.z, _37
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	mulss	%xmm0, %xmm1	# _37, _38
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movss	-44(%rbp), %xmm2	# quaternion.element.x, _39
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movss	-40(%rbp), %xmm0	# quaternion.element.y, _40
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	mulss	%xmm2, %xmm0	# _39, _41
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	addss	%xmm0, %xmm1	# _41, _38
	movd	%xmm1, %eax	# _38, _42
	movaps	%xmm3, %xmm1	# _35,
	movd	%eax, %xmm0	# _42,
	call	atan2f@PLT	#
	movd	%xmm0, %eax	#, _43
# library/Fusion-1.2.11/Fusion/FusionMath.h:490:             .yaw = FusionRadiansToDegrees(atan2f(Q.w * Q.z + Q.x * Q.y, 0.5f - Q.y * Q.y - Q.z * Q.z)),
	movd	%eax, %xmm0	# _43,
	call	FusionRadiansToDegrees	#
	movd	%xmm0, %eax	#, _44
# library/Fusion-1.2.11/Fusion/FusionMath.h:492:     };
	movl	%eax, -24(%rbp)	# _44, euler.angle.yaw
# library/Fusion-1.2.11/Fusion/FusionMath.h:494:     return euler;
	movq	-32(%rbp), %rax	# euler, tmp150
	movq	%rax, -20(%rbp)	# tmp150, D.80690
	movl	-24(%rbp), %eax	# euler, tmp151
	movl	%eax, -12(%rbp)	# tmp151, D.80690
	movq	-20(%rbp), %rdx	# D.80690, tmp152
	movl	-12(%rbp), %eax	# D.80690, tmp153
	movq	%rax, %xmm1	# tmp153, <retval>
# library/Fusion-1.2.11/Fusion/FusionMath.h:495: }
	movq	-8(%rbp), %rax	# D.81251, tmp154
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	je	.L35	#,
	call	__stack_chk_fail@PLT	#
.L35:
	movq	%rdx, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3199:
	.size	FusionEulerFrom, .-FusionEulerFrom
	.section	.rodata
	.align 4
	.type	_ZL16GYRO_SENSITIVITY, @object
	.size	_ZL16GYRO_SENSITIVITY, 4
_ZL16GYRO_SENSITIVITY:
	.long	1107505971
	.align 4
	.type	_ZL17ACCEL_SENSITIVITY, @object
	.size	_ZL17ACCEL_SENSITIVITY, 4
_ZL17ACCEL_SENSITIVITY:
	.long	1166016512
	.align 4
	.type	_ZL13SAMPLE_PERIOD, @object
	.size	_ZL13SAMPLE_PERIOD, 4
_ZL13SAMPLE_PERIOD:
	.long	1036831949
.LC8:
	.string	"%d:%d:%f"
	.text
	.globl	_Z14parseTimestampRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z14parseTimestampRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z14parseTimestampRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB3203:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# timeStr, timeStr
# fusion_bmi160.cpp:29: float parseTimestamp(const std::string &timeStr) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	movq	%rax, -8(%rbp)	# tmp111, D.81253
	xorl	%eax, %eax	# tmp111
# fusion_bmi160.cpp:31:   std::string clean = timeStr.substr(1, timeStr.length() - 2);
	movq	-72(%rbp), %rax	# timeStr, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	#
# fusion_bmi160.cpp:31:   std::string clean = timeStr.substr(1, timeStr.length() - 2);
	leaq	-2(%rax), %rdx	#, _2
	leaq	-48(%rbp), %rax	#, tmp113
	movq	-72(%rbp), %rsi	# timeStr, tmp114
	movq	%rdx, %rcx	# _2,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp113,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm	#
# fusion_bmi160.cpp:33:   int hours = 0, minutes = 0;
	movl	$0, -60(%rbp)	#, hours
# fusion_bmi160.cpp:33:   int hours = 0, minutes = 0;
	movl	$0, -56(%rbp)	#, minutes
# fusion_bmi160.cpp:34:   float seconds = 0.0f;
	pxor	%xmm0, %xmm0	# tmp115
	movss	%xmm0, -52(%rbp)	# tmp115, seconds
# fusion_bmi160.cpp:37:   sscanf(clean.c_str(), "%d:%d:%f", &hours, &minutes, &seconds);
	leaq	-48(%rbp), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv	#
	movq	%rax, %rdi	#, _3
# fusion_bmi160.cpp:37:   sscanf(clean.c_str(), "%d:%d:%f", &hours, &minutes, &seconds);
	leaq	-52(%rbp), %rcx	#, tmp117
	leaq	-56(%rbp), %rdx	#, tmp118
	leaq	-60(%rbp), %rax	#, tmp119
	leaq	.LC8(%rip), %rsi	#, tmp120
	movq	%rcx, %r8	# tmp117,
	movq	%rdx, %rcx	# tmp118,
	movq	%rax, %rdx	# tmp119,
	movl	$0, %eax	#,
	call	__isoc23_sscanf@PLT	#
# fusion_bmi160.cpp:39:   return hours * 3600.0f + minutes * 60.0f + seconds;
	movl	-60(%rbp), %eax	# hours, hours.0_4
	pxor	%xmm1, %xmm1	# _5
	cvtsi2ssl	%eax, %xmm1	# hours.0_4, _5
	movss	.LC9(%rip), %xmm0	#, tmp121
	mulss	%xmm0, %xmm1	# tmp121, _6
# fusion_bmi160.cpp:39:   return hours * 3600.0f + minutes * 60.0f + seconds;
	movl	-56(%rbp), %eax	# minutes, minutes.1_7
	pxor	%xmm2, %xmm2	# _8
	cvtsi2ssl	%eax, %xmm2	# minutes.1_7, _8
	movss	.LC10(%rip), %xmm0	#, tmp122
	mulss	%xmm2, %xmm0	# _8, _9
# fusion_bmi160.cpp:39:   return hours * 3600.0f + minutes * 60.0f + seconds;
	addss	%xmm0, %xmm1	# _9, _10
# fusion_bmi160.cpp:39:   return hours * 3600.0f + minutes * 60.0f + seconds;
	movss	-52(%rbp), %xmm0	# seconds, seconds.2_11
# fusion_bmi160.cpp:39:   return hours * 3600.0f + minutes * 60.0f + seconds;
	addss	%xmm0, %xmm1	# seconds.2_11, _10
	movss	%xmm1, -76(%rbp)	# _10, %sfp
# fusion_bmi160.cpp:40: }
	leaq	-48(%rbp), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# fusion_bmi160.cpp:39:   return hours * 3600.0f + minutes * 60.0f + seconds;
	movss	-76(%rbp), %xmm0	# %sfp, <retval>
# fusion_bmi160.cpp:40: }
	movq	-8(%rbp), %rax	# D.81253, tmp125
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	je	.L38	#,
	call	__stack_chk_fail@PLT	#
.L38:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3203:
	.size	_Z14parseTimestampRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z14parseTimestampRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev:
.LFB3209:
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
# /usr/include/c++/15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	movq	-8(%rbp), %rax	# this, tmp99
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev	#
	nop	
# /usr/include/c++/15.2.1/bits/stl_vector.h:139:       struct _Vector_impl
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3209:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev:
.LFB3211:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:321:       _Vector_base() = default;
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3211:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev:
.LFB3213:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:561:       vector() = default;
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3213:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.section	.rodata
.LC11:
	.string	"bmi160.csv"
	.align 8
.LC12:
	.string	"Error: Could not open bmi160.csv"
.LC13:
	.string	"fusioned.csv"
	.align 8
.LC14:
	.string	"Error: Could not create fusioned.csv"
	.align 8
.LC15:
	.string	"time,roll,pitch,yaw,qw,qx,qy,qz,linear_accel_x,linear_accel_y,linear_accel_z"
.LC18:
	.string	" \t"
.LC19:
	.string	""
.LC23:
	.string	","
.LC24:
	.string	"Fusion completed! Processed "
.LC25:
	.string	" samples."
.LC26:
	.string	"Output saved to fusioned.csv"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3204:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3204
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1928, %rsp	#,
	.cfi_offset 3, -24
# fusion_bmi160.cpp:42: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp179
	movq	%rax, -24(%rbp)	# tmp179, D.81259
	xorl	%eax, %eax	# tmp179
# fusion_bmi160.cpp:44:   std::ifstream inputFile("bmi160.csv");
	leaq	.LC11(%rip), %rcx	#, tmp180
	leaq	-544(%rbp), %rax	#, tmp181
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp180,
	movq	%rax, %rdi	# tmp181,
.LEHB0:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT	#
.LEHE0:
# fusion_bmi160.cpp:45:   if (!inputFile.is_open()) {
	leaq	-544(%rbp), %rax	#, tmp182
	movq	%rax, %rdi	# tmp182,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv@PLT	#
# fusion_bmi160.cpp:45:   if (!inputFile.is_open()) {
	xorl	$1, %eax	#, retval.14_95
# fusion_bmi160.cpp:45:   if (!inputFile.is_open()) {
	testb	%al, %al	# retval.14_95
	je	.L43	#,
# fusion_bmi160.cpp:46:     std::cerr << "Error: Could not open bmi160.csv" << std::endl;
	leaq	.LC12(%rip), %rdx	#, tmp183
	leaq	_ZSt4cerr(%rip), %rax	#, tmp184
	movq	%rdx, %rsi	# tmp183,
	movq	%rax, %rdi	# tmp184,
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# fusion_bmi160.cpp:46:     std::cerr << "Error: Could not open bmi160.csv" << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp186
	movq	%rdx, %rsi	# tmp185,
	movq	%rax, %rdi	# _2,
	call	_ZNSolsEPFRSoS_E@PLT	#
# fusion_bmi160.cpp:47:     return 1;
	movl	$1, %ebx	#, _72
	jmp	.L44	#
.L43:
# fusion_bmi160.cpp:51:   std::ofstream outputFile("fusioned.csv");
	leaq	.LC13(%rip), %rcx	#, tmp187
	leaq	-1056(%rbp), %rax	#, tmp188
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# tmp187,
	movq	%rax, %rdi	# tmp188,
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT	#
.LEHE1:
# fusion_bmi160.cpp:52:   if (!outputFile.is_open()) {
	leaq	-1056(%rbp), %rax	#, tmp189
	movq	%rax, %rdi	# tmp189,
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE7is_openEv@PLT	#
# fusion_bmi160.cpp:52:   if (!outputFile.is_open()) {
	xorl	$1, %eax	#, retval.15_98
# fusion_bmi160.cpp:52:   if (!outputFile.is_open()) {
	testb	%al, %al	# retval.15_98
	je	.L45	#,
# fusion_bmi160.cpp:53:     std::cerr << "Error: Could not create fusioned.csv" << std::endl;
	leaq	.LC14(%rip), %rdx	#, tmp190
	leaq	_ZSt4cerr(%rip), %rax	#, tmp191
	movq	%rdx, %rsi	# tmp190,
	movq	%rax, %rdi	# tmp191,
.LEHB2:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# fusion_bmi160.cpp:53:     std::cerr << "Error: Could not create fusioned.csv" << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp193
	movq	%rdx, %rsi	# tmp192,
	movq	%rax, %rdi	# _4,
	call	_ZNSolsEPFRSoS_E@PLT	#
# fusion_bmi160.cpp:54:     return 1;
	movl	$1, %ebx	#, _72
	jmp	.L46	#
.L45:
# fusion_bmi160.cpp:59:                 "linear_accel_z"
	leaq	.LC15(%rip), %rdx	#, tmp194
	leaq	-1056(%rbp), %rax	#, tmp195
	movq	%rdx, %rsi	# tmp194,
	movq	%rax, %rdi	# tmp195,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# fusion_bmi160.cpp:60:              << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp197
	movq	%rdx, %rsi	# tmp196,
	movq	%rax, %rdi	# _5,
	call	_ZNSolsEPFRSoS_E@PLT	#
# fusion_bmi160.cpp:64:   FusionAhrsInitialise(&ahrs);
	leaq	-1584(%rbp), %rax	#, tmp198
	movq	%rax, %rdi	# tmp198,
	call	FusionAhrsInitialise@PLT	#
# fusion_bmi160.cpp:67:   FusionAhrsSettings settings = {
	movl	$0, -1840(%rbp)	#, settings.convention
	movss	.LC6(%rip), %xmm0	#, tmp199
	movss	%xmm0, -1836(%rbp)	# tmp199, settings.gain
	movss	.LC16(%rip), %xmm0	#, tmp200
	movss	%xmm0, -1832(%rbp)	# tmp200, settings.gyroscopeRange
	movss	.LC17(%rip), %xmm0	#, tmp201
	movss	%xmm0, -1828(%rbp)	# tmp201, settings.accelerationRejection
	pxor	%xmm0, %xmm0	# tmp202
	movss	%xmm0, -1824(%rbp)	# tmp202, settings.magneticRejection
	movl	$50, -1820(%rbp)	#, settings.recoveryTriggerPeriod
# fusion_bmi160.cpp:76:   FusionAhrsSetSettings(&ahrs, &settings);
	leaq	-1840(%rbp), %rdx	#, tmp203
	leaq	-1584(%rbp), %rax	#, tmp204
	movq	%rdx, %rsi	# tmp203,
	movq	%rax, %rdi	# tmp204,
	call	FusionAhrsSetSettings@PLT	#
# fusion_bmi160.cpp:80:   FusionOffsetInitialise(&offset, (int)(1.0f / SAMPLE_PERIOD));
	leaq	-1712(%rbp), %rax	#, tmp205
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp205,
	call	FusionOffsetInitialise@PLT	#
.LEHE2:
# fusion_bmi160.cpp:83:   std::string line;
	leaq	-1680(%rbp), %rax	#, tmp206
	movq	%rax, %rdi	# tmp206,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev	#
# fusion_bmi160.cpp:84:   bool firstLine = true;
	movb	$1, -1929(%rbp)	#, firstLine
# fusion_bmi160.cpp:85:   int sampleCount = 0;
	movl	$0, -1928(%rbp)	#, sampleCount
# fusion_bmi160.cpp:86:   float prevTime = 0.0f;
	pxor	%xmm0, %xmm0	# tmp207
	movss	%xmm0, -1924(%rbp)	# tmp207, prevTime
# fusion_bmi160.cpp:88:   while (std::getline(inputFile, line)) {
	jmp	.L47	#
.L63:
# fusion_bmi160.cpp:90:     if (firstLine) {
	cmpb	$0, -1929(%rbp)	#, firstLine
	je	.L48	#,
# fusion_bmi160.cpp:91:       firstLine = false;
	movb	$0, -1929(%rbp)	#, firstLine
# fusion_bmi160.cpp:92:       continue;
	jmp	.L47	#
.L48:
# fusion_bmi160.cpp:96:     std::stringstream ss(line);
	movl	$8, %esi	#,
	movl	$16, %edi	#,
	call	_ZStorSt13_Ios_OpenmodeS_	#
	movl	%eax, %edx	#, _6
# fusion_bmi160.cpp:96:     std::stringstream ss(line);
	leaq	-1680(%rbp), %rcx	#, tmp208
	leaq	-1456(%rbp), %rax	#, tmp209
	movq	%rcx, %rsi	# tmp208,
	movq	%rax, %rdi	# tmp209,
.LEHB3:
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode@PLT	#
.LEHE3:
# fusion_bmi160.cpp:97:     std::string token;
	leaq	-1648(%rbp), %rax	#, tmp210
	movq	%rax, %rdi	# tmp210,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev	#
# fusion_bmi160.cpp:98:     std::vector<std::string> tokens;
	leaq	-1808(%rbp), %rax	#, tmp211
	movq	%rax, %rdi	# tmp211,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1Ev	#
# fusion_bmi160.cpp:100:     while (std::getline(ss, token, ',')) {
	jmp	.L50	#
.L52:
# fusion_bmi160.cpp:102:       size_t start = token.find_first_not_of(" \t");
	leaq	.LC18(%rip), %rcx	#, tmp212
	leaq	-1648(%rbp), %rax	#, tmp213
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp212,
	movq	%rax, %rdi	# tmp213,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm	#
	movq	%rax, -1864(%rbp)	# tmp214, start
# fusion_bmi160.cpp:103:       size_t end = token.find_last_not_of(" \t");
	leaq	.LC18(%rip), %rcx	#, tmp215
	leaq	-1648(%rbp), %rax	#, tmp216
	movq	$-1, %rdx	#,
	movq	%rcx, %rsi	# tmp215,
	movq	%rax, %rdi	# tmp216,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm	#
	movq	%rax, -1856(%rbp)	# tmp217, end
# fusion_bmi160.cpp:104:       if (start != std::string::npos && end != std::string::npos) {
	cmpq	$-1, -1864(%rbp)	#, start
	je	.L51	#,
# fusion_bmi160.cpp:104:       if (start != std::string::npos && end != std::string::npos) {
	cmpq	$-1, -1856(%rbp)	#, end
	je	.L51	#,
# fusion_bmi160.cpp:105:         tokens.push_back(token.substr(start, end - start + 1));
	movq	-1856(%rbp), %rax	# end, tmp218
	subq	-1864(%rbp), %rax	# start, _7
# fusion_bmi160.cpp:105:         tokens.push_back(token.substr(start, end - start + 1));
	leaq	1(%rax), %rcx	#, _8
	leaq	-1616(%rbp), %rax	#, tmp219
	movq	-1864(%rbp), %rdx	# start, tmp220
	leaq	-1648(%rbp), %rsi	#, tmp221
	movq	%rax, %rdi	# tmp219,
.LEHB4:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm	#
.LEHE4:
# fusion_bmi160.cpp:105:         tokens.push_back(token.substr(start, end - start + 1));
	leaq	-1616(%rbp), %rdx	#, tmp222
	leaq	-1808(%rbp), %rax	#, tmp223
	movq	%rdx, %rsi	# tmp222,
	movq	%rax, %rdi	# tmp223,
.LEHB5:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_	#
.LEHE5:
# fusion_bmi160.cpp:105:         tokens.push_back(token.substr(start, end - start + 1));
	leaq	-1616(%rbp), %rax	#, tmp224
	movq	%rax, %rdi	# tmp224,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# fusion_bmi160.cpp:105:         tokens.push_back(token.substr(start, end - start + 1));
	jmp	.L50	#
.L51:
	leaq	-1930(%rbp), %rax	#, tmp225
	movq	%rax, -1848(%rbp)	# tmp225, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include/c++/15.2.1/bits/allocator.h:168:       allocator() _GLIBCXX_NOTHROW { }
	nop	
# fusion_bmi160.cpp:107:         tokens.push_back("");
	leaq	-1930(%rbp), %rdx	#, tmp226
	leaq	.LC19(%rip), %rcx	#, tmp227
	leaq	-1616(%rbp), %rax	#, tmp228
	movq	%rcx, %rsi	# tmp227,
	movq	%rax, %rdi	# tmp228,
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_	#
.LEHE6:
# fusion_bmi160.cpp:107:         tokens.push_back("");
	leaq	-1616(%rbp), %rdx	#, tmp229
	leaq	-1808(%rbp), %rax	#, tmp230
	movq	%rdx, %rsi	# tmp229,
	movq	%rax, %rdi	# tmp230,
.LEHB7:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_	#
.LEHE7:
# fusion_bmi160.cpp:107:         tokens.push_back("");
	leaq	-1616(%rbp), %rax	#, tmp231
	movq	%rax, %rdi	# tmp231,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# /usr/include/c++/15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	leaq	-1930(%rbp), %rax	#, tmp232
	movq	%rax, %rdi	# tmp232,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
.L50:
# fusion_bmi160.cpp:100:     while (std::getline(ss, token, ',')) {
	leaq	-1648(%rbp), %rcx	#, tmp233
	leaq	-1456(%rbp), %rax	#, tmp234
	movl	$44, %edx	#,
	movq	%rcx, %rsi	# tmp233,
	movq	%rax, %rdi	# tmp234,
.LEHB8:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT	#
# fusion_bmi160.cpp:100:     while (std::getline(ss, token, ',')) {
	movq	(%rax), %rdx	# _141->_vptr.basic_istream, _9
	subq	$24, %rdx	#, _10
	movq	(%rdx), %rdx	# MEM[(long int *)_10], _11
	addq	%rdx, %rax	# _12, _13
	movq	%rax, %rdi	# _13,
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@PLT	#
# fusion_bmi160.cpp:100:     while (std::getline(ss, token, ',')) {
	testb	%al, %al	# _143
	jne	.L52	#,
# fusion_bmi160.cpp:111:     if (tokens.size() < 7) {
	leaq	-1808(%rbp), %rax	#, tmp235
	movq	%rax, %rdi	# tmp235,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
# fusion_bmi160.cpp:111:     if (tokens.size() < 7) {
	cmpq	$6, %rax	#, _14
	setbe	%al	#, retval.17_146
# fusion_bmi160.cpp:111:     if (tokens.size() < 7) {
	testb	%al, %al	# retval.17_146
	je	.L53	#,
# fusion_bmi160.cpp:112:       continue;
	movl	$0, %ebx	#, finally_tmp.19_74
	jmp	.L54	#
.L53:
# fusion_bmi160.cpp:116:     std::string timeStr = tokens[0];
	leaq	-1808(%rbp), %rax	#, tmp236
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp236,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm	#
	movq	%rax, %rdx	#, _15
# fusion_bmi160.cpp:116:     std::string timeStr = tokens[0];
	leaq	-1616(%rbp), %rax	#, tmp237
	movq	%rdx, %rsi	# _15,
	movq	%rax, %rdi	# tmp237,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_	#
.LEHE8:
# fusion_bmi160.cpp:117:     float raw_gyro_x = std::stof(tokens[1]);
	leaq	-1808(%rbp), %rax	#, tmp238
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp238,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm	#
# fusion_bmi160.cpp:117:     float raw_gyro_x = std::stof(tokens[1]);
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _16,
.LEHB9:
	call	_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm	#
	movd	%xmm0, %eax	#, _151
# fusion_bmi160.cpp:117:     float raw_gyro_x = std::stof(tokens[1]);
	movl	%eax, -1916(%rbp)	# _151, raw_gyro_x
# fusion_bmi160.cpp:118:     float raw_gyro_y = std::stof(tokens[2]);
	leaq	-1808(%rbp), %rax	#, tmp239
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp239,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm	#
# fusion_bmi160.cpp:118:     float raw_gyro_y = std::stof(tokens[2]);
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _17,
	call	_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm	#
	movd	%xmm0, %eax	#, _155
# fusion_bmi160.cpp:118:     float raw_gyro_y = std::stof(tokens[2]);
	movl	%eax, -1912(%rbp)	# _155, raw_gyro_y
# fusion_bmi160.cpp:119:     float raw_gyro_z = std::stof(tokens[3]);
	leaq	-1808(%rbp), %rax	#, tmp240
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp240,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm	#
# fusion_bmi160.cpp:119:     float raw_gyro_z = std::stof(tokens[3]);
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _18,
	call	_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm	#
	movd	%xmm0, %eax	#, _159
# fusion_bmi160.cpp:119:     float raw_gyro_z = std::stof(tokens[3]);
	movl	%eax, -1908(%rbp)	# _159, raw_gyro_z
# fusion_bmi160.cpp:120:     float raw_accel_x = std::stof(tokens[4]);
	leaq	-1808(%rbp), %rax	#, tmp241
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp241,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm	#
# fusion_bmi160.cpp:120:     float raw_accel_x = std::stof(tokens[4]);
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _19,
	call	_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm	#
	movd	%xmm0, %eax	#, _163
# fusion_bmi160.cpp:120:     float raw_accel_x = std::stof(tokens[4]);
	movl	%eax, -1904(%rbp)	# _163, raw_accel_x
# fusion_bmi160.cpp:121:     float raw_accel_y = std::stof(tokens[5]);
	leaq	-1808(%rbp), %rax	#, tmp242
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp242,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm	#
# fusion_bmi160.cpp:121:     float raw_accel_y = std::stof(tokens[5]);
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _20,
	call	_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm	#
	movd	%xmm0, %eax	#, _167
# fusion_bmi160.cpp:121:     float raw_accel_y = std::stof(tokens[5]);
	movl	%eax, -1900(%rbp)	# _167, raw_accel_y
# fusion_bmi160.cpp:122:     float raw_accel_z = std::stof(tokens[6]);
	leaq	-1808(%rbp), %rax	#, tmp243
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp243,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm	#
# fusion_bmi160.cpp:122:     float raw_accel_z = std::stof(tokens[6]);
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _21,
	call	_ZNSt7__cxx114stofERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm	#
	movd	%xmm0, %eax	#, _171
# fusion_bmi160.cpp:122:     float raw_accel_z = std::stof(tokens[6]);
	movl	%eax, -1896(%rbp)	# _171, raw_accel_z
# fusion_bmi160.cpp:126:     float gyro_x = raw_gyro_x / GYRO_SENSITIVITY;
	movss	-1916(%rbp), %xmm0	# raw_gyro_x, tmp245
	movss	.LC20(%rip), %xmm1	#, tmp246
	divss	%xmm1, %xmm0	# tmp246, gyro_x_173
	movss	%xmm0, -1892(%rbp)	# gyro_x_173, gyro_x
# fusion_bmi160.cpp:127:     float gyro_y = raw_gyro_y / GYRO_SENSITIVITY;
	movss	-1912(%rbp), %xmm0	# raw_gyro_y, tmp248
	movss	.LC20(%rip), %xmm1	#, tmp249
	divss	%xmm1, %xmm0	# tmp249, gyro_y_174
	movss	%xmm0, -1888(%rbp)	# gyro_y_174, gyro_y
# fusion_bmi160.cpp:128:     float gyro_z = raw_gyro_z / GYRO_SENSITIVITY;
	movss	-1908(%rbp), %xmm0	# raw_gyro_z, tmp251
	movss	.LC20(%rip), %xmm1	#, tmp252
	divss	%xmm1, %xmm0	# tmp252, gyro_z_175
	movss	%xmm0, -1884(%rbp)	# gyro_z_175, gyro_z
# fusion_bmi160.cpp:131:     float accel_x = raw_accel_x / ACCEL_SENSITIVITY;
	movss	-1904(%rbp), %xmm0	# raw_accel_x, tmp254
	movss	.LC21(%rip), %xmm1	#, tmp255
	divss	%xmm1, %xmm0	# tmp255, accel_x_176
	movss	%xmm0, -1880(%rbp)	# accel_x_176, accel_x
# fusion_bmi160.cpp:132:     float accel_y = raw_accel_y / ACCEL_SENSITIVITY;
	movss	-1900(%rbp), %xmm0	# raw_accel_y, tmp257
	movss	.LC21(%rip), %xmm1	#, tmp258
	divss	%xmm1, %xmm0	# tmp258, accel_y_177
	movss	%xmm0, -1876(%rbp)	# accel_y_177, accel_y
# fusion_bmi160.cpp:133:     float accel_z = raw_accel_z / ACCEL_SENSITIVITY;
	movss	-1896(%rbp), %xmm0	# raw_accel_z, tmp260
	movss	.LC21(%rip), %xmm1	#, tmp261
	divss	%xmm1, %xmm0	# tmp261, accel_z_178
	movss	%xmm0, -1872(%rbp)	# accel_z_178, accel_z
# fusion_bmi160.cpp:136:     float currentTime = parseTimestamp(timeStr);
	leaq	-1616(%rbp), %rax	#, tmp262
	movq	%rax, %rdi	# tmp262,
	call	_Z14parseTimestampRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE	#
	movd	%xmm0, %eax	#, _180
# fusion_bmi160.cpp:136:     float currentTime = parseTimestamp(timeStr);
	movl	%eax, -1868(%rbp)	# _180, currentTime
# fusion_bmi160.cpp:138:         (sampleCount == 0) ? SAMPLE_PERIOD : (currentTime - prevTime);
	cmpl	$0, -1928(%rbp)	#, sampleCount
	je	.L55	#,
# fusion_bmi160.cpp:137:     float deltaTime =
	movss	-1868(%rbp), %xmm0	# currentTime, tmp264
	subss	-1924(%rbp), %xmm0	# prevTime, deltaTime_183
	movss	%xmm0, -1920(%rbp)	# deltaTime_183, deltaTime
	jmp	.L56	#
.L55:
	movss	.LC22(%rip), %xmm0	#, tmp265
	movss	%xmm0, -1920(%rbp)	# tmp265, deltaTime
.L56:
# fusion_bmi160.cpp:139:     if (deltaTime <= 0.0f) {
	pxor	%xmm0, %xmm0	# tmp266
	comiss	-1920(%rbp), %xmm0	# deltaTime, tmp266
	jb	.L57	#,
# fusion_bmi160.cpp:140:       deltaTime = SAMPLE_PERIOD;
	movss	.LC22(%rip), %xmm0	#, tmp267
	movss	%xmm0, -1920(%rbp)	# tmp267, deltaTime
.L57:
# fusion_bmi160.cpp:142:     prevTime = currentTime;
	movss	-1868(%rbp), %xmm0	# currentTime, tmp268
	movss	%xmm0, -1924(%rbp)	# tmp268, prevTime
# fusion_bmi160.cpp:145:     FusionVector gyroscope = {.array = {gyro_x, gyro_y, gyro_z}};
	movss	-1892(%rbp), %xmm0	# gyro_x, tmp269
	movss	%xmm0, -1776(%rbp)	# tmp269, gyroscope.array[0]
	movss	-1888(%rbp), %xmm0	# gyro_y, tmp270
	movss	%xmm0, -1772(%rbp)	# tmp270, gyroscope.array[1]
	movss	-1884(%rbp), %xmm0	# gyro_z, tmp271
	movss	%xmm0, -1768(%rbp)	# tmp271, gyroscope.array[2]
# fusion_bmi160.cpp:146:     FusionVector accelerometer = {.array = {accel_x, accel_y, accel_z}};
	movss	-1880(%rbp), %xmm0	# accel_x, tmp272
	movss	%xmm0, -1764(%rbp)	# tmp272, accelerometer.array[0]
	movss	-1876(%rbp), %xmm0	# accel_y, tmp273
	movss	%xmm0, -1760(%rbp)	# tmp273, accelerometer.array[1]
	movss	-1872(%rbp), %xmm0	# accel_z, tmp274
	movss	%xmm0, -1756(%rbp)	# tmp274, accelerometer.array[2]
# fusion_bmi160.cpp:149:     gyroscope = FusionOffsetUpdate(&offset, gyroscope);
	movq	-1776(%rbp), %rdx	# gyroscope, tmp275
	movd	-1768(%rbp), %xmm1	# gyroscope, tmp276
	leaq	-1712(%rbp), %rax	#, tmp277
	movq	%rdx, %xmm0	# tmp275,
	movq	%rax, %rdi	# tmp277,
	call	FusionOffsetUpdate@PLT	#
	movq	%xmm0, %rax	#, tmp278
	movq	%xmm1, %rdx	#, tmp279
	movq	%rax, -1776(%rbp)	# tmp278, gyroscope
	movl	-1768(%rbp), %eax	# gyroscope, tmp281
	andl	$0, %eax	#, tmp282
	orl	%edx, %eax	# tmp279, tmp283
	movl	%eax, -1768(%rbp)	# tmp283, gyroscope
# fusion_bmi160.cpp:152:     FusionAhrsUpdateNoMagnetometer(&ahrs, gyroscope, accelerometer, deltaTime);
	movss	-1920(%rbp), %xmm2	# deltaTime, tmp284
	movq	-1764(%rbp), %xmm3	# accelerometer, tmp285
	movd	-1756(%rbp), %xmm0	# accelerometer, tmp286
	movq	-1776(%rbp), %rdx	# gyroscope, tmp287
	movd	-1768(%rbp), %xmm1	# gyroscope, tmp288
	leaq	-1584(%rbp), %rax	#, tmp289
	movaps	%xmm2, %xmm4	# tmp284,
	movdqa	%xmm3, %xmm2	# tmp285,
	movdqa	%xmm0, %xmm3	# tmp286,
	movq	%rdx, %xmm0	# tmp287,
	movq	%rax, %rdi	# tmp289,
	call	FusionAhrsUpdateNoMagnetometer@PLT	#
# fusion_bmi160.cpp:155:     FusionQuaternion quaternion = FusionAhrsGetQuaternion(&ahrs);
	leaq	-1584(%rbp), %rax	#, tmp290
	movq	%rax, %rdi	# tmp290,
	call	FusionAhrsGetQuaternion@PLT	#
	movq	%xmm0, %rax	#, tmp291
	movdqa	%xmm1, %xmm0	#, tmp292
	movq	%rax, -1728(%rbp)	# tmp291, quaternion
	movq	%xmm0, -1720(%rbp)	# tmp292, quaternion
# fusion_bmi160.cpp:156:     FusionEuler euler = FusionEulerFrom(quaternion);
	movq	-1728(%rbp), %rax	# quaternion, tmp293
	movq	-1720(%rbp), %xmm1	# quaternion, tmp294
	movq	%rax, %xmm0	# tmp293,
	call	FusionEulerFrom	#
	movq	%xmm0, %rax	#, tmp295
	movq	%xmm1, %rdx	#, tmp296
	movq	%rax, -1752(%rbp)	# tmp295, euler
	movl	-1744(%rbp), %eax	# euler, tmp298
	andl	$0, %eax	#, tmp299
	orl	%edx, %eax	# tmp296, tmp300
	movl	%eax, -1744(%rbp)	# tmp300, euler
# fusion_bmi160.cpp:157:     FusionVector linearAccel = FusionAhrsGetLinearAcceleration(&ahrs);
	leaq	-1584(%rbp), %rax	#, tmp301
	movq	%rax, %rdi	# tmp301,
	call	FusionAhrsGetLinearAcceleration@PLT	#
	movq	%xmm0, %rax	#, tmp302
	movq	%xmm1, %rdx	#, tmp303
	movq	%rax, -1740(%rbp)	# tmp302, linearAccel
	movl	-1732(%rbp), %eax	# linearAccel, tmp305
	andl	$0, %eax	#, tmp306
	orl	%edx, %eax	# tmp303, tmp307
	movl	%eax, -1732(%rbp)	# tmp307, linearAccel
# fusion_bmi160.cpp:160:     outputFile << timeStr << "," << euler.angle.roll << "," << euler.angle.pitch
	leaq	-1616(%rbp), %rdx	#, tmp308
	leaq	-1056(%rbp), %rax	#, tmp309
	movq	%rdx, %rsi	# tmp308,
	movq	%rax, %rdi	# tmp309,
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT	#
	movq	%rax, %rdx	#, _22
# fusion_bmi160.cpp:160:     outputFile << timeStr << "," << euler.angle.roll << "," << euler.angle.pitch
	leaq	.LC23(%rip), %rax	#, tmp310
	movq	%rax, %rsi	# tmp310,
	movq	%rdx, %rdi	# _22,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _23
# fusion_bmi160.cpp:160:     outputFile << timeStr << "," << euler.angle.roll << "," << euler.angle.pitch
	movl	-1752(%rbp), %eax	# euler.angle.roll, _24
	movd	%eax, %xmm0	# _24,
	movq	%rdx, %rdi	# _23,
	call	_ZNSolsEf@PLT	#
	movq	%rax, %rdx	#, _25
# fusion_bmi160.cpp:160:     outputFile << timeStr << "," << euler.angle.roll << "," << euler.angle.pitch
	leaq	.LC23(%rip), %rax	#, tmp311
	movq	%rax, %rsi	# tmp311,
	movq	%rdx, %rdi	# _25,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _26
# fusion_bmi160.cpp:160:     outputFile << timeStr << "," << euler.angle.roll << "," << euler.angle.pitch
	movl	-1748(%rbp), %eax	# euler.angle.pitch, _27
	movd	%eax, %xmm0	# _27,
	movq	%rdx, %rdi	# _26,
	call	_ZNSolsEf@PLT	#
	movq	%rax, %rdx	#, _28
# fusion_bmi160.cpp:161:                << "," << euler.angle.yaw << "," << quaternion.element.w << ","
	leaq	.LC23(%rip), %rax	#, tmp312
	movq	%rax, %rsi	# tmp312,
	movq	%rdx, %rdi	# _28,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _29
# fusion_bmi160.cpp:161:                << "," << euler.angle.yaw << "," << quaternion.element.w << ","
	movl	-1744(%rbp), %eax	# euler.angle.yaw, _30
	movd	%eax, %xmm0	# _30,
	movq	%rdx, %rdi	# _29,
	call	_ZNSolsEf@PLT	#
	movq	%rax, %rdx	#, _31
# fusion_bmi160.cpp:161:                << "," << euler.angle.yaw << "," << quaternion.element.w << ","
	leaq	.LC23(%rip), %rax	#, tmp313
	movq	%rax, %rsi	# tmp313,
	movq	%rdx, %rdi	# _31,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _32
# fusion_bmi160.cpp:161:                << "," << euler.angle.yaw << "," << quaternion.element.w << ","
	movl	-1728(%rbp), %eax	# quaternion.element.w, _33
	movd	%eax, %xmm0	# _33,
	movq	%rdx, %rdi	# _32,
	call	_ZNSolsEf@PLT	#
	movq	%rax, %rdx	#, _34
# fusion_bmi160.cpp:161:                << "," << euler.angle.yaw << "," << quaternion.element.w << ","
	leaq	.LC23(%rip), %rax	#, tmp314
	movq	%rax, %rsi	# tmp314,
	movq	%rdx, %rdi	# _34,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _35
# fusion_bmi160.cpp:162:                << quaternion.element.x << "," << quaternion.element.y << ","
	movl	-1724(%rbp), %eax	# quaternion.element.x, _36
	movd	%eax, %xmm0	# _36,
	movq	%rdx, %rdi	# _35,
	call	_ZNSolsEf@PLT	#
	movq	%rax, %rdx	#, _37
# fusion_bmi160.cpp:162:                << quaternion.element.x << "," << quaternion.element.y << ","
	leaq	.LC23(%rip), %rax	#, tmp315
	movq	%rax, %rsi	# tmp315,
	movq	%rdx, %rdi	# _37,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _38
# fusion_bmi160.cpp:162:                << quaternion.element.x << "," << quaternion.element.y << ","
	movl	-1720(%rbp), %eax	# quaternion.element.y, _39
	movd	%eax, %xmm0	# _39,
	movq	%rdx, %rdi	# _38,
	call	_ZNSolsEf@PLT	#
	movq	%rax, %rdx	#, _40
# fusion_bmi160.cpp:162:                << quaternion.element.x << "," << quaternion.element.y << ","
	leaq	.LC23(%rip), %rax	#, tmp316
	movq	%rax, %rsi	# tmp316,
	movq	%rdx, %rdi	# _40,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _41
# fusion_bmi160.cpp:163:                << quaternion.element.z << "," << linearAccel.axis.x << ","
	movl	-1716(%rbp), %eax	# quaternion.element.z, _42
	movd	%eax, %xmm0	# _42,
	movq	%rdx, %rdi	# _41,
	call	_ZNSolsEf@PLT	#
	movq	%rax, %rdx	#, _43
# fusion_bmi160.cpp:163:                << quaternion.element.z << "," << linearAccel.axis.x << ","
	leaq	.LC23(%rip), %rax	#, tmp317
	movq	%rax, %rsi	# tmp317,
	movq	%rdx, %rdi	# _43,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _44
# fusion_bmi160.cpp:163:                << quaternion.element.z << "," << linearAccel.axis.x << ","
	movl	-1740(%rbp), %eax	# linearAccel.axis.x, _45
	movd	%eax, %xmm0	# _45,
	movq	%rdx, %rdi	# _44,
	call	_ZNSolsEf@PLT	#
	movq	%rax, %rdx	#, _46
# fusion_bmi160.cpp:163:                << quaternion.element.z << "," << linearAccel.axis.x << ","
	leaq	.LC23(%rip), %rax	#, tmp318
	movq	%rax, %rsi	# tmp318,
	movq	%rdx, %rdi	# _46,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _47
# fusion_bmi160.cpp:164:                << linearAccel.axis.y << "," << linearAccel.axis.z << std::endl;
	movl	-1736(%rbp), %eax	# linearAccel.axis.y, _48
	movd	%eax, %xmm0	# _48,
	movq	%rdx, %rdi	# _47,
	call	_ZNSolsEf@PLT	#
	movq	%rax, %rdx	#, _49
# fusion_bmi160.cpp:164:                << linearAccel.axis.y << "," << linearAccel.axis.z << std::endl;
	leaq	.LC23(%rip), %rax	#, tmp319
	movq	%rax, %rsi	# tmp319,
	movq	%rdx, %rdi	# _49,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _50
# fusion_bmi160.cpp:164:                << linearAccel.axis.y << "," << linearAccel.axis.z << std::endl;
	movl	-1732(%rbp), %eax	# linearAccel.axis.z, _51
	movd	%eax, %xmm0	# _51,
	movq	%rdx, %rdi	# _50,
	call	_ZNSolsEf@PLT	#
# fusion_bmi160.cpp:164:                << linearAccel.axis.y << "," << linearAccel.axis.z << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp321
	movq	%rdx, %rsi	# tmp320,
	movq	%rax, %rdi	# _52,
	call	_ZNSolsEPFRSoS_E@PLT	#
.LEHE9:
# fusion_bmi160.cpp:166:     sampleCount++;
	addl	$1, -1928(%rbp)	#, sampleCount
# fusion_bmi160.cpp:167:   }
	leaq	-1616(%rbp), %rax	#, tmp322
	movq	%rax, %rdi	# tmp322,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# fusion_bmi160.cpp:167:   }
	movl	$1, %ebx	#, finally_tmp.19_74
.L54:
# fusion_bmi160.cpp:167:   }
	leaq	-1808(%rbp), %rax	#, tmp323
	movq	%rax, %rdi	# tmp323,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev	#
# fusion_bmi160.cpp:167:   }
	cmpl	$1, %ebx	#, finally_tmp.19_74
	jne	.L59	#,
# fusion_bmi160.cpp:167:   }
	movl	$1, %ebx	#, finally_tmp.20_75
	jmp	.L60	#
.L59:
	movl	$0, %ebx	#, finally_tmp.20_75
.L60:
# fusion_bmi160.cpp:167:   }
	leaq	-1648(%rbp), %rax	#, tmp324
	movq	%rax, %rdi	# tmp324,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# fusion_bmi160.cpp:167:   }
	cmpl	$1, %ebx	#, finally_tmp.20_75
	jne	.L61	#,
# fusion_bmi160.cpp:167:   }
	movl	$1, %ebx	#, finally_tmp.21_76
	jmp	.L62	#
.L61:
	movl	$0, %ebx	#, finally_tmp.21_76
.L62:
# fusion_bmi160.cpp:167:   }
	leaq	-1456(%rbp), %rax	#, tmp325
	movq	%rax, %rdi	# tmp325,
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT	#
# fusion_bmi160.cpp:167:   }
	cmpl	$1, %ebx	#, finally_tmp.21_76
	jne	.L47	#,
# fusion_bmi160.cpp:167:   }
	nop	
.L47:
# fusion_bmi160.cpp:88:   while (std::getline(inputFile, line)) {
	leaq	-1680(%rbp), %rdx	#, tmp326
	leaq	-544(%rbp), %rax	#, tmp327
	movq	%rdx, %rsi	# tmp326,
	movq	%rax, %rdi	# tmp327,
.LEHB10:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT	#
# fusion_bmi160.cpp:88:   while (std::getline(inputFile, line)) {
	movq	(%rax), %rdx	# _117->_vptr.basic_istream, _53
	subq	$24, %rdx	#, _54
	movq	(%rdx), %rdx	# MEM[(long int *)_54], _55
	addq	%rdx, %rax	# _56, _57
	movq	%rax, %rdi	# _57,
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@PLT	#
# fusion_bmi160.cpp:88:   while (std::getline(inputFile, line)) {
	testb	%al, %al	# _119
	jne	.L63	#,
# fusion_bmi160.cpp:169:   inputFile.close();
	leaq	-544(%rbp), %rax	#, tmp328
	movq	%rax, %rdi	# tmp328,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv@PLT	#
# fusion_bmi160.cpp:170:   outputFile.close();
	leaq	-1056(%rbp), %rax	#, tmp329
	movq	%rax, %rdi	# tmp329,
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT	#
# fusion_bmi160.cpp:172:   std::cout << "Fusion completed! Processed " << sampleCount << " samples."
	leaq	.LC24(%rip), %rdx	#, tmp330
	leaq	_ZSt4cout(%rip), %rax	#, tmp331
	movq	%rdx, %rsi	# tmp330,
	movq	%rax, %rdi	# tmp331,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _58
# fusion_bmi160.cpp:172:   std::cout << "Fusion completed! Processed " << sampleCount << " samples."
	movl	-1928(%rbp), %eax	# sampleCount, tmp332
	movl	%eax, %esi	# tmp332,
	movq	%rdx, %rdi	# _58,
	call	_ZNSolsEi@PLT	#
	movq	%rax, %rdx	#, _59
# fusion_bmi160.cpp:172:   std::cout << "Fusion completed! Processed " << sampleCount << " samples."
	leaq	.LC25(%rip), %rax	#, tmp333
	movq	%rax, %rsi	# tmp333,
	movq	%rdx, %rdi	# _59,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# fusion_bmi160.cpp:173:             << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp335
	movq	%rdx, %rsi	# tmp334,
	movq	%rax, %rdi	# _60,
	call	_ZNSolsEPFRSoS_E@PLT	#
# fusion_bmi160.cpp:174:   std::cout << "Output saved to fusioned.csv" << std::endl;
	leaq	.LC26(%rip), %rdx	#, tmp336
	leaq	_ZSt4cout(%rip), %rax	#, tmp337
	movq	%rdx, %rsi	# tmp336,
	movq	%rax, %rdi	# tmp337,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# fusion_bmi160.cpp:174:   std::cout << "Output saved to fusioned.csv" << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp339
	movq	%rdx, %rsi	# tmp338,
	movq	%rax, %rdi	# _61,
	call	_ZNSolsEPFRSoS_E@PLT	#
.LEHE10:
# fusion_bmi160.cpp:176:   return 0;
	movl	$0, %ebx	#, _72
# fusion_bmi160.cpp:177: }
	leaq	-1680(%rbp), %rax	#, tmp340
	movq	%rax, %rdi	# tmp340,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
.L46:
# fusion_bmi160.cpp:177: }
	leaq	-1056(%rbp), %rax	#, tmp341
	movq	%rax, %rdi	# tmp341,
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT	#
.L44:
# fusion_bmi160.cpp:177: }
	leaq	-544(%rbp), %rax	#, tmp342
	movq	%rax, %rdi	# tmp342,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT	#
# fusion_bmi160.cpp:177: }
	movl	%ebx, %eax	# _72, <retval>
	movq	-24(%rbp), %rdx	# D.81259, tmp374
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp374
	je	.L74	#,
	jmp	.L84	#
.L77:
# fusion_bmi160.cpp:105:         tokens.push_back(token.substr(start, end - start + 1));
	movq	%rax, %rbx	#, tmp346
	leaq	-1616(%rbp), %rax	#, tmp344
	movq	%rax, %rdi	# tmp344,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	jmp	.L66	#
.L80:
# fusion_bmi160.cpp:107:         tokens.push_back("");
	movq	%rax, %rbx	#, tmp351
	leaq	-1616(%rbp), %rax	#, tmp349
	movq	%rax, %rdi	# tmp349,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	jmp	.L68	#
.L79:
# /usr/include/c++/15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	movq	%rax, %rbx	#, tmp350
.L68:
	leaq	-1930(%rbp), %rax	#, tmp354
	movq	%rax, %rdi	# tmp354,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
	jmp	.L66	#
.L81:
# fusion_bmi160.cpp:167:   }
	movq	%rax, %rbx	#, tmp356
	leaq	-1616(%rbp), %rax	#, tmp355
	movq	%rax, %rdi	# tmp355,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	jmp	.L66	#
.L78:
	movq	%rax, %rbx	#, tmp345
.L66:
	leaq	-1808(%rbp), %rax	#, tmp358
	movq	%rax, %rdi	# tmp358,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev	#
	leaq	-1648(%rbp), %rax	#, tmp361
	movq	%rax, %rdi	# tmp361,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	leaq	-1456(%rbp), %rax	#, tmp364
	movq	%rax, %rdi	# tmp364,
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT	#
	jmp	.L70	#
.L82:
# fusion_bmi160.cpp:177: }
	movq	%rax, %rbx	#, tmp365
.L70:
	leaq	-1680(%rbp), %rax	#, tmp367
	movq	%rax, %rdi	# tmp367,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	jmp	.L71	#
.L76:
	movq	%rax, %rbx	#, tmp368
.L71:
	leaq	-1056(%rbp), %rax	#, tmp370
	movq	%rax, %rdi	# tmp370,
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT	#
	jmp	.L72	#
.L75:
	movq	%rax, %rbx	#, tmp371
.L72:
	leaq	-544(%rbp), %rax	#, tmp373
	movq	%rax, %rdi	# tmp373,
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT	#
	movq	%rbx, %rax	# tmp371, D.81257
	movq	-24(%rbp), %rdx	# D.81259, tmp375
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp375
	je	.L73	#,
	call	__stack_chk_fail@PLT	#
.L73:
	movq	%rax, %rdi	# D.81257,
.LEHB11:
	call	_Unwind_Resume@PLT	#
.LEHE11:
.L84:
	call	__stack_chk_fail@PLT	#
.L74:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3204:
	.section	.gcc_except_table,"a",@progbits
.LLSDA3204:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3204-.LLSDACSB3204
.LLSDACSB3204:
	.uleb128 .LEHB0-.LFB3204
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3204
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L75-.LFB3204
	.uleb128 0
	.uleb128 .LEHB2-.LFB3204
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L76-.LFB3204
	.uleb128 0
	.uleb128 .LEHB3-.LFB3204
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L82-.LFB3204
	.uleb128 0
	.uleb128 .LEHB4-.LFB3204
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L78-.LFB3204
	.uleb128 0
	.uleb128 .LEHB5-.LFB3204
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L77-.LFB3204
	.uleb128 0
	.uleb128 .LEHB6-.LFB3204
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L79-.LFB3204
	.uleb128 0
	.uleb128 .LEHB7-.LFB3204
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L80-.LFB3204
	.uleb128 0
	.uleb128 .LEHB8-.LFB3204
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L78-.LFB3204
	.uleb128 0
	.uleb128 .LEHB9-.LFB3204
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L81-.LFB3204
	.uleb128 0
	.uleb128 .LEHB10-.LFB3204
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L82-.LFB3204
	.uleb128 0
	.uleb128 .LEHB11-.LFB3204
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE3204:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB3266:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# __p, __p
# /usr/include/c++/15.2.1/bits/char_traits.h:201:     char_traits<_CharT>::
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp103
	movq	%rax, -8(%rbp)	# tmp103, D.81272
	xorl	%eax, %eax	# tmp103
# /usr/include/c++/15.2.1/bits/char_traits.h:204:       std::size_t __i = 0;
	movq	$0, -16(%rbp)	#, __i
# /usr/include/c++/15.2.1/bits/char_traits.h:205:       while (!eq(__p[__i], char_type()))
	jmp	.L86	#
.L87:
# /usr/include/c++/15.2.1/bits/char_traits.h:206:         ++__i;
	addq	$1, -16(%rbp)	#, __i
.L86:
# /usr/include/c++/15.2.1/bits/char_traits.h:205:       while (!eq(__p[__i], char_type()))
	movb	$0, -17(%rbp)	#, D.73264
# /usr/include/c++/15.2.1/bits/char_traits.h:205:       while (!eq(__p[__i], char_type()))
	movq	-40(%rbp), %rdx	# __p, tmp104
	movq	-16(%rbp), %rax	# __i, tmp105
	addq	%rax, %rdx	# tmp105, _1
# /usr/include/c++/15.2.1/bits/char_traits.h:205:       while (!eq(__p[__i], char_type()))
	leaq	-17(%rbp), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	movq	%rdx, %rdi	# _1,
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_	#
# /usr/include/c++/15.2.1/bits/char_traits.h:205:       while (!eq(__p[__i], char_type()))
	xorl	$1, %eax	#, retval.23_10
	testb	%al, %al	# retval.23_10
	jne	.L87	#,
# /usr/include/c++/15.2.1/bits/char_traits.h:207:       return __i;
	movq	-16(%rbp), %rax	# __i, _12
# /usr/include/c++/15.2.1/bits/char_traits.h:208:     }
	movq	-8(%rbp), %rdx	# D.81272, tmp108
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	je	.L89	#,
	call	__stack_chk_fail@PLT	#
.L89:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3266:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_
	.type	_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_, @function
_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_:
.LFB3267:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# __s, __s
	movq	%rsi, -32(%rbp)	# __n, __n
	movq	%rdx, -40(%rbp)	# __a, __a
# /usr/include/c++/15.2.1/bits/char_traits.h:215:       for (std::size_t __i = 0; __i < __n; ++__i)
	movq	$0, -8(%rbp)	#, __i
# /usr/include/c++/15.2.1/bits/char_traits.h:215:       for (std::size_t __i = 0; __i < __n; ++__i)
	jmp	.L91	#
.L94:
# /usr/include/c++/15.2.1/bits/char_traits.h:216:         if (eq(__s[__i], __a))
	movq	-24(%rbp), %rdx	# __s, tmp102
	movq	-8(%rbp), %rax	# __i, tmp103
	addq	%rax, %rdx	# tmp103, _1
# /usr/include/c++/15.2.1/bits/char_traits.h:216:         if (eq(__s[__i], __a))
	movq	-40(%rbp), %rax	# __a, tmp104
	movq	%rax, %rsi	# tmp104,
	movq	%rdx, %rdi	# _1,
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_	#
# /usr/include/c++/15.2.1/bits/char_traits.h:216:         if (eq(__s[__i], __a))
	testb	%al, %al	# retval.27_13
	je	.L92	#,
# /usr/include/c++/15.2.1/bits/char_traits.h:217:           return __s + __i;
	movq	-24(%rbp), %rdx	# __s, tmp105
	movq	-8(%rbp), %rax	# __i, tmp106
	addq	%rdx, %rax	# tmp105, _3
	jmp	.L93	#
.L92:
# /usr/include/c++/15.2.1/bits/char_traits.h:215:       for (std::size_t __i = 0; __i < __n; ++__i)
	addq	$1, -8(%rbp)	#, __i
.L91:
# /usr/include/c++/15.2.1/bits/char_traits.h:215:       for (std::size_t __i = 0; __i < __n; ++__i)
	movq	-8(%rbp), %rax	# __i, tmp107
	cmpq	-32(%rbp), %rax	# __n, tmp107
	jb	.L94	#,
# /usr/include/c++/15.2.1/bits/char_traits.h:218:       return 0;
	movl	$0, %eax	#, _3
.L93:
# /usr/include/c++/15.2.1/bits/char_traits.h:219:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3267:
	.size	_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_, .-_ZN9__gnu_cxx11char_traitsIcE4findEPKcmRS2_
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv:
.LFB3292:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:2874:       { return _M_data(); }
	movq	-8(%rbp), %rax	# this, tmp100
	movq	%rax, %rdi	# tmp100,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:2874:       { return _M_data(); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3292:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	.section	.text._ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, @function
_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB3349:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/ext/string_conversions.h:67: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	__errno_location@PLT	#
# /usr/include/c++/15.2.1/ext/string_conversions.h:67: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	movl	(%rax), %edx	# *_1, _2
	movq	-8(%rbp), %rax	# this, tmp101
	movl	%edx, (%rax)	# _2, this_5(D)->_M_errno
# /usr/include/c++/15.2.1/ext/string_conversions.h:67: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	call	__errno_location@PLT	#
# /usr/include/c++/15.2.1/ext/string_conversions.h:67: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	movl	$0, (%rax)	#, *_3
# /usr/include/c++/15.2.1/ext/string_conversions.h:67: 	_Save_errno() : _M_errno(errno) { errno = 0; }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3349:
	.size	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, @function
_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB3352:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	__errno_location@PLT	#
# /usr/include/c++/15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	movl	(%rax), %eax	# *_1, _2
# /usr/include/c++/15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	testl	%eax, %eax	# _2
	jne	.L100	#,
# /usr/include/c++/15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	call	__errno_location@PLT	#
# /usr/include/c++/15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	movq	-8(%rbp), %rdx	# this, tmp102
	movl	(%rdx), %edx	# this_7(D)->_M_errno, _4
# /usr/include/c++/15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	movl	%edx, (%rax)	# _4, *_3
.L100:
# /usr/include/c++/15.2.1/ext/string_conversions.h:68: 	~_Save_errno() { if (errno == 0) errno = _M_errno; }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3352:
	.size	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEfSt17integral_constantIbLb0EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEfSt17integral_constantIbLb0EE,comdat
	.weak	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEfSt17integral_constantIbLb0EE
	.type	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEfSt17integral_constantIbLb0EE, @function
_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEfSt17integral_constantIbLb0EE:
.LFB3354:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)	# D.73916, D.73916
# /usr/include/c++/15.2.1/ext/string_conversions.h:74: 	  _S_chk(_TRet, std::false_type) { return false; }
	movl	$0, %eax	#, _1
# /usr/include/c++/15.2.1/ext/string_conversions.h:74: 	  _S_chk(_TRet, std::false_type) { return false; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3354:
	.size	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEfSt17integral_constantIbLb0EE, .-_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEfSt17integral_constantIbLb0EE
	.section	.text._ZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3347:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3347
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# __convf, __convf
	movq	%rsi, -64(%rbp)	# __name, __name
	movq	%rdx, -72(%rbp)	# __str, __str
	movq	%rcx, -80(%rbp)	# __idx, __idx
# /usr/include/c++/15.2.1/ext/string_conversions.h:58:     __stoa(_TRet (*__convf) (const _CharT*, _CharT**, _Base...),
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp113
	movq	%rax, -24(%rbp)	# tmp113, D.81274
	xorl	%eax, %eax	# tmp113
# /usr/include/c++/15.2.1/ext/string_conversions.h:70:       } const __save_errno;
	leaq	-44(%rbp), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev	#
# /usr/include/c++/15.2.1/ext/string_conversions.h:84:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	movq	-56(%rbp), %rcx	# __convf, __convf.44_1
	leaq	-32(%rbp), %rdx	#, tmp115
	movq	-72(%rbp), %rax	# __str, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
.LEHB12:
	call	*%rcx	# __convf.44_1
	movd	%xmm0, %eax	#, _20
# /usr/include/c++/15.2.1/ext/string_conversions.h:84:       const _TRet __tmp = __convf(__str, &__endptr, __base...);
	movl	%eax, -40(%rbp)	# _20, __tmp
# /usr/include/c++/15.2.1/ext/string_conversions.h:86:       if (__endptr == __str)
	movq	-32(%rbp), %rax	# __endptr, __endptr.45_2
# /usr/include/c++/15.2.1/ext/string_conversions.h:86:       if (__endptr == __str)
	cmpq	%rax, -72(%rbp)	# __endptr.45_2, __str
	jne	.L104	#,
# /usr/include/c++/15.2.1/ext/string_conversions.h:87: 	std::__throw_invalid_argument(__name);
	movq	-24(%rbp), %rax	# D.81274, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L105	#,
	call	__stack_chk_fail@PLT	#
.L105:
	movq	-64(%rbp), %rax	# __name, tmp117
	movq	%rax, %rdi	# tmp117,
	call	_ZSt24__throw_invalid_argumentPKc@PLT	#
.L104:
# /usr/include/c++/15.2.1/ext/string_conversions.h:88:       else if (errno == ERANGE
	call	__errno_location@PLT	#
# /usr/include/c++/15.2.1/ext/string_conversions.h:88:       else if (errno == ERANGE
	movl	(%rax), %eax	# *_3, _4
# /usr/include/c++/15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	cmpl	$34, %eax	#, _4
	je	.L106	#,
# /usr/include/c++/15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	movl	-40(%rbp), %eax	# __tmp, tmp118
	movd	%eax, %xmm0	# tmp118,
	call	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEfSt17integral_constantIbLb0EE	#
# /usr/include/c++/15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	testb	%al, %al	# _6
	je	.L107	#,
.L106:
# /usr/include/c++/15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	movl	$1, %eax	#, iftmp.47_10
# /usr/include/c++/15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	jmp	.L108	#
.L107:
# /usr/include/c++/15.2.1/ext/string_conversions.h:89: 	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
	movl	$0, %eax	#, iftmp.47_10
.L108:
# /usr/include/c++/15.2.1/ext/string_conversions.h:88:       else if (errno == ERANGE
	testb	%al, %al	# iftmp.47_10
	je	.L109	#,
# /usr/include/c++/15.2.1/ext/string_conversions.h:90: 	std::__throw_out_of_range(__name);
	movq	-24(%rbp), %rax	# D.81274, tmp127
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp127
	je	.L110	#,
	call	__stack_chk_fail@PLT	#
.L110:
	movq	-64(%rbp), %rax	# __name, tmp119
	movq	%rax, %rdi	# tmp119,
	call	_ZSt20__throw_out_of_rangePKc@PLT	#
.LEHE12:
.L109:
# /usr/include/c++/15.2.1/ext/string_conversions.h:92: 	__ret = __tmp;
	movss	-40(%rbp), %xmm0	# __tmp, tmp120
	movss	%xmm0, -36(%rbp)	# tmp120, __ret
# /usr/include/c++/15.2.1/ext/string_conversions.h:94:       if (__idx)
	cmpq	$0, -80(%rbp)	#, __idx
	je	.L111	#,
# /usr/include/c++/15.2.1/ext/string_conversions.h:95: 	*__idx = __endptr - __str;
	movq	-32(%rbp), %rax	# __endptr, __endptr.48_7
	subq	-72(%rbp), %rax	# __str, _8
	movq	%rax, %rdx	# _8, _9
# /usr/include/c++/15.2.1/ext/string_conversions.h:95: 	*__idx = __endptr - __str;
	movq	-80(%rbp), %rax	# __idx, tmp121
	movq	%rdx, (%rax)	# _9, *__idx_28(D)
.L111:
# /usr/include/c++/15.2.1/ext/string_conversions.h:97:       return __ret;
	movss	-36(%rbp), %xmm1	# __ret, _30
	movss	%xmm1, -84(%rbp)	# _30, %sfp
# /usr/include/c++/15.2.1/ext/string_conversions.h:98:     }
	leaq	-44(%rbp), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev	#
# /usr/include/c++/15.2.1/ext/string_conversions.h:97:       return __ret;
	movss	-84(%rbp), %xmm0	# %sfp, <retval>
# /usr/include/c++/15.2.1/ext/string_conversions.h:98:     }
	movq	-24(%rbp), %rax	# D.81274, tmp128
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	je	.L115	#,
	jmp	.L117	#
.L116:
	movq	%rax, %rbx	#, tmp125
	leaq	-44(%rbp), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev	#
	movq	%rbx, %rax	# tmp125, D.81273
	movq	-24(%rbp), %rdx	# D.81274, tmp129
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp129
	je	.L114	#,
	call	__stack_chk_fail@PLT	#
.L114:
	movq	%rax, %rdi	# D.81273,
.LEHB13:
	call	_Unwind_Resume@PLT	#
.LEHE13:
.L117:
	call	__stack_chk_fail@PLT	#
.L115:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3347:
	.section	.gcc_except_table
.LLSDA3347:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3347-.LLSDACSB3347
.LLSDACSB3347:
	.uleb128 .LEHB12-.LFB3347
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L116-.LFB3347
	.uleb128 0
	.uleb128 .LEHB13-.LFB3347
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE3347:
	.section	.text._ZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB3367:
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
# /usr/include/c++/15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	movq	-8(%rbp), %rax	# this, tmp99
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:197:       struct _Alloc_hider : allocator_type // TODO check __is_final
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3367:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev:
.LFB3369:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3369
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:585:       basic_string()
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp101
	movq	%rax, -24(%rbp)	# tmp101, D.81275
	xorl	%eax, %eax	# tmp101
# /usr/include/c++/15.2.1/bits/basic_string.h:590:       : _M_dataplus(_M_local_data())
	movq	-56(%rbp), %rbx	# this, _1
	leaq	-41(%rbp), %rax	#, tmp102
	movq	%rax, -32(%rbp)	# tmp102, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include/c++/15.2.1/bits/allocator.h:168:       allocator() _GLIBCXX_NOTHROW { }
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:590:       : _M_dataplus(_M_local_data())
	movq	-56(%rbp), %rax	# this, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
	movq	%rax, %rcx	#, _2
# /usr/include/c++/15.2.1/bits/basic_string.h:590:       : _M_dataplus(_M_local_data())
	leaq	-41(%rbp), %rax	#, tmp104
	movq	%rax, %rdx	# tmp104,
	movq	%rcx, %rsi	# _2,
	movq	%rbx, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_	#
# /usr/include/c++/15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	leaq	-41(%rbp), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
	movq	-56(%rbp), %rax	# this, tmp106
	movq	%rax, -40(%rbp)	# tmp106, this
# /usr/include/c++/15.2.1/bits/basic_string.h:378:       }
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:593: 	_M_set_length(0);
	movq	-56(%rbp), %rax	# this, tmp107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm	#
# /usr/include/c++/15.2.1/bits/basic_string.h:594:       }
	nop	
	movq	-24(%rbp), %rax	# D.81275, tmp108
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	je	.L120	#,
	call	__stack_chk_fail@PLT	#
.L120:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3369:
	.section	.gcc_except_table
.LLSDA3369:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3369-.LLSDACSB3369
.LLSDACSB3369:
.LLSDACSE3369:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5Ev,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev:
.LFB3372:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3372
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:896:       { _M_dispose(); }
	movq	-8(%rbp), %rax	# this, tmp99
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:896:       { _M_dispose(); }
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev	#
# /usr/include/c++/15.2.1/bits/basic_string.h:896:       { _M_dispose(); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3372:
	.section	.gcc_except_table
.LLSDA3372:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3372-.LLSDACSB3372
.LLSDACSB3372:
.LLSDACSE3372:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED5Ev,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5EOS4_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_:
.LFB3380:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3380
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
# /usr/include/c++/15.2.1/bits/basic_string.h:743:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	-56(%rbp), %rbx	# this, _1
# /usr/include/c++/15.2.1/bits/basic_string.h:743:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	-64(%rbp), %rax	# __str, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -40(%rbp)	# _2, __t
# /usr/include/c++/15.2.1/bits/move.h:139:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-40(%rbp), %r12	# __t, D.80985
# /usr/include/c++/15.2.1/bits/basic_string.h:743:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	-56(%rbp), %rax	# this, tmp113
	movq	%rax, %rdi	# tmp113,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:743:       : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
	movq	%r12, %rdx	# D.80985,
	movq	%rax, %rsi	# _4,
	movq	%rbx, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_	#
# /usr/include/c++/15.2.1/bits/basic_string.h:745: 	if (__str._M_is_local())
	movq	-64(%rbp), %rax	# __str, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:745: 	if (__str._M_is_local())
	testb	%al, %al	# _23
	je	.L124	#,
	movq	-56(%rbp), %rax	# this, tmp115
	movq	%rax, -32(%rbp)	# tmp115, this
# /usr/include/c++/15.2.1/bits/basic_string.h:378:       }
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:749: 			      __str.length() + 1);
	movq	-64(%rbp), %rax	# __str, tmp116
	movq	%rax, %rdi	# tmp116,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:748: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	leaq	1(%rax), %rdx	#, _6
# /usr/include/c++/15.2.1/bits/basic_string.h:748: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	movq	-64(%rbp), %rax	# __str, tmp117
	leaq	16(%rax), %rcx	#, _7
# /usr/include/c++/15.2.1/bits/basic_string.h:748: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	movq	-56(%rbp), %rax	# this, tmp118
	addq	$16, %rax	#, _8
# /usr/include/c++/15.2.1/bits/basic_string.h:748: 	    traits_type::copy(_M_local_buf, __str._M_local_buf,
	movq	%rcx, %rsi	# _7,
	movq	%rax, %rdi	# _8,
	call	_ZNSt11char_traitsIcE4copyEPcPKcm	#
	jmp	.L125	#
.L124:
# /usr/include/c++/15.2.1/bits/basic_string.h:753: 	    _M_data(__str._M_data());
	movq	-64(%rbp), %rax	# __str, tmp119
	movq	%rax, %rdi	# tmp119,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rdx	#, _9
# /usr/include/c++/15.2.1/bits/basic_string.h:753: 	    _M_data(__str._M_data());
	movq	-56(%rbp), %rax	# this, tmp120
	movq	%rdx, %rsi	# _9,
	movq	%rax, %rdi	# tmp120,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	#
# /usr/include/c++/15.2.1/bits/basic_string.h:754: 	    _M_capacity(__str._M_allocated_capacity);
	movq	-64(%rbp), %rax	# __str, tmp121
	movq	16(%rax), %rdx	# __str_18(D)->D.37734._M_allocated_capacity, _10
	movq	-56(%rbp), %rax	# this, tmp122
	movq	%rdx, %rsi	# _10,
	movq	%rax, %rdi	# tmp122,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm	#
.L125:
# /usr/include/c++/15.2.1/bits/basic_string.h:760: 	_M_length(__str.length());
	movq	-64(%rbp), %rax	# __str, tmp123
	movq	%rax, %rdi	# tmp123,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	#
	movq	%rax, %rdx	#, _11
# /usr/include/c++/15.2.1/bits/basic_string.h:760: 	_M_length(__str.length());
	movq	-56(%rbp), %rax	# this, tmp124
	movq	%rdx, %rsi	# _11,
	movq	%rax, %rdi	# tmp124,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm	#
	movq	-64(%rbp), %rax	# __str, tmp125
	movq	%rax, -24(%rbp)	# tmp125, this
# /usr/include/c++/15.2.1/bits/basic_string.h:388: 	return _M_local_data();
	movq	-24(%rbp), %rax	# this, tmp126
	movq	%rax, %rdi	# tmp126,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
	movq	%rax, %rdx	#, D.80990
# /usr/include/c++/15.2.1/bits/basic_string.h:388: 	return _M_local_data();
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:761: 	__str._M_data(__str._M_use_local_data());
	movq	-64(%rbp), %rax	# __str, tmp127
	movq	%rdx, %rsi	# D.80990,
	movq	%rax, %rdi	# tmp127,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	#
# /usr/include/c++/15.2.1/bits/basic_string.h:762: 	__str._M_set_length(0);
	movq	-64(%rbp), %rax	# __str, tmp128
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm	#
# /usr/include/c++/15.2.1/bits/basic_string.h:763:       }
	nop	
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3380:
	.section	.gcc_except_table
.LLSDA3380:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3380-.LLSDACSB3380
.LLSDACSB3380:
.LLSDACSE3380:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5EOS4_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv:
.LFB3558:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:1176:       { return size(); }
	movq	-8(%rbp), %rax	# this, tmp100
	movq	%rax, %rdi	# tmp100,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:1176:       { return size(); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3558:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	.section	.rodata
.LC27:
	.string	"basic_string::substr"
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm:
.LFB3559:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -16(%rbp)	# this, this
	movq	%rdx, -24(%rbp)	# __pos, __pos
	movq	%rcx, -32(%rbp)	# __n, __n
# /usr/include/c++/15.2.1/bits/basic_string.h:3443: 			    _M_check(__pos, "basic_string::substr"), __n); }
	leaq	.LC27(%rip), %rdx	#, tmp99
	movq	-24(%rbp), %rcx	# __pos, tmp100
	movq	-16(%rbp), %rax	# this, tmp101
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc	#
	movq	%rax, %rdi	#, _1
# /usr/include/c++/15.2.1/bits/basic_string.h:3443: 			    _M_check(__pos, "basic_string::substr"), __n); }
	movq	-32(%rbp), %rdx	# __n, tmp102
	movq	-16(%rbp), %rsi	# this, tmp103
	movq	-8(%rbp), %rax	# <retval>, tmp104
	movq	%rdx, %rcx	# tmp102,
	movq	%rdi, %rdx	# _1,
	movq	%rax, %rdi	# tmp104,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_mm	#
# /usr/include/c++/15.2.1/bits/basic_string.h:3443: 			    _M_check(__pos, "basic_string::substr"), __n); }
	movq	-8(%rbp), %rax	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3559:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev:
.LFB3593:
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
# /usr/include/c++/15.2.1/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include/c++/15.2.1/bits/allocator.h:168:       allocator() _GLIBCXX_NOTHROW { }
	nop	
# /usr/include/c++/15.2.1/bits/stl_vector.h:148: 	: _Tp_alloc_type()
	movq	-24(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:149: 	{ }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3593:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB3599:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3599
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-8(%rbp), %rax	# this, tmp105
	movq	16(%rax), %rdx	# this_9(D)->_M_impl.D.71775._M_end_of_storage, _1
# /usr/include/c++/15.2.1/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-8(%rbp), %rax	# this, tmp106
	movq	(%rax), %rax	# this_9(D)->_M_impl.D.71775._M_start, _2
# /usr/include/c++/15.2.1/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rax, %rdx	# _2, _3
	movq	%rdx, %rax	# _3, _3
	sarq	$5, %rax	#, _3
# /usr/include/c++/15.2.1/bits/stl_vector.h:375: 	_M_deallocate(_M_impl._M_start,
	movq	%rax, %rdx	# _4, _5
	movq	-8(%rbp), %rax	# this, tmp108
	movq	(%rax), %rcx	# this_9(D)->_M_impl.D.71775._M_start, _6
	movq	-8(%rbp), %rax	# this, tmp109
	movq	%rcx, %rsi	# _6,
	movq	%rax, %rdi	# tmp109,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:377:       }
	movq	-8(%rbp), %rax	# this, _7
	movq	%rax, %rdi	# _7,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implD1Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3599:
	.section	.gcc_except_table
.LLSDA3599:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3599-.LLSDACSB3599
.LLSDACSB3599:
.LLSDACSE3599:
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:
.LFB3602:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3602
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:803: 		      _M_get_Tp_allocator());
	movq	-40(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	-40(%rbp), %rdx	# this, tmp103
	movq	8(%rdx), %rdx	# this_6(D)->D.72472._M_impl.D.71775._M_finish, _3
# /usr/include/c++/15.2.1/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	-40(%rbp), %rcx	# this, tmp104
	movq	(%rcx), %rcx	# this_6(D)->D.72472._M_impl.D.71775._M_start, _4
	movq	%rcx, -24(%rbp)	# _4, __first
	movq	%rdx, -16(%rbp)	# _3, __last
	movq	%rax, -8(%rbp)	# _2, D.80959
# /usr/include/c++/15.2.1/bits/alloc_traits.h:1045:       std::_Destroy(__first, __last);
	movq	-16(%rbp), %rdx	# __last, tmp105
	movq	-24(%rbp), %rax	# __first, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_	#
# /usr/include/c++/15.2.1/bits/alloc_traits.h:1046:     }
	nop	
# /usr/include/c++/15.2.1/bits/stl_vector.h:805:       }
	movq	-40(%rbp), %rax	# this, _5
	movq	%rax, %rdi	# _5,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3602:
	.section	.gcc_except_table
.LLSDA3602:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3602-.LLSDACSB3602
.LLSDACSB3602:
.LLSDACSE3602:
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED5Ev,comdat
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm:
.LFB3604:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3604
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __s, __s
	movq	%rdx, -24(%rbp)	# __pos, __pos
# /usr/include/c++/15.2.1/bits/basic_string.h:3322: 	return this->find_first_not_of(__s, __pos, traits_type::length(__s));
	movq	-16(%rbp), %rax	# __s, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZNSt11char_traitsIcE6lengthEPKc	#
	movq	%rax, %rcx	#, _1
# /usr/include/c++/15.2.1/bits/basic_string.h:3322: 	return this->find_first_not_of(__s, __pos, traits_type::length(__s));
	movq	-24(%rbp), %rdx	# __pos, tmp102
	movq	-16(%rbp), %rsi	# __s, tmp103
	movq	-8(%rbp), %rax	# this, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm	#
# /usr/include/c++/15.2.1/bits/basic_string.h:3323:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3604:
	.section	.gcc_except_table
.LLSDA3604:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3604-.LLSDACSB3604
.LLSDACSB3604:
.LLSDACSE3604:
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm,comdat
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm:
.LFB3605:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3605
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __s, __s
	movq	%rdx, -24(%rbp)	# __pos, __pos
# /usr/include/c++/15.2.1/bits/basic_string.h:3409: 	return this->find_last_not_of(__s, __pos, traits_type::length(__s));
	movq	-16(%rbp), %rax	# __s, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZNSt11char_traitsIcE6lengthEPKc	#
	movq	%rax, %rcx	#, _1
# /usr/include/c++/15.2.1/bits/basic_string.h:3409: 	return this->find_last_not_of(__s, __pos, traits_type::length(__s));
	movq	-24(%rbp), %rdx	# __pos, tmp102
	movq	-16(%rbp), %rsi	# __s, tmp103
	movq	-8(%rbp), %rax	# this, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm	#
# /usr/include/c++/15.2.1/bits/basic_string.h:3410:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3605:
	.section	.gcc_except_table
.LLSDA3605:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3605-.LLSDACSB3605
.LLSDACSB3605:
.LLSDACSE3605:
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm,comdat
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_:
.LFB3606:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __x, __x
	movq	-32(%rbp), %rax	# __x, tmp99
	movq	%rax, -8(%rbp)	# tmp99, __t
# /usr/include/c++/15.2.1/bits/move.h:139:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-8(%rbp), %rdx	# __t, D.81240
# /usr/include/c++/15.2.1/bits/stl_vector.h:1434:       { emplace_back(std::move(__x)); }
	movq	-24(%rbp), %rax	# this, tmp100
	movq	%rdx, %rsi	# D.81240,
	movq	%rax, %rdi	# tmp100,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:1434:       { emplace_back(std::move(__x)); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3606:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_
	.section	.rodata
	.align 8
.LC28:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB3608:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3608
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# __s, __s
	movq	%rdx, -56(%rbp)	# __a, __a
# /usr/include/c++/15.2.1/bits/basic_string.h:707:       : _M_dataplus(_M_local_data(), __a)
	movq	-40(%rbp), %rbx	# this, _1
	movq	-40(%rbp), %rax	# this, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
	movq	%rax, %rcx	#, _2
# /usr/include/c++/15.2.1/bits/basic_string.h:707:       : _M_dataplus(_M_local_data(), __a)
	movq	-56(%rbp), %rax	# __a, tmp105
	movq	%rax, %rdx	# tmp105,
	movq	%rcx, %rsi	# _2,
	movq	%rbx, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_	#
# /usr/include/c++/15.2.1/bits/basic_string.h:710: 	if (__s == 0)
	cmpq	$0, -48(%rbp)	#, __s
	jne	.L141	#,
# /usr/include/c++/15.2.1/bits/basic_string.h:711: 	  std::__throw_logic_error(__N("basic_string: "
	leaq	.LC28(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
.LEHB14:
	call	_ZSt19__throw_logic_errorPKc@PLT	#
.L141:
# /usr/include/c++/15.2.1/bits/basic_string.h:713: 	const _CharT* __end = __s + traits_type::length(__s);
	movq	-48(%rbp), %rax	# __s, tmp107
	movq	%rax, %rdi	# tmp107,
	call	_ZNSt11char_traitsIcE6lengthEPKc	#
# /usr/include/c++/15.2.1/bits/basic_string.h:713: 	const _CharT* __end = __s + traits_type::length(__s);
	movq	-48(%rbp), %rdx	# __s, tmp111
	addq	%rdx, %rax	# tmp111, __end_15
	movq	%rax, -24(%rbp)	# __end_15, __end
# /usr/include/c++/15.2.1/bits/basic_string.h:714: 	_M_construct(__s, __end, forward_iterator_tag());
	movq	-24(%rbp), %rdx	# __end, tmp112
	movq	-48(%rbp), %rcx	# __s, tmp113
	movq	-40(%rbp), %rax	# this, tmp114
	movq	%rcx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag	#
.LEHE14:
# /usr/include/c++/15.2.1/bits/basic_string.h:715:       }
	jmp	.L144	#
.L143:
	movq	%rax, %rbx	#, tmp115
	movq	-40(%rbp), %rax	# this, _4
	movq	%rax, %rdi	# _4,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev	#
	movq	%rbx, %rax	# tmp115, D.81278
	movq	%rax, %rdi	# D.81278,
.LEHB15:
	call	_Unwind_Resume@PLT	#
.LEHE15:
.L144:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3608:
	.section	.gcc_except_table
.LLSDA3608:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3608-.LLSDACSB3608
.LLSDACSB3608:
	.uleb128 .LEHB14-.LFB3608
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L143-.LFB3608
	.uleb128 0
	.uleb128 .LEHB15-.LFB3608
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE3608:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv:
.LFB3610:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	-24(%rbp), %rax	# this, tmp103
	movq	8(%rax), %rdx	# this_5(D)->D.72472._M_impl.D.71775._M_finish, _1
# /usr/include/c++/15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	-24(%rbp), %rax	# this, tmp104
	movq	(%rax), %rax	# this_5(D)->D.72472._M_impl.D.71775._M_start, _2
# /usr/include/c++/15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	subq	%rax, %rdx	# _2, _3
# /usr/include/c++/15.2.1/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movq	%rdx, %rax	# _3, _3
	sarq	$5, %rax	#, _3
	movq	%rax, -8(%rbp)	# __dif_6, __dif
# /usr/include/c++/15.2.1/bits/stl_vector.h:1120: 	if (__dif < 0)
	cmpq	$0, -8(%rbp)	#, __dif
# /usr/include/c++/15.2.1/bits/stl_vector.h:1122: 	return size_type(__dif);
	movq	-8(%rbp), %rax	# __dif, _7
# /usr/include/c++/15.2.1/bits/stl_vector.h:1123:       }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3610:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv
	.section	.rodata
.LC29:
	.string	"__n < this->size()"
	.align 8
.LC30:
	.ascii	"std::vector"
	.string	"<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::operator[](size_type) [with _Tp = std::__cxx11::basic_string<char>; _Alloc = std::allocator<std::__cxx11::basic_string<char> >; reference = std::__cxx11::basic_string<char>&; size_type = long unsigned int]"
	.align 8
.LC31:
	.string	"/usr/include/c++/15.2.1/bits/stl_vector.h"
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm:
.LFB3611:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __n, __n
# /usr/include/c++/15.2.1/bits/stl_vector.h:1263: 	__glibcxx_requires_subscript(__n);
	movq	-8(%rbp), %rax	# this, tmp107
	movq	%rax, %rdi	# tmp107,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:1263: 	__glibcxx_requires_subscript(__n);
	cmpq	%rax, -16(%rbp)	# _1, __n
	setnb	%al	#, _2
	movzbl	%al, %eax	# _2, _3
# /usr/include/c++/15.2.1/bits/stl_vector.h:1263: 	__glibcxx_requires_subscript(__n);
	testq	%rax, %rax	# _4
	setne	%al	#, retval.43_11
	testb	%al, %al	# retval.43_11
	je	.L149	#,
# /usr/include/c++/15.2.1/bits/stl_vector.h:1263: 	__glibcxx_requires_subscript(__n);
	leaq	.LC29(%rip), %rcx	#, tmp108
	leaq	.LC30(%rip), %rdx	#, tmp109
	leaq	.LC31(%rip), %rax	#, tmp110
	movl	$1263, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_@PLT	#
.L149:
# /usr/include/c++/15.2.1/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	movq	-8(%rbp), %rax	# this, tmp111
	movq	(%rax), %rax	# this_8(D)->D.72472._M_impl.D.71775._M_start, _5
# /usr/include/c++/15.2.1/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	movq	-16(%rbp), %rdx	# __n, tmp112
	salq	$5, %rdx	#, _6
# /usr/include/c++/15.2.1/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	addq	%rdx, %rax	# _6, _12
# /usr/include/c++/15.2.1/bits/stl_vector.h:1265:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3611:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5ERKS4_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_:
.LFB3613:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3613
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
# /usr/include/c++/15.2.1/bits/basic_string.h:613:       basic_string(const basic_string& __str)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	movq	%rax, -24(%rbp)	# tmp106, D.81284
	xorl	%eax, %eax	# tmp106
# /usr/include/c++/15.2.1/bits/basic_string.h:614:       : _M_dataplus(_M_local_data(),
	movq	-88(%rbp), %rbx	# this, _1
# /usr/include/c++/15.2.1/bits/basic_string.h:615: 		    _Alloc_traits::_S_select_on_copy(__str._M_get_allocator()))
	movq	-96(%rbp), %rax	# __str, tmp107
	movq	%rax, %rdi	# tmp107,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -72(%rbp)	# _2, __a
	leaq	-73(%rbp), %rax	#, retvalptr.49
	movq	-72(%rbp), %rdx	# __a, tmp108
	movq	%rdx, -64(%rbp)	# tmp108, __rhs
	movq	%rax, -56(%rbp)	# retvalptr.49, this
	movq	-64(%rbp), %rax	# __rhs, tmp109
	movq	%rax, -48(%rbp)	# tmp109, __a
	movq	-56(%rbp), %rax	# this, tmp110
	movq	%rax, -40(%rbp)	# tmp110, this
	movq	-48(%rbp), %rax	# __a, tmp111
	movq	%rax, -32(%rbp)	# tmp111, D.81047
# /usr/include/c++/15.2.1/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include/c++/15.2.1/bits/allocator.h:173:       : __allocator_base<_Tp>(__a) { }
	nop	
# /usr/include/c++/15.2.1/bits/alloc_traits.h:726:       { return __rhs; }
	nop	
# /usr/include/c++/15.2.1/ext/alloc_traits.h:100:     { return _Base_type::select_on_container_copy_construction(__a); }
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:614:       : _M_dataplus(_M_local_data(),
	movq	-88(%rbp), %rax	# this, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
	movq	%rax, %rcx	#, _3
# /usr/include/c++/15.2.1/bits/basic_string.h:614:       : _M_dataplus(_M_local_data(),
	leaq	-73(%rbp), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	movq	%rcx, %rsi	# _3,
	movq	%rbx, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_	#
# /usr/include/c++/15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	leaq	-73(%rbp), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:617: 	_M_construct<true>(__str._M_data(), __str.length());
	movq	-96(%rbp), %rax	# __str, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv	#
	movq	%rax, %rbx	#, _4
# /usr/include/c++/15.2.1/bits/basic_string.h:617: 	_M_construct<true>(__str._M_data(), __str.length());
	movq	-96(%rbp), %rax	# __str, tmp116
	movq	%rax, %rdi	# tmp116,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rcx	#, _5
# /usr/include/c++/15.2.1/bits/basic_string.h:617: 	_M_construct<true>(__str._M_data(), __str.length());
	movq	-88(%rbp), %rax	# this, tmp117
	movq	%rbx, %rdx	# _4,
	movq	%rcx, %rsi	# _5,
	movq	%rax, %rdi	# tmp117,
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm	#
.LEHE16:
# /usr/include/c++/15.2.1/bits/basic_string.h:618:       }
	jmp	.L158	#
.L157:
	movq	%rax, %rbx	#, tmp118
	movq	-88(%rbp), %rax	# this, _6
	movq	%rax, %rdi	# _6,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev	#
	movq	%rbx, %rax	# tmp118, D.81283
	movq	-24(%rbp), %rdx	# D.81284, tmp119
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	je	.L155	#,
	call	__stack_chk_fail@PLT	#
.L155:
	movq	%rax, %rdi	# D.81283,
.LEHB17:
	call	_Unwind_Resume@PLT	#
.LEHE17:
.L158:
	movq	-24(%rbp), %rax	# D.81284, tmp120
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	je	.L156	#,
	call	__stack_chk_fail@PLT	#
.L156:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3613:
	.section	.gcc_except_table
.LLSDA3613:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3613-.LLSDACSB3613
.LLSDACSB3613:
	.uleb128 .LEHB16-.LFB3613
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L157-.LFB3613
	.uleb128 0
	.uleb128 .LEHB17-.LFB3613
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE3613:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5ERKS4_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB3669:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __c1, __c1
	movq	%rsi, -16(%rbp)	# __c2, __c2
# /usr/include/c++/15.2.1/bits/char_traits.h:139:       { return __c1 == __c2; }
	movq	-8(%rbp), %rax	# __c1, tmp102
	movzbl	(%rax), %edx	# *__c1_4(D), _1
	movq	-16(%rbp), %rax	# __c2, tmp103
	movzbl	(%rax), %eax	# *__c2_5(D), _2
# /usr/include/c++/15.2.1/bits/char_traits.h:139:       { return __c1 == __c2; }
	cmpb	%al, %dl	# _2, _1
	sete	%al	#, _6
# /usr/include/c++/15.2.1/bits/char_traits.h:139:       { return __c1 == __c2; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3669:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv:
.LFB3672:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	movq	-8(%rbp), %rax	# this, tmp100
	movq	(%rax), %rax	# this_2(D)->_M_dataplus._M_p, _3
# /usr/include/c++/15.2.1/bits/basic_string.h:239:       { return _M_dataplus._M_p; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3672:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
.LFB3673:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	movq	-8(%rbp), %rax	# this, tmp101
	addq	$16, %rax	#, _1
# /usr/include/c++/15.2.1/bits/basic_string.h:246: 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
	movq	%rax, %rdi	# _1,
	call	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc	#
# /usr/include/c++/15.2.1/bits/basic_string.h:250:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3673:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC5EPcOS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_:
.LFB3675:
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
# /usr/include/c++/15.2.1/bits/move.h:139:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-8(%rbp), %rax	# __t, D.80884
	movq	-56(%rbp), %rdx	# this, tmp100
	movq	%rdx, -40(%rbp)	# tmp100, this
	movq	%rax, -32(%rbp)	# D.80884, __a
	movq	-40(%rbp), %rax	# this, tmp101
	movq	%rax, -24(%rbp)	# tmp101, this
	movq	-32(%rbp), %rax	# __a, tmp102
	movq	%rax, -16(%rbp)	# tmp102, D.80882
# /usr/include/c++/15.2.1/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include/c++/15.2.1/bits/allocator.h:173:       : __allocator_base<_Tp>(__a) { }
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	-56(%rbp), %rax	# this, tmp103
	movq	-64(%rbp), %rdx	# __dat, tmp104
	movq	%rdx, (%rax)	# tmp104, this_3(D)->_M_p
# /usr/include/c++/15.2.1/bits/basic_string.h:209: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3675:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm:
.LFB3678:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __n, __n
# /usr/include/c++/15.2.1/bits/basic_string.h:270:       _M_set_length(size_type __n)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp100
	movq	%rax, -8(%rbp)	# tmp100, D.81285
	xorl	%eax, %eax	# tmp100
# /usr/include/c++/15.2.1/bits/basic_string.h:272: 	_M_length(__n);
	movq	-32(%rbp), %rdx	# __n, tmp101
	movq	-24(%rbp), %rax	# this, tmp102
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm	#
# /usr/include/c++/15.2.1/bits/basic_string.h:273: 	traits_type::assign(_M_data()[__n], _CharT());
	movb	$0, -9(%rbp)	#, D.76898
# /usr/include/c++/15.2.1/bits/basic_string.h:273: 	traits_type::assign(_M_data()[__n], _CharT());
	movq	-24(%rbp), %rax	# this, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:273: 	traits_type::assign(_M_data()[__n], _CharT());
	movq	-32(%rbp), %rdx	# __n, tmp104
	addq	%rax, %rdx	# _1, _2
# /usr/include/c++/15.2.1/bits/basic_string.h:273: 	traits_type::assign(_M_data()[__n], _CharT());
	leaq	-9(%rbp), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	movq	%rdx, %rdi	# _2,
	call	_ZNSt11char_traitsIcE6assignERcRKc	#
# /usr/include/c++/15.2.1/bits/basic_string.h:274:       }
	nop	
	movq	-8(%rbp), %rax	# D.81285, tmp106
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	je	.L168	#,
	call	__stack_chk_fail@PLT	#
.L168:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3678:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB3679:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:298: 	if (!_M_is_local())
	movq	-8(%rbp), %rax	# this, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:298: 	if (!_M_is_local())
	xorl	$1, %eax	#, retval.12_8
# /usr/include/c++/15.2.1/bits/basic_string.h:298: 	if (!_M_is_local())
	testb	%al, %al	# retval.12_8
	je	.L171	#,
# /usr/include/c++/15.2.1/bits/basic_string.h:299: 	  _M_destroy(_M_allocated_capacity);
	movq	-8(%rbp), %rax	# this, tmp102
	movq	16(%rax), %rdx	# this_5(D)->D.37734._M_allocated_capacity, _2
	movq	-8(%rbp), %rax	# this, tmp103
	movq	%rdx, %rsi	# _2,
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm	#
.L171:
# /usr/include/c++/15.2.1/bits/basic_string.h:300:       }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3679:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
.LFB3682:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:360:       { return _M_dataplus; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include/c++/15.2.1/bits/basic_string.h:360:       { return _M_dataplus; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3682:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv:
.LFB3684:
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
# /usr/include/c++/15.2.1/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	movq	-24(%rbp), %rax	# this, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rbx	#, _1
# /usr/include/c++/15.2.1/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	movq	-24(%rbp), %rax	# this, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	cmpq	%rax, %rbx	# _2, _1
	sete	%al	#, retval.13_9
# /usr/include/c++/15.2.1/bits/basic_string.h:280: 	if (_M_data() == _M_local_data())
	testb	%al, %al	# retval.13_9
	je	.L175	#,
# /usr/include/c++/15.2.1/bits/basic_string.h:282: 	    if (_M_string_length > _S_local_capacity)
	movq	-24(%rbp), %rax	# this, tmp106
	movq	8(%rax), %rax	# this_6(D)->_M_string_length, _3
# /usr/include/c++/15.2.1/bits/basic_string.h:282: 	    if (_M_string_length > _S_local_capacity)
	cmpq	$15, %rax	#, _3
# /usr/include/c++/15.2.1/bits/basic_string.h:284: 	    return true;
	movl	$1, %eax	#, _4
	jmp	.L177	#
.L175:
# /usr/include/c++/15.2.1/bits/basic_string.h:286: 	return false;
	movl	$0, %eax	#, _4
.L177:
# /usr/include/c++/15.2.1/bits/basic_string.h:287:       }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3684:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc:
.LFB3685:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __p, __p
# /usr/include/c++/15.2.1/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	movq	-8(%rbp), %rax	# this, tmp98
	movq	-16(%rbp), %rdx	# __p, tmp99
	movq	%rdx, (%rax)	# tmp99, this_2(D)->_M_dataplus._M_p
# /usr/include/c++/15.2.1/bits/basic_string.h:229:       { _M_dataplus._M_p = __p; }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3685:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm:
.LFB3686:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __capacity, __capacity
# /usr/include/c++/15.2.1/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	movq	-8(%rbp), %rax	# this, tmp98
	movq	-16(%rbp), %rdx	# __capacity, tmp99
	movq	%rdx, 16(%rax)	# tmp99, this_2(D)->D.37734._M_allocated_capacity
# /usr/include/c++/15.2.1/bits/basic_string.h:266:       { _M_allocated_capacity = __capacity; }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3686:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm:
.LFB3687:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __length, __length
# /usr/include/c++/15.2.1/bits/basic_string.h:234:       { _M_string_length = __length; }
	movq	-8(%rbp), %rax	# this, tmp98
	movq	-16(%rbp), %rdx	# __length, tmp99
	movq	%rdx, 8(%rax)	# tmp99, this_2(D)->_M_string_length
# /usr/include/c++/15.2.1/bits/basic_string.h:234:       { _M_string_length = __length; }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3687:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv:
.LFB3718:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:1165: 	size_type __sz = _M_string_length;
	movq	-24(%rbp), %rax	# this, tmp102
	movq	8(%rax), %rax	# this_3(D)->_M_string_length, tmp103
	movq	%rax, -8(%rbp)	# tmp103, __sz
# /usr/include/c++/15.2.1/bits/basic_string.h:1166: 	if (__sz > max_size ())
	movq	-24(%rbp), %rax	# this, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:1166: 	if (__sz > max_size ())
	cmpq	-8(%rbp), %rax	# __sz, _1
	setb	%al	#, retval.3_6
# /usr/include/c++/15.2.1/bits/basic_string.h:1166: 	if (__sz > max_size ())
	testb	%al, %al	# retval.3_6
# /usr/include/c++/15.2.1/bits/basic_string.h:1168: 	return __sz;
	movq	-8(%rbp), %rax	# __sz, _7
# /usr/include/c++/15.2.1/bits/basic_string.h:1169:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3718:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIcED2Ev
	.type	_ZNSt15__new_allocatorIcED2Ev, @function
_ZNSt15__new_allocatorIcED2Ev:
.LFB3723:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:104:       ~__new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3723:
	.size	_ZNSt15__new_allocatorIcED2Ev, .-_ZNSt15__new_allocatorIcED2Ev
	.weak	_ZNSt15__new_allocatorIcED1Ev
	.set	_ZNSt15__new_allocatorIcED1Ev,_ZNSt15__new_allocatorIcED2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC5EPcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_:
.LFB3726:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# __dat, __dat
	movq	%rdx, -56(%rbp)	# __a, __a
	movq	-40(%rbp), %rax	# this, tmp98
	movq	%rax, -32(%rbp)	# tmp98, this
	movq	-56(%rbp), %rax	# __a, tmp99
	movq	%rax, -24(%rbp)	# tmp99, __a
	movq	-32(%rbp), %rax	# this, tmp100
	movq	%rax, -16(%rbp)	# tmp100, this
	movq	-24(%rbp), %rax	# __a, tmp101
	movq	%rax, -8(%rbp)	# tmp101, D.80890
# /usr/include/c++/15.2.1/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include/c++/15.2.1/bits/allocator.h:173:       : __allocator_base<_Tp>(__a) { }
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:205: 	: allocator_type(__a), _M_p(__dat) { }
	movq	-40(%rbp), %rax	# this, tmp102
	movq	-48(%rbp), %rdx	# __dat, tmp103
	movq	%rdx, (%rax)	# tmp103, this_2(D)->_M_p
# /usr/include/c++/15.2.1/bits/basic_string.h:205: 	: allocator_type(__a), _M_p(__dat) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3726:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB3730:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __s, __s
# /usr/include/c++/15.2.1/bits/basic_string.tcc:245: 	  explicit _Guard(basic_string* __s) : _M_guarded(__s) { }
	movq	-8(%rbp), %rax	# this, tmp98
	movq	-16(%rbp), %rdx	# __s, tmp99
	movq	%rdx, (%rax)	# tmp99, this_2(D)->_M_guarded
# /usr/include/c++/15.2.1/bits/basic_string.tcc:245: 	  explicit _Guard(basic_string* __s) : _M_guarded(__s) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3730:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB3733:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3733
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.tcc:248: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	movq	-8(%rbp), %rax	# this, tmp100
	movq	(%rax), %rax	# this_5(D)->_M_guarded, _1
# /usr/include/c++/15.2.1/bits/basic_string.tcc:248: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	testq	%rax, %rax	# _1
	je	.L189	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:248: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	movq	-8(%rbp), %rax	# this, tmp101
	movq	(%rax), %rax	# this_5(D)->_M_guarded, _2
# /usr/include/c++/15.2.1/bits/basic_string.tcc:248: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	movq	%rax, %rdi	# _2,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv	#
.L189:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:248: 	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3733:
	.section	.gcc_except_table
.LLSDA3733:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3733-.LLSDACSB3733
.LLSDACSB3733:
.LLSDACSE3733:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB3728:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# this, this
	movq	%rsi, -80(%rbp)	# __beg, __beg
	movq	%rdx, -88(%rbp)	# __end, __end
# /usr/include/c++/15.2.1/bits/basic_string.tcc:227:       basic_string<_CharT, _Traits, _Alloc>::
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	movq	%rax, -8(%rbp)	# tmp109, D.81287
	xorl	%eax, %eax	# tmp109
	movq	-80(%rbp), %rax	# __beg, tmp110
	movq	%rax, -48(%rbp)	# tmp110, MEM[(const char * *)_9]
	movq	-88(%rbp), %rax	# __end, tmp111
	movq	%rax, -40(%rbp)	# tmp111, __last
# /usr/include/c++/15.2.1/bits/stl_iterator_base_types.h:242:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/include/c++/15.2.1/bits/stl_iterator_base_funcs.h:153:       return std::__distance(__first, __last,
	movq	-48(%rbp), %rax	# MEM[(const char * *)_9], __first.8_32
	movq	%rax, -32(%rbp)	# __first.8_32, __first
	movq	-40(%rbp), %rax	# __last, tmp112
	movq	%rax, -24(%rbp)	# tmp112, __last
# /usr/include/c++/15.2.1/bits/stl_iterator_base_funcs.h:108:       return __last - __first;
	movq	-24(%rbp), %rax	# __last, tmp113
	subq	-32(%rbp), %rax	# __first, D.81029
# /usr/include/c++/15.2.1/bits/stl_iterator_base_funcs.h:154: 			     std::__iterator_category(__first));
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.tcc:231: 	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
	movq	%rax, -56(%rbp)	# _2, __dnew
# /usr/include/c++/15.2.1/bits/basic_string.tcc:233: 	if (__dnew > size_type(_S_local_capacity))
	movq	-56(%rbp), %rax	# __dnew, __dnew.5_3
# /usr/include/c++/15.2.1/bits/basic_string.tcc:233: 	if (__dnew > size_type(_S_local_capacity))
	cmpq	$15, %rax	#, __dnew.5_3
	jbe	.L194	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:235: 	    _M_data(_M_create(__dnew, size_type(0)));
	leaq	-56(%rbp), %rcx	#, tmp114
	movq	-72(%rbp), %rax	# this, tmp115
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm	#
	movq	%rax, %rdx	#, _4
# /usr/include/c++/15.2.1/bits/basic_string.tcc:235: 	    _M_data(_M_create(__dnew, size_type(0)));
	movq	-72(%rbp), %rax	# this, tmp116
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# tmp116,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:236: 	    _M_capacity(__dnew);
	movq	-56(%rbp), %rdx	# __dnew, __dnew.6_5
	movq	-72(%rbp), %rax	# this, tmp117
	movq	%rdx, %rsi	# __dnew.6_5,
	movq	%rax, %rdi	# tmp117,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm	#
	jmp	.L195	#
.L194:
	movq	-72(%rbp), %rax	# this, tmp118
	movq	%rax, -16(%rbp)	# tmp118, this
# /usr/include/c++/15.2.1/bits/basic_string.h:378:       }
	nop	
.L195:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:251: 	} __guard(this);
	movq	-72(%rbp), %rdx	# this, tmp119
	leaq	-48(%rbp), %rax	#, tmp120
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:253: 	this->_S_copy_chars(_M_data(), __beg, __end);
	movq	-72(%rbp), %rax	# this, tmp121
	movq	%rax, %rdi	# tmp121,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rcx	#, _6
# /usr/include/c++/15.2.1/bits/basic_string.tcc:253: 	this->_S_copy_chars(_M_data(), __beg, __end);
	movq	-88(%rbp), %rdx	# __end, tmp122
	movq	-80(%rbp), %rax	# __beg, tmp123
	movq	%rax, %rsi	# tmp123,
	movq	%rcx, %rdi	# _6,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:255: 	__guard._M_guarded = 0;
	movq	$0, -48(%rbp)	#, MEM[(struct _Guard *)_9]._M_guarded
# /usr/include/c++/15.2.1/bits/basic_string.tcc:257: 	_M_set_length(__dnew);
	movq	-56(%rbp), %rdx	# __dnew, __dnew.7_7
	movq	-72(%rbp), %rax	# this, tmp124
	movq	%rdx, %rsi	# __dnew.7_7,
	movq	%rax, %rdi	# tmp124,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:258:       }
	leaq	-48(%rbp), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev	#
	movq	-8(%rbp), %rax	# D.81287, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L196	#,
	call	__stack_chk_fail@PLT	#
.L196:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3728:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.rodata
	.align 8
.LC32:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc:
.LFB3783:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __pos, __pos
	movq	%rdx, -24(%rbp)	# __s, __s
# /usr/include/c++/15.2.1/bits/basic_string.h:411: 	if (__pos > this->size())
	movq	-8(%rbp), %rax	# this, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:411: 	if (__pos > this->size())
	cmpq	-16(%rbp), %rax	# __pos, _1
	setb	%al	#, retval.4_7
# /usr/include/c++/15.2.1/bits/basic_string.h:411: 	if (__pos > this->size())
	testb	%al, %al	# retval.4_7
	je	.L198	#,
# /usr/include/c++/15.2.1/bits/basic_string.h:412: 	  __throw_out_of_range_fmt(__N("%s: __pos (which is %zu) > "
	movq	-8(%rbp), %rax	# this, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	#
	movq	%rax, %rcx	#, _2
# /usr/include/c++/15.2.1/bits/basic_string.h:412: 	  __throw_out_of_range_fmt(__N("%s: __pos (which is %zu) > "
	movq	-16(%rbp), %rdx	# __pos, tmp105
	movq	-24(%rbp), %rax	# __s, tmp106
	leaq	.LC32(%rip), %rdi	#, tmp107
	movq	%rax, %rsi	# tmp106,
	movl	$0, %eax	#,
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT	#
.L198:
# /usr/include/c++/15.2.1/bits/basic_string.h:415: 	return __pos;
	movq	-16(%rbp), %rax	# __pos, _8
# /usr/include/c++/15.2.1/bits/basic_string.h:416:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3783:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc
	.section	.rodata
.LC33:
	.string	"basic_string::basic_string"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5ERKS4_mm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm:
.LFB3785:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3785
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
	movq	%rdx, -72(%rbp)	# __pos, __pos
	movq	%rcx, -80(%rbp)	# __n, __n
# /usr/include/c++/15.2.1/bits/basic_string.h:646:       basic_string(const basic_string& __str, size_type __pos,
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -24(%rbp)	# tmp107, D.81290
	xorl	%eax, %eax	# tmp107
# /usr/include/c++/15.2.1/bits/basic_string.h:648:       : _M_dataplus(_M_local_data())
	movq	-56(%rbp), %rbx	# this, _1
	leaq	-41(%rbp), %rax	#, tmp108
	movq	%rax, -32(%rbp)	# tmp108, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/include/c++/15.2.1/bits/allocator.h:168:       allocator() _GLIBCXX_NOTHROW { }
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:648:       : _M_dataplus(_M_local_data())
	movq	-56(%rbp), %rax	# this, tmp109
	movq	%rax, %rdi	# tmp109,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv	#
	movq	%rax, %rcx	#, _2
# /usr/include/c++/15.2.1/bits/basic_string.h:648:       : _M_dataplus(_M_local_data())
	leaq	-41(%rbp), %rax	#, tmp110
	movq	%rax, %rdx	# tmp110,
	movq	%rcx, %rsi	# _2,
	movq	%rbx, %rdi	# _1,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_	#
# /usr/include/c++/15.2.1/bits/allocator.h:189:       ~allocator() _GLIBCXX_NOTHROW { }
	leaq	-41(%rbp), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	_ZNSt15__new_allocatorIcED2Ev	#
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:650: 	const _CharT* __start = __str._M_data()
	movq	-64(%rbp), %rax	# __str, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rbx	#, _3
# /usr/include/c++/15.2.1/bits/basic_string.h:651: 	  + __str._M_check(__pos, "basic_string::basic_string");
	leaq	.LC33(%rip), %rdx	#, tmp113
	movq	-72(%rbp), %rcx	# __pos, tmp114
	movq	-64(%rbp), %rax	# __str, tmp115
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
.LEHB18:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc	#
# /usr/include/c++/15.2.1/bits/basic_string.h:650: 	const _CharT* __start = __str._M_data()
	addq	%rbx, %rax	# _3, tmp116
	movq	%rax, -40(%rbp)	# tmp116, __start
# /usr/include/c++/15.2.1/bits/basic_string.h:652: 	_M_construct(__start, __start + __str._M_limit(__pos, __n),
	movq	-80(%rbp), %rdx	# __n, tmp117
	movq	-72(%rbp), %rcx	# __pos, tmp118
	movq	-64(%rbp), %rax	# __str, tmp119
	movq	%rcx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm	#
# /usr/include/c++/15.2.1/bits/basic_string.h:652: 	_M_construct(__start, __start + __str._M_limit(__pos, __n),
	movq	-40(%rbp), %rdx	# __start, tmp120
	addq	%rax, %rdx	# _5, _6
	movq	-40(%rbp), %rcx	# __start, tmp121
	movq	-56(%rbp), %rax	# this, tmp122
	movq	%rcx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag	#
.LEHE18:
# /usr/include/c++/15.2.1/bits/basic_string.h:654:       }
	jmp	.L205	#
.L204:
	movq	%rax, %rbx	#, tmp123
	movq	-56(%rbp), %rax	# this, _7
	movq	%rax, %rdi	# _7,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev	#
	movq	%rbx, %rax	# tmp123, D.81289
	movq	-24(%rbp), %rdx	# D.81290, tmp124
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp124
	je	.L202	#,
	call	__stack_chk_fail@PLT	#
.L202:
	movq	%rax, %rdi	# D.81289,
.LEHB19:
	call	_Unwind_Resume@PLT	#
.LEHE19:
.L205:
	movq	-24(%rbp), %rax	# D.81290, tmp125
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	je	.L203	#,
	call	__stack_chk_fail@PLT	#
.L203:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3785:
	.section	.gcc_except_table
.LLSDA3785:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3785-.LLSDACSB3785
.LLSDACSB3785:
	.uleb128 .LEHB18-.LFB3785
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L204-.LFB3785
	.uleb128 0
	.uleb128 .LEHB19-.LFB3785
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE3785:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5ERKS4_mm,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_mm
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_mm,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev:
.LFB3837:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	-8(%rbp), %rax	# this, tmp98
	movq	$0, (%rax)	#, this_2(D)->_M_start
# /usr/include/c++/15.2.1/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	-8(%rbp), %rax	# this, tmp99
	movq	$0, 8(%rax)	#, this_2(D)->_M_finish
# /usr/include/c++/15.2.1/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	-8(%rbp), %rax	# this, tmp100
	movq	$0, 16(%rax)	#, this_2(D)->_M_end_of_storage
# /usr/include/c++/15.2.1/bits/stl_vector.h:107: 	{ }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3837:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.type	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, @function
_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev:
.LFB3840:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:104:       ~__new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3840:
	.size	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, .-_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.weak	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev
	.set	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev,_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m:
.LFB3842:
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
# /usr/include/c++/15.2.1/bits/stl_vector.h:395: 	if (__p)
	cmpq	$0, -48(%rbp)	#, __p
	je	.L210	#,
# /usr/include/c++/15.2.1/bits/stl_vector.h:396: 	  _Tr::deallocate(_M_impl, __p, __n);
	movq	-40(%rbp), %rax	# this, _1
	movq	%rax, -24(%rbp)	# _1, __a
	movq	-48(%rbp), %rax	# __p, tmp99
	movq	%rax, -16(%rbp)	# tmp99, __p
	movq	-56(%rbp), %rax	# __n, tmp100
	movq	%rax, -8(%rbp)	# tmp100, __n
# /usr/include/c++/15.2.1/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	movq	-8(%rbp), %rdx	# __n, tmp101
	movq	-16(%rbp), %rcx	# __p, tmp102
	movq	-24(%rbp), %rax	# __a, tmp103
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m	#
# /usr/include/c++/15.2.1/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	nop	
.L210:
# /usr/include/c++/15.2.1/bits/stl_vector.h:397:       }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3842:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv:
.LFB3843:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:308:       { return this->_M_impl; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include/c++/15.2.1/bits/stl_vector.h:308:       { return this->_M_impl; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3843:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm:
.LFB3845:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3845
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __s, __s
	movq	%rdx, -24(%rbp)	# __pos, __pos
	movq	%rcx, -32(%rbp)	# __n, __n
# /usr/include/c++/15.2.1/bits/basic_string.tcc:799:       for (; __pos < this->size(); ++__pos)
	jmp	.L214	#
.L217:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:800: 	if (!traits_type::find(__s, __n, _M_data()[__pos]))
	movq	-8(%rbp), %rax	# this, tmp106
	movq	%rax, %rdi	# tmp106,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:800: 	if (!traits_type::find(__s, __n, _M_data()[__pos]))
	movq	-24(%rbp), %rdx	# __pos, tmp107
	addq	%rax, %rdx	# _1, _2
# /usr/include/c++/15.2.1/bits/basic_string.tcc:800: 	if (!traits_type::find(__s, __n, _M_data()[__pos]))
	movq	-32(%rbp), %rcx	# __n, tmp108
	movq	-16(%rbp), %rax	# __s, tmp109
	movq	%rcx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	_ZNSt11char_traitsIcE4findEPKcmRS1_	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:800: 	if (!traits_type::find(__s, __n, _M_data()[__pos]))
	testq	%rax, %rax	# _3
	sete	%al	#, retval.24_20
# /usr/include/c++/15.2.1/bits/basic_string.tcc:800: 	if (!traits_type::find(__s, __n, _M_data()[__pos]))
	testb	%al, %al	# retval.24_20
	je	.L215	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:801: 	  return __pos;
	movq	-24(%rbp), %rax	# __pos, _6
	jmp	.L216	#
.L215:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:799:       for (; __pos < this->size(); ++__pos)
	addq	$1, -24(%rbp)	#, __pos
.L214:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:799:       for (; __pos < this->size(); ++__pos)
	movq	-8(%rbp), %rax	# this, tmp110
	movq	%rax, %rdi	# tmp110,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:799:       for (; __pos < this->size(); ++__pos)
	cmpq	%rax, -24(%rbp)	# _4, __pos
	setb	%al	#, retval.25_13
	testb	%al, %al	# retval.25_13
	jne	.L217	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:802:       return npos;
	movq	$-1, %rax	#, _6
.L216:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:803:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3845:
	.section	.gcc_except_table
.LLSDA3845:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3845-.LLSDACSB3845
.LLSDACSB3845:
.LLSDACSE3845:
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm,comdat
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm:
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
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __s, __s
	movq	%rdx, -40(%rbp)	# __pos, __pos
	movq	%rcx, -48(%rbp)	# __n, __n
# /usr/include/c++/15.2.1/bits/basic_string.tcc:825:       size_type __size = this->size();
	movq	-24(%rbp), %rax	# this, tmp107
	movq	%rax, %rdi	# tmp107,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	#
	movq	%rax, -8(%rbp)	# tmp108, __size
# /usr/include/c++/15.2.1/bits/basic_string.tcc:826:       if (__size)
	cmpq	$0, -8(%rbp)	#, __size
	je	.L219	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:828: 	  if (--__size > __pos)
	subq	$1, -8(%rbp)	#, __size
	movq	-8(%rbp), %rax	# __size, tmp109
	cmpq	%rax, -40(%rbp)	# tmp109, __pos
	setb	%al	#, retval.28_16
# /usr/include/c++/15.2.1/bits/basic_string.tcc:828: 	  if (--__size > __pos)
	testb	%al, %al	# retval.28_16
	je	.L223	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:829: 	    __size = __pos;
	movq	-40(%rbp), %rax	# __pos, tmp110
	movq	%rax, -8(%rbp)	# tmp110, __size
.L223:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:832: 	      if (!traits_type::find(__s, __n, _M_data()[__size]))
	movq	-24(%rbp), %rax	# this, tmp111
	movq	%rax, %rdi	# tmp111,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:832: 	      if (!traits_type::find(__s, __n, _M_data()[__size]))
	movq	-8(%rbp), %rdx	# __size, tmp112
	addq	%rax, %rdx	# _1, _2
# /usr/include/c++/15.2.1/bits/basic_string.tcc:832: 	      if (!traits_type::find(__s, __n, _M_data()[__size]))
	movq	-48(%rbp), %rcx	# __n, tmp113
	movq	-32(%rbp), %rax	# __s, tmp114
	movq	%rcx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	_ZNSt11char_traitsIcE4findEPKcmRS1_	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:832: 	      if (!traits_type::find(__s, __n, _M_data()[__size]))
	testq	%rax, %rax	# _3
	sete	%al	#, retval.29_23
# /usr/include/c++/15.2.1/bits/basic_string.tcc:832: 	      if (!traits_type::find(__s, __n, _M_data()[__size]))
	testb	%al, %al	# retval.29_23
	je	.L221	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:833: 		return __size;
	movq	-8(%rbp), %rax	# __size, _6
	jmp	.L222	#
.L221:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:830: 	  do
	movq	-8(%rbp), %rax	# __size, __size.31_4
	leaq	-1(%rax), %rdx	#, tmp115
	movq	%rdx, -8(%rbp)	# tmp115, __size
	testq	%rax, %rax	# __size.31_4
	setne	%al	#, retval.30_25
	testb	%al, %al	# retval.30_25
	jne	.L223	#,
.L219:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:837:       return npos;
	movq	$-1, %rax	#, _6
.L222:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:838:     }
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
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm,comdat
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_:
.LFB3847:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)	# this, this
	movq	%rsi, -112(%rbp)	# __args#0, __args#0
# /usr/include/c++/15.2.1/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-104(%rbp), %rax	# this, tmp114
	movq	8(%rax), %rdx	# this_11(D)->D.72472._M_impl.D.71775._M_finish, _1
# /usr/include/c++/15.2.1/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-104(%rbp), %rax	# this, tmp115
	movq	16(%rax), %rax	# this_11(D)->D.72472._M_impl.D.71775._M_end_of_storage, _2
# /usr/include/c++/15.2.1/bits/vector.tcc:114: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rax, %rdx	# _2, _1
	je	.L225	#,
	movq	-112(%rbp), %rax	# __args#0, tmp116
	movq	%rax, -32(%rbp)	# tmp116, __t
# /usr/include/c++/15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-32(%rbp), %rax	# __t, D.81232
# /usr/include/c++/15.2.1/bits/vector.tcc:117: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	-104(%rbp), %rdx	# this, tmp117
	movq	8(%rdx), %rdx	# this_11(D)->D.72472._M_impl.D.71775._M_finish, _4
# /usr/include/c++/15.2.1/bits/vector.tcc:117: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	-104(%rbp), %rcx	# this, _5
	movq	%rcx, -96(%rbp)	# _5, __a
	movq	%rdx, -88(%rbp)	# _4, __p
	movq	%rax, -80(%rbp)	# D.81232, __args#0
	movq	-80(%rbp), %rax	# __args#0, tmp118
	movq	%rax, -72(%rbp)	# tmp118, __t
# /usr/include/c++/15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-72(%rbp), %rax	# __t, _21
	movq	-88(%rbp), %rdx	# __p, tmp119
	movq	%rdx, -64(%rbp)	# tmp119, __p
	movq	%rax, -56(%rbp)	# _21, __args#0
	movq	-96(%rbp), %rax	# __a, tmp120
	movq	%rax, -48(%rbp)	# tmp120, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-64(%rbp), %rbx	# __p, _27
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _27,
	movl	$32, %edi	#,
	call	_ZnwmPv	#
	movq	%rax, %r12	#, _28
	movq	-56(%rbp), %rax	# __args#0, tmp121
	movq	%rax, -40(%rbp)	# tmp121, __t
# /usr/include/c++/15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-40(%rbp), %rax	# __t, _32
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %rsi	# _32,
	movq	%r12, %rdi	# _28,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_	#
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$0, %eax	#, _35
	testb	%al, %al	# _35
	je	.L229	#,
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _27,
	movq	%r12, %rdi	# _28,
	call	_ZdlPvS_	#
.L229:
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/include/c++/15.2.1/bits/alloc_traits.h:680: 	}
	nop	
# /usr/include/c++/15.2.1/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	movq	-104(%rbp), %rax	# this, tmp122
	movq	8(%rax), %rax	# this_11(D)->D.72472._M_impl.D.71775._M_finish, _6
# /usr/include/c++/15.2.1/bits/vector.tcc:119: 	    ++this->_M_impl._M_finish;
	leaq	32(%rax), %rdx	#, _7
	movq	-104(%rbp), %rax	# this, tmp123
	movq	%rdx, 8(%rax)	# _7, this_11(D)->D.72472._M_impl.D.71775._M_finish
	jmp	.L230	#
.L225:
	movq	-112(%rbp), %rax	# __args#0, tmp124
	movq	%rax, -24(%rbp)	# tmp124, __t
# /usr/include/c++/15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-24(%rbp), %rdx	# __t, D.81236
# /usr/include/c++/15.2.1/bits/vector.tcc:123: 	  _M_realloc_append(std::forward<_Args>(__args)...);
	movq	-104(%rbp), %rax	# this, tmp125
	movq	%rdx, %rsi	# D.81236,
	movq	%rax, %rdi	# tmp125,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_	#
.L230:
# /usr/include/c++/15.2.1/bits/vector.tcc:125: 	return back();
	movq	-104(%rbp), %rax	# this, tmp126
	movq	%rax, %rdi	# tmp126,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv	#
# /usr/include/c++/15.2.1/bits/vector.tcc:127:       }
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3847:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
.LFB3849:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:365:       { return _M_dataplus; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include/c++/15.2.1/bits/basic_string.h:365:       { return _M_dataplus; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3849:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm:
.LFB3851:
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
# /usr/include/c++/15.2.1/bits/basic_string.tcc:286:     basic_string<_CharT, _Traits, _Alloc>::
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	movq	%rax, -24(%rbp)	# tmp105, D.81292
	xorl	%eax, %eax	# tmp105
# /usr/include/c++/15.2.1/bits/basic_string.tcc:289:       if (__n > size_type(_S_local_capacity))
	movq	-72(%rbp), %rax	# __n, __n.38_1
# /usr/include/c++/15.2.1/bits/basic_string.tcc:289:       if (__n > size_type(_S_local_capacity))
	cmpq	$15, %rax	#, __n.38_1
	jbe	.L236	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:291: 	  _M_data(_M_create(__n, size_type(0)));
	leaq	-72(%rbp), %rcx	#, tmp106
	movq	-56(%rbp), %rax	# this, tmp107
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm	#
	movq	%rax, %rdx	#, _2
# /usr/include/c++/15.2.1/bits/basic_string.tcc:291: 	  _M_data(_M_create(__n, size_type(0)));
	movq	-56(%rbp), %rax	# this, tmp108
	movq	%rdx, %rsi	# _2,
	movq	%rax, %rdi	# tmp108,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:292: 	  _M_capacity(__n);
	movq	-72(%rbp), %rdx	# __n, __n.39_3
	movq	-56(%rbp), %rax	# this, tmp109
	movq	%rdx, %rsi	# __n.39_3,
	movq	%rax, %rdi	# tmp109,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm	#
	jmp	.L237	#
.L236:
	movq	-56(%rbp), %rax	# this, tmp110
	movq	%rax, -32(%rbp)	# tmp110, this
# /usr/include/c++/15.2.1/bits/basic_string.h:378:       }
	nop	
.L237:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:298: 	this->_S_copy(_M_data(), __str, __n + _Terminated);
	movq	-72(%rbp), %rax	# __n, __n.40_4
	leaq	1(%rax), %rbx	#, _5
	movq	-56(%rbp), %rax	# this, tmp111
	movq	%rax, %rdi	# tmp111,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rcx	#, _6
# /usr/include/c++/15.2.1/bits/basic_string.tcc:298: 	this->_S_copy(_M_data(), __str, __n + _Terminated);
	movq	-64(%rbp), %rax	# __str, tmp112
	movq	%rbx, %rdx	# _5,
	movq	%rax, %rsi	# tmp112,
	movq	%rcx, %rdi	# _6,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:300:       _M_length(__n);
	movq	-72(%rbp), %rdx	# __n, __n.41_7
	movq	-56(%rbp), %rax	# this, tmp113
	movq	%rdx, %rsi	# __n.41_7,
	movq	%rax, %rdi	# tmp113,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:303:     }
	nop	
	movq	-24(%rbp), %rax	# D.81292, tmp114
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp114
	je	.L238	#,
	call	__stack_chk_fail@PLT	#
.L238:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3851:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcm
	.section	.text._ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc,"axG",@progbits,_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc,comdat
	.weak	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
	.type	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc, @function
_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc:
.LFB3882:
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
# /usr/include/c++/15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-8(%rbp), %rax	# __r, D.80915
# /usr/include/c++/15.2.1/bits/move.h:177:     { return std::__addressof(__r); }
	nop	
# /usr/include/c++/15.2.1/bits/ptr_traits.h:135:       { return std::addressof(__r); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3882:
	.size	_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc, .-_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm:
.LFB3886:
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
# /usr/include/c++/15.2.1/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	-64(%rbp), %rax	# __size, tmp101
	leaq	1(%rax), %r12	#, _1
	movq	-56(%rbp), %rax	# this, tmp102
	movq	%rax, %rdi	# tmp102,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv	#
	movq	%rax, %rbx	#, _2
# /usr/include/c++/15.2.1/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	-56(%rbp), %rax	# this, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -40(%rbp)	# _3, __a
	movq	%rbx, -32(%rbp)	# _2, __p
	movq	%r12, -24(%rbp)	# _1, __n
# /usr/include/c++/15.2.1/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	movq	-24(%rbp), %rdx	# __n, tmp104
	movq	-32(%rbp), %rcx	# __p, tmp105
	movq	-40(%rbp), %rax	# __a, tmp106
	movq	%rcx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	_ZNSt15__new_allocatorIcE10deallocateEPcm	#
# /usr/include/c++/15.2.1/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:305:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	nop	
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3886:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
	.section	.rodata
.LC34:
	.string	"basic_string::_M_create"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm:
.LFB3888:
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
# /usr/include/c++/15.2.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	movq	-32(%rbp), %rax	# __capacity, tmp114
	movq	(%rax), %rbx	# *__capacity_15(D), _1
# /usr/include/c++/15.2.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	movq	-24(%rbp), %rax	# this, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	cmpq	%rbx, %rax	# _1, _2
	setb	%al	#, retval.9_18
# /usr/include/c++/15.2.1/bits/basic_string.tcc:148:       if (__capacity > max_size())
	testb	%al, %al	# retval.9_18
	je	.L245	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:149: 	std::__throw_length_error(__N("basic_string::_M_create"));
	leaq	.LC34(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	_ZSt20__throw_length_errorPKc@PLT	#
.L245:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movq	-32(%rbp), %rax	# __capacity, tmp117
	movq	(%rax), %rax	# *__capacity_15(D), _3
# /usr/include/c++/15.2.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rax, -40(%rbp)	# _3, __old_capacity
	jnb	.L246	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movq	-32(%rbp), %rax	# __capacity, tmp118
	movq	(%rax), %rdx	# *__capacity_15(D), _4
# /usr/include/c++/15.2.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	movq	-40(%rbp), %rax	# __old_capacity, tmp119
	addq	%rax, %rax	# _5
# /usr/include/c++/15.2.1/bits/basic_string.tcc:154:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rax, %rdx	# _5, _4
	jnb	.L246	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	movq	-40(%rbp), %rax	# __old_capacity, tmp120
	leaq	(%rax,%rax), %rdx	#, _6
# /usr/include/c++/15.2.1/bits/basic_string.tcc:156: 	  __capacity = 2 * __old_capacity;
	movq	-32(%rbp), %rax	# __capacity, tmp121
	movq	%rdx, (%rax)	# _6, *__capacity_15(D)
# /usr/include/c++/15.2.1/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	movq	-32(%rbp), %rax	# __capacity, tmp122
	movq	(%rax), %rbx	# *__capacity_15(D), _7
# /usr/include/c++/15.2.1/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	movq	-24(%rbp), %rax	# this, tmp123
	movq	%rax, %rdi	# tmp123,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	cmpq	%rbx, %rax	# _7, _8
	setb	%al	#, retval.10_22
# /usr/include/c++/15.2.1/bits/basic_string.tcc:158: 	  if (__capacity > max_size())
	testb	%al, %al	# retval.10_22
	je	.L246	#,
# /usr/include/c++/15.2.1/bits/basic_string.tcc:159: 	    __capacity = max_size();
	movq	-24(%rbp), %rax	# this, tmp124
	movq	%rax, %rdi	# tmp124,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:159: 	    __capacity = max_size();
	movq	-32(%rbp), %rdx	# __capacity, tmp125
	movq	%rax, (%rdx)	# _9, *__capacity_15(D)
.L246:
# /usr/include/c++/15.2.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movq	-32(%rbp), %rax	# __capacity, tmp126
	movq	(%rax), %rax	# *__capacity_15(D), _10
	leaq	1(%rax), %rbx	#, _11
# /usr/include/c++/15.2.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movq	-24(%rbp), %rax	# this, tmp127
	movq	%rax, %rdi	# tmp127,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:164:       return _S_allocate(_M_get_allocator(), __capacity + 1);
	movq	%rbx, %rsi	# _11,
	movq	%rax, %rdi	# _12,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m	#
# /usr/include/c++/15.2.1/bits/basic_string.tcc:165:     }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3888:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm:
.LFB3889:
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
# /usr/include/c++/15.2.1/bits/basic_string.h:450: 	if (__n == 1)
	cmpq	$1, -24(%rbp)	#, __n
	jne	.L249	#,
# /usr/include/c++/15.2.1/bits/basic_string.h:451: 	  traits_type::assign(*__d, *__s);
	movq	-16(%rbp), %rdx	# __s, tmp98
	movq	-8(%rbp), %rax	# __d, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt11char_traitsIcE6assignERcRKc	#
# /usr/include/c++/15.2.1/bits/basic_string.h:454:       }
	jmp	.L251	#
.L249:
# /usr/include/c++/15.2.1/bits/basic_string.h:453: 	  traits_type::copy(__d, __s, __n);
	movq	-24(%rbp), %rdx	# __n, tmp100
	movq	-16(%rbp), %rcx	# __s, tmp101
	movq	-8(%rbp), %rax	# __d, tmp102
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	_ZNSt11char_traitsIcE4copyEPcPKcm	#
.L251:
# /usr/include/c++/15.2.1/bits/basic_string.h:454:       }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3889:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
.LFB3890:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	movq	-8(%rbp), %rax	# this, tmp101
	addq	$16, %rax	#, _1
# /usr/include/c++/15.2.1/bits/basic_string.h:257: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	movq	%rax, %rdi	# _1,
	call	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_	#
# /usr/include/c++/15.2.1/bits/basic_string.h:261:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3890:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3913:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __a, __a
	movq	%rsi, -16(%rbp)	# __b, __b
# /usr/include/c++/15.2.1/bits/stl_algobase.h:239:       if (__b < __a)
	movq	-16(%rbp), %rax	# __b, tmp102
	movq	(%rax), %rdx	# *__b_5(D), _1
	movq	-8(%rbp), %rax	# __a, tmp103
	movq	(%rax), %rax	# *__a_6(D), _2
# /usr/include/c++/15.2.1/bits/stl_algobase.h:239:       if (__b < __a)
	cmpq	%rax, %rdx	# _2, _1
	jnb	.L255	#,
# /usr/include/c++/15.2.1/bits/stl_algobase.h:240: 	return __b;
	movq	-16(%rbp), %rax	# __b, _3
	jmp	.L256	#
.L255:
# /usr/include/c++/15.2.1/bits/stl_algobase.h:241:       return __a;
	movq	-8(%rbp), %rax	# __a, _3
.L256:
# /usr/include/c++/15.2.1/bits/stl_algobase.h:242:     }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3913:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv:
.LFB3912:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/basic_string.h:1181:       max_size() const _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp104
	movq	%rax, -8(%rbp)	# tmp104, D.81294
	xorl	%eax, %eax	# tmp104
# /usr/include/c++/15.2.1/bits/basic_string.h:1183: 	const size_t __diffmax
	movabsq	$9223372036854775807, %rax	#, tmp113
	movq	%rax, -48(%rbp)	# tmp113, __diffmax
# /usr/include/c++/15.2.1/bits/basic_string.h:1185: 	const size_t __allocmax = _Alloc_traits::max_size(_M_get_allocator());
	movq	-56(%rbp), %rax	# this, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv	#
	movq	%rax, -32(%rbp)	# _1, __a
	movq	-32(%rbp), %rax	# __a, tmp106
	movq	%rax, -24(%rbp)	# tmp106, this
	movq	-24(%rbp), %rax	# this, tmp107
	movq	%rax, -16(%rbp)	# tmp107, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$9223372036854775807, %rax	#, D.80977
# /usr/include/c++/15.2.1/bits/new_allocator.h:183:       { return _M_max_size(); }
	nop	
# /usr/include/c++/15.2.1/bits/alloc_traits.h:712: 	return __a.max_size();
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:1185: 	const size_t __allocmax = _Alloc_traits::max_size(_M_get_allocator());
	movq	%rax, -40(%rbp)	# D.80977, __allocmax
# /usr/include/c++/15.2.1/bits/basic_string.h:1186: 	return (std::min)(__diffmax, __allocmax) - 1;
	leaq	-40(%rbp), %rdx	#, tmp108
	leaq	-48(%rbp), %rax	#, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	_ZSt3minImERKT_S2_S2_	#
# /usr/include/c++/15.2.1/bits/basic_string.h:1186: 	return (std::min)(__diffmax, __allocmax) - 1;
	movq	(%rax), %rax	# *_3, _4
# /usr/include/c++/15.2.1/bits/basic_string.h:1186: 	return (std::min)(__diffmax, __allocmax) - 1;
	subq	$1, %rax	#, _11
# /usr/include/c++/15.2.1/bits/basic_string.h:1187:       }
	movq	-8(%rbp), %rdx	# D.81294, tmp111
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	je	.L262	#,
	call	__stack_chk_fail@PLT	#
.L262:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3912:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_:
.LFB3914:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# __p, __p
	movq	%rsi, -32(%rbp)	# __k1, __k1
	movq	%rdx, -40(%rbp)	# __k2, __k2
# /usr/include/c++/15.2.1/bits/basic_string.h:489: 	    _S_copy(__p, std::__niter_base(__k1), __k2 - __k1);
	movq	-40(%rbp), %rax	# __k2, tmp101
	subq	-32(%rbp), %rax	# __k1, _1
# /usr/include/c++/15.2.1/bits/basic_string.h:489: 	    _S_copy(__p, std::__niter_base(__k1), __k2 - __k1);
	movq	%rax, %rdx	# _1, _2
	movq	-32(%rbp), %rax	# __k1, tmp102
	movq	%rax, -8(%rbp)	# tmp102, __it
# /usr/include/c++/15.2.1/bits/stl_iterator.h:3011:     { return __it; }
	movq	-8(%rbp), %rcx	# __it, D.80902
# /usr/include/c++/15.2.1/bits/basic_string.h:489: 	    _S_copy(__p, std::__niter_base(__k1), __k2 - __k1);
	movq	-24(%rbp), %rax	# __p, tmp103
	movq	%rcx, %rsi	# D.80902,
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm	#
# /usr/include/c++/15.2.1/bits/basic_string.h:506: 	}
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3914:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsIPKcEEvPcT_S9_
	.section	.text._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm,"axG",@progbits,_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm,comdat
	.align 2
	.weak	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm
	.type	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm, @function
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm:
.LFB3949:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __pos, __pos
	movq	%rdx, -40(%rbp)	# __off, __off
# /usr/include/c++/15.2.1/bits/basic_string.h:432: 	const bool __testoff =  __off < this->size() - __pos;
	movq	-24(%rbp), %rax	# this, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:432: 	const bool __testoff =  __off < this->size() - __pos;
	subq	-32(%rbp), %rax	# __pos, _2
# /usr/include/c++/15.2.1/bits/basic_string.h:432: 	const bool __testoff =  __off < this->size() - __pos;
	cmpq	%rax, -40(%rbp)	# _2, __off
	setb	%al	#, __testoff_11
	movb	%al, -1(%rbp)	# __testoff_11, __testoff
# /usr/include/c++/15.2.1/bits/basic_string.h:433: 	return __testoff ? __off : this->size() - __pos;
	cmpb	$0, -1(%rbp)	#, __testoff
	je	.L266	#,
# /usr/include/c++/15.2.1/bits/basic_string.h:433: 	return __testoff ? __off : this->size() - __pos;
	movq	-40(%rbp), %rax	# __off, _4
# /usr/include/c++/15.2.1/bits/basic_string.h:433: 	return __testoff ? __off : this->size() - __pos;
	jmp	.L268	#
.L266:
# /usr/include/c++/15.2.1/bits/basic_string.h:433: 	return __testoff ? __off : this->size() - __pos;
	movq	-24(%rbp), %rax	# this, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv	#
# /usr/include/c++/15.2.1/bits/basic_string.h:433: 	return __testoff ? __off : this->size() - __pos;
	subq	-32(%rbp), %rax	# __pos, _4
.L268:
# /usr/include/c++/15.2.1/bits/basic_string.h:434:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3949:
	.size	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm, .-_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm
	.section	.text._ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.type	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, @function
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_:
.LFB3961:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
# /usr/include/c++/15.2.1/bits/stl_construct.h:225: 	for (; __first != __last; ++__first)
	jmp	.L270	#
.L272:
	movq	-24(%rbp), %rax	# __first, tmp99
	movq	%rax, -8(%rbp)	# tmp99, __r
# /usr/include/c++/15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-8(%rbp), %rax	# __r, D.80954
# /usr/include/c++/15.2.1/bits/stl_construct.h:226: 	  std::_Destroy(std::__addressof(*__first));
	movq	%rax, %rdi	# D.80954,
	call	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_	#
# /usr/include/c++/15.2.1/bits/stl_construct.h:225: 	for (; __first != __last; ++__first)
	addq	$32, -24(%rbp)	#, __first
.L270:
# /usr/include/c++/15.2.1/bits/stl_construct.h:225: 	for (; __first != __last; ++__first)
	movq	-24(%rbp), %rax	# __first, tmp100
	cmpq	-32(%rbp), %rax	# __last, tmp100
	jne	.L272	#,
# /usr/include/c++/15.2.1/bits/stl_construct.h:236:     }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3961:
	.size	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, .-_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.section	.rodata
.LC35:
	.string	"vector::_M_realloc_append"
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_:
.LFB3964:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$208, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -216(%rbp)	# this, this
	movq	%rsi, -224(%rbp)	# __args#0, __args#0
# /usr/include/c++/15.2.1/bits/vector.tcc:557:       vector<_Tp, _Alloc>::
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp127
	movq	%rax, -24(%rbp)	# tmp127, D.81296
	xorl	%eax, %eax	# tmp127
# /usr/include/c++/15.2.1/bits/vector.tcc:566:       const size_type __len = _M_check_len(1u, "vector::_M_realloc_append");
	leaq	.LC35(%rip), %rdx	#, tmp128
	movq	-216(%rbp), %rax	# this, tmp129
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc	#
# /usr/include/c++/15.2.1/bits/vector.tcc:566:       const size_type __len = _M_check_len(1u, "vector::_M_realloc_append");
	movq	%rax, -192(%rbp)	# _20, __len
# /usr/include/c++/15.2.1/bits/vector.tcc:567:       if (__len <= 0)
	cmpq	$0, -192(%rbp)	#, __len
# /usr/include/c++/15.2.1/bits/vector.tcc:569:       pointer __old_start = this->_M_impl._M_start;
	movq	-216(%rbp), %rax	# this, tmp130
	movq	(%rax), %rax	# this_18(D)->D.72472._M_impl.D.71775._M_start, tmp131
	movq	%rax, -184(%rbp)	# tmp131, __old_start
# /usr/include/c++/15.2.1/bits/vector.tcc:570:       pointer __old_finish = this->_M_impl._M_finish;
	movq	-216(%rbp), %rax	# this, tmp132
	movq	8(%rax), %rax	# this_18(D)->D.72472._M_impl.D.71775._M_finish, tmp133
	movq	%rax, -176(%rbp)	# tmp133, __old_finish
# /usr/include/c++/15.2.1/bits/vector.tcc:571:       const size_type __elems = end() - begin();
	movq	-216(%rbp), %rax	# this, tmp134
	movq	%rax, %rdi	# tmp134,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv	#
	movq	%rax, -48(%rbp)	# tmp136, MEM[(struct __normal_iterator *)_88]
# /usr/include/c++/15.2.1/bits/vector.tcc:571:       const size_type __elems = end() - begin();
	movq	-216(%rbp), %rax	# this, tmp137
	movq	%rax, %rdi	# tmp137,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv	#
	movq	%rax, -200(%rbp)	# tmp139, D.78855
	leaq	-200(%rbp), %rax	#, tmp140
	movq	%rax, -64(%rbp)	# tmp140, this
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1166:       { return _M_current; }
	movq	-64(%rbp), %rax	# this, _70
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1340:     { return __lhs.base() - __rhs.base(); }
	movq	(%rax), %rdx	# *_72, _73
	leaq	-48(%rbp), %rax	#, tmp141
	movq	%rax, -56(%rbp)	# tmp141, this
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1166:       { return _M_current; }
	movq	-56(%rbp), %rax	# this, _75
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1340:     { return __lhs.base() - __rhs.base(); }
	movq	(%rax), %rax	# *_77, _78
	subq	%rax, %rdx	# _78, _79
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1340:     { return __lhs.base() - __rhs.base(); }
	movq	%rdx, %rax	# _79, _79
	sarq	$5, %rax	#, _79
# /usr/include/c++/15.2.1/bits/vector.tcc:571:       const size_type __elems = end() - begin();
	movq	%rax, -168(%rbp)	# D.81207, __elems
# /usr/include/c++/15.2.1/bits/vector.tcc:572:       pointer __new_start(this->_M_allocate(__len));
	movq	-216(%rbp), %rax	# this, _2
	movq	-192(%rbp), %rdx	# __len, tmp143
	movq	%rdx, %rsi	# tmp143,
	movq	%rax, %rdi	# _2,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm	#
# /usr/include/c++/15.2.1/bits/vector.tcc:572:       pointer __new_start(this->_M_allocate(__len));
	movq	%rax, -160(%rbp)	# _30, __new_start
# /usr/include/c++/15.2.1/bits/vector.tcc:573:       pointer __new_finish(__new_start);
	movq	-160(%rbp), %rax	# __new_start, tmp144
	movq	%rax, -152(%rbp)	# tmp144, __new_finish
# /usr/include/c++/15.2.1/bits/vector.tcc:576: 	_Guard_alloc __guard(__new_start, __len, *this);
	movq	-216(%rbp), %rcx	# this, _3
	movq	-192(%rbp), %rdx	# __len, tmp145
	movq	-160(%rbp), %rsi	# __new_start, tmp146
	leaq	-48(%rbp), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC1EPS5_mRSt12_Vector_baseIS5_S6_E	#
	movq	-224(%rbp), %rax	# __args#0, tmp148
	movq	%rax, -72(%rbp)	# tmp148, __t
# /usr/include/c++/15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-72(%rbp), %rax	# __t, D.81198
# /usr/include/c++/15.2.1/bits/vector.tcc:587: 				 std::__to_address(__new_start + __elems),
	movq	-168(%rbp), %rdx	# __elems, tmp149
	movq	%rdx, %rcx	# tmp149, tmp149
	salq	$5, %rcx	#, tmp149
# /usr/include/c++/15.2.1/bits/vector.tcc:586: 	_Alloc_traits::construct(this->_M_impl,
	movq	-160(%rbp), %rdx	# __new_start, tmp150
	addq	%rcx, %rdx	# _5, _6
	movq	%rdx, -80(%rbp)	# _6, __ptr
# /usr/include/c++/15.2.1/bits/ptr_traits.h:211:       return __ptr;
	movq	-80(%rbp), %rdx	# __ptr, D.81194
# /usr/include/c++/15.2.1/bits/vector.tcc:586: 	_Alloc_traits::construct(this->_M_impl,
	movq	-216(%rbp), %rcx	# this, _8
	movq	%rcx, -144(%rbp)	# _8, __a
	movq	%rdx, -136(%rbp)	# D.81194, __p
	movq	%rax, -128(%rbp)	# D.81198, __args#0
	movq	-128(%rbp), %rax	# __args#0, tmp151
	movq	%rax, -120(%rbp)	# tmp151, __t
# /usr/include/c++/15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-120(%rbp), %rax	# __t, _50
	movq	-136(%rbp), %rdx	# __p, tmp152
	movq	%rdx, -112(%rbp)	# tmp152, __p
	movq	%rax, -104(%rbp)	# _50, __args#0
	movq	-144(%rbp), %rax	# __a, tmp153
	movq	%rax, -96(%rbp)	# tmp153, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-112(%rbp), %rbx	# __p, _56
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _56,
	movl	$32, %edi	#,
	call	_ZnwmPv	#
	movq	%rax, %r12	#, _57
	movq	-104(%rbp), %rax	# __args#0, tmp154
	movq	%rax, -88(%rbp)	# tmp154, __t
# /usr/include/c++/15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-88(%rbp), %rax	# __t, _61
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %rsi	# _61,
	movq	%r12, %rdi	# _57,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_	#
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$0, %eax	#, _64
	testb	%al, %al	# _64
	je	.L282	#,
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _56,
	movq	%r12, %rdi	# _57,
	call	_ZdlPvS_	#
.L282:
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/include/c++/15.2.1/bits/alloc_traits.h:680: 	}
	nop	
# /usr/include/c++/15.2.1/bits/vector.tcc:600: 				       __new_start, _M_get_Tp_allocator());
	movq	-216(%rbp), %rax	# this, _9
	movq	%rax, %rdi	# _9,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv	#
	movq	%rax, %rcx	#, _10
# /usr/include/c++/15.2.1/bits/vector.tcc:599: 	    __new_finish = _S_relocate(__old_start, __old_finish,
	movq	-160(%rbp), %rdx	# __new_start, tmp155
	movq	-176(%rbp), %rsi	# __old_finish, tmp156
	movq	-184(%rbp), %rax	# __old_start, tmp157
	movq	%rax, %rdi	# tmp157,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_	#
	movq	%rax, -152(%rbp)	# tmp158, __new_finish
# /usr/include/c++/15.2.1/bits/vector.tcc:601: 	    ++__new_finish;
	addq	$32, -152(%rbp)	#, __new_finish
# /usr/include/c++/15.2.1/bits/vector.tcc:638: 	__guard._M_storage = __old_start;
	movq	-184(%rbp), %rax	# __old_start, tmp159
	movq	%rax, -48(%rbp)	# tmp159, MEM[(struct _Guard_alloc *)_88]._M_storage
# /usr/include/c++/15.2.1/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	-216(%rbp), %rax	# this, tmp160
	movq	16(%rax), %rax	# this_18(D)->D.72472._M_impl.D.71775._M_end_of_storage, _11
# /usr/include/c++/15.2.1/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	subq	-184(%rbp), %rax	# __old_start, _12
	sarq	$5, %rax	#, _13
# /usr/include/c++/15.2.1/bits/vector.tcc:639: 	__guard._M_len = this->_M_impl._M_end_of_storage - __old_start;
	movq	%rax, -40(%rbp)	# _14, MEM[(struct _Guard_alloc *)_88]._M_len
# /usr/include/c++/15.2.1/bits/vector.tcc:640:       }
	leaq	-48(%rbp), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD1Ev	#
# /usr/include/c++/15.2.1/bits/vector.tcc:644:       this->_M_impl._M_start = __new_start;
	movq	-216(%rbp), %rax	# this, tmp163
	movq	-160(%rbp), %rdx	# __new_start, tmp164
	movq	%rdx, (%rax)	# tmp164, this_18(D)->D.72472._M_impl.D.71775._M_start
# /usr/include/c++/15.2.1/bits/vector.tcc:645:       this->_M_impl._M_finish = __new_finish;
	movq	-216(%rbp), %rax	# this, tmp165
	movq	-152(%rbp), %rdx	# __new_finish, tmp166
	movq	%rdx, 8(%rax)	# tmp166, this_18(D)->D.72472._M_impl.D.71775._M_finish
# /usr/include/c++/15.2.1/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	-192(%rbp), %rax	# __len, tmp167
	salq	$5, %rax	#, tmp167
	movq	%rax, %rdx	# tmp167, _15
	movq	-160(%rbp), %rax	# __new_start, tmp168
	addq	%rax, %rdx	# tmp168, _16
# /usr/include/c++/15.2.1/bits/vector.tcc:646:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	-216(%rbp), %rax	# this, tmp169
	movq	%rdx, 16(%rax)	# _16, this_18(D)->D.72472._M_impl.D.71775._M_end_of_storage
# /usr/include/c++/15.2.1/bits/vector.tcc:647:     }
	nop	
	movq	-24(%rbp), %rax	# D.81296, tmp170
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp170
	je	.L283	#,
	call	__stack_chk_fail@PLT	#
.L283:
	addq	$208, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3964:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_
	.section	.rodata
.LC36:
	.string	"!this->empty()"
	.align 8
.LC37:
	.string	"std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::back() [with _Tp = std::__cxx11::basic_string<char>; _Alloc = std::allocator<std::__cxx11::basic_string<char> >; reference = std::__cxx11::basic_string<char>&]"
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv:
.LFB3968:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:1368:       back() _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	movq	%rax, -8(%rbp)	# tmp112, D.81299
	xorl	%eax, %eax	# tmp112
# /usr/include/c++/15.2.1/bits/stl_vector.h:1370: 	__glibcxx_requires_nonempty();
	movq	-56(%rbp), %rax	# this, tmp113
	movq	%rax, %rdi	# tmp113,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:1370: 	__glibcxx_requires_nonempty();
	movzbl	%al, %eax	# _1, _2
# /usr/include/c++/15.2.1/bits/stl_vector.h:1370: 	__glibcxx_requires_nonempty();
	testq	%rax, %rax	# _3
	setne	%al	#, retval.36_7
	testb	%al, %al	# retval.36_7
	je	.L285	#,
# /usr/include/c++/15.2.1/bits/stl_vector.h:1370: 	__glibcxx_requires_nonempty();
	leaq	.LC36(%rip), %rcx	#, tmp114
	leaq	.LC37(%rip), %rdx	#, tmp115
	leaq	.LC31(%rip), %rax	#, tmp116
	movl	$1370, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	_ZSt21__glibcxx_assert_failPKciS0_S0_@PLT	#
.L285:
# /usr/include/c++/15.2.1/bits/stl_vector.h:1371: 	return *(end() - 1);
	movq	-56(%rbp), %rax	# this, tmp117
	movq	%rax, %rdi	# tmp117,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv	#
	movq	%rax, -40(%rbp)	# tmp119, D.79128
	movq	$1, -16(%rbp)	#, __n
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1160:       { return __normal_iterator(_M_current - __n); }
	movq	-40(%rbp), %rax	# D.79128._M_current, _15
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1160:       { return __normal_iterator(_M_current - __n); }
	movq	-16(%rbp), %rdx	# __n, __n.37_16
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1160:       { return __normal_iterator(_M_current - __n); }
	salq	$5, %rdx	#, _17
	negq	%rdx	# _18
	addq	%rdx, %rax	# _18, _19
	movq	%rax, -32(%rbp)	# _19, D.81087
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	-32(%rbp), %rax	# D.81087, _20
	movq	%rax, -24(%rbp)	# _20, MEM[(struct __normal_iterator *)_32]._M_current
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	nop	
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1160:       { return __normal_iterator(_M_current - __n); }
	movq	-24(%rbp), %rax	# MEM[(struct __normal_iterator *)_32], D.81089
# /usr/include/c++/15.2.1/bits/stl_vector.h:1371: 	return *(end() - 1);
	movq	%rax, -24(%rbp)	# D.81086, MEM[(struct __normal_iterator *)_32]
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1090:       { return *_M_current; }
	movq	-24(%rbp), %rax	# MEM[(struct __normal_iterator *)_32]._M_current, D.81079
# /usr/include/c++/15.2.1/bits/stl_vector.h:1372:       }
	movq	-8(%rbp), %rdx	# D.81299, tmp121
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	je	.L289	#,
	call	__stack_chk_fail@PLT	#
.L289:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3968:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m:
.LFB3989:
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
# /usr/include/c++/15.2.1/bits/alloc_traits.h:614:       { return __a.allocate(__n); }
	movq	-8(%rbp), %rcx	# __n, tmp103
	movq	-16(%rbp), %rax	# __a, tmp104
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	_ZNSt15__new_allocatorIcE8allocateEmPKv	#
# /usr/include/c++/15.2.1/bits/alloc_traits.h:614:       { return __a.allocate(__n); }
	nop	
# /usr/include/c++/15.2.1/bits/basic_string.h:142: 	pointer __p = _Alloc_traits::allocate(__a, __n);
	movq	%rax, -24(%rbp)	# D.81017, __p
# /usr/include/c++/15.2.1/bits/basic_string.h:152: 	return __p;
	movq	-24(%rbp), %rax	# __p, _6
# /usr/include/c++/15.2.1/bits/basic_string.h:153:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3989:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_m
	.section	.text._ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_,"axG",@progbits,_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_,comdat
	.weak	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	.type	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_, @function
_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_:
.LFB3990:
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
# /usr/include/c++/15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-8(%rbp), %rax	# __r, D.80948
# /usr/include/c++/15.2.1/bits/move.h:177:     { return std::__addressof(__r); }
	nop	
# /usr/include/c++/15.2.1/bits/ptr_traits.h:135:       { return std::addressof(__r); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3990:
	.size	_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_, .-_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_
	.section	.text._ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m,"axG",@progbits,_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m
	.type	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m, @function
_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m:
.LFB4040:
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
# /usr/include/c++/15.2.1/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	-24(%rbp), %rax	# __n, tmp99
	salq	$5, %rax	#, tmp99
	movq	%rax, %rdx	# tmp99, _2
	movq	-16(%rbp), %rax	# __p, tmp100
	movq	%rdx, %rsi	# _2,
	movq	%rax, %rdi	# tmp100,
	call	_ZdlPvm@PLT	#
# /usr/include/c++/15.2.1/bits/new_allocator.h:173:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4040:
	.size	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m, .-_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m
	.section	.text._ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_,"axG",@progbits,_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_,comdat
	.weak	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
	.type	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, @function
_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_:
.LFB4042:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __pointer, __pointer
# /usr/include/c++/15.2.1/bits/stl_construct.h:166:       __pointer->~_Tp();
	movq	-8(%rbp), %rax	# __pointer, tmp98
	movq	%rax, %rdi	# tmp98,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# /usr/include/c++/15.2.1/bits/stl_construct.h:168:     }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4042:
	.size	_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, .-_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc:
.LFB4044:
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
# /usr/include/c++/15.2.1/bits/stl_vector.h:2197:       _M_check_len(size_type __n, const char* __s) const
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	movq	%rax, -24(%rbp)	# tmp111, D.81302
	xorl	%eax, %eax	# tmp111
# /usr/include/c++/15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	movq	-56(%rbp), %rax	# this, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv	#
	movq	%rax, %rbx	#, _1
# /usr/include/c++/15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	movq	-56(%rbp), %rax	# this, tmp113
	movq	%rax, %rdi	# tmp113,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	subq	%rax, %rbx	# _2, _1
	movq	%rbx, %rdx	# _1, _3
# /usr/include/c++/15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	movq	-64(%rbp), %rax	# __n, __n.34_4
	cmpq	%rax, %rdx	# __n.34_4, _3
	setb	%al	#, retval.33_18
# /usr/include/c++/15.2.1/bits/stl_vector.h:2199: 	if (max_size() - size() < __n)
	testb	%al, %al	# retval.33_18
	je	.L301	#,
# /usr/include/c++/15.2.1/bits/stl_vector.h:2200: 	  __throw_length_error(__N(__s));
	movq	-24(%rbp), %rax	# D.81302, tmp124
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp124
	je	.L302	#,
	call	__stack_chk_fail@PLT	#
.L302:
	movq	-72(%rbp), %rax	# __s, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZSt20__throw_length_errorPKc@PLT	#
.L301:
# /usr/include/c++/15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	-56(%rbp), %rax	# this, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
	movq	%rax, %rbx	#, _5
# /usr/include/c++/15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	-56(%rbp), %rax	# this, tmp116
	movq	%rax, %rdi	# tmp116,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	%rax, -40(%rbp)	# _6, D.79616
# /usr/include/c++/15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	leaq	-64(%rbp), %rdx	#, tmp117
	leaq	-40(%rbp), %rax	#, tmp118
	movq	%rdx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	_ZSt3maxImERKT_S2_S2_	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	(%rax), %rax	# *_7, _8
# /usr/include/c++/15.2.1/bits/stl_vector.h:2202: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rbx, %rax	# _5, tmp119
	movq	%rax, -32(%rbp)	# tmp119, __len
# /usr/include/c++/15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp120
	movq	%rax, %rdi	# tmp120,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	%rax, -32(%rbp)	# _9, __len
	jb	.L303	#,
# /usr/include/c++/15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp121
	movq	%rax, %rdi	# tmp121,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	-32(%rbp), %rax	# __len, _10
	jnb	.L304	#,
.L303:
# /usr/include/c++/15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp122
	movq	%rax, %rdi	# tmp122,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	jmp	.L306	#
.L304:
# /usr/include/c++/15.2.1/bits/stl_vector.h:2203: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-32(%rbp), %rax	# __len, _11
.L306:
# /usr/include/c++/15.2.1/bits/stl_vector.h:2204:       }
	movq	-24(%rbp), %rdx	# D.81302, tmp125
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	je	.L307	#,
	call	__stack_chk_fail@PLT	#
.L307:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4044:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv:
.LFB4045:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:1018:       end() _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.81303
	xorl	%eax, %eax	# tmp102
# /usr/include/c++/15.2.1/bits/stl_vector.h:1019:       { return iterator(this->_M_impl._M_finish); }
	movq	-40(%rbp), %rax	# this, tmp103
	addq	$8, %rax	#, _1
	movq	%rax, -16(%rbp)	# _1, __i
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	-16(%rbp), %rax	# __i, tmp104
	movq	(%rax), %rax	# *__i_6, _7
	movq	%rax, -24(%rbp)	# _7, D.79636._M_current
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	nop	
# /usr/include/c++/15.2.1/bits/stl_vector.h:1019:       { return iterator(this->_M_impl._M_finish); }
	movq	-24(%rbp), %rax	# D.79636, D.80562
# /usr/include/c++/15.2.1/bits/stl_vector.h:1019:       { return iterator(this->_M_impl._M_finish); }
	movq	-8(%rbp), %rdx	# D.81303, tmp106
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	je	.L310	#,
	call	__stack_chk_fail@PLT	#
.L310:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4045:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv:
.LFB4046:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:998:       begin() _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.81304
	xorl	%eax, %eax	# tmp102
# /usr/include/c++/15.2.1/bits/stl_vector.h:999:       { return iterator(this->_M_impl._M_start); }
	movq	-40(%rbp), %rax	# this, _1
	movq	%rax, -16(%rbp)	# _1, __i
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	-16(%rbp), %rax	# __i, tmp103
	movq	(%rax), %rax	# *__i_6, _7
	movq	%rax, -24(%rbp)	# _7, D.79638._M_current
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	nop	
# /usr/include/c++/15.2.1/bits/stl_vector.h:999:       { return iterator(this->_M_impl._M_start); }
	movq	-24(%rbp), %rax	# D.79638, D.80559
# /usr/include/c++/15.2.1/bits/stl_vector.h:999:       { return iterator(this->_M_impl._M_start); }
	movq	-8(%rbp), %rdx	# D.81304, tmp105
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	je	.L313	#,
	call	__stack_chk_fail@PLT	#
.L313:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4046:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.section	.text._ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm:
.LFB4048:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __n, __n
# /usr/include/c++/15.2.1/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cmpq	$0, -32(%rbp)	#, __n
	je	.L315	#,
# /usr/include/c++/15.2.1/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movq	-24(%rbp), %rax	# this, _1
	movq	%rax, -16(%rbp)	# _1, __a
	movq	-32(%rbp), %rax	# __n, tmp101
	movq	%rax, -8(%rbp)	# tmp101, __n
# /usr/include/c++/15.2.1/bits/alloc_traits.h:614:       { return __a.allocate(__n); }
	movq	-8(%rbp), %rcx	# __n, tmp102
	movq	-16(%rbp), %rax	# __a, tmp103
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv	#
# /usr/include/c++/15.2.1/bits/alloc_traits.h:614:       { return __a.allocate(__n); }
	nop	
	jmp	.L317	#
.L315:
# /usr/include/c++/15.2.1/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movl	$0, %eax	#, D.81097
.L317:
# /usr/include/c++/15.2.1/bits/stl_vector.h:388:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4048:
	.size	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm, .-_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC5EPS5_mRSt12_Vector_baseIS5_S6_E,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E:
.LFB4050:
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
# /usr/include/c++/15.2.1/bits/stl_vector.h:1876: 	: _M_storage(__s), _M_len(__l), _M_vect(__vect)
	movq	-8(%rbp), %rax	# this, tmp98
	movq	-16(%rbp), %rdx	# __s, tmp99
	movq	%rdx, (%rax)	# tmp99, this_2(D)->_M_storage
# /usr/include/c++/15.2.1/bits/stl_vector.h:1876: 	: _M_storage(__s), _M_len(__l), _M_vect(__vect)
	movq	-8(%rbp), %rax	# this, tmp100
	movq	-24(%rbp), %rdx	# __l, tmp101
	movq	%rdx, 8(%rax)	# tmp101, this_2(D)->_M_len
# /usr/include/c++/15.2.1/bits/stl_vector.h:1876: 	: _M_storage(__s), _M_len(__l), _M_vect(__vect)
	movq	-8(%rbp), %rax	# this, tmp102
	movq	-32(%rbp), %rdx	# __vect, tmp103
	movq	%rdx, 16(%rax)	# tmp103, this_2(D)->_M_vect
# /usr/include/c++/15.2.1/bits/stl_vector.h:1877: 	{ }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4050:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC1EPS5_mRSt12_Vector_baseIS5_S6_E
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC1EPS5_mRSt12_Vector_baseIS5_S6_E,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocC2EPS5_mRSt12_Vector_baseIS5_S6_E
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev:
.LFB4053:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:1882: 	  if (_M_storage)
	movq	-8(%rbp), %rax	# this, tmp102
	movq	(%rax), %rax	# this_7(D)->_M_storage, _1
# /usr/include/c++/15.2.1/bits/stl_vector.h:1882: 	  if (_M_storage)
	testq	%rax, %rax	# _1
	je	.L322	#,
# /usr/include/c++/15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	-8(%rbp), %rax	# this, tmp103
	movq	16(%rax), %rax	# this_7(D)->_M_vect, _2
# /usr/include/c++/15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	-8(%rbp), %rdx	# this, tmp104
	movq	8(%rdx), %rdx	# this_7(D)->_M_len, _3
# /usr/include/c++/15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	-8(%rbp), %rcx	# this, tmp105
	movq	(%rcx), %rcx	# this_7(D)->_M_storage, _4
# /usr/include/c++/15.2.1/bits/stl_vector.h:1883: 	    _M_vect._M_deallocate(_M_storage, _M_len);
	movq	%rcx, %rsi	# _4,
	movq	%rax, %rdi	# _2,
	call	_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m	#
.L322:
# /usr/include/c++/15.2.1/bits/stl_vector.h:1884: 	}
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4053:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD1Ev
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD1Ev,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_:
.LFB4056:
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
# /usr/include/c++/15.2.1/bits/stl_vector.h:539: 	return std::__relocate_a(__first, __last, __result, __alloc);
	movq	-32(%rbp), %rcx	# __alloc, tmp100
	movq	-24(%rbp), %rdx	# __result, tmp101
	movq	-16(%rbp), %rsi	# __last, tmp102
	movq	-8(%rbp), %rax	# __first, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:544:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4056:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv:
.LFB4057:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:1223:       empty() const _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp104
	movq	%rax, -8(%rbp)	# tmp104, D.81305
	xorl	%eax, %eax	# tmp104
# /usr/include/c++/15.2.1/bits/stl_vector.h:1224:       { return begin() == end(); }
	movq	-56(%rbp), %rax	# this, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv	#
	movq	%rax, -32(%rbp)	# tmp107, D.79764
# /usr/include/c++/15.2.1/bits/stl_vector.h:1224:       { return begin() == end(); }
	movq	-56(%rbp), %rax	# this, tmp108
	movq	%rax, %rdi	# tmp108,
	call	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv	#
	movq	%rax, -40(%rbp)	# tmp110, D.79757
	leaq	-40(%rbp), %rax	#, tmp111
	movq	%rax, -24(%rbp)	# tmp111, this
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1166:       { return _M_current; }
	movq	-24(%rbp), %rax	# this, _9
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1231:     { return __lhs.base() == __rhs.base(); }
	movq	(%rax), %rdx	# *_11, _12
	leaq	-32(%rbp), %rax	#, tmp112
	movq	%rax, -16(%rbp)	# tmp112, this
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1166:       { return _M_current; }
	movq	-16(%rbp), %rax	# this, _14
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1231:     { return __lhs.base() == __rhs.base(); }
	movq	(%rax), %rax	# *_16, _17
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1231:     { return __lhs.base() == __rhs.base(); }
	cmpq	%rax, %rdx	# _17, _12
	sete	%al	#, D.81071
# /usr/include/c++/15.2.1/bits/stl_vector.h:1224:       { return begin() == end(); }
	movq	-8(%rbp), %rdx	# D.81305, tmp114
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp114
	je	.L330	#,
	call	__stack_chk_fail@PLT	#
.L330:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4057:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5emptyEv
	.section	.text._ZNSt15__new_allocatorIcE10deallocateEPcm,"axG",@progbits,_ZNSt15__new_allocatorIcE10deallocateEPcm,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIcE10deallocateEPcm
	.type	_ZNSt15__new_allocatorIcE10deallocateEPcm, @function
_ZNSt15__new_allocatorIcE10deallocateEPcm:
.LFB4065:
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
# /usr/include/c++/15.2.1/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	movq	-24(%rbp), %rdx	# __n, tmp98
	movq	-16(%rbp), %rax	# __p, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	_ZdlPvm@PLT	#
# /usr/include/c++/15.2.1/bits/new_allocator.h:173:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4065:
	.size	_ZNSt15__new_allocatorIcE10deallocateEPcm, .-_ZNSt15__new_allocatorIcE10deallocateEPcm
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv:
.LFB4094:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:1129:       { return _S_max_size(_M_get_Tp_allocator()); }
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:1129:       { return _S_max_size(_M_get_Tp_allocator()); }
	movq	%rax, %rdi	# _2,
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:1129:       { return _S_max_size(_M_get_Tp_allocator()); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4094:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB4095:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __a, __a
	movq	%rsi, -16(%rbp)	# __b, __b
# /usr/include/c++/15.2.1/bits/stl_algobase.h:263:       if (__a < __b)
	movq	-8(%rbp), %rax	# __a, tmp102
	movq	(%rax), %rdx	# *__a_5(D), _1
	movq	-16(%rbp), %rax	# __b, tmp103
	movq	(%rax), %rax	# *__b_6(D), _2
# /usr/include/c++/15.2.1/bits/stl_algobase.h:263:       if (__a < __b)
	cmpq	%rax, %rdx	# _2, _1
	jnb	.L336	#,
# /usr/include/c++/15.2.1/bits/stl_algobase.h:264: 	return __b;
	movq	-16(%rbp), %rax	# __b, _3
	jmp	.L337	#
.L336:
# /usr/include/c++/15.2.1/bits/stl_algobase.h:265:       return __a;
	movq	-8(%rbp), %rax	# __a, _3
.L337:
# /usr/include/c++/15.2.1/bits/stl_algobase.h:266:     }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4095:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,"axG",@progbits,_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,comdat
	.weak	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.type	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, @function
_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_:
.LFB4101:
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
# /usr/include/c++/15.2.1/bits/stl_iterator.h:3011:     { return __it; }
	movq	-8(%rbp), %rdx	# __it, D.81173
	movq	-48(%rbp), %rax	# __last, tmp104
	movq	%rax, -16(%rbp)	# tmp104, __it
	movq	-16(%rbp), %rsi	# __it, D.81169
	movq	-40(%rbp), %rax	# __first, tmp105
	movq	%rax, -24(%rbp)	# tmp105, __it
	movq	-24(%rbp), %rax	# __it, D.81165
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1359:       return std::__relocate_a_1(std::__niter_base(__first),
	movq	-64(%rbp), %rcx	# __alloc, tmp106
	movq	%rax, %rdi	# D.81165,
	call	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_	#
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1362:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4101:
	.size	_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, .-_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv:
.LFB4102:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:1008:       begin() const _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.81306
	xorl	%eax, %eax	# tmp102
# /usr/include/c++/15.2.1/bits/stl_vector.h:1009:       { return const_iterator(this->_M_impl._M_start); }
	movq	-40(%rbp), %rax	# this, _1
	movq	%rax, -16(%rbp)	# _1, __i
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	-16(%rbp), %rax	# __i, tmp103
	movq	(%rax), %rax	# *__i_6, _7
	movq	%rax, -24(%rbp)	# _7, D.80029._M_current
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	nop	
# /usr/include/c++/15.2.1/bits/stl_vector.h:1009:       { return const_iterator(this->_M_impl._M_start); }
	movq	-24(%rbp), %rax	# D.80029, D.80626
# /usr/include/c++/15.2.1/bits/stl_vector.h:1009:       { return const_iterator(this->_M_impl._M_start); }
	movq	-8(%rbp), %rdx	# D.81306, tmp105
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	je	.L345	#,
	call	__stack_chk_fail@PLT	#
.L345:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4102:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.section	.text._ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,"axG",@progbits,_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.type	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, @function
_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv:
.LFB4103:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:1028:       end() const _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.81307
	xorl	%eax, %eax	# tmp102
# /usr/include/c++/15.2.1/bits/stl_vector.h:1029:       { return const_iterator(this->_M_impl._M_finish); }
	movq	-40(%rbp), %rax	# this, tmp103
	addq	$8, %rax	#, _1
	movq	%rax, -16(%rbp)	# _1, __i
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	movq	-16(%rbp), %rax	# __i, tmp104
	movq	(%rax), %rax	# *__i_6, _7
	movq	%rax, -24(%rbp)	# _7, D.80031._M_current
# /usr/include/c++/15.2.1/bits/stl_iterator.h:1059:       : _M_current(__i) { }
	nop	
# /usr/include/c++/15.2.1/bits/stl_vector.h:1029:       { return const_iterator(this->_M_impl._M_finish); }
	movq	-24(%rbp), %rax	# D.80031, D.80623
# /usr/include/c++/15.2.1/bits/stl_vector.h:1029:       { return const_iterator(this->_M_impl._M_finish); }
	movq	-8(%rbp), %rdx	# D.81307, tmp106
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	je	.L348	#,
	call	__stack_chk_fail@PLT	#
.L348:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4103:
	.size	_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, .-_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv
	.section	.text._ZNSt15__new_allocatorIcE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIcE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIcE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIcE8allocateEmPKv, @function
_ZNSt15__new_allocatorIcE8allocateEmPKv:
.LFB4107:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __n, __n
	movq	%rdx, -40(%rbp)	# D.80073, D.80073
	movq	-24(%rbp), %rax	# this, tmp105
	movq	%rax, -8(%rbp)	# tmp105, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$9223372036854775807, %rax	#, D.81012
# /usr/include/c++/15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	cmpq	-32(%rbp), %rax	# __n, D.81012
	setb	%al	#, _2
# /usr/include/c++/15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movzbl	%al, %eax	# _2, _3
# /usr/include/c++/15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testq	%rax, %rax	# _4
	setne	%al	#, retval.11_8
# /usr/include/c++/15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testb	%al, %al	# retval.11_8
	je	.L351	#,
# /usr/include/c++/15.2.1/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv@PLT	#
.L351:
# /usr/include/c++/15.2.1/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	-32(%rbp), %rax	# __n, tmp106
	movq	%rax, %rdi	# tmp106,
	call	_Znwm@PLT	#
# /usr/include/c++/15.2.1/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	nop	
# /usr/include/c++/15.2.1/bits/new_allocator.h:152:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4107:
	.size	_ZNSt15__new_allocatorIcE8allocateEmPKv, .-_ZNSt15__new_allocatorIcE8allocateEmPKv
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_, @function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_:
.LFB4120:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# __a, __a
# /usr/include/c++/15.2.1/bits/stl_vector.h:2217:       _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.81308
	xorl	%eax, %eax	# tmp102
# /usr/include/c++/15.2.1/bits/stl_vector.h:2222: 	const size_t __diffmax
	movabsq	$288230376151711743, %rax	#, tmp111
	movq	%rax, -48(%rbp)	# tmp111, __diffmax
	movq	-56(%rbp), %rax	# __a, tmp103
	movq	%rax, -32(%rbp)	# tmp103, __a
	movq	-32(%rbp), %rax	# __a, tmp104
	movq	%rax, -24(%rbp)	# tmp104, this
	movq	-24(%rbp), %rax	# this, tmp105
	movq	%rax, -16(%rbp)	# tmp105, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$288230376151711743, %rax	#, D.81118
# /usr/include/c++/15.2.1/bits/new_allocator.h:183:       { return _M_max_size(); }
	nop	
# /usr/include/c++/15.2.1/bits/alloc_traits.h:712: 	return __a.max_size();
	nop	
# /usr/include/c++/15.2.1/bits/stl_vector.h:2224: 	const size_t __allocmax = _Alloc_traits::max_size(__a);
	movq	%rax, -40(%rbp)	# D.81118, __allocmax
# /usr/include/c++/15.2.1/bits/stl_vector.h:2225: 	return (std::min)(__diffmax, __allocmax);
	leaq	-40(%rbp), %rdx	#, tmp106
	leaq	-48(%rbp), %rax	#, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	_ZSt3minImERKT_S2_S2_	#
# /usr/include/c++/15.2.1/bits/stl_vector.h:2225: 	return (std::min)(__diffmax, __allocmax);
	movq	(%rax), %rax	# *_2, _8
# /usr/include/c++/15.2.1/bits/stl_vector.h:2226:       }
	movq	-8(%rbp), %rdx	# D.81308, tmp109
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	je	.L358	#,
	call	__stack_chk_fail@PLT	#
.L358:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4120:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_, .-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_
	.section	.text._ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv:
.LFB4121:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/15.2.1/bits/stl_vector.h:313:       { return this->_M_impl; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include/c++/15.2.1/bits/stl_vector.h:313:       { return this->_M_impl; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4121:
	.size	_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, @function
_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv:
.LFB4122:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __n, __n
	movq	%rdx, -40(%rbp)	# D.80129, D.80129
	movq	-24(%rbp), %rax	# this, tmp106
	movq	%rax, -8(%rbp)	# tmp106, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$288230376151711743, %rax	#, D.81092
# /usr/include/c++/15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	cmpq	-32(%rbp), %rax	# __n, D.81092
	setb	%al	#, _2
# /usr/include/c++/15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movzbl	%al, %eax	# _2, _3
# /usr/include/c++/15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testq	%rax, %rax	# _4
	setne	%al	#, retval.35_9
# /usr/include/c++/15.2.1/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	testb	%al, %al	# retval.35_9
	je	.L363	#,
# /usr/include/c++/15.2.1/bits/new_allocator.h:138: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	movabsq	$576460752303423487, %rax	#, tmp107
	cmpq	-32(%rbp), %rax	# __n, tmp107
	jnb	.L364	#,
# /usr/include/c++/15.2.1/bits/new_allocator.h:139: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv@PLT	#
.L364:
# /usr/include/c++/15.2.1/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv@PLT	#
.L363:
# /usr/include/c++/15.2.1/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	-32(%rbp), %rax	# __n, tmp108
	salq	$5, %rax	#, _6
	movq	%rax, %rdi	# _6,
	call	_Znwm@PLT	#
# /usr/include/c++/15.2.1/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	nop	
# /usr/include/c++/15.2.1/bits/new_allocator.h:152:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4122:
	.size	_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, .-_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv
	.section	.text._ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.type	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, @function
_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_:
.LFB4124:
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
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1315:       _ForwardIterator __cur = __result;
	movq	-56(%rbp), %rax	# __result, tmp102
	movq	%rax, -24(%rbp)	# tmp102, __cur
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	jmp	.L367	#
.L370:
	movq	-40(%rbp), %rax	# __first, tmp103
	movq	%rax, -8(%rbp)	# tmp103, __r
# /usr/include/c++/15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-8(%rbp), %rcx	# __r, D.81161
	movq	-24(%rbp), %rax	# __cur, tmp104
	movq	%rax, -16(%rbp)	# tmp104, __r
	movq	-16(%rbp), %rax	# __r, D.81157
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1317: 	std::__relocate_object_a(std::__addressof(*__cur),
	movq	-64(%rbp), %rdx	# __alloc, tmp105
	movq	%rcx, %rsi	# D.81161,
	movq	%rax, %rdi	# D.81157,
	call	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_	#
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	addq	$32, -40(%rbp)	#, __first
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	addq	$32, -24(%rbp)	#, __cur
.L367:
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1316:       for (; __first != __last; ++__first, (void)++__cur)
	movq	-40(%rbp), %rax	# __first, tmp106
	cmpq	-48(%rbp), %rax	# __last, tmp106
	jne	.L370	#,
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1319:       return __cur;
	movq	-24(%rbp), %rax	# __cur, _11
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1320:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4124:
	.size	_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, .-_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_
	.section	.text._ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_:
.LFB4137:
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
# /usr/include/c++/15.2.1/bits/move.h:139:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-24(%rbp), %rax	# __t, D.81153
	movq	-152(%rbp), %rdx	# __alloc, tmp107
	movq	%rdx, -88(%rbp)	# tmp107, __a
	movq	-136(%rbp), %rdx	# __dest, tmp108
	movq	%rdx, -80(%rbp)	# tmp108, __p
	movq	%rax, -72(%rbp)	# D.81153, __args#0
	movq	-72(%rbp), %rax	# __args#0, tmp109
	movq	%rax, -64(%rbp)	# tmp109, __t
# /usr/include/c++/15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-64(%rbp), %rax	# __t, _17
	movq	-80(%rbp), %rdx	# __p, tmp110
	movq	%rdx, -56(%rbp)	# tmp110, __p
	movq	%rax, -48(%rbp)	# _17, __args#0
	movq	-88(%rbp), %rax	# __a, tmp111
	movq	%rax, -40(%rbp)	# tmp111, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-56(%rbp), %rbx	# __p, _23
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movl	$32, %edi	#,
	call	_ZnwmPv	#
	movq	%rax, %r12	#, _24
	movq	-48(%rbp), %rax	# __args#0, tmp112
	movq	%rax, -32(%rbp)	# tmp112, __t
# /usr/include/c++/15.2.1/bits/move.h:73:     { return static_cast<_Tp&&>(__t); }
	movq	-32(%rbp), %rax	# __t, _28
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %rsi	# _28,
	movq	%r12, %rdi	# _24,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_	#
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	$0, %eax	#, _31
	testb	%al, %al	# _31
	je	.L376	#,
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rbx, %rsi	# _23,
	movq	%r12, %rdi	# _24,
	call	_ZdlPvS_	#
.L376:
# /usr/include/c++/15.2.1/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/include/c++/15.2.1/bits/alloc_traits.h:680: 	}
	nop	
	movq	-144(%rbp), %rax	# __orig, tmp113
	movq	%rax, -96(%rbp)	# tmp113, __r
# /usr/include/c++/15.2.1/bits/move.h:53:     { return __builtin_addressof(__r); }
	movq	-96(%rbp), %rax	# __r, D.81132
	movq	-152(%rbp), %rdx	# __alloc, tmp114
	movq	%rdx, -128(%rbp)	# tmp114, __a
	movq	%rax, -120(%rbp)	# D.81132, __p
	movq	-120(%rbp), %rax	# __p, tmp115
	movq	%rax, -112(%rbp)	# tmp115, __p
	movq	-128(%rbp), %rax	# __a, tmp116
	movq	%rax, -104(%rbp)	# tmp116, this
# /usr/include/c++/15.2.1/bits/new_allocator.h:198: 	{ __p->~_Up(); }
	movq	-112(%rbp), %rax	# __p, tmp117
	movq	%rax, %rdi	# tmp117,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
# /usr/include/c++/15.2.1/bits/new_allocator.h:198: 	{ __p->~_Up(); }
	nop	
# /usr/include/c++/15.2.1/bits/alloc_traits.h:700: 	}
	nop	
# /usr/include/c++/15.2.1/bits/stl_uninitialized.h:1290:     }
	nop	
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4137:
	.size	_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_
	.section	.rodata
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
	.long	1056964608
	.align 4
.LC9:
	.long	1163984896
	.align 4
.LC10:
	.long	1114636288
	.align 4
.LC16:
	.long	1157234688
	.align 4
.LC17:
	.long	1092616192
	.align 4
.LC20:
	.long	1107505971
	.align 4
.LC21:
	.long	1166016512
	.align 4
.LC22:
	.long	1036831949
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
