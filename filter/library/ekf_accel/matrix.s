	.file	"matrix.cpp"
# GNU C++17 (GCC) version 15.2.1 20260103 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.1 20260103, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata
.LC0:
	.string	"EKF Assertion Failed: "
#NO_APP
	.text
	.globl	_Z14SPEW_THE_ERRORPKc
	.type	_Z14SPEW_THE_ERRORPKc, @function
_Z14SPEW_THE_ERRORPKc:
.LFB2966:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# str, str
# matrix.cpp:14:   std::cerr << "EKF Assertion Failed: " << str << std::endl;
	leaq	.LC0(%rip), %rdx	#, tmp100
	leaq	_ZSt4cerr(%rip), %rax	#, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _1
# matrix.cpp:14:   std::cerr << "EKF Assertion Failed: " << str << std::endl;
	movq	-8(%rbp), %rax	# str, tmp102
	movq	%rax, %rsi	# tmp102,
	movq	%rdx, %rdi	# _1,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# matrix.cpp:14:   std::cerr << "EKF Assertion Failed: " << str << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# _2,
	call	_ZNSolsEPFRSoS_E@PLT	#
# matrix.cpp:15:   std::exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE2966:
	.size	_Z14SPEW_THE_ERRORPKc, .-_Z14SPEW_THE_ERRORPKc
	.ident	"GCC: (GNU) 15.2.1 20260103"
	.section	.note.GNU-stack,"",@progbits
