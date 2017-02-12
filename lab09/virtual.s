	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              ## imm = 0x140
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-184(%rbp), %rcx
	movl	$0, -156(%rbp)
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rdi
	movq	%rdi, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	%rdi, -120(%rbp)
	movq	-120(%rbp), %rdi
	movq	%rdi, %r8
	movq	%r8, -112(%rbp)
	movq	%rcx, -240(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-240(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movl	$0, -100(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$3, -100(%rbp)
	jae	LBB0_3
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	movq	$0, (%rdx,%rcx,8)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	LBB0_1
LBB0_3:
Ltmp0:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp1:
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	jmp	LBB0_4
LBB0_4:
	movq	-248(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -56(%rbp)
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rcx
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rdi
Ltmp2:
	callq	*%rcx
Ltmp3:
	movq	%rax, -256(%rbp)        ## 8-byte Spill
	jmp	LBB0_5
LBB0_5:
	jmp	LBB0_6
LBB0_6:
Ltmp4:
	leaq	L_.str.1(%rip), %rsi
	movq	-256(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp5:
	movq	%rax, -264(%rbp)        ## 8-byte Spill
	jmp	LBB0_7
LBB0_7:
	movq	-264(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -40(%rbp)
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rdi
Ltmp6:
	callq	*%rcx
Ltmp7:
	movq	%rax, -272(%rbp)        ## 8-byte Spill
	jmp	LBB0_8
LBB0_8:
	jmp	LBB0_9
LBB0_9:
Ltmp8:
	movq	__ZNSt3__13cinE@GOTPCREL(%rip), %rdi
	leaq	-184(%rbp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp9:
	movq	%rax, -280(%rbp)        ## 8-byte Spill
	jmp	LBB0_10
LBB0_10:
	leaq	L_.str.2(%rip), %rax
	leaq	-184(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc
	cmpl	$0, %eax
	jne	LBB0_14
## BB#11:
Ltmp12:
	movl	$8, %eax
	movl	%eax, %edi
	callq	__Znwm
Ltmp13:
	movq	%rax, -288(%rbp)        ## 8-byte Spill
	jmp	LBB0_12
LBB0_12:
	xorl	%esi, %esi
	movl	$8, %eax
	movl	%eax, %edx
	movq	-288(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, -296(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-296(%rbp), %rdi        ## 8-byte Reload
	callq	__ZN6AnimalC1Ev
	movq	-296(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -192(%rbp)
	jmp	LBB0_18
LBB0_13:
Ltmp20:
	movl	%edx, %ecx
	movq	%rax, -200(%rbp)
	movl	%ecx, -204(%rbp)
Ltmp21:
	leaq	-184(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp22:
	jmp	LBB0_22
LBB0_14:
	leaq	L_.str.3(%rip), %rax
	leaq	-184(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc
	cmpl	$0, %eax
	jne	LBB0_17
## BB#15:
Ltmp10:
	movl	$8, %eax
	movl	%eax, %edi
	callq	__Znwm
Ltmp11:
	movq	%rax, -304(%rbp)        ## 8-byte Spill
	jmp	LBB0_16
LBB0_16:
	xorl	%esi, %esi
	movl	$8, %eax
	movl	%eax, %edx
	movq	-304(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, -312(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-312(%rbp), %rdi        ## 8-byte Reload
	callq	__ZN3DogC1Ev
	movq	-312(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -192(%rbp)
LBB0_17:
	jmp	LBB0_18
LBB0_18:
	movq	-192(%rbp), %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
Ltmp14:
	leaq	-232(%rbp), %rdi
	movq	%rax, %rsi
	callq	*%rcx
Ltmp15:
	jmp	LBB0_19
LBB0_19:
Ltmp16:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp17:
	jmp	LBB0_20
LBB0_20:
	movq	-192(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
Ltmp18:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp19:
	movl	%eax, -316(%rbp)        ## 4-byte Spill
	jmp	LBB0_21
LBB0_21:
	leaq	-184(%rbp), %rdi
	movl	$0, -156(%rbp)
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-156(%rbp), %eax
	addq	$320, %rsp              ## imm = 0x140
	popq	%rbp
	retq
LBB0_22:
	jmp	LBB0_23
LBB0_23:
	movq	-200(%rbp), %rdi
	callq	__Unwind_Resume
LBB0_24:
Ltmp23:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -320(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\360"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	104                     ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp13-Ltmp0                    ##   Call between Ltmp0 and Ltmp13
	.long	Lset3
Lset4 = Ltmp20-Lfunc_begin0             ##     jumps to Ltmp20
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp13-Lfunc_begin0             ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp21-Ltmp13                   ##   Call between Ltmp13 and Ltmp21
	.long	Lset6
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset7 = Ltmp21-Lfunc_begin0             ## >> Call Site 4 <<
	.long	Lset7
Lset8 = Ltmp22-Ltmp21                   ##   Call between Ltmp21 and Ltmp22
	.long	Lset8
Lset9 = Ltmp23-Lfunc_begin0             ##     jumps to Ltmp23
	.long	Lset9
	.byte	1                       ##   On action: 1
Lset10 = Ltmp10-Lfunc_begin0            ## >> Call Site 5 <<
	.long	Lset10
Lset11 = Ltmp11-Ltmp10                  ##   Call between Ltmp10 and Ltmp11
	.long	Lset11
Lset12 = Ltmp20-Lfunc_begin0            ##     jumps to Ltmp20
	.long	Lset12
	.byte	0                       ##   On action: cleanup
Lset13 = Ltmp11-Lfunc_begin0            ## >> Call Site 6 <<
	.long	Lset13
Lset14 = Ltmp14-Ltmp11                  ##   Call between Ltmp11 and Ltmp14
	.long	Lset14
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset15 = Ltmp14-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset15
Lset16 = Ltmp19-Ltmp14                  ##   Call between Ltmp14 and Ltmp19
	.long	Lset16
Lset17 = Ltmp20-Lfunc_begin0            ##     jumps to Ltmp20
	.long	Lset17
	.byte	0                       ##   On action: cleanup
Lset18 = Ltmp19-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset18
Lset19 = Lfunc_end0-Ltmp19              ##   Call between Ltmp19 and Lfunc_end0
	.long	Lset19
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_def_can_be_hidden	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.align	4, 0x90
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp38:
	.cfi_def_cfa_offset 16
Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rdi, %rax
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
	movq	%rdi, -32(%rbp)
	movb	$10, -33(%rbp)
	movq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	movq	%rcx, -88(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -24(%rbp)
Ltmp30:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp31:
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	jmp	LBB2_1
LBB2_1:
	movb	-33(%rbp), %al
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-9(%rbp), %edi
Ltmp32:
	movl	%edi, -100(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-100(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -112(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-112(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp33:
	movb	%al, -113(%rbp)         ## 1-byte Spill
	jmp	LBB2_5
LBB2_2:
Ltmp34:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
Ltmp35:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp36:
	jmp	LBB2_3
LBB2_3:
	movq	-56(%rbp), %rdi
	callq	__Unwind_Resume
LBB2_4:
Ltmp37:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -120(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB2_5:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movb	-113(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	-72(%rbp), %rdi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	-72(%rbp), %rdi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	movq	%rdi, %rax
	addq	$144, %rsp
	popq	%rbp
	retq
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table2:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\274"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset20 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset20
Lset21 = Ltmp30-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp30
	.long	Lset21
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset22 = Ltmp30-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset22
Lset23 = Ltmp33-Ltmp30                  ##   Call between Ltmp30 and Ltmp33
	.long	Lset23
Lset24 = Ltmp34-Lfunc_begin1            ##     jumps to Ltmp34
	.long	Lset24
	.byte	0                       ##   On action: cleanup
Lset25 = Ltmp35-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset25
Lset26 = Ltmp36-Ltmp35                  ##   Call between Ltmp35 and Ltmp36
	.long	Lset26
Lset27 = Ltmp37-Lfunc_begin1            ##     jumps to Ltmp37
	.long	Lset27
	.byte	1                       ##   On action: 1
Lset28 = Ltmp36-Lfunc_begin1            ## >> Call Site 4 <<
	.long	Lset28
Lset29 = Lfunc_end1-Ltmp36              ##   Call between Ltmp36 and Lfunc_end1
	.long	Lset29
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.weak_def_can_be_hidden	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.align	4, 0x90
__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE: ## @_ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Ltmp69:
	.cfi_def_cfa_offset 16
Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$688, %rsp              ## imm = 0x2B0
	movq	%rdi, -488(%rbp)
	movq	%rsi, -496(%rbp)
	movq	-488(%rbp), %rsi
Ltmp41:
	leaq	-504(%rbp), %rdi
	xorl	%edx, %edx
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
Ltmp42:
	jmp	LBB3_1
LBB3_1:
	leaq	-504(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -562(%rbp)         ## 1-byte Spill
## BB#2:
	movb	-562(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB3_3
	jmp	LBB3_51
LBB3_3:
	movq	-496(%rbp), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rcx
	movq	%rcx, -400(%rbp)
	movq	-400(%rbp), %rcx
	movq	%rcx, -392(%rbp)
	movq	-392(%rbp), %rcx
	movzbl	(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movq	%rax, -576(%rbp)        ## 8-byte Spill
	je	LBB3_5
## BB#4:
	leaq	-469(%rbp), %rsi
	movq	-576(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rcx
	movq	%rcx, -304(%rbp)
	movq	-304(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movq	-296(%rbp), %rcx
	movq	16(%rcx), %rdi
	movb	$0, -469(%rbp)
	callq	__ZNSt3__111char_traitsIcE6assignERcRKc
	movq	-576(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -336(%rbp)
	movq	$0, -344(%rbp)
	movq	-336(%rbp), %rcx
	movq	-344(%rbp), %rsi
	movq	%rcx, -328(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rsi, 8(%rcx)
	jmp	LBB3_6
LBB3_5:
	leaq	-470(%rbp), %rsi
	movq	-576(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rcx
	movq	%rcx, -376(%rbp)
	movq	-376(%rbp), %rcx
	movq	%rcx, -368(%rbp)
	movq	-368(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -352(%rbp)
	movq	-352(%rbp), %rdi
	movb	$0, -470(%rbp)
	callq	__ZNSt3__111char_traitsIcE6assignERcRKc
	movq	-576(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -432(%rbp)
	movq	$0, -440(%rbp)
	movq	-432(%rbp), %rcx
	movq	-440(%rbp), %rsi
	shlq	$1, %rsi
	movb	%sil, %dl
	movq	%rcx, -424(%rbp)
	movq	-424(%rbp), %rcx
	movq	%rcx, -416(%rbp)
	movq	-416(%rbp), %rcx
	movb	%dl, (%rcx)
LBB3_6:
	movq	-488(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -584(%rbp)        ## 8-byte Spill
## BB#7:
	movq	-584(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -528(%rbp)
	cmpq	$0, -528(%rbp)
	jg	LBB3_10
## BB#8:
	movq	-496(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	$-1, -280(%rbp)
	movq	-280(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -528(%rbp)
	jmp	LBB3_10
LBB3_9:
Ltmp62:
	movl	%edx, %ecx
	movq	%rax, -512(%rbp)
	movl	%ecx, -516(%rbp)
	jmp	LBB3_28
LBB3_10:
	cmpq	$0, -528(%rbp)
	jg	LBB3_12
## BB#11:
	movabsq	$9223372036854775807, %rax ## imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -528(%rbp)
LBB3_12:
	movq	$0, -536(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
Ltmp45:
	leaq	-552(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp46:
	jmp	LBB3_13
LBB3_13:
	leaq	-552(%rbp), %rax
	movq	%rax, -112(%rbp)
Ltmp47:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp48:
	movq	%rax, -592(%rbp)        ## 8-byte Spill
	jmp	LBB3_14
LBB3_14:
	movq	-592(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -600(%rbp)        ## 8-byte Spill
## BB#15:
Ltmp52:
	leaq	-552(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp53:
	jmp	LBB3_16
LBB3_16:
	movq	-600(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -544(%rbp)
	movl	$0, -556(%rbp)
LBB3_17:                                ## =>This Inner Loop Header: Depth=1
	movq	-536(%rbp), %rax
	cmpq	-528(%rbp), %rax
	jge	LBB3_45
## BB#18:                               ##   in Loop: Header=BB3_17 Depth=1
	movq	-488(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -608(%rbp)        ## 8-byte Spill
## BB#19:                               ##   in Loop: Header=BB3_17 Depth=1
	movq	-608(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	24(%rcx), %rdx
	cmpq	32(%rcx), %rdx
	movq	%rcx, -616(%rbp)        ## 8-byte Spill
	jne	LBB3_22
## BB#20:                               ##   in Loop: Header=BB3_17 Depth=1
	movq	-616(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	72(%rcx), %rcx
Ltmp54:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp55:
	movl	%eax, -620(%rbp)        ## 4-byte Spill
	jmp	LBB3_21
LBB3_21:                                ##   in Loop: Header=BB3_17 Depth=1
	movl	-620(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -36(%rbp)
	jmp	LBB3_23
LBB3_22:                                ##   in Loop: Header=BB3_17 Depth=1
	movq	-616(%rbp), %rax        ## 8-byte Reload
	movq	24(%rax), %rcx
	movsbl	(%rcx), %edi
	callq	__ZNSt3__111char_traitsIcE11to_int_typeEc
	movl	%eax, -36(%rbp)
LBB3_23:                                ##   in Loop: Header=BB3_17 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -624(%rbp)        ## 4-byte Spill
## BB#24:                               ##   in Loop: Header=BB3_17 Depth=1
	movl	-624(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -560(%rbp)
	movl	-560(%rbp), %edi
	movl	%edi, -628(%rbp)        ## 4-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	-628(%rbp), %edi        ## 4-byte Reload
	movl	%eax, %esi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB3_25
	jmp	LBB3_31
LBB3_25:
	movl	-556(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -556(%rbp)
	jmp	LBB3_45
LBB3_26:
Ltmp49:
	movl	%edx, %ecx
	movq	%rax, -512(%rbp)
	movl	%ecx, -516(%rbp)
Ltmp50:
	leaq	-552(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp51:
	jmp	LBB3_27
LBB3_27:
	jmp	LBB3_28
LBB3_28:
	movq	-512(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-488(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
Ltmp63:
	movq	%rax, -640(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp64:
	jmp	LBB3_29
LBB3_29:
	callq	___cxa_end_catch
LBB3_30:
	movq	-488(%rbp), %rax
	addq	$688, %rsp              ## imm = 0x2B0
	popq	%rbp
	retq
LBB3_31:                                ##   in Loop: Header=BB3_17 Depth=1
	movl	-560(%rbp), %edi
	callq	__ZNSt3__111char_traitsIcE12to_char_typeEi
	movb	%al, -561(%rbp)
	movq	-544(%rbp), %rcx
	movb	-561(%rbp), %al
	movq	%rcx, -24(%rbp)
	movl	$16384, -28(%rbp)       ## imm = 0x4000
	movb	%al, -29(%rbp)
	movq	-24(%rbp), %rcx
	movsbl	-29(%rbp), %edi
	movq	%rcx, -648(%rbp)        ## 8-byte Spill
	callq	__Z7isasciii
	cmpl	$0, %eax
	je	LBB3_33
## BB#32:                               ##   in Loop: Header=BB3_17 Depth=1
	movsbl	-29(%rbp), %eax
	movslq	%eax, %rcx
	movq	-648(%rbp), %rdx        ## 8-byte Reload
	movq	16(%rdx), %rsi
	movl	(%rsi,%rcx,4), %eax
	andl	-28(%rbp), %eax
	cmpl	$0, %eax
	setne	%dil
	movb	%dil, -649(%rbp)        ## 1-byte Spill
	jmp	LBB3_34
LBB3_33:                                ##   in Loop: Header=BB3_17 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, -649(%rbp)         ## 1-byte Spill
	jmp	LBB3_34
LBB3_34:                                ##   in Loop: Header=BB3_17 Depth=1
	movb	-649(%rbp), %al         ## 1-byte Reload
	movb	%al, -650(%rbp)         ## 1-byte Spill
## BB#35:                               ##   in Loop: Header=BB3_17 Depth=1
	movb	-650(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB3_36
	jmp	LBB3_37
LBB3_36:
	jmp	LBB3_45
LBB3_37:                                ##   in Loop: Header=BB3_17 Depth=1
	movq	-496(%rbp), %rdi
	movsbl	-561(%rbp), %esi
Ltmp56:
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp57:
	jmp	LBB3_38
LBB3_38:                                ##   in Loop: Header=BB3_17 Depth=1
	movq	-536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -536(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -664(%rbp)        ## 8-byte Spill
## BB#39:                               ##   in Loop: Header=BB3_17 Depth=1
	movq	-664(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rdx
	cmpq	32(%rcx), %rdx
	movq	%rcx, -672(%rbp)        ## 8-byte Spill
	jne	LBB3_42
## BB#40:                               ##   in Loop: Header=BB3_17 Depth=1
	movq	-672(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	80(%rcx), %rcx
Ltmp58:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp59:
	movl	%eax, -676(%rbp)        ## 4-byte Spill
	jmp	LBB3_41
LBB3_41:                                ##   in Loop: Header=BB3_17 Depth=1
	movl	-676(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -52(%rbp)
	jmp	LBB3_43
LBB3_42:                                ##   in Loop: Header=BB3_17 Depth=1
	movq	-672(%rbp), %rax        ## 8-byte Reload
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movsbl	(%rcx), %edi
	callq	__ZNSt3__111char_traitsIcE11to_int_typeEc
	movl	%eax, -52(%rbp)
LBB3_43:                                ##   in Loop: Header=BB3_17 Depth=1
## BB#44:                               ##   in Loop: Header=BB3_17 Depth=1
	jmp	LBB3_17
LBB3_45:
	movq	-488(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, 24(%rax)
## BB#46:
	cmpq	$0, -536(%rbp)
	jne	LBB3_48
## BB#47:
	movl	-556(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -556(%rbp)
LBB3_48:
	movq	-488(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movl	-556(%rbp), %edx
	movq	%rax, -136(%rbp)
	movl	%edx, -140(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	%edx, -124(%rbp)
	movq	-120(%rbp), %rax
	movl	32(%rax), %esi
	orl	%edx, %esi
Ltmp60:
	movq	%rax, %rdi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp61:
	jmp	LBB3_49
LBB3_49:
	jmp	LBB3_50
LBB3_50:
	jmp	LBB3_54
LBB3_51:
	movq	-488(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movl	$4, -172(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$4, -156(%rbp)
	movq	-152(%rbp), %rax
	movl	32(%rax), %edx
	orl	$4, %edx
Ltmp43:
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp44:
	jmp	LBB3_52
LBB3_52:
	jmp	LBB3_53
LBB3_53:
	jmp	LBB3_54
LBB3_54:
	jmp	LBB3_30
LBB3_55:
Ltmp65:
	movl	%edx, %ecx
	movq	%rax, -512(%rbp)
	movl	%ecx, -516(%rbp)
Ltmp66:
	callq	___cxa_end_catch
Ltmp67:
	jmp	LBB3_56
LBB3_56:
	jmp	LBB3_57
LBB3_57:
	movq	-512(%rbp), %rdi
	callq	__Unwind_Resume
LBB3_58:
Ltmp68:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -680(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table3:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\213\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset30 = Ltmp41-Lfunc_begin2            ## >> Call Site 1 <<
	.long	Lset30
Lset31 = Ltmp46-Ltmp41                  ##   Call between Ltmp41 and Ltmp46
	.long	Lset31
Lset32 = Ltmp62-Lfunc_begin2            ##     jumps to Ltmp62
	.long	Lset32
	.byte	1                       ##   On action: 1
Lset33 = Ltmp47-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset33
Lset34 = Ltmp48-Ltmp47                  ##   Call between Ltmp47 and Ltmp48
	.long	Lset34
Lset35 = Ltmp49-Lfunc_begin2            ##     jumps to Ltmp49
	.long	Lset35
	.byte	1                       ##   On action: 1
Lset36 = Ltmp52-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset36
Lset37 = Ltmp55-Ltmp52                  ##   Call between Ltmp52 and Ltmp55
	.long	Lset37
Lset38 = Ltmp62-Lfunc_begin2            ##     jumps to Ltmp62
	.long	Lset38
	.byte	1                       ##   On action: 1
Lset39 = Ltmp50-Lfunc_begin2            ## >> Call Site 4 <<
	.long	Lset39
Lset40 = Ltmp51-Ltmp50                  ##   Call between Ltmp50 and Ltmp51
	.long	Lset40
Lset41 = Ltmp68-Lfunc_begin2            ##     jumps to Ltmp68
	.long	Lset41
	.byte	1                       ##   On action: 1
Lset42 = Ltmp51-Lfunc_begin2            ## >> Call Site 5 <<
	.long	Lset42
Lset43 = Ltmp63-Ltmp51                  ##   Call between Ltmp51 and Ltmp63
	.long	Lset43
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset44 = Ltmp63-Lfunc_begin2            ## >> Call Site 6 <<
	.long	Lset44
Lset45 = Ltmp64-Ltmp63                  ##   Call between Ltmp63 and Ltmp64
	.long	Lset45
Lset46 = Ltmp65-Lfunc_begin2            ##     jumps to Ltmp65
	.long	Lset46
	.byte	0                       ##   On action: cleanup
Lset47 = Ltmp64-Lfunc_begin2            ## >> Call Site 7 <<
	.long	Lset47
Lset48 = Ltmp56-Ltmp64                  ##   Call between Ltmp64 and Ltmp56
	.long	Lset48
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset49 = Ltmp56-Lfunc_begin2            ## >> Call Site 8 <<
	.long	Lset49
Lset50 = Ltmp44-Ltmp56                  ##   Call between Ltmp56 and Ltmp44
	.long	Lset50
Lset51 = Ltmp62-Lfunc_begin2            ##     jumps to Ltmp62
	.long	Lset51
	.byte	1                       ##   On action: 1
Lset52 = Ltmp66-Lfunc_begin2            ## >> Call Site 9 <<
	.long	Lset52
Lset53 = Ltmp67-Ltmp66                  ##   Call between Ltmp66 and Ltmp67
	.long	Lset53
Lset54 = Ltmp68-Lfunc_begin2            ##     jumps to Ltmp68
	.long	Lset54
	.byte	1                       ##   On action: 1
Lset55 = Ltmp67-Lfunc_begin2            ## >> Call Site 10 <<
	.long	Lset55
Lset56 = Lfunc_end2-Ltmp67              ##   Call between Ltmp67 and Lfunc_end2
	.long	Lset56
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN6AnimalC1Ev
	.weak_def_can_be_hidden	__ZN6AnimalC1Ev
	.align	4, 0x90
__ZN6AnimalC1Ev:                        ## @_ZN6AnimalC1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp72:
	.cfi_def_cfa_offset 16
Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN6AnimalC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN3DogC1Ev
	.weak_def_can_be_hidden	__ZN3DogC1Ev
	.align	4, 0x90
__ZN3DogC1Ev:                           ## @_ZN3DogC1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp75:
	.cfi_def_cfa_offset 16
Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN3DogC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	movq	%rax, (%rsp)            ## 8-byte Spill
	callq	__ZSt9terminatev

	.globl	__ZN6AnimalC2Ev
	.weak_def_can_be_hidden	__ZN6AnimalC2Ev
	.align	4, 0x90
__ZN6AnimalC2Ev:                        ## @_ZN6AnimalC2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp78:
	.cfi_def_cfa_offset 16
Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp80:
	.cfi_def_cfa_register %rbp
	movq	__ZTV6Animal@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN6Animal9classNameEv
	.weak_def_can_be_hidden	__ZN6Animal9classNameEv
	.align	4, 0x90
__ZN6Animal9classNameEv:                ## @_ZN6Animal9classNameEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp81:
	.cfi_def_cfa_offset 16
Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	movl	$24, %edx
                                        ## 
	leaq	L_.str.4(%rip), %r8
	movq	%rsi, -72(%rbp)
	movq	%rdi, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movq	%rsi, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, %r8
	movq	%r8, -8(%rbp)
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	_memset
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rsi, -96(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	-96(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	movq	-88(%rbp), %rax         ## 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN6Animal12return0Then1Ev
	.weak_def_can_be_hidden	__ZN6Animal12return0Then1Ev
	.align	4, 0x90
__ZN6Animal12return0Then1Ev:            ## @_ZN6Animal12return0Then1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp84:
	.cfi_def_cfa_offset 16
Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp86:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE6lengthEPKc
	.align	4, 0x90
__ZNSt3__111char_traitsIcE6lengthEPKc:  ## @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp87:
	.cfi_def_cfa_offset 16
Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN3DogC2Ev
	.weak_def_can_be_hidden	__ZN3DogC2Ev
	.align	4, 0x90
__ZN3DogC2Ev:                           ## @_ZN3DogC2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp90:
	.cfi_def_cfa_offset 16
Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZN6AnimalC2Ev
	movq	__ZTV3Dog@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, (%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN3Dog9classNameEv
	.weak_def_can_be_hidden	__ZN3Dog9classNameEv
	.align	4, 0x90
__ZN3Dog9classNameEv:                   ## @_ZN3Dog9classNameEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp93:
	.cfi_def_cfa_offset 16
Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	movl	$24, %edx
                                        ## 
	leaq	L_.str.5(%rip), %r8
	movq	%rsi, -72(%rbp)
	movq	%rdi, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movq	%rsi, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, %r8
	movq	%r8, -8(%rbp)
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	_memset
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rsi, -96(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	-96(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	movq	-88(%rbp), %rax         ## 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN3Dog12return0Then1Ev
	.weak_def_can_be_hidden	__ZN3Dog12return0Then1Ev
	.align	4, 0x90
__ZN3Dog12return0Then1Ev:               ## @_ZN3Dog12return0Then1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp96:
	.cfi_def_cfa_offset 16
Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp98:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## BB#0:
	pushq	%rbp
Ltmp129:
	.cfi_def_cfa_offset 16
Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              ## imm = 0x1A0
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-200(%rbp), %rsi
Ltmp99:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp100:
	jmp	LBB14_1
LBB14_1:
	leaq	-232(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -265(%rbp)         ## 1-byte Spill
## BB#2:
	movb	-265(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB14_3
	jmp	LBB14_26
LBB14_3:
	leaq	-256(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-24(%rdx), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %edi
	movq	%rsi, -280(%rbp)        ## 8-byte Spill
	movl	%edi, -284(%rbp)        ## 4-byte Spill
## BB#4:
	movl	-284(%rbp), %eax        ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	LBB14_6
## BB#5:
	movq	-208(%rbp), %rax
	addq	-216(%rbp), %rax
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	jmp	LBB14_7
LBB14_6:
	movq	-208(%rbp), %rax
	movq	%rax, -296(%rbp)        ## 8-byte Spill
LBB14_7:
	movq	-296(%rbp), %rax        ## 8-byte Reload
	movq	-208(%rbp), %rcx
	addq	-216(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-24(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-200(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-24(%rdi), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -72(%rbp)
	movq	-72(%rbp), %rsi
	movq	%rax, -304(%rbp)        ## 8-byte Spill
	movq	%rcx, -312(%rbp)        ## 8-byte Spill
	movq	%rdx, -320(%rbp)        ## 8-byte Spill
	movq	%rsi, -328(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movq	-328(%rbp), %rcx        ## 8-byte Reload
	movl	144(%rcx), %esi
	movl	%eax, %edi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB14_8
	jmp	LBB14_16
LBB14_8:
	movq	-328(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -32(%rbp)
	movb	$32, -33(%rbp)
	movq	-32(%rbp), %rsi
Ltmp101:
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp102:
	jmp	LBB14_9
LBB14_9:
	leaq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
Ltmp103:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp104:
	movq	%rax, -336(%rbp)        ## 8-byte Spill
	jmp	LBB14_10
LBB14_10:
	movb	-33(%rbp), %al
	movq	-336(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-9(%rbp), %edi
Ltmp105:
	movl	%edi, -340(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-340(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -352(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-352(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp106:
	movb	%al, -353(%rbp)         ## 1-byte Spill
	jmp	LBB14_14
LBB14_11:
Ltmp107:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
Ltmp108:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp109:
	jmp	LBB14_12
LBB14_12:
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %ecx
	movq	%rax, -368(%rbp)        ## 8-byte Spill
	movl	%ecx, -372(%rbp)        ## 4-byte Spill
	jmp	LBB14_24
LBB14_13:
Ltmp110:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -376(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB14_14:
Ltmp111:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp112:
	jmp	LBB14_15
LBB14_15:
	movb	-353(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %ecx
	movq	-328(%rbp), %rdx        ## 8-byte Reload
	movl	%ecx, 144(%rdx)
LBB14_16:
	movq	-328(%rbp), %rax        ## 8-byte Reload
	movl	144(%rax), %ecx
	movb	%cl, %dl
	movb	%dl, -377(%rbp)         ## 1-byte Spill
## BB#17:
	movq	-256(%rbp), %rdi
Ltmp113:
	movb	-377(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %r9d
	movq	-280(%rbp), %rsi        ## 8-byte Reload
	movq	-304(%rbp), %rdx        ## 8-byte Reload
	movq	-312(%rbp), %rcx        ## 8-byte Reload
	movq	-320(%rbp), %r8         ## 8-byte Reload
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp114:
	movq	%rax, -392(%rbp)        ## 8-byte Spill
	jmp	LBB14_18
LBB14_18:
	leaq	-264(%rbp), %rax
	movq	-392(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -264(%rbp)
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB14_25
## BB#19:
	movq	-200(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movl	$5, -116(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$5, -100(%rbp)
	movq	-96(%rbp), %rax
	movl	32(%rax), %edx
	orl	$5, %edx
Ltmp115:
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp116:
	jmp	LBB14_20
LBB14_20:
	jmp	LBB14_21
LBB14_21:
	jmp	LBB14_25
LBB14_22:
Ltmp122:
	movl	%edx, %ecx
	movq	%rax, -240(%rbp)
	movl	%ecx, -244(%rbp)
	jmp	LBB14_29
LBB14_23:
Ltmp117:
	movl	%edx, %ecx
	movq	%rax, -368(%rbp)        ## 8-byte Spill
	movl	%ecx, -372(%rbp)        ## 4-byte Spill
	jmp	LBB14_24
LBB14_24:
	movl	-372(%rbp), %eax        ## 4-byte Reload
	movq	-368(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -240(%rbp)
	movl	%eax, -244(%rbp)
Ltmp118:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp119:
	jmp	LBB14_28
LBB14_25:
	jmp	LBB14_26
LBB14_26:
Ltmp120:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp121:
	jmp	LBB14_27
LBB14_27:
	jmp	LBB14_31
LBB14_28:
	jmp	LBB14_29
LBB14_29:
	movq	-240(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-200(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
Ltmp123:
	movq	%rax, -400(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp124:
	jmp	LBB14_30
LBB14_30:
	callq	___cxa_end_catch
LBB14_31:
	movq	-200(%rbp), %rax
	addq	$416, %rsp              ## imm = 0x1A0
	popq	%rbp
	retq
LBB14_32:
Ltmp125:
	movl	%edx, %ecx
	movq	%rax, -240(%rbp)
	movl	%ecx, -244(%rbp)
Ltmp126:
	callq	___cxa_end_catch
Ltmp127:
	jmp	LBB14_33
LBB14_33:
	jmp	LBB14_34
LBB14_34:
	movq	-240(%rbp), %rdi
	callq	__Unwind_Resume
LBB14_35:
Ltmp128:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -404(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table14:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\253\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\234\001"              ## Call site table length
Lset57 = Ltmp99-Lfunc_begin3            ## >> Call Site 1 <<
	.long	Lset57
Lset58 = Ltmp100-Ltmp99                 ##   Call between Ltmp99 and Ltmp100
	.long	Lset58
Lset59 = Ltmp122-Lfunc_begin3           ##     jumps to Ltmp122
	.long	Lset59
	.byte	5                       ##   On action: 3
Lset60 = Ltmp101-Lfunc_begin3           ## >> Call Site 2 <<
	.long	Lset60
Lset61 = Ltmp102-Ltmp101                ##   Call between Ltmp101 and Ltmp102
	.long	Lset61
Lset62 = Ltmp117-Lfunc_begin3           ##     jumps to Ltmp117
	.long	Lset62
	.byte	5                       ##   On action: 3
Lset63 = Ltmp103-Lfunc_begin3           ## >> Call Site 3 <<
	.long	Lset63
Lset64 = Ltmp106-Ltmp103                ##   Call between Ltmp103 and Ltmp106
	.long	Lset64
Lset65 = Ltmp107-Lfunc_begin3           ##     jumps to Ltmp107
	.long	Lset65
	.byte	3                       ##   On action: 2
Lset66 = Ltmp108-Lfunc_begin3           ## >> Call Site 4 <<
	.long	Lset66
Lset67 = Ltmp109-Ltmp108                ##   Call between Ltmp108 and Ltmp109
	.long	Lset67
Lset68 = Ltmp110-Lfunc_begin3           ##     jumps to Ltmp110
	.long	Lset68
	.byte	7                       ##   On action: 4
Lset69 = Ltmp111-Lfunc_begin3           ## >> Call Site 5 <<
	.long	Lset69
Lset70 = Ltmp116-Ltmp111                ##   Call between Ltmp111 and Ltmp116
	.long	Lset70
Lset71 = Ltmp117-Lfunc_begin3           ##     jumps to Ltmp117
	.long	Lset71
	.byte	5                       ##   On action: 3
Lset72 = Ltmp118-Lfunc_begin3           ## >> Call Site 6 <<
	.long	Lset72
Lset73 = Ltmp119-Ltmp118                ##   Call between Ltmp118 and Ltmp119
	.long	Lset73
Lset74 = Ltmp128-Lfunc_begin3           ##     jumps to Ltmp128
	.long	Lset74
	.byte	5                       ##   On action: 3
Lset75 = Ltmp120-Lfunc_begin3           ## >> Call Site 7 <<
	.long	Lset75
Lset76 = Ltmp121-Ltmp120                ##   Call between Ltmp120 and Ltmp121
	.long	Lset76
Lset77 = Ltmp122-Lfunc_begin3           ##     jumps to Ltmp122
	.long	Lset77
	.byte	5                       ##   On action: 3
Lset78 = Ltmp121-Lfunc_begin3           ## >> Call Site 8 <<
	.long	Lset78
Lset79 = Ltmp123-Ltmp121                ##   Call between Ltmp121 and Ltmp123
	.long	Lset79
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset80 = Ltmp123-Lfunc_begin3           ## >> Call Site 9 <<
	.long	Lset80
Lset81 = Ltmp124-Ltmp123                ##   Call between Ltmp123 and Ltmp124
	.long	Lset81
Lset82 = Ltmp125-Lfunc_begin3           ##     jumps to Ltmp125
	.long	Lset82
	.byte	0                       ##   On action: cleanup
Lset83 = Ltmp124-Lfunc_begin3           ## >> Call Site 10 <<
	.long	Lset83
Lset84 = Ltmp126-Ltmp124                ##   Call between Ltmp124 and Ltmp126
	.long	Lset84
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset85 = Ltmp126-Lfunc_begin3           ## >> Call Site 11 <<
	.long	Lset85
Lset86 = Ltmp127-Ltmp126                ##   Call between Ltmp126 and Ltmp127
	.long	Lset86
Lset87 = Ltmp128-Lfunc_begin3           ##     jumps to Ltmp128
	.long	Lset87
	.byte	5                       ##   On action: 3
Lset88 = Ltmp127-Lfunc_begin3           ## >> Call Site 12 <<
	.long	Lset88
Lset89 = Lfunc_end3-Ltmp127             ##   Call between Ltmp127 and Lfunc_end3
	.long	Lset89
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	0                       ## >> Action Record 1 <<
                                        ##   Cleanup
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 1
	.byte	1                       ## >> Action Record 3 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 4 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 3
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## BB#0:
	pushq	%rbp
Ltmp138:
	.cfi_def_cfa_offset 16
Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$736, %rsp              ## imm = 0x2E0
	movb	%r9b, %al
	leaq	-552(%rbp), %r10
	leaq	-488(%rbp), %r11
	movq	%rdi, -504(%rbp)
	movq	%rsi, -512(%rbp)
	movq	%rdx, -520(%rbp)
	movq	%rcx, -528(%rbp)
	movq	%r8, -536(%rbp)
	movb	%al, -537(%rbp)
	movq	-504(%rbp), %rcx
	movq	%r11, -472(%rbp)
	movq	$-1, -480(%rbp)
	movq	-472(%rbp), %rdx
	movq	-480(%rbp), %rsi
	movq	%rdx, -456(%rbp)
	movq	%rsi, -464(%rbp)
	movq	-456(%rbp), %rdx
	movq	$0, (%rdx)
	movq	-488(%rbp), %rdx
	movq	%rdx, -552(%rbp)
	movq	%r10, -448(%rbp)
	cmpq	$0, %rcx
	jne	LBB15_2
## BB#1:
	movq	-504(%rbp), %rax
	movq	%rax, -496(%rbp)
	jmp	LBB15_29
LBB15_2:
	movq	-528(%rbp), %rax
	movq	-512(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -560(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	cmpq	-560(%rbp), %rax
	jle	LBB15_4
## BB#3:
	movq	-560(%rbp), %rax
	movq	-568(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -568(%rbp)
	jmp	LBB15_5
LBB15_4:
	movq	$0, -568(%rbp)
LBB15_5:
	movq	-520(%rbp), %rax
	movq	-512(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jle	LBB15_9
## BB#6:
	movq	-504(%rbp), %rax
	movq	-512(%rbp), %rcx
	movq	-576(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-248(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rax, %rdi
	callq	*%rcx
	cmpq	-576(%rbp), %rax
	je	LBB15_8
## BB#7:
	leaq	-584(%rbp), %rax
	leaq	-240(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	$-1, -232(%rbp)
	movq	-224(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movq	%rcx, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-208(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-240(%rbp), %rcx
	movq	%rcx, -584(%rbp)
	movq	%rax, -8(%rbp)
	movq	$0, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -496(%rbp)
	jmp	LBB15_29
LBB15_8:
	jmp	LBB15_9
LBB15_9:
	cmpq	$0, -568(%rbp)
	jle	LBB15_24
## BB#10:
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-608(%rbp), %rcx
	movq	-568(%rbp), %rdi
	movb	-537(%rbp), %r8b
	movq	%rcx, -72(%rbp)
	movq	%rdi, -80(%rbp)
	movb	%r8b, -81(%rbp)
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rdi
	movb	-81(%rbp), %r8b
	movq	%rcx, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movb	%r8b, -57(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, %r9
	movq	%r9, -16(%rbp)
	movq	%rcx, -656(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-56(%rbp), %rsi
	movq	-656(%rbp), %rdi        ## 8-byte Reload
	movsbl	-57(%rbp), %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	leaq	-608(%rbp), %rcx
	movq	-504(%rbp), %rsi
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rdi
	movq	%rdi, -176(%rbp)
	movq	-176(%rbp), %rdi
	movq	%rdi, -168(%rbp)
	movq	-168(%rbp), %rdi
	movzbl	(%rdi), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	movq	%rsi, -664(%rbp)        ## 8-byte Spill
	movq	%rcx, -672(%rbp)        ## 8-byte Spill
	je	LBB15_12
## BB#11:
	movq	-672(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -680(%rbp)        ## 8-byte Spill
	jmp	LBB15_13
LBB15_12:
	movq	-672(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -680(%rbp)        ## 8-byte Spill
LBB15_13:
	movq	-680(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-568(%rbp), %rcx
	movq	-664(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -272(%rbp)
	movq	%rax, -280(%rbp)
	movq	%rcx, -288(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rsi
	movq	96(%rsi), %rsi
	movq	-280(%rbp), %rdi
Ltmp132:
	movq	%rdi, -688(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-688(%rbp), %rax        ## 8-byte Reload
	movq	%rsi, -696(%rbp)        ## 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	-696(%rbp), %rcx        ## 8-byte Reload
	callq	*%rcx
Ltmp133:
	movq	%rax, -704(%rbp)        ## 8-byte Spill
	jmp	LBB15_14
LBB15_14:
	jmp	LBB15_15
LBB15_15:
	movq	-704(%rbp), %rax        ## 8-byte Reload
	cmpq	-568(%rbp), %rax
	je	LBB15_20
## BB#16:
	leaq	-328(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	$-1, -320(%rbp)
	movq	-312(%rbp), %rax
	movq	-320(%rbp), %rcx
	movq	%rax, -296(%rbp)
	movq	%rcx, -304(%rbp)
	movq	-296(%rbp), %rax
	movq	$0, (%rax)
	movq	-328(%rbp), %rax
	movq	%rax, -712(%rbp)        ## 8-byte Spill
## BB#17:
	leaq	-632(%rbp), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -632(%rbp)
	movq	%rax, -336(%rbp)
## BB#18:
	movq	$0, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -496(%rbp)
	movl	$1, -636(%rbp)
	jmp	LBB15_21
LBB15_19:
Ltmp134:
	movl	%edx, %ecx
	movq	%rax, -616(%rbp)
	movl	%ecx, -620(%rbp)
Ltmp135:
	leaq	-608(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp136:
	jmp	LBB15_23
LBB15_20:
	movl	$0, -636(%rbp)
LBB15_21:
	leaq	-608(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-636(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -716(%rbp)        ## 4-byte Spill
	je	LBB15_22
	jmp	LBB15_33
LBB15_33:
	movl	-716(%rbp), %eax        ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -720(%rbp)        ## 4-byte Spill
	je	LBB15_29
	jmp	LBB15_32
LBB15_22:
	jmp	LBB15_24
LBB15_23:
	jmp	LBB15_30
LBB15_24:
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jle	LBB15_28
## BB#25:
	movq	-504(%rbp), %rax
	movq	-520(%rbp), %rcx
	movq	-576(%rbp), %rdx
	movq	%rax, -352(%rbp)
	movq	%rcx, -360(%rbp)
	movq	%rdx, -368(%rbp)
	movq	-352(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-360(%rbp), %rsi
	movq	-368(%rbp), %rdx
	movq	%rax, %rdi
	callq	*%rcx
	cmpq	-576(%rbp), %rax
	je	LBB15_27
## BB#26:
	leaq	-648(%rbp), %rax
	leaq	-408(%rbp), %rcx
	movq	%rcx, -392(%rbp)
	movq	$-1, -400(%rbp)
	movq	-392(%rbp), %rcx
	movq	-400(%rbp), %rdx
	movq	%rcx, -376(%rbp)
	movq	%rdx, -384(%rbp)
	movq	-376(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-408(%rbp), %rcx
	movq	%rcx, -648(%rbp)
	movq	%rax, -416(%rbp)
	movq	$0, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -496(%rbp)
	jmp	LBB15_29
LBB15_27:
	jmp	LBB15_28
LBB15_28:
	movq	-536(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	$0, -432(%rbp)
	movq	-424(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -440(%rbp)
	movq	-432(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-504(%rbp), %rax
	movq	%rax, -496(%rbp)
LBB15_29:
	movq	-496(%rbp), %rax
	addq	$736, %rsp              ## imm = 0x2E0
	popq	%rbp
	retq
LBB15_30:
	movq	-616(%rbp), %rdi
	callq	__Unwind_Resume
LBB15_31:
Ltmp137:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -724(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB15_32:
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table15:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\274"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset90 = Lfunc_begin4-Lfunc_begin4      ## >> Call Site 1 <<
	.long	Lset90
Lset91 = Ltmp132-Lfunc_begin4           ##   Call between Lfunc_begin4 and Ltmp132
	.long	Lset91
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset92 = Ltmp132-Lfunc_begin4           ## >> Call Site 2 <<
	.long	Lset92
Lset93 = Ltmp133-Ltmp132                ##   Call between Ltmp132 and Ltmp133
	.long	Lset93
Lset94 = Ltmp134-Lfunc_begin4           ##     jumps to Ltmp134
	.long	Lset94
	.byte	0                       ##   On action: cleanup
Lset95 = Ltmp135-Lfunc_begin4           ## >> Call Site 3 <<
	.long	Lset95
Lset96 = Ltmp136-Ltmp135                ##   Call between Ltmp135 and Ltmp136
	.long	Lset96
Lset97 = Ltmp137-Lfunc_begin4           ##     jumps to Ltmp137
	.long	Lset97
	.byte	1                       ##   On action: 1
Lset98 = Ltmp136-Lfunc_begin4           ## >> Call Site 4 <<
	.long	Lset98
Lset99 = Lfunc_end4-Ltmp136             ##   Call between Ltmp136 and Lfunc_end4
	.long	Lset99
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp141:
	.cfi_def_cfa_offset 16
Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp143:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	cmpl	-8(%rbp), %esi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__111char_traitsIcE3eofEv
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE3eofEv
	.align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp144:
	.cfi_def_cfa_offset 16
Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp146:
	.cfi_def_cfa_register %rbp
	movl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__111char_traitsIcE12to_char_typeEi
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE12to_char_typeEi
	.align	4, 0x90
__ZNSt3__111char_traitsIcE12to_char_typeEi: ## @_ZNSt3__111char_traitsIcE12to_char_typeEi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp147:
	.cfi_def_cfa_offset 16
Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp149:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movb	%dil, %al
	movsbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__111char_traitsIcE6assignERcRKc
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE6assignERcRKc
	.align	4, 0x90
__ZNSt3__111char_traitsIcE6assignERcRKc: ## @_ZNSt3__111char_traitsIcE6assignERcRKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp150:
	.cfi_def_cfa_offset 16
Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp152:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movb	(%rsi), %al
	movq	-8(%rbp), %rsi
	movb	%al, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__111char_traitsIcE11to_int_typeEc
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE11to_int_typeEc
	.align	4, 0x90
__ZNSt3__111char_traitsIcE11to_int_typeEc: ## @_ZNSt3__111char_traitsIcE11to_int_typeEc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp153:
	.cfi_def_cfa_offset 16
Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp155:
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z7isasciii
	.weak_def_can_be_hidden	__Z7isasciii
	.align	4, 0x90
__Z7isasciii:                           ## @_Z7isasciii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp156:
	.cfi_def_cfa_offset 16
Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp158:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	andl	$-128, %edi
	cmpl	$0, %edi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"please enter 'yes' to create an Animal"

L_.str.1:                               ## @.str.1
	.asciz	" or 'no' to create a Dog"

L_.str.2:                               ## @.str.2
	.asciz	"yes"

L_.str.3:                               ## @.str.3
	.asciz	"no"

	.section	__DATA,__data
	.globl	__ZTV6Animal            ## @_ZTV6Animal
	.weak_def_can_be_hidden	__ZTV6Animal
	.align	3
__ZTV6Animal:
	.quad	0
	.quad	__ZTI6Animal
	.quad	__ZN6Animal9classNameEv
	.quad	__ZN6Animal12return0Then1Ev

	.section	__TEXT,__const
	.globl	__ZTS6Animal            ## @_ZTS6Animal
	.weak_definition	__ZTS6Animal
__ZTS6Animal:
	.asciz	"6Animal"

	.section	__DATA,__data
	.globl	__ZTI6Animal            ## @_ZTI6Animal
	.weak_definition	__ZTI6Animal
	.align	3
__ZTI6Animal:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS6Animal

	.section	__TEXT,__cstring,cstring_literals
L_.str.4:                               ## @.str.4
	.asciz	"Animal"

	.section	__DATA,__data
	.globl	__ZTV3Dog               ## @_ZTV3Dog
	.weak_def_can_be_hidden	__ZTV3Dog
	.align	3
__ZTV3Dog:
	.quad	0
	.quad	__ZTI3Dog
	.quad	__ZN3Dog9classNameEv
	.quad	__ZN3Dog12return0Then1Ev

	.section	__TEXT,__const
	.globl	__ZTS3Dog               ## @_ZTS3Dog
	.weak_definition	__ZTS3Dog
__ZTS3Dog:
	.asciz	"3Dog"

	.section	__DATA,__data
	.globl	__ZTI3Dog               ## @_ZTI3Dog
	.weak_definition	__ZTI3Dog
	.align	4
__ZTI3Dog:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTS3Dog
	.quad	__ZTI6Animal

	.section	__TEXT,__cstring,cstring_literals
L_.str.5:                               ## @.str.5
	.asciz	"Dog"


.subsections_via_symbols
