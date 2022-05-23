	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"test.cpp"
	.def	 "?ascii_to_digit1@@YAED@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,"?ascii_to_digit1@@YAED@Z"
	.globl	"?ascii_to_digit1@@YAED@Z"
	.p2align	4, 0x90
"?ascii_to_digit1@@YAED@Z":
	cmpb	$48, %cl
	jl	.LBB0_3
	movl	%ecx, %eax
	cmpb	$57, %cl
	jg	.LBB0_4
	addb	$-48, %al
	retq
	.p2align	5, 0x90
.LBB0_4:
	cmpb	$65, %al
	jl	.LBB0_3
	cmpb	$70, %al
	jg	.LBB0_8
	addb	$-55, %al
	retq
	.p2align	5, 0x90
.LBB0_3:
	xorl	%eax, %eax
	retq
	.p2align	5, 0x90
.LBB0_8:
	leal	-97(%rax), %ecx
	addb	$-87, %al
	xorl	%edx, %edx
	cmpb	$6, %cl
	movzbl	%al, %eax
	cmovael	%edx, %eax
	retq

	.def	 "?ascii_to_digit2@@YAED@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,"?ascii_to_digit2@@YAED@Z"
	.globl	"?ascii_to_digit2@@YAED@Z"
	.p2align	4, 0x90
"?ascii_to_digit2@@YAED@Z":
	leal	-48(%rcx), %eax
	leal	-55(%rcx), %edx
	addb	$-87, %cl
	cmpb	$16, %dl
	movzbl	%cl, %ecx
	movzbl	%dl, %edx
	cmovael	%ecx, %edx
	cmpb	$10, %al
	movzbl	%al, %eax
	cmovael	%edx, %eax
	retq

	.def	 "?ascii_to_digit3@@YAED@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,"?ascii_to_digit3@@YAED@Z"
	.globl	"?ascii_to_digit3@@YAED@Z"
	.p2align	4, 0x90
"?ascii_to_digit3@@YAED@Z":
	addb	$-48, %cl
	xorl	%eax, %eax
	cmpb	$10, %cl
	movl	$249, %edx
	cmovll	%eax, %edx
	addb	%cl, %dl
	cmpb	$26, %dl
	setl	%al
	shlb	$5, %al
	addb	%dl, %al
	addb	$-32, %al
	retq

	.def	 "?ascii_to_digit31@@YAED@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,"?ascii_to_digit31@@YAED@Z"
	.globl	"?ascii_to_digit31@@YAED@Z"
	.p2align	4, 0x90
"?ascii_to_digit31@@YAED@Z":
	xorl	%eax, %eax
	cmpb	$58, %cl
	movl	$249, %edx
	cmovll	%eax, %edx
	addb	%cl, %dl
	cmpb	$71, %cl
	setl	%al
	shlb	$5, %al
	addb	%dl, %al
	addb	$-80, %al
	retq

	.def	 "?ascii_to_digit4@@YAED@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,"?ascii_to_digit4@@YAED@Z"
	.globl	"?ascii_to_digit4@@YAED@Z"
	.p2align	4, 0x90
"?ascii_to_digit4@@YAED@Z":
	movzbl	%cl, %eax
	leaq	".L?map@?1??ascii_to_digit4@@YAED@Z@4QBEB.const"(%rip), %rcx
	movb	(%rax,%rcx), %al
	retq

	.def	 "?ascii_to_digit5@@YAED@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,"?ascii_to_digit5@@YAED@Z"
	.globl	"?ascii_to_digit5@@YAED@Z"
	.p2align	4, 0x90
"?ascii_to_digit5@@YAED@Z":
	movsbl	%cl, %eax
	addl	$-49, %eax
	cmpl	$53, %eax
	ja	.LBB5_16
	leaq	.LJTI5_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB5_10:
	movb	$10, %al
	retq
	.p2align	5, 0x90
.LBB5_11:
	movb	$11, %al
	retq
	.p2align	5, 0x90
.LBB5_12:
	movb	$12, %al
	retq
	.p2align	5, 0x90
.LBB5_13:
	movb	$13, %al
	retq
	.p2align	5, 0x90
.LBB5_14:
	movb	$14, %al
	retq
	.p2align	5, 0x90
.LBB5_15:
	movb	$15, %al
	retq
	.p2align	5, 0x90
.LBB5_17:
	movb	$1, %al
	retq
	.p2align	5, 0x90
.LBB5_2:
	movb	$2, %al
	retq
	.p2align	5, 0x90
.LBB5_3:
	movb	$3, %al
	retq
	.p2align	5, 0x90
.LBB5_4:
	movb	$4, %al
	retq
	.p2align	5, 0x90
.LBB5_5:
	movb	$5, %al
	retq
	.p2align	5, 0x90
.LBB5_6:
	movb	$6, %al
	retq
	.p2align	5, 0x90
.LBB5_7:
	movb	$7, %al
	retq
	.p2align	5, 0x90
.LBB5_8:
	movb	$8, %al
	retq
	.p2align	5, 0x90
.LBB5_9:
	movb	$9, %al
	retq
	.p2align	5, 0x90
.LBB5_16:
	xorl	%eax, %eax
	retq
	.p2align	2, 0x90
.LJTI5_0:
	.long	.LBB5_17-.LJTI5_0
	.long	.LBB5_2-.LJTI5_0
	.long	.LBB5_3-.LJTI5_0
	.long	.LBB5_4-.LJTI5_0
	.long	.LBB5_5-.LJTI5_0
	.long	.LBB5_6-.LJTI5_0
	.long	.LBB5_7-.LJTI5_0
	.long	.LBB5_8-.LJTI5_0
	.long	.LBB5_9-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_10-.LJTI5_0
	.long	.LBB5_11-.LJTI5_0
	.long	.LBB5_12-.LJTI5_0
	.long	.LBB5_13-.LJTI5_0
	.long	.LBB5_14-.LJTI5_0
	.long	.LBB5_15-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_16-.LJTI5_0
	.long	.LBB5_10-.LJTI5_0
	.long	.LBB5_11-.LJTI5_0
	.long	.LBB5_12-.LJTI5_0
	.long	.LBB5_13-.LJTI5_0
	.long	.LBB5_14-.LJTI5_0
	.long	.LBB5_15-.LJTI5_0

	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@ffffffffffffffff0000000000000040
	.section	.rdata,"dr",discard,__xmm@ffffffffffffffff0000000000000040
	.p2align	4
__xmm@ffffffffffffffff0000000000000040:
	.quad	64
	.quad	-1
	.globl	__real@3e30000000000000
	.section	.rdata,"dr",discard,__real@3e30000000000000
	.p2align	3
__real@3e30000000000000:
	.quad	0x3e30000000000000
	.globl	__real@438dcd6500000000
	.section	.rdata,"dr",discard,__real@438dcd6500000000
	.p2align	3
__real@438dcd6500000000:
	.quad	0x438dcd6500000000
	.globl	__real@3ff0000000000000
	.section	.rdata,"dr",discard,__real@3ff0000000000000
	.p2align	3
__real@3ff0000000000000:
	.quad	0x3ff0000000000000
	.globl	__real@3eb0c6f7a0b5ed8d
	.section	.rdata,"dr",discard,__real@3eb0c6f7a0b5ed8d
	.p2align	3
__real@3eb0c6f7a0b5ed8d:
	.quad	0x3eb0c6f7a0b5ed8d
	.section	.text,"xr",one_only,main
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$680, %rsp
	.seh_stackalloc 680
	vmovupd	%xmm14, 656(%rsp)
	.seh_savexmm %xmm14, 656
	vmovups	%xmm13, 640(%rsp)
	.seh_savexmm %xmm13, 640
	vmovups	%xmm12, 624(%rsp)
	.seh_savexmm %xmm12, 624
	vmovups	%xmm11, 608(%rsp)
	.seh_savexmm %xmm11, 608
	vmovups	%xmm10, 592(%rsp)
	.seh_savexmm %xmm10, 592
	vmovupd	%xmm9, 576(%rsp)
	.seh_savexmm %xmm9, 576
	vmovupd	%xmm8, 560(%rsp)
	.seh_savexmm %xmm8, 560
	vmovupd	%xmm7, 544(%rsp)
	.seh_savexmm %xmm7, 544
	vmovupd	%xmm6, 528(%rsp)
	.seh_savexmm %xmm6, 528
	.seh_endprologue
	movabsq	$4816840611962862, %rdx
	movl	$3, %ecx
	callq	__intel_new_feature_proc_init
	movl	"?$TSS0@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@4HA"(%rip), %eax
	movl	_tls_index(%rip), %ecx
	movq	%gs:88, %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpl	_Init_thread_epoch@SECREL32(%rcx), %eax
	jg	.LBB6_131
.LBB6_1:
	leaq	128(%rsp), %r13
	movl	$268435456, %edx
	movq	%r13, %rcx
	xorl	%r8d, %r8d
	callq	"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z"
	movq	144(%rsp), %r15
	cmpq	$16, 152(%rsp)
	jb	.LBB6_3
	movq	128(%rsp), %r13
.LBB6_3:
	testq	%r15, %r15
	je	.LBB6_10
	addq	%r13, %r15
	vmovupd	__xmm@ffffffffffffffff0000000000000040(%rip), %xmm6
	leaq	272(%rsp), %rdi
	movabsq	$3353953467947191203, %r14
	leaq	"??_C@_0BH@GKBEKKHM@0123456789ABCDEFabcdef?$AA@"(%rip), %r12
	jmp	.LBB6_6
	.p2align	5, 0x90
.LBB6_5:
	leaq	(%rsi,%rsi,4), %rcx
	leaq	(%rsi,%rcx,4), %rcx
	addq	%rsi, %rcx
	subq	%rcx, %rax
	movzbl	(%rax,%r12), %eax
	movb	%al, (%r13)
	incq	%r13
	cmpq	%r15, %r13
	je	.LBB6_10
.LBB6_6:
	leaq	"?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"(%rip), %rax
	movq	%rax, 272(%rsp)
	vmovupd	%xmm6, 280(%rsp)
	movl	$64, %ecx
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB6_7:
	decb	%cl
	shlxq	%rcx, %rdx, %rsi
	addq	%rsi, %rsi
	movq	%rdi, %rcx
	callq	"?_Get_bits@?$_Rng_from_urng@_KV?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@std@@@std@@AEAA_KXZ"
	orq	%rsi, %rax
	movq	280(%rsp), %rcx
	leal	-1(%rcx), %edx
	shlxq	%rdx, %rbx, %rbx
	addq	%rbx, %rbx
	orq	288(%rsp), %rbx
	movq	%rax, %rdx
	cmpq	$21, %rbx
	jb	.LBB6_7
	movq	%rax, %rdx
	mulxq	%r14, %rsi, %rsi
	shrq	$2, %rsi
	movq	%rbx, %rdx
	mulxq	%r14, %rdx, %rdx
	shrq	$2, %rdx
	cmpq	%rdx, %rsi
	jb	.LBB6_5
	leaq	(%rdx,%rdx,4), %rbp
	leaq	(%rdx,%rbp,4), %rbp
	addq	%rdx, %rbp
	subq	%rbp, %rbx
	movl	$0, %edx
	cmpq	$21, %rbx
	movl	$0, %ebx
	jne	.LBB6_7
	jmp	.LBB6_5
	.p2align	5, 0x90
.LBB6_10:
	movl	$-128, %esi
	xorl	%r15d, %r15d
	leaq	".L?map@?1??ascii_to_digit4@@YAED@Z@4QBEB.const"(%rip), %r14
	leaq	"??_C@_0BE@NLNDGEPD@?$CFd?3?5?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFd?6?$AA@"(%rip), %r12
	jmp	.LBB6_13
	.p2align	5, 0x90
.LBB6_11:
	xorl	%r13d, %r13d
.LBB6_12:
	movb	%r13b, 272(%rsp)
	leal	-48(%rsi), %eax
	leal	-55(%rsi), %ecx
	leal	-87(%rsi), %edx
	cmpb	$16, %cl
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	cmovael	%edx, %ecx
	cmpb	$10, %al
	movzbl	%al, %ebx
	cmovael	%ecx, %ebx
	movb	%bl, 273(%rsp)
	xorl	%eax, %eax
	cmpb	$71, %sil
	setl	%al
	shll	$5, %eax
	leal	-7(%rax), %ecx
	cmpb	$58, %sil
	cmovll	%eax, %ecx
	leal	176(%rcx,%rsi), %edi
	movb	%dil, 274(%rsp)
	movzbl	%sil, %eax
	movzbl	(%rax,%r14), %ebp
	movb	%bpl, 275(%rsp)
	movl	%esi, %ecx
	callq	"?ascii_to_digit5@@YAED@Z"
	movb	%al, 276(%rsp)
	movzbl	%al, %eax
	movzbl	%dil, %ecx
	movzbl	%bl, %r9d
	movzbl	%r13b, %r8d
	movl	%eax, 48(%rsp)
	movl	%ebp, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movq	%r12, %rcx
	movl	%esi, %edx
	callq	printf
	incl	%esi
	cmpl	$128, %esi
	je	.LBB6_21
.LBB6_13:
	cmpb	$48, %sil
	jl	.LBB6_11
	cmpb	$57, %sil
	jg	.LBB6_16
	leal	-48(%rsi), %r13d
	jmp	.LBB6_12
	.p2align	5, 0x90
.LBB6_16:
	cmpb	$65, %sil
	jl	.LBB6_11
	cmpb	$70, %sil
	jg	.LBB6_20
	leal	-55(%rsi), %r13d
	jmp	.LBB6_12
	.p2align	5, 0x90
.LBB6_20:
	leal	-97(%rsi), %eax
	leal	-87(%rsi), %ecx
	cmpb	$6, %al
	movzbl	%cl, %r13d
	cmovael	%r15d, %r13d
	jmp	.LBB6_12
	.p2align	5, 0x90
.LBB6_21:
	leaq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rcx
	movq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rax
	movslq	4(%rax), %rax
	movq	72(%rax,%rcx), %rdx
	xorl	%esi, %esi
	leaq	160(%rsp), %r13
	movq	%r13, %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	"??0?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@_N@Z"
	movq	160(%rsp), %rax
	movslq	4(%rax), %rax
	movl	$-449, %ecx
	andl	184(%rsp,%rax), %ecx
	orl	$64, %ecx
	movl	%ecx, 184(%rsp,%rax)
	leaq	"??_C@_0BA@LDFPKFIO@?$DN?$DN?$DN?$DN?5Measuring?5?$AA@"(%rip), %rdx
	movq	%r13, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movl	$268435456, %edx
	movq	%rax, %rcx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	leaq	"??_C@_0L@EAIEPLDH@?5iteration?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_01LKDEMHDF@s?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_00CNPNBAHC@?$AA@"(%rip), %rdi
	movq	%rax, %rcx
	movq	%rdi, %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rcx
	movq	%rdi, %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_06JIGGMPGM@?5?$DN?$DN?$DN?$DN?6?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_0DF@FOPJEEBJ@Clocks?5?5?5?5?5?5?5?5?5?5Millisec?5?5?5?5?5?5?5?5@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	vxorpd	%xmm14, %xmm14, %xmm14
	vxorpd	%xmm8, %xmm8, %xmm8
	vmovsd	__real@3e30000000000000(%rip), %xmm10
	vmovsd	__real@438dcd6500000000(%rip), %xmm11
	vmovsd	__real@3ff0000000000000(%rip), %xmm12
	vmovsd	__real@3eb0c6f7a0b5ed8d(%rip), %xmm13
	xorl	%r15d, %r15d
	jmp	.LBB6_24
	.p2align	5, 0x90
.LBB6_22:
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rax, %rsi
.LBB6_23:
	vcvtusi2sd	%r15, %xmm2, %xmm1
	vcvtusi2sd	%rbx, %xmm2, %xmm2
	vmovddup	%xmm1, %xmm3
	vunpcklpd	%xmm6, %xmm0, %xmm4
	vfmadd231pd	%xmm3, %xmm14, %xmm4
	vdivsd	%xmm2, %xmm12, %xmm2
	vmovddup	%xmm2, %xmm3
	vmulpd	%xmm3, %xmm4, %xmm14
	vfmadd213sd	%xmm9, %xmm1, %xmm8
	vmulsd	%xmm2, %xmm8, %xmm8
	vmulsd	%xmm0, %xmm13, %xmm7
	movl	$16, %edx
	leaq	96(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	104(%rsp), %rdx
	movq	160(%rsp), %rax
	movslq	4(%rax), %rax
	leaq	(%rsp,%rax), %rcx
	addq	$160, %rcx
	callq	*96(%rsp)
	movq	%r13, %rcx
	movq	%rbp, %rdx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	movq	%rax, %rdi
	movl	$16, %edx
	leaq	80(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	88(%rsp), %rdx
	movq	(%rdi), %rax
	movslq	4(%rax), %rcx
	addq	%rdi, %rcx
	callq	*80(%rsp)
	movq	%rdi, %rcx
	vmovapd	%xmm7, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rdi
	movl	$16, %edx
	leaq	64(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	72(%rsp), %rdx
	movq	(%rdi), %rax
	movslq	4(%rax), %rcx
	addq	%rdi, %rcx
	callq	*64(%rsp)
	movq	%rdi, %rcx
	vmovapd	%xmm6, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	vmovapd	%xmm9, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	movb	$10, %dl
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	movq	%r13, %rcx
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	movq	%rbx, %r15
	cmpq	$5, %rbx
	je	.LBB6_47
.LBB6_24:
	rdtsc
	movq	%rdx, %rbp
	movq	%rax, %rdi
	callq	_Query_perf_frequency
	movq	%rax, %rbx
	callq	_Query_perf_counter
	cmpq	$10000000, %rbx
	jne	.LBB6_26
	imulq	$100, %rax, %r12
	shlq	$32, %rbp
	cmpq	$16, 152(%rsp)
	leaq	128(%rsp), %rax
	jae	.LBB6_33
	jmp	.LBB6_34
	.p2align	5, 0x90
.LBB6_26:
	movq	%rax, %rcx
	orq	%rbx, %rcx
	shrq	$32, %rcx
	je	.LBB6_28
	cqto
	idivq	%rbx
	jmp	.LBB6_29
	.p2align	5, 0x90
.LBB6_28:
	xorl	%edx, %edx
	divl	%ebx
.LBB6_29:
	imulq	$1000000000, %rax, %rcx
	imulq	$1000000000, %rdx, %rax
	movq	%rbx, %rdx
	orq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB6_31
	cqto
	idivq	%rbx
	movq	%rax, %r12
	jmp	.LBB6_32
	.p2align	5, 0x90
.LBB6_31:
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, %r12d
.LBB6_32:
	addq	%rcx, %r12
	shlq	$32, %rbp
	cmpq	$16, 152(%rsp)
	leaq	128(%rsp), %rax
	jb	.LBB6_34
.LBB6_33:
	movq	128(%rsp), %rax
.LBB6_34:
	orq	%rbp, %rdi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_35:
	movzbl	(%rax,%rcx,8), %edx
	leal	-55(%rdx), %ebp
	leal	-87(%rdx), %ebx
	cmpb	$16, %bpl
	movzbl	%bl, %ebx
	movzbl	%bpl, %ebp
	cmovael	%ebx, %ebp
	addb	$-48, %dl
	cmpb	$10, %dl
	movzbl	%dl, %edx
	cmovael	%ebp, %edx
	movzbl	%dl, %ebp
	movb	%dl, 272(%rsp,%rbp)
	movzbl	1(%rax,%rcx,8), %edx
	leal	-55(%rdx), %ebp
	leal	-87(%rdx), %ebx
	cmpb	$16, %bpl
	movzbl	%bl, %ebx
	movzbl	%bpl, %ebp
	cmovael	%ebx, %ebp
	addb	$-48, %dl
	cmpb	$10, %dl
	movzbl	%dl, %edx
	cmovael	%ebp, %edx
	movzbl	%dl, %ebp
	movb	%dl, 272(%rsp,%rbp)
	movzbl	2(%rax,%rcx,8), %edx
	leal	-55(%rdx), %ebp
	leal	-87(%rdx), %ebx
	cmpb	$16, %bpl
	movzbl	%bl, %ebx
	movzbl	%bpl, %ebp
	cmovael	%ebx, %ebp
	addb	$-48, %dl
	cmpb	$10, %dl
	movzbl	%dl, %edx
	cmovael	%ebp, %edx
	movzbl	%dl, %ebp
	movb	%dl, 272(%rsp,%rbp)
	movzbl	3(%rax,%rcx,8), %edx
	leal	-55(%rdx), %ebp
	leal	-87(%rdx), %ebx
	cmpb	$16, %bpl
	movzbl	%bl, %ebx
	movzbl	%bpl, %ebp
	cmovael	%ebx, %ebp
	addb	$-48, %dl
	cmpb	$10, %dl
	movzbl	%dl, %edx
	cmovael	%ebp, %edx
	movzbl	%dl, %ebp
	movb	%dl, 272(%rsp,%rbp)
	movzbl	4(%rax,%rcx,8), %edx
	leal	-55(%rdx), %ebp
	leal	-87(%rdx), %ebx
	cmpb	$16, %bpl
	movzbl	%bl, %ebx
	movzbl	%bpl, %ebp
	cmovael	%ebx, %ebp
	addb	$-48, %dl
	cmpb	$10, %dl
	movzbl	%dl, %edx
	cmovael	%ebp, %edx
	movzbl	%dl, %ebp
	movb	%dl, 272(%rsp,%rbp)
	movzbl	5(%rax,%rcx,8), %edx
	leal	-55(%rdx), %ebp
	leal	-87(%rdx), %ebx
	cmpb	$16, %bpl
	movzbl	%bl, %ebx
	movzbl	%bpl, %ebp
	cmovael	%ebx, %ebp
	addb	$-48, %dl
	cmpb	$10, %dl
	movzbl	%dl, %edx
	cmovael	%ebp, %edx
	movzbl	%dl, %ebp
	movb	%dl, 272(%rsp,%rbp)
	movzbl	6(%rax,%rcx,8), %edx
	leal	-55(%rdx), %ebp
	leal	-87(%rdx), %ebx
	cmpb	$16, %bpl
	movzbl	%bl, %ebx
	movzbl	%bpl, %ebp
	cmovael	%ebx, %ebp
	addb	$-48, %dl
	cmpb	$10, %dl
	movzbl	%dl, %edx
	cmovael	%ebp, %edx
	movzbl	%dl, %ebp
	movb	%dl, 272(%rsp,%rbp)
	movzbl	7(%rax,%rcx,8), %edx
	leal	-55(%rdx), %ebp
	leal	-87(%rdx), %ebx
	cmpb	$16, %bpl
	movzbl	%bl, %ebx
	movzbl	%bpl, %ebp
	cmovael	%ebx, %ebp
	addb	$-48, %dl
	cmpb	$10, %dl
	movzbl	%dl, %edx
	cmovael	%ebp, %edx
	movzbl	%dl, %ebp
	movb	%dl, 272(%rsp,%rbp)
	incq	%rcx
	cmpq	$33554432, %rcx
	jne	.LBB6_35
	rdtsc
	movq	%rdx, %rbp
	shlq	$32, %rbp
	orq	%rax, %rbp
	subq	%rdi, %rbp
	callq	_Query_perf_frequency
	movq	%rax, %rdi
	callq	_Query_perf_counter
	cmpq	$10000000, %rdi
	jne	.LBB6_38
	imulq	$100, %rax, %rax
	jmp	.LBB6_45
	.p2align	5, 0x90
.LBB6_38:
	movq	%rax, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB6_40
	cqto
	idivq	%rdi
	jmp	.LBB6_41
	.p2align	5, 0x90
.LBB6_40:
	xorl	%edx, %edx
	divl	%edi
.LBB6_41:
	imulq	$1000000000, %rax, %rcx
	imulq	$1000000000, %rdx, %rax
	movq	%rdi, %rdx
	orq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB6_43
	cqto
	idivq	%rdi
	jmp	.LBB6_44
	.p2align	5, 0x90
.LBB6_43:
	xorl	%edx, %edx
	divl	%edi
.LBB6_44:
	addq	%rcx, %rax
.LBB6_45:
	subq	%r12, %rax
	vcvtusi2sd	%rax, %xmm0, %xmm0
	vcvtusi2sd	%rbp, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm10, %xmm6
	vdivsd	%xmm0, %xmm11, %xmm9
	imulq	%r15, %rsi
	addq	%rbp, %rsi
	leaq	1(%r15), %rbx
	movq	%rsi, %rax
	orq	%rbx, %rax
	shrq	$32, %rax
	jne	.LBB6_22
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, %esi
	jmp	.LBB6_23
	.p2align	5, 0x90
.LBB6_47:
	vmulsd	__real@3eb0c6f7a0b5ed8d(%rip), %xmm14, %xmm6
	leaq	"??_C@_0BD@KLNANHCB@?9?9?9?9?5Average?5?9?9?9?9?6?$AA@"(%rip), %rdx
	leaq	160(%rsp), %r13
	movq	%r13, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rdi
	leaq	96(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	104(%rsp), %rdx
	movq	(%rdi), %rax
	movslq	4(%rax), %rcx
	addq	%rdi, %rcx
	callq	*96(%rsp)
	movq	%rdi, %rcx
	movq	%rsi, %rdx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	movq	%rax, %rsi
	leaq	80(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	88(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*80(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm6, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rsi
	leaq	64(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	72(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*64(%rsp)
	vpermilpd	$1, %xmm14, %xmm1
	movq	%rsi, %rcx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rsi
	leaq	112(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	120(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*112(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm8, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	movb	$10, %dl
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	leaq	"??_C@_02PHMGELLB@?6?6?$AA@"(%rip), %rdx
	movq	%r13, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%r13, %rcx
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	leaq	176(%rsp), %rcx
	leaq	"??_7ios_base@std@@6B@"(%rip), %rax
	movq	%rax, 176(%rsp)
	callq	"?_Ios_base_dtor@ios_base@std@@CAXPEAV12@@Z"
	movq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rax
	movslq	4(%rax), %rax
	leaq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rcx
	movq	72(%rax,%rcx), %rdx
	xorl	%ebx, %ebx
	leaq	160(%rsp), %rsi
	movq	%rsi, %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	"??0?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@_N@Z"
	movq	160(%rsp), %rax
	movslq	4(%rax), %rax
	movl	$-449, %ecx
	andl	184(%rsp,%rax), %ecx
	orl	$64, %ecx
	movl	%ecx, 184(%rsp,%rax)
	leaq	"??_C@_0BA@LDFPKFIO@?$DN?$DN?$DN?$DN?5Measuring?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movl	$268435456, %edx
	movq	%rax, %rcx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	leaq	"??_C@_0L@EAIEPLDH@?5iteration?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_01LKDEMHDF@s?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_00CNPNBAHC@?$AA@"(%rip), %rsi
	movq	%rax, %rcx
	movq	%rsi, %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rcx
	movq	%rsi, %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_06JIGGMPGM@?5?$DN?$DN?$DN?$DN?6?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_0DF@FOPJEEBJ@Clocks?5?5?5?5?5?5?5?5?5?5Millisec?5?5?5?5?5?5?5?5@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	vxorpd	%xmm14, %xmm14, %xmm14
	vxorpd	%xmm8, %xmm8, %xmm8
	movl	$249, %r12d
	xorl	%r15d, %r15d
	jmp	.LBB6_50
	.p2align	5, 0x90
.LBB6_48:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rax, %rbx
.LBB6_49:
	vcvtusi2sd	%r15, %xmm2, %xmm1
	vcvtusi2sd	%rdi, %xmm2, %xmm2
	vmovddup	%xmm1, %xmm3
	vunpcklpd	%xmm6, %xmm0, %xmm4
	vfmadd231pd	%xmm3, %xmm14, %xmm4
	vdivsd	%xmm2, %xmm12, %xmm2
	vmovddup	%xmm2, %xmm3
	vmulpd	%xmm3, %xmm4, %xmm14
	vfmadd213sd	%xmm9, %xmm1, %xmm8
	vmulsd	%xmm2, %xmm8, %xmm8
	vmulsd	%xmm0, %xmm13, %xmm7
	movl	$16, %edx
	leaq	96(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	104(%rsp), %rdx
	movq	160(%rsp), %rax
	movslq	4(%rax), %rax
	leaq	(%rsp,%rax), %rcx
	addq	$160, %rcx
	callq	*96(%rsp)
	movq	%r13, %rcx
	movq	%rbp, %rdx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	movq	%rax, %rsi
	movl	$16, %edx
	leaq	80(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	88(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*80(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm7, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rsi
	movl	$16, %edx
	leaq	64(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	72(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*64(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm6, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	vmovapd	%xmm9, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	movb	$10, %dl
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	movq	%r13, %rcx
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	movq	%rdi, %r15
	cmpq	$5, %rdi
	je	.LBB6_73
.LBB6_50:
	rdtsc
	movq	%rdx, %rbp
	movq	%rax, %rdi
	callq	_Query_perf_frequency
	movq	%rax, %rsi
	callq	_Query_perf_counter
	cmpq	$10000000, %rsi
	jne	.LBB6_52
	imulq	$100, %rax, %rsi
	shlq	$32, %rbp
	cmpq	$16, 152(%rsp)
	leaq	128(%rsp), %rax
	jae	.LBB6_59
	jmp	.LBB6_60
	.p2align	5, 0x90
.LBB6_52:
	movq	%rax, %rcx
	orq	%rsi, %rcx
	shrq	$32, %rcx
	je	.LBB6_54
	cqto
	idivq	%rsi
	jmp	.LBB6_55
	.p2align	5, 0x90
.LBB6_54:
	xorl	%edx, %edx
	divl	%esi
.LBB6_55:
	imulq	$1000000000, %rax, %rcx
	imulq	$1000000000, %rdx, %rax
	movq	%rsi, %rdx
	orq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB6_57
	cqto
	idivq	%rsi
	movq	%rax, %rsi
	jmp	.LBB6_58
	.p2align	5, 0x90
.LBB6_57:
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, %esi
.LBB6_58:
	addq	%rcx, %rsi
	shlq	$32, %rbp
	cmpq	$16, 152(%rsp)
	leaq	128(%rsp), %rax
	jb	.LBB6_60
.LBB6_59:
	movq	128(%rsp), %rax
.LBB6_60:
	orq	%rbp, %rdi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_61:
	movzbl	(%rax,%rcx,4), %edx
	addb	$-48, %dl
	cmpb	$10, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	addb	%dl, %bpl
	cmpb	$26, %bpl
	setl	%dl
	shlb	$5, %dl
	addb	%bpl, %dl
	addb	$-32, %dl
	movzbl	%dl, %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	1(%rax,%rcx,4), %edx
	addb	$-48, %dl
	cmpb	$10, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	addb	%dl, %bpl
	cmpb	$26, %bpl
	setl	%dl
	shlb	$5, %dl
	addb	%bpl, %dl
	addb	$-32, %dl
	movzbl	%dl, %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	2(%rax,%rcx,4), %edx
	addb	$-48, %dl
	cmpb	$10, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	addb	%dl, %bpl
	cmpb	$26, %bpl
	setl	%dl
	shlb	$5, %dl
	addb	%bpl, %dl
	addb	$-32, %dl
	movzbl	%dl, %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	3(%rax,%rcx,4), %edx
	addb	$-48, %dl
	cmpb	$10, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	addb	%dl, %bpl
	cmpb	$26, %bpl
	setl	%dl
	shlb	$5, %dl
	addb	%bpl, %dl
	addb	$-32, %dl
	movzbl	%dl, %edx
	movb	%dl, 272(%rsp,%rdx)
	incq	%rcx
	cmpq	$67108864, %rcx
	jne	.LBB6_61
	rdtsc
	movq	%rdx, %rbp
	shlq	$32, %rbp
	orq	%rax, %rbp
	subq	%rdi, %rbp
	callq	_Query_perf_frequency
	movq	%rax, %rdi
	callq	_Query_perf_counter
	cmpq	$10000000, %rdi
	jne	.LBB6_64
	imulq	$100, %rax, %rax
	jmp	.LBB6_71
	.p2align	5, 0x90
.LBB6_64:
	movq	%rax, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB6_66
	cqto
	idivq	%rdi
	jmp	.LBB6_67
	.p2align	5, 0x90
.LBB6_66:
	xorl	%edx, %edx
	divl	%edi
.LBB6_67:
	imulq	$1000000000, %rax, %rcx
	imulq	$1000000000, %rdx, %rax
	movq	%rdi, %rdx
	orq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB6_69
	cqto
	idivq	%rdi
	jmp	.LBB6_70
	.p2align	5, 0x90
.LBB6_69:
	xorl	%edx, %edx
	divl	%edi
.LBB6_70:
	addq	%rcx, %rax
.LBB6_71:
	subq	%rsi, %rax
	vcvtusi2sd	%rax, %xmm0, %xmm0
	vcvtusi2sd	%rbp, %xmm2, %xmm1
	vmulsd	%xmm1, %xmm10, %xmm6
	vdivsd	%xmm0, %xmm11, %xmm9
	imulq	%r15, %rbx
	addq	%rbp, %rbx
	leaq	1(%r15), %rdi
	movq	%rbx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	jne	.LBB6_48
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %ebx
	jmp	.LBB6_49
	.p2align	5, 0x90
.LBB6_73:
	vmulsd	__real@3eb0c6f7a0b5ed8d(%rip), %xmm14, %xmm6
	leaq	"??_C@_0BD@KLNANHCB@?9?9?9?9?5Average?5?9?9?9?9?6?$AA@"(%rip), %rdx
	leaq	160(%rsp), %rdi
	movq	%rdi, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rsi
	leaq	96(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	104(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*96(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	movq	%rax, %rsi
	leaq	80(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	88(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*80(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm6, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rsi
	leaq	64(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	72(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*64(%rsp)
	vpermilpd	$1, %xmm14, %xmm1
	movq	%rsi, %rcx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rsi
	leaq	112(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	120(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*112(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm8, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	movb	$10, %dl
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	leaq	"??_C@_02PHMGELLB@?6?6?$AA@"(%rip), %rdx
	movq	%rdi, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rdi, %rcx
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	leaq	176(%rsp), %rcx
	leaq	"??_7ios_base@std@@6B@"(%rip), %rax
	movq	%rax, 176(%rsp)
	callq	"?_Ios_base_dtor@ios_base@std@@CAXPEAV12@@Z"
	movq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rax
	movslq	4(%rax), %rax
	leaq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rcx
	movq	72(%rax,%rcx), %rdx
	xorl	%r13d, %r13d
	leaq	160(%rsp), %rsi
	movq	%rsi, %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	"??0?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@_N@Z"
	movq	160(%rsp), %rax
	movslq	4(%rax), %rax
	movl	$-449, %ecx
	andl	184(%rsp,%rax), %ecx
	orl	$64, %ecx
	movl	%ecx, 184(%rsp,%rax)
	leaq	"??_C@_0BA@LDFPKFIO@?$DN?$DN?$DN?$DN?5Measuring?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movl	$268435456, %edx
	movq	%rax, %rcx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	leaq	"??_C@_0L@EAIEPLDH@?5iteration?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_01LKDEMHDF@s?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_00CNPNBAHC@?$AA@"(%rip), %rsi
	movq	%rax, %rcx
	movq	%rsi, %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rcx
	movq	%rsi, %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_06JIGGMPGM@?5?$DN?$DN?$DN?$DN?6?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_0DF@FOPJEEBJ@Clocks?5?5?5?5?5?5?5?5?5?5Millisec?5?5?5?5?5?5?5?5@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	vxorpd	%xmm14, %xmm14, %xmm14
	vxorpd	%xmm8, %xmm8, %xmm8
	movl	$249, %r12d
	xorl	%r15d, %r15d
	jmp	.LBB6_76
	.p2align	5, 0x90
.LBB6_74:
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rax, %r13
.LBB6_75:
	vcvtusi2sd	%r15, %xmm2, %xmm1
	vcvtusi2sd	%rdi, %xmm2, %xmm2
	vmovddup	%xmm1, %xmm3
	vunpcklpd	%xmm6, %xmm0, %xmm4
	vfmadd231pd	%xmm3, %xmm14, %xmm4
	vdivsd	%xmm2, %xmm12, %xmm2
	vmovddup	%xmm2, %xmm3
	vmulpd	%xmm3, %xmm4, %xmm14
	vfmadd213sd	%xmm9, %xmm1, %xmm8
	vmulsd	%xmm2, %xmm8, %xmm8
	vmulsd	%xmm0, %xmm13, %xmm7
	movl	$16, %edx
	leaq	96(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	104(%rsp), %rdx
	movq	160(%rsp), %rax
	movslq	4(%rax), %rax
	leaq	(%rsp,%rax), %rcx
	addq	$160, %rcx
	callq	*96(%rsp)
	leaq	160(%rsp), %rbx
	movq	%rbx, %rcx
	movq	%rbp, %rdx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	movq	%rax, %rsi
	movl	$16, %edx
	leaq	80(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	88(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*80(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm7, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rsi
	movl	$16, %edx
	leaq	64(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	72(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*64(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm6, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	vmovapd	%xmm9, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	movb	$10, %dl
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	movq	%rbx, %rcx
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	movq	%rdi, %r15
	cmpq	$5, %rdi
	je	.LBB6_99
.LBB6_76:
	rdtsc
	movq	%rdx, %rbp
	movq	%rax, %rsi
	callq	_Query_perf_frequency
	movq	%rax, %rdi
	callq	_Query_perf_counter
	cmpq	$10000000, %rdi
	jne	.LBB6_78
	imulq	$100, %rax, %rdi
	shlq	$32, %rbp
	cmpq	$16, 152(%rsp)
	leaq	128(%rsp), %rax
	jae	.LBB6_85
	jmp	.LBB6_86
	.p2align	5, 0x90
.LBB6_78:
	movq	%rax, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB6_80
	cqto
	idivq	%rdi
	jmp	.LBB6_81
	.p2align	5, 0x90
.LBB6_80:
	xorl	%edx, %edx
	divl	%edi
.LBB6_81:
	imulq	$1000000000, %rax, %rcx
	imulq	$1000000000, %rdx, %rax
	movq	%rdi, %rdx
	orq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB6_83
	cqto
	idivq	%rdi
	movq	%rax, %rdi
	jmp	.LBB6_84
	.p2align	5, 0x90
.LBB6_83:
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %edi
.LBB6_84:
	addq	%rcx, %rdi
	shlq	$32, %rbp
	cmpq	$16, 152(%rsp)
	leaq	128(%rsp), %rax
	jb	.LBB6_86
.LBB6_85:
	movq	128(%rsp), %rax
.LBB6_86:
	orq	%rbp, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_87:
	movzbl	(%rax,%rcx,8), %edx
	cmpb	$58, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	cmpb	$71, %dl
	setl	%bl
	shlb	$5, %bl
	addb	%dl, %bl
	addb	%bpl, %bl
	addb	$-80, %bl
	movzbl	%bl, %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	1(%rax,%rcx,8), %edx
	cmpb	$58, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	cmpb	$71, %dl
	setl	%bl
	shlb	$5, %bl
	addb	%dl, %bl
	addb	%bpl, %bl
	addb	$-80, %bl
	movzbl	%bl, %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	2(%rax,%rcx,8), %edx
	cmpb	$58, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	cmpb	$71, %dl
	setl	%bl
	shlb	$5, %bl
	addb	%dl, %bl
	addb	%bpl, %bl
	addb	$-80, %bl
	movzbl	%bl, %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	3(%rax,%rcx,8), %edx
	cmpb	$58, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	cmpb	$71, %dl
	setl	%bl
	shlb	$5, %bl
	addb	%dl, %bl
	addb	%bpl, %bl
	addb	$-80, %bl
	movzbl	%bl, %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	4(%rax,%rcx,8), %edx
	cmpb	$58, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	cmpb	$71, %dl
	setl	%bl
	shlb	$5, %bl
	addb	%dl, %bl
	addb	%bpl, %bl
	addb	$-80, %bl
	movzbl	%bl, %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	5(%rax,%rcx,8), %edx
	cmpb	$58, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	cmpb	$71, %dl
	setl	%bl
	shlb	$5, %bl
	addb	%dl, %bl
	addb	%bpl, %bl
	addb	$-80, %bl
	movzbl	%bl, %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	6(%rax,%rcx,8), %edx
	cmpb	$58, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	cmpb	$71, %dl
	setl	%bl
	shlb	$5, %bl
	addb	%dl, %bl
	addb	%bpl, %bl
	addb	$-80, %bl
	movzbl	%bl, %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	7(%rax,%rcx,8), %edx
	cmpb	$58, %dl
	movl	$0, %ebp
	cmovgel	%r12d, %ebp
	cmpb	$71, %dl
	setl	%bl
	shlb	$5, %bl
	addb	%dl, %bl
	addb	%bpl, %bl
	addb	$-80, %bl
	movzbl	%bl, %edx
	movb	%dl, 272(%rsp,%rdx)
	incq	%rcx
	cmpq	$33554432, %rcx
	jne	.LBB6_87
	rdtsc
	movq	%rdx, %rbp
	shlq	$32, %rbp
	orq	%rax, %rbp
	subq	%rsi, %rbp
	callq	_Query_perf_frequency
	movq	%rax, %rsi
	callq	_Query_perf_counter
	cmpq	$10000000, %rsi
	jne	.LBB6_90
	imulq	$100, %rax, %rax
	jmp	.LBB6_97
	.p2align	5, 0x90
.LBB6_90:
	movq	%rax, %rcx
	orq	%rsi, %rcx
	shrq	$32, %rcx
	je	.LBB6_92
	cqto
	idivq	%rsi
	jmp	.LBB6_93
	.p2align	5, 0x90
.LBB6_92:
	xorl	%edx, %edx
	divl	%esi
.LBB6_93:
	imulq	$1000000000, %rax, %rcx
	imulq	$1000000000, %rdx, %rax
	movq	%rsi, %rdx
	orq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB6_95
	cqto
	idivq	%rsi
	jmp	.LBB6_96
	.p2align	5, 0x90
.LBB6_95:
	xorl	%edx, %edx
	divl	%esi
.LBB6_96:
	addq	%rcx, %rax
.LBB6_97:
	subq	%rdi, %rax
	vcvtusi2sd	%rax, %xmm0, %xmm0
	vcvtusi2sd	%rbp, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm10, %xmm6
	vdivsd	%xmm0, %xmm11, %xmm9
	imulq	%r15, %r13
	addq	%rbp, %r13
	leaq	1(%r15), %rdi
	movq	%r13, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	jne	.LBB6_74
	movl	%r13d, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %r13d
	jmp	.LBB6_75
	.p2align	5, 0x90
.LBB6_99:
	vmulsd	__real@3eb0c6f7a0b5ed8d(%rip), %xmm14, %xmm6
	leaq	"??_C@_0BD@KLNANHCB@?9?9?9?9?5Average?5?9?9?9?9?6?$AA@"(%rip), %rdx
	leaq	160(%rsp), %r15
	movq	%r15, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rsi
	leaq	96(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	104(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*96(%rsp)
	movq	%rsi, %rcx
	movq	%r13, %rdx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	movq	%rax, %rsi
	leaq	80(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	88(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*80(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm6, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rsi
	leaq	64(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	72(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*64(%rsp)
	vpermilpd	$1, %xmm14, %xmm1
	movq	%rsi, %rcx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rsi
	leaq	112(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	120(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*112(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm8, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	movb	$10, %dl
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	leaq	"??_C@_02PHMGELLB@?6?6?$AA@"(%rip), %rdx
	movq	%r15, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%r15, %rcx
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	leaq	176(%rsp), %rcx
	leaq	"??_7ios_base@std@@6B@"(%rip), %rax
	movq	%rax, 176(%rsp)
	callq	"?_Ios_base_dtor@ios_base@std@@CAXPEAV12@@Z"
	movq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rax
	movslq	4(%rax), %rax
	leaq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rcx
	movq	72(%rax,%rcx), %rdx
	xorl	%ebx, %ebx
	leaq	160(%rsp), %rsi
	movq	%rsi, %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	"??0?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@_N@Z"
	movq	160(%rsp), %rax
	movslq	4(%rax), %rax
	movl	$-449, %ecx
	andl	184(%rsp,%rax), %ecx
	orl	$64, %ecx
	movl	%ecx, 184(%rsp,%rax)
	leaq	"??_C@_0BA@LDFPKFIO@?$DN?$DN?$DN?$DN?5Measuring?5?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movl	$268435456, %edx
	movq	%rax, %rcx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	leaq	"??_C@_0L@EAIEPLDH@?5iteration?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_01LKDEMHDF@s?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_00CNPNBAHC@?$AA@"(%rip), %rsi
	movq	%rax, %rcx
	movq	%rsi, %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rcx
	movq	%rsi, %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_06JIGGMPGM@?5?$DN?$DN?$DN?$DN?6?$AA@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	leaq	"??_C@_0DF@FOPJEEBJ@Clocks?5?5?5?5?5?5?5?5?5?5Millisec?5?5?5?5?5?5?5?5@"(%rip), %rdx
	movq	%rax, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	vxorpd	%xmm14, %xmm14, %xmm14
	vxorpd	%xmm6, %xmm6, %xmm6
	leaq	128(%rsp), %r13
	xorl	%r12d, %r12d
	jmp	.LBB6_102
	.p2align	5, 0x90
.LBB6_100:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rax, %rbx
.LBB6_101:
	vcvtusi2sd	%r12, %xmm5, %xmm1
	vcvtusi2sd	%rdi, %xmm5, %xmm2
	vmovddup	%xmm1, %xmm3
	vunpcklpd	%xmm9, %xmm0, %xmm4
	vfmadd231pd	%xmm3, %xmm14, %xmm4
	vdivsd	%xmm2, %xmm12, %xmm2
	vmovddup	%xmm2, %xmm3
	vmulpd	%xmm3, %xmm4, %xmm14
	vfmadd213sd	%xmm8, %xmm1, %xmm6
	vmulsd	%xmm2, %xmm6, %xmm6
	vmulsd	%xmm0, %xmm13, %xmm7
	movl	$16, %edx
	leaq	96(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	104(%rsp), %rdx
	movq	160(%rsp), %rax
	movslq	4(%rax), %rax
	leaq	(%rsp,%rax), %rcx
	addq	$160, %rcx
	callq	*96(%rsp)
	movq	%r15, %rcx
	movq	%rbp, %rdx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	movq	%rax, %rsi
	movl	$16, %edx
	leaq	80(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	88(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*80(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm7, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rsi
	movl	$16, %edx
	leaq	64(%rsp), %rcx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	72(%rsp), %rdx
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	addq	%rsi, %rcx
	callq	*64(%rsp)
	movq	%rsi, %rcx
	vmovapd	%xmm9, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	vmovapd	%xmm8, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	movb	$10, %dl
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	movq	%r15, %rcx
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	movq	%rdi, %r12
	cmpq	$5, %rdi
	je	.LBB6_125
.LBB6_102:
	rdtsc
	movq	%rdx, %rbp
	movq	%rax, %rsi
	callq	_Query_perf_frequency
	movq	%rax, %rdi
	callq	_Query_perf_counter
	cmpq	$10000000, %rdi
	jne	.LBB6_104
	imulq	$100, %rax, %rdi
	shlq	$32, %rbp
	cmpq	$16, 152(%rsp)
	movq	%r13, %rax
	jae	.LBB6_111
	jmp	.LBB6_112
	.p2align	5, 0x90
.LBB6_104:
	movq	%rax, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB6_106
	cqto
	idivq	%rdi
	jmp	.LBB6_107
	.p2align	5, 0x90
.LBB6_106:
	xorl	%edx, %edx
	divl	%edi
.LBB6_107:
	imulq	$1000000000, %rax, %rcx
	imulq	$1000000000, %rdx, %rax
	movq	%rdi, %rdx
	orq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB6_109
	cqto
	idivq	%rdi
	movq	%rax, %rdi
	jmp	.LBB6_110
	.p2align	5, 0x90
.LBB6_109:
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %edi
.LBB6_110:
	addq	%rcx, %rdi
	shlq	$32, %rbp
	cmpq	$16, 152(%rsp)
	movq	%r13, %rax
	jb	.LBB6_112
.LBB6_111:
	movq	128(%rsp), %rax
.LBB6_112:
	orq	%rbp, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_113:
	movzbl	(%rax,%rcx,8), %edx
	movzbl	(%rdx,%r14), %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	1(%rax,%rcx,8), %edx
	movzbl	(%rdx,%r14), %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	2(%rax,%rcx,8), %edx
	movzbl	(%rdx,%r14), %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	3(%rax,%rcx,8), %edx
	movzbl	(%rdx,%r14), %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	4(%rax,%rcx,8), %edx
	movzbl	(%rdx,%r14), %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	5(%rax,%rcx,8), %edx
	movzbl	(%rdx,%r14), %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	6(%rax,%rcx,8), %edx
	movzbl	(%rdx,%r14), %edx
	movb	%dl, 272(%rsp,%rdx)
	movzbl	7(%rax,%rcx,8), %edx
	movzbl	(%rdx,%r14), %edx
	movb	%dl, 272(%rsp,%rdx)
	incq	%rcx
	cmpq	$33554432, %rcx
	jne	.LBB6_113
	rdtsc
	movq	%rdx, %rbp
	shlq	$32, %rbp
	orq	%rax, %rbp
	subq	%rsi, %rbp
	callq	_Query_perf_frequency
	movq	%rax, %rsi
	callq	_Query_perf_counter
	cmpq	$10000000, %rsi
	jne	.LBB6_116
	imulq	$100, %rax, %rax
	jmp	.LBB6_123
	.p2align	5, 0x90
.LBB6_116:
	movq	%rax, %rcx
	orq	%rsi, %rcx
	shrq	$32, %rcx
	je	.LBB6_118
	cqto
	idivq	%rsi
	jmp	.LBB6_119
	.p2align	5, 0x90
.LBB6_118:
	xorl	%edx, %edx
	divl	%esi
.LBB6_119:
	imulq	$1000000000, %rax, %rcx
	imulq	$1000000000, %rdx, %rax
	movq	%rsi, %rdx
	orq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB6_121
	cqto
	idivq	%rsi
	jmp	.LBB6_122
	.p2align	5, 0x90
.LBB6_121:
	xorl	%edx, %edx
	divl	%esi
.LBB6_122:
	addq	%rcx, %rax
.LBB6_123:
	subq	%rdi, %rax
	vcvtusi2sd	%rax, %xmm5, %xmm0
	vcvtusi2sd	%rbp, %xmm5, %xmm1
	vmulsd	%xmm1, %xmm10, %xmm9
	vdivsd	%xmm0, %xmm11, %xmm8
	imulq	%r12, %rbx
	addq	%rbp, %rbx
	leaq	1(%r12), %rdi
	movq	%rbx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	jne	.LBB6_100
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %ebx
	jmp	.LBB6_101
	.p2align	5, 0x90
.LBB6_125:
	vmulsd	__real@3eb0c6f7a0b5ed8d(%rip), %xmm14, %xmm7
	leaq	"??_C@_0BD@KLNANHCB@?9?9?9?9?5Average?5?9?9?9?9?6?$AA@"(%rip), %rdx
	leaq	160(%rsp), %rsi
	movq	%rsi, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rdi
	leaq	96(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	104(%rsp), %rdx
	movq	(%rdi), %rax
	movslq	4(%rax), %rcx
	addq	%rdi, %rcx
	callq	*96(%rsp)
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	movq	%rax, %rdi
	leaq	80(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	88(%rsp), %rdx
	movq	(%rdi), %rax
	movslq	4(%rax), %rcx
	addq	%rdi, %rcx
	callq	*80(%rsp)
	movq	%rdi, %rcx
	vmovapd	%xmm7, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rdi
	leaq	64(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	72(%rsp), %rdx
	movq	(%rdi), %rax
	movslq	4(%rax), %rcx
	addq	%rdi, %rcx
	callq	*64(%rsp)
	vpermilpd	$1, %xmm14, %xmm1
	movq	%rdi, %rcx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rdi
	leaq	112(%rsp), %rcx
	movl	$16, %edx
	callq	"?setw@std@@YA?AU?$_Smanip@_J@1@_J@Z"
	movq	120(%rsp), %rdx
	movq	(%rdi), %rax
	movslq	4(%rax), %rcx
	addq	%rdi, %rcx
	callq	*112(%rsp)
	movq	%rdi, %rcx
	vmovapd	%xmm6, %xmm1
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	movq	%rax, %rcx
	movb	$10, %dl
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	leaq	"??_C@_02PHMGELLB@?6?6?$AA@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rsi, %rcx
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	leaq	176(%rsp), %rcx
	leaq	"??_7ios_base@std@@6B@"(%rip), %rax
	movq	%rax, 176(%rsp)
	callq	"?_Ios_base_dtor@ios_base@std@@CAXPEAV12@@Z"
	leaq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rcx
	leaq	272(%rsp), %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	%rax, %rcx
	movb	$10, %dl
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	movq	152(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB6_130
	movq	128(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB6_129
	movq	-8(%rcx), %rbp
	addq	$-8, %rcx
	subq	%rbp, %rcx
	cmpq	$32, %rcx
	jae	.LBB6_135
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%rbp, %rcx
.LBB6_129:
	callq	"??3@YAXPEAX_K@Z"
.LBB6_130:
	xorl	%eax, %eax
	vmovups	528(%rsp), %xmm6
	vmovups	544(%rsp), %xmm7
	vmovups	560(%rsp), %xmm8
	vmovups	576(%rsp), %xmm9
	vmovups	592(%rsp), %xmm10
	vmovups	608(%rsp), %xmm11
	vmovups	624(%rsp), %xmm12
	vmovups	640(%rsp), %xmm13
	vmovups	656(%rsp), %xmm14
	addq	$680, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.p2align	5, 0x90
.LBB6_131:
	leaq	"?$TSS0@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@4HA"(%rip), %rcx
	callq	_Init_thread_header
	cmpl	$-1, "?$TSS0@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@4HA"(%rip)
	jne	.LBB6_1
	movabsq	$6364136223846793005, %rsi
	callq	"?_Random_device@std@@YAIXZ"
	movl	%eax, %ebx
	movabsq	$6148914691236517205, %rax
	movq	%rax, "?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"+5000(%rip)
	movq	%rbx, "?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"+8(%rip)
	xorl	%eax, %eax
	leaq	"?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"(%rip), %rcx
.LBB6_133:
	movq	%rbx, %rdx
	shrq	$62, %rdx
	xorq	%rbx, %rdx
	imulq	%rsi, %rdx
	leaq	(%rax,%rdx), %rbp
	incq	%rbp
	movq	%rbp, 16(%rcx,%rax,8)
	movq	%rbp, %rdx
	shrq	$62, %rdx
	xorq	%rbp, %rdx
	imulq	%rsi, %rdx
	leaq	(%rax,%rdx), %rbp
	addq	$2, %rbp
	movq	%rbp, 24(%rcx,%rax,8)
	movq	%rbp, %rdx
	shrq	$62, %rdx
	xorq	%rbp, %rdx
	imulq	%rsi, %rdx
	leaq	(%rax,%rdx), %rbp
	addq	$3, %rbp
	movq	%rbp, 32(%rcx,%rax,8)
	movq	%rbp, %rdx
	shrq	$62, %rdx
	xorq	%rbp, %rdx
	imulq	%rsi, %rdx
	leaq	(%rax,%rdx), %rbp
	addq	$4, %rbp
	movq	%rbp, 40(%rcx,%rax,8)
	movq	%rbp, %rdx
	shrq	$62, %rdx
	xorq	%rbp, %rdx
	imulq	%rsi, %rdx
	leaq	(%rax,%rdx), %rbp
	addq	$5, %rbp
	movq	%rbp, 48(%rcx,%rax,8)
	movq	%rbp, %rdx
	shrq	$62, %rdx
	xorq	%rbp, %rdx
	imulq	%rsi, %rdx
	leaq	(%rax,%rdx), %rbp
	addq	$6, %rbp
	movq	%rbp, 56(%rcx,%rax,8)
	movq	%rbp, %rdx
	shrq	$62, %rdx
	xorq	%rbp, %rdx
	imulq	%rsi, %rdx
	addq	%rax, %rdx
	addq	$7, %rdx
	movq	%rdx, 64(%rcx,%rax,8)
	movq	%rdx, %rbp
	shrq	$62, %rbp
	xorq	%rdx, %rbp
	imulq	%rsi, %rbp
	leaq	(%rax,%rbp), %rbx
	addq	$8, %rbx
	movq	%rbx, 72(%rcx,%rax,8)
	addq	$8, %rax
	cmpq	$304, %rax
	jne	.LBB6_133
	addq	%rax, %rbp
	movq	%rbp, %rax
	shrq	$62, %rax
	xorq	%rbp, %rax
	imulq	%rsi, %rax
	addq	$305, %rax
	movq	%rax, "?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"+2448(%rip)
	movq	%rax, %rcx
	shrq	$62, %rcx
	xorq	%rax, %rcx
	imulq	%rsi, %rcx
	addq	$306, %rcx
	movq	%rcx, "?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"+2456(%rip)
	movq	%rcx, %rax
	shrq	$62, %rax
	xorq	%rcx, %rax
	imulq	%rsi, %rax
	addq	$307, %rax
	movq	%rax, "?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"+2464(%rip)
	movq	%rax, %rcx
	shrq	$62, %rcx
	xorq	%rax, %rcx
	imulq	%rsi, %rcx
	addq	$308, %rcx
	movq	%rcx, "?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"+2472(%rip)
	movq	%rcx, %rax
	shrq	$62, %rax
	xorq	%rcx, %rax
	imulq	%rsi, %rax
	addq	$309, %rax
	movq	%rax, "?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"+2480(%rip)
	movq	%rax, %rcx
	shrq	$62, %rcx
	xorq	%rax, %rcx
	imulq	%rsi, %rcx
	addq	$310, %rcx
	movq	%rcx, "?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"+2488(%rip)
	movq	%rcx, %rax
	shrq	$62, %rax
	xorq	%rcx, %rax
	imulq	%rsi, %rax
	addq	$311, %rax
	movq	%rax, "?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"+2496(%rip)
	movl	$312, "?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"(%rip)
	leaq	"?$TSS0@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@4HA"(%rip), %rcx
	callq	_Init_thread_footer
	jmp	.LBB6_1
	.p2align	5, 0x90
.LBB6_135:
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf
	.p2align	4, 0x90
printf:
.seh_proc printf
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 40(%rsp)
	movl	$1, %ecx
	callq	__acrt_iob_func
	movq	%rax, %rdi
	callq	__local_stdio_printf_options
	movq	(%rax), %rcx
	movq	%rbx, 32(%rsp)
	movq	%rdi, %rdx
	movq	%rsi, %r8
	xorl	%r9d, %r9d
	callq	__stdio_common_vfprintf
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	.globl	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	.p2align	4, 0x90
"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z":
.seh_proc "??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$112, %rsp
	.seh_stackalloc 112
	.seh_endprologue
	movl	%edx, %ebx
	movq	%rcx, %r14
	movq	%rcx, 40(%rsp)
	movq	(%rcx), %rax
	movslq	4(%rax), %rdx
	movq	72(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB8_2
	movq	(%rcx), %rax
	callq	*8(%rax)
	movq	(%r14), %rax
	movslq	4(%rax), %rdx
.LBB8_2:
	cmpl	$0, 16(%r14,%rdx)
	je	.LBB8_4
	movb	$0, 48(%rsp)
	xorl	%ecx, %ecx
.LBB8_36:
	movq	(%r14), %rax
	movslq	4(%rax), %rax
	movq	$0, 40(%r14,%rax)
	movq	(%r14), %rax
	movslq	4(%rax), %rax
	orl	16(%r14,%rax), %ecx
	xorl	%edx, %edx
	cmpq	$0, 72(%r14,%rax)
	sete	%dl
	shll	$2, %edx
	andl	$23, %ecx
	orl	%edx, %ecx
	movl	%ecx, 16(%r14,%rax)
	andl	20(%r14,%rax), %ecx
	jne	.LBB8_38
	leaq	40(%rsp), %rcx
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	movq	%r14, %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.p2align	5, 0x90
.LBB8_4:
	movq	80(%r14,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB8_6
	cmpq	%r14, %rcx
	je	.LBB8_6
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	movq	(%r14), %rax
	movslq	4(%rax), %rdx
	xorl	%ecx, %ecx
	cmpl	$0, 16(%r14,%rdx)
	sete	48(%rsp)
	jne	.LBB8_36
	jmp	.LBB8_8
	.p2align	5, 0x90
.LBB8_6:
	movb	$1, 48(%rsp)
.LBB8_8:
	movb	%bl, 39(%rsp)
	movl	4(%rax), %ecx
	movslq	%ecx, %rax
	movq	40(%r14,%rax), %rdx
	xorl	%r15d, %r15d
	cmpq	$2, %rdx
	leaq	-1(%rdx), %rdx
	cmovgeq	%rdx, %r15
	movl	$448, %edx
	andl	24(%r14,%rax), %edx
	cmpl	$64, %edx
	je	.LBB8_21
	testq	%r15, %r15
	jle	.LBB8_10
	.p2align	4, 0x90
.LBB8_11:
	movslq	%ecx, %rax
	movq	72(%r14,%rax), %rcx
	movzbl	88(%r14,%rax), %eax
	movzbl	%al, %eax
	movq	64(%rcx), %rbx
	movq	(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB8_14
	movq	88(%rcx), %r8
	movl	(%r8), %esi
	testl	%esi, %esi
	jle	.LBB8_14
	decl	%esi
	movl	%esi, (%r8)
	leaq	1(%rdx), %rcx
	movq	%rcx, (%rbx)
	movb	%al, (%rdx)
	jmp	.LBB8_15
	.p2align	5, 0x90
.LBB8_14:
	movq	(%rcx), %rbx
	movl	%eax, %edx
	callq	*24(%rbx)
.LBB8_15:
	cmpl	$-1, %eax
	je	.LBB8_18
	cmpq	$2, %r15
	jl	.LBB8_18
	movq	(%r14), %rax
	movl	4(%rax), %ecx
	decq	%r15
	jmp	.LBB8_11
	.p2align	5, 0x90
.LBB8_18:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	sete	%dl
	decq	%r15
	cmpl	$-1, %eax
	je	.LBB8_19
	movq	(%r14), %rax
	movslq	4(%rax), %rax
	jmp	.LBB8_21
	.p2align	5, 0x90
.LBB8_10:
	xorl	%r15d, %r15d
.LBB8_21:
	movq	72(%r14,%rax), %rcx
	movq	64(%rcx), %rdx
	movq	(%rdx), %rbx
	testq	%rbx, %rbx
	je	.LBB8_22
	movq	88(%rcx), %rsi
	movl	(%rsi), %edi
	movzbl	39(%rsp), %eax
	testl	%edi, %edi
	jle	.LBB8_23
	decl	%edi
	movl	%edi, (%rsi)
	leaq	1(%rbx), %rcx
	movq	%rcx, (%rdx)
	movb	39(%rsp), %cl
	movb	%cl, (%rbx)
	jmp	.LBB8_26
	.p2align	5, 0x90
.LBB8_22:
	movzbl	39(%rsp), %eax
.LBB8_23:
	movq	(%rcx), %rbx
	movl	%eax, %edx
	callq	*24(%rbx)
.LBB8_26:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	sete	%cl
	shll	$2, %ecx
	testl	%ecx, %ecx
	jne	.LBB8_36
.LBB8_28:
	testq	%r15, %r15
	jle	.LBB8_36
	.p2align	4, 0x90
.LBB8_29:
	movq	(%r14), %rax
	movslq	4(%rax), %rax
	movq	72(%r14,%rax), %rcx
	movzbl	88(%r14,%rax), %eax
	movzbl	%al, %eax
	movq	64(%rcx), %rbx
	movq	(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB8_32
	movq	88(%rcx), %rsi
	movl	(%rsi), %edi
	testl	%edi, %edi
	jle	.LBB8_32
	decl	%edi
	movl	%edi, (%rsi)
	leaq	1(%rdx), %rcx
	movq	%rcx, (%rbx)
	movb	%al, (%rdx)
	cmpl	$-1, %eax
	jne	.LBB8_34
	jmp	.LBB8_35
	.p2align	5, 0x90
.LBB8_32:
	movq	(%rcx), %rbx
	movl	%eax, %edx
	callq	*24(%rbx)
	cmpl	$-1, %eax
	je	.LBB8_35
.LBB8_34:
	cmpq	$1, %r15
	leaq	-1(%r15), %r15
	jg	.LBB8_29
.LBB8_35:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	sete	%cl
	shll	$2, %ecx
	jmp	.LBB8_36
	.p2align	5, 0x90
.LBB8_19:
	movb	%dl, %cl
	shll	$2, %ecx
	testl	%ecx, %ecx
	je	.LBB8_28
	jmp	.LBB8_36
	.p2align	5, 0x90
.LBB8_38:
	testb	$2, %cl
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rax
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rbx
	cmoveq	%rax, %rbx
	testb	$4, %cl
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rbx, %rdx
	movl	$1, 56(%rsp)
	leaq	"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B"(%rip), %rax
	movq	%rax, 64(%rsp)
	leaq	72(%rsp), %rsi
	leaq	56(%rsp), %r8
	movq	%rsi, %rcx
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	 "??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@000000000000000f0000000000000000
	.section	.rdata,"dr",discard,__xmm@000000000000000f0000000000000000
	.p2align	4
__xmm@000000000000000f0000000000000000:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.text,"xr",discard,"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z"
	.globl	"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z"
	.p2align	4, 0x90
"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z":
.seh_proc "??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	$0, (%rcx)
	vmovups	__xmm@000000000000000f0000000000000000(%rip), %xmm0
	vmovups	%xmm0, 16(%rcx)
	movb	$0, (%rcx)
	cmpq	$15, %rdx
	jbe	.LBB9_1
	testq	%rdi, %rdi
	js	.LBB9_11
	movq	%rdi, %rax
	orq	$15, %rax
	movb	%r8b, 47(%rsp)
	js	.LBB9_4
	cmpq	$23, %rax
	movl	$22, %ebx
	cmovaeq	%rax, %rbx
	leaq	1(%rbx), %rcx
	cmpq	$4095, %rbx
	jb	.LBB9_8
	movq	%rax, %rbx
	jmp	.LBB9_7
	.p2align	5, 0x90
.LBB9_1:
	movq	%rdi, 16(%rsi)
	movq	%rsi, %rcx
	movl	%r8d, %edx
	movq	%rdi, %r8
	callq	_intel_fast_memset
	movb	$0, (%rsi,%rdi)
	jmp	.LBB9_10
	.p2align	5, 0x90
.LBB9_4:
	movabsq	$9223372036854775807, %rax
	movq	%rax, %rbx
	leaq	1(%rax), %rcx
.LBB9_7:
	addq	$39, %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rcx
	addq	$39, %rax
	andq	$-32, %rax
	movq	%rcx, -8(%rax)
	jmp	.LBB9_9
	.p2align	5, 0x90
.LBB9_8:
	callq	"??2@YAPEAX_K@Z"
.LBB9_9:
	movq	%rdi, 16(%rsi)
	movq	%rbx, 24(%rsi)
	movq	%rax, %rbx
	movq	%rax, %rcx
	movb	47(%rsp), %dl
	movq	%rdi, %r8
	callq	_intel_fast_memset
	movb	$0, (%rbx,%rdi)
	movq	%rbx, (%rsi)
.LBB9_10:
	movq	%rsi, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.p2align	5, 0x90
.LBB9_11:
	callq	"?_Xlen_string@std@@YAXXZ"
	int3
	.seh_endproc

	.def	 "?_Xlen_string@std@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Xlen_string@std@@YAXXZ"
	.globl	"?_Xlen_string@std@@YAXXZ"
	.p2align	4, 0x90
"?_Xlen_string@std@@YAXXZ":
.seh_proc "?_Xlen_string@std@@YAXXZ"
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@"(%rip), %rcx
	callq	"?_Xlength_error@std@@YAXPEBD@Z"
	int3
	.seh_endproc

	.def	 "?_Throw_bad_array_new_length@std@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Throw_bad_array_new_length@std@@YAXXZ"
	.globl	"?_Throw_bad_array_new_length@std@@YAXXZ"
	.p2align	4, 0x90
"?_Throw_bad_array_new_length@std@@YAXXZ":
.seh_proc "?_Throw_bad_array_new_length@std@@YAXXZ"
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	$0, 48(%rsp)
	leaq	"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@"(%rip), %rax
	movq	%rax, 40(%rsp)
	leaq	"??_7bad_array_new_length@std@@6B@"(%rip), %rax
	movq	%rax, 32(%rsp)
	leaq	"_TI3?AVbad_array_new_length@std@@"(%rip), %rdx
	leaq	32(%rsp), %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	 "??0bad_array_new_length@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"
	.globl	"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"
	.p2align	4, 0x90
"??0bad_array_new_length@std@@QEAA@AEBV01@@Z":
.seh_proc "??0bad_array_new_length@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rcx)
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	callq	__std_exception_copy
	leaq	"??_7bad_array_new_length@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??0bad_alloc@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0bad_alloc@std@@QEAA@AEBV01@@Z"
	.globl	"??0bad_alloc@std@@QEAA@AEBV01@@Z"
	.p2align	4, 0x90
"??0bad_alloc@std@@QEAA@AEBV01@@Z":
.seh_proc "??0bad_alloc@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rcx)
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	callq	__std_exception_copy
	leaq	"??_7bad_alloc@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??0exception@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0exception@std@@QEAA@AEBV01@@Z"
	.globl	"??0exception@std@@QEAA@AEBV01@@Z"
	.p2align	4, 0x90
"??0exception@std@@QEAA@AEBV01@@Z":
.seh_proc "??0exception@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rcx)
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	callq	__std_exception_copy
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??_Gbad_array_new_length@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
	.globl	"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_Gbad_array_new_length@std@@UEAAPEAXI@Z":
.seh_proc "??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testl	%edi, %edi
	je	.LBB15_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB15_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?what@exception@std@@UEBAPEBDXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?what@exception@std@@UEBAPEBDXZ"
	.globl	"?what@exception@std@@UEBAPEBDXZ"
	.p2align	4, 0x90
"?what@exception@std@@UEBAPEBDXZ":
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	leaq	"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@"(%rip), %rax
	cmovneq	%rcx, %rax
	retq

	.def	 "??_Gbad_alloc@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gbad_alloc@std@@UEAAPEAXI@Z"
	.globl	"??_Gbad_alloc@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_Gbad_alloc@std@@UEAAPEAXI@Z":
.seh_proc "??_Gbad_alloc@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testl	%edi, %edi
	je	.LBB17_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB17_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??_Gexception@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gexception@std@@UEAAPEAXI@Z"
	.globl	"??_Gexception@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_Gexception@std@@UEAAPEAXI@Z":
.seh_proc "??_Gexception@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testl	%edi, %edi
	je	.LBB18_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB18_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?_Get_bits@?$_Rng_from_urng@_KV?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@std@@@std@@AEAA_KXZ";
	.scl	2;
	.type	32;
	.endef
	.globl	__real@000000007ffffffe
	.section	.rdata,"dr",discard,__real@000000007ffffffe
	.p2align	3
__real@000000007ffffffe:
	.quad	2147483646
	.globl	__real@ffffffff80000000
	.section	.rdata,"dr",discard,__real@ffffffff80000000
	.p2align	3
__real@ffffffff80000000:
	.quad	-2147483648
	.globl	__real@0000000000000001
	.section	.rdata,"dr",discard,__real@0000000000000001
	.p2align	3
__real@0000000000000001:
	.quad	1
	.globl	__real@b5026f5aa96619e9
	.section	.rdata,"dr",discard,__real@b5026f5aa96619e9
	.p2align	3
__real@b5026f5aa96619e9:
	.quad	-5403634167711393303
	.globl	__ymm@0000000000000002000000000000000100000000000000000000000000000004
	.section	.rdata,"dr",discard,__ymm@0000000000000002000000000000000100000000000000000000000000000004
	.p2align	5
__ymm@0000000000000002000000000000000100000000000000000000000000000004:
	.quad	4
	.quad	0
	.quad	1
	.quad	2
	.section	.text,"xr",discard,"?_Get_bits@?$_Rng_from_urng@_KV?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@std@@@std@@AEAA_KXZ"
	.globl	"?_Get_bits@?$_Rng_from_urng@_KV?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@std@@@std@@AEAA_KXZ"
	.p2align	4, 0x90
"?_Get_bits@?$_Rng_from_urng@_KV?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@std@@@std@@AEAA_KXZ":
.seh_proc "?_Get_bits@?$_Rng_from_urng@_KV?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@std@@@std@@AEAA_KXZ"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	.seh_endprologue
	movabsq	$-5403634167711393303, %r8
	movq	(%rcx), %rdx
	movq	16(%rcx), %r9
	movq	5000(%rdx), %rcx
	movl	(%rdx), %esi
	vpbroadcastq	__real@000000007ffffffe(%rip), %ymm0
	vmovdqu	__ymm@0000000000000002000000000000000100000000000000000000000000000004(%rip), %ymm1
	vpbroadcastq	__real@ffffffff80000000(%rip), %ymm2
	vpbroadcastq	__real@0000000000000001(%rip), %ymm3
	vpbroadcastq	__real@b5026f5aa96619e9(%rip), %ymm4
	movabsq	$8202884508482404352, %r10
	movq	$-2147483648, %r11
	jmp	.LBB19_1
	.p2align	5, 0x90
.LBB19_10:
	movq	4976(%rdx), %rax
	movl	%eax, %esi
	andl	$2147483646, %esi
	movq	4968(%rdx), %rdi
	andq	%r11, %rdi
	orq	%rsi, %rdi
	movl	%eax, %esi
	andl	$1, %esi
	negq	%rsi
	andq	%r8, %rsi
	xorq	1224(%rdx), %rsi
	shrq	%rdi
	xorq	%rsi, %rdi
	movq	%rdi, 2472(%rdx)
	movq	4984(%rdx), %rsi
	movl	%esi, %edi
	andl	$2147483646, %edi
	andq	$-2147483648, %rax
	orq	%rdi, %rax
	movl	%esi, %edi
	andl	$1, %edi
	negq	%rdi
	andq	%r8, %rdi
	xorq	1232(%rdx), %rdi
	shrq	%rax
	xorq	%rdi, %rax
	movq	%rax, 2480(%rdx)
	movq	4992(%rdx), %rax
	movl	%eax, %edi
	andl	$2147483646, %edi
	andq	$-2147483648, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	andl	$1, %edi
	negq	%rdi
	andq	%r8, %rdi
	xorq	1240(%rdx), %rdi
	shrq	%rsi
	xorq	%rdi, %rsi
	movq	%rsi, 2488(%rdx)
	andq	$-2147483648, %rax
	movq	8(%rdx), %rsi
	movl	%esi, %edi
	andl	$2147483646, %edi
	orq	%rax, %rdi
	shrq	%rdi
	andl	$1, %esi
	negq	%rsi
	andq	%r8, %rsi
	xorq	1248(%rdx), %rsi
	xorq	%rdi, %rsi
	movq	%rsi, 2496(%rdx)
	xorl	%esi, %esi
.LBB19_11:
	movl	%esi, %eax
	incl	%esi
	movq	8(%rdx,%rax,8), %rax
	movq	%rax, %rdi
	shrq	$29, %rdi
	andq	%rcx, %rdi
	xorq	%rax, %rdi
	movq	%rdi, %rax
	shlq	$17, %rax
	andq	%r10, %rax
	xorq	%rdi, %rax
	movl	%eax, %edi
	andl	$134201207, %edi
	shlq	$37, %rdi
	xorq	%rax, %rdi
	movq	%rdi, %rax
	shrq	$43, %rax
	xorq	%rdi, %rax
	cmpq	%r9, %rax
	jbe	.LBB19_12
.LBB19_1:
	cmpl	$312, %esi
	jne	.LBB19_5
	movq	$-2496, %rax
	.p2align	4, 0x90
.LBB19_3:
	vmovdqu	2512(%rdx,%rax), %ymm5
	vpandq	%ymm0, %ymm5, %ymm16
	vmovq	2504(%rdx,%rax), %xmm17
	vptestmq	%ymm3, %ymm5, %k1
	vpermt2q	%ymm17, %ymm1, %ymm5
	vpternlogq	$236, %ymm2, %ymm16, %ymm5
	vmovdqa64	%ymm4, %ymm16 {%k1} {z}
	vpsrlq	$1, %ymm5, %ymm5
	vpternlogq	$150, 3752(%rdx,%rax), %ymm16, %ymm5
	vmovdqu	%ymm5, 5000(%rdx,%rax)
	addq	$32, %rax
	jne	.LBB19_3
	movl	$312, %esi
	jmp	.LBB19_11
	.p2align	5, 0x90
.LBB19_5:
	cmpl	$624, %esi
	jb	.LBB19_11
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB19_7:
	vmovdqu	2512(%rdx,%rax,8), %ymm5
	vmovdqu64	2544(%rdx,%rax,8), %ymm16
	vpandq	%ymm0, %ymm16, %ymm17
	vpandq	%ymm0, %ymm5, %ymm18
	vpternlogq	$248, 2504(%rdx,%rax,8), %ymm2, %ymm18
	vpternlogq	$248, 2536(%rdx,%rax,8), %ymm2, %ymm17
	vptestmq	%ymm3, %ymm5, %k1
	vptestmq	%ymm3, %ymm16, %k2
	vmovdqa64	%ymm4, %ymm5 {%k2} {z}
	vmovdqa64	%ymm4, %ymm16 {%k1} {z}
	vpsrlq	$1, %ymm17, %ymm17
	vpsrlq	$1, %ymm18, %ymm18
	vpternlogq	$150, 3752(%rdx,%rax,8), %ymm16, %ymm18
	vpternlogq	$150, 3784(%rdx,%rax,8), %ymm5, %ymm17
	vmovdqu64	%ymm17, 40(%rdx,%rax,8)
	vmovdqu64	%ymm18, 8(%rdx,%rax,8)
	cmpq	$144, %rax
	jae	.LBB19_8
	vmovdqu	2576(%rdx,%rax,8), %ymm5
	vmovdqu64	2608(%rdx,%rax,8), %ymm16
	vpandq	%ymm0, %ymm16, %ymm17
	vpandq	%ymm0, %ymm5, %ymm18
	vpternlogq	$248, 2568(%rdx,%rax,8), %ymm2, %ymm18
	vpternlogq	$248, 2600(%rdx,%rax,8), %ymm2, %ymm17
	vptestmq	%ymm3, %ymm5, %k1
	vptestmq	%ymm3, %ymm16, %k2
	vmovdqa64	%ymm4, %ymm5 {%k2} {z}
	vmovdqa64	%ymm4, %ymm16 {%k1} {z}
	vpsrlq	$1, %ymm17, %ymm17
	vpsrlq	$1, %ymm18, %ymm18
	vpternlogq	$150, 3816(%rdx,%rax,8), %ymm16, %ymm18
	vpternlogq	$150, 3848(%rdx,%rax,8), %ymm5, %ymm17
	vmovdqu64	%ymm17, 104(%rdx,%rax,8)
	vmovdqu64	%ymm18, 72(%rdx,%rax,8)
	addq	$16, %rax
	jmp	.LBB19_7
	.p2align	5, 0x90
.LBB19_8:
	movq	3728(%rdx), %rsi
	movq	3736(%rdx), %rax
	movl	%esi, %edi
	andl	$2147483646, %edi
	movq	3720(%rdx), %rbx
	andq	%r11, %rbx
	orq	%rdi, %rbx
	movl	%esi, %edi
	andl	$1, %edi
	negq	%rdi
	andq	%r8, %rdi
	xorq	4968(%rdx), %rdi
	shrq	%rbx
	xorq	%rdi, %rbx
	movq	%rbx, 1224(%rdx)
	movl	%eax, %edi
	andl	$2147483646, %edi
	andq	$-2147483648, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	andl	$1, %edi
	negq	%rdi
	andq	%r8, %rdi
	xorq	4976(%rdx), %rdi
	shrq	%rsi
	xorq	%rdi, %rsi
	movq	%rsi, 1232(%rdx)
	movq	3744(%rdx), %rsi
	movl	%esi, %edi
	andl	$2147483646, %edi
	andq	$-2147483648, %rax
	orq	%rdi, %rax
	movl	%esi, %edi
	andl	$1, %edi
	negq	%rdi
	andq	%r8, %rdi
	xorq	4984(%rdx), %rdi
	shrq	%rax
	xorq	%rdi, %rax
	movq	%rax, 1240(%rdx)
	movq	3752(%rdx), %rax
	movl	%eax, %edi
	andl	$2147483646, %edi
	andq	$-2147483648, %rsi
	orq	%rdi, %rsi
	andl	$1, %eax
	negq	%rax
	andq	%r8, %rax
	xorq	4992(%rdx), %rax
	shrq	%rsi
	xorq	%rax, %rsi
	movq	%rsi, 1248(%rdx)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB19_9:
	vmovdqu	3760(%rdx,%rax,8), %ymm5
	vmovdqu64	3792(%rdx,%rax,8), %ymm16
	vpandq	%ymm0, %ymm16, %ymm17
	vpandq	%ymm0, %ymm5, %ymm18
	vpternlogq	$248, 3752(%rdx,%rax,8), %ymm2, %ymm18
	vpternlogq	$248, 3784(%rdx,%rax,8), %ymm2, %ymm17
	vptestmq	%ymm3, %ymm5, %k1
	vptestmq	%ymm3, %ymm16, %k2
	vmovdqa64	%ymm4, %ymm5 {%k2} {z}
	vmovdqa64	%ymm4, %ymm16 {%k1} {z}
	vpsrlq	$1, %ymm17, %ymm17
	vpsrlq	$1, %ymm18, %ymm18
	vpternlogq	$150, 8(%rdx,%rax,8), %ymm16, %ymm18
	vpternlogq	$150, 40(%rdx,%rax,8), %ymm5, %ymm17
	vmovdqu64	%ymm17, 1288(%rdx,%rax,8)
	vmovdqu64	%ymm18, 1256(%rdx,%rax,8)
	cmpq	$144, %rax
	jae	.LBB19_10
	vmovdqu	3824(%rdx,%rax,8), %ymm5
	vmovdqu64	3856(%rdx,%rax,8), %ymm16
	vpandq	%ymm0, %ymm16, %ymm17
	vpandq	%ymm0, %ymm5, %ymm18
	vpternlogq	$248, 3816(%rdx,%rax,8), %ymm2, %ymm18
	vpternlogq	$248, 3848(%rdx,%rax,8), %ymm2, %ymm17
	vptestmq	%ymm3, %ymm5, %k1
	vptestmq	%ymm3, %ymm16, %k2
	vmovdqa64	%ymm4, %ymm5 {%k2} {z}
	vmovdqa64	%ymm4, %ymm16 {%k1} {z}
	vpsrlq	$1, %ymm17, %ymm17
	vpsrlq	$1, %ymm18, %ymm18
	vpternlogq	$150, 72(%rdx,%rax,8), %ymm16, %ymm18
	vpternlogq	$150, 104(%rdx,%rax,8), %ymm5, %ymm17
	vmovdqu64	%ymm17, 1352(%rdx,%rax,8)
	vmovdqu64	%ymm18, 1320(%rdx,%rax,8)
	addq	$16, %rax
	jmp	.LBB19_9
	.p2align	5, 0x90
.LBB19_12:
	movl	%esi, (%rdx)
	popq	%rbx
	popq	%rdi
	popq	%rsi
	vzeroupper
	retq
	.seh_endproc

	.def	 __local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:
	leaq	"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"(%rip), %rax
	retq

	.def	 "??0?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@_N@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@_N@Z"
	.globl	"??0?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@_N@Z"
	.p2align	4, 0x90
"??0?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@_N@Z":
.seh_proc "??0?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@_N@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movl	%r8d, %r14d
	movq	%rdx, %r15
	movq	%rcx, %rsi
	testl	%r9d, %r9d
	je	.LBB21_1
	leaq	"??_8?$basic_ostream@DU?$char_traits@D@std@@@std@@7B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	$0, 24(%rsi)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 64(%rsi)
	movq	$0, 80(%rsi)
	leaq	"??_7?$basic_ios@DU?$char_traits@D@std@@@std@@6B@"(%rip), %rcx
	movq	%rcx, 16(%rsi)
	jmp	.LBB21_3
	.p2align	5, 0x90
.LBB21_1:
	movq	(%rsi), %rax
.LBB21_3:
	movslq	4(%rax), %rax
	leaq	"??_7?$basic_ostream@DU?$char_traits@D@std@@@std@@6B@"(%rip), %rcx
	movq	%rcx, (%rsi,%rax)
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	leal	-16(%rax), %ecx
	movl	%ecx, -4(%rsi,%rax)
	movq	(%rsi), %rax
	movslq	4(%rax), %rbx
	leaq	(%rsi,%rbx), %rdi
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rsi,%rbx)
	movl	$513, 24(%rsi,%rbx)
	movq	$6, 32(%rsi,%rbx)
	vmovups	%xmm0, 56(%rsi,%rbx)
	vmovups	%xmm0, 40(%rsi,%rbx)
	movl	$16, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rbp
	movb	$1, %cl
	callq	"?_Init@locale@std@@CAPEAV_Locimp@12@_N@Z"
	movq	%rax, 8(%rbp)
	movq	%rbp, 64(%rsi,%rbx)
	movq	%r15, 72(%rsi,%rbx)
	movq	$0, 80(%rsi,%rbx)
	movq	%rax, 56(%rsp)
	movq	(%rax), %rdx
	movq	%rax, %rcx
	callq	*8(%rdx)
	leaq	48(%rsp), %rcx
	callq	"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"
	movq	(%rax), %rbp
	movq	%rax, %rcx
	movb	$32, %dl
	callq	*64(%rbp)
	movl	%eax, %ebx
	movq	56(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB21_6
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB21_6
	movq	(%rax), %rbp
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%rbp)
.LBB21_6:
	movb	%bl, 88(%rdi)
	cmpq	$0, 72(%rdi)
	jne	.LBB21_8
	movl	16(%rdi), %eax
	andl	$19, %eax
	orl	$4, %eax
	movl	%eax, 16(%rdi)
	movl	20(%rdi), %ecx
	andl	%ecx, %eax
	jne	.LBB21_11
.LBB21_8:
	testb	%r14b, %r14b
	je	.LBB21_10
	movq	%rdi, %rcx
	callq	"?_Addstd@ios_base@std@@SAXPEAV12@@Z"
.LBB21_10:
	movq	%rsi, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.p2align	5, 0x90
.LBB21_11:
	testb	$2, %al
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rax
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rbp
	cmoveq	%rax, %rbp
	testb	$4, %cl
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rbp, %rdx
	movl	$1, 32(%rsp)
	leaq	"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B"(%rip), %rax
	movq	%rax, 40(%rsp)
	leaq	48(%rsp), %rsi
	leaq	32(%rsp), %r8
	movq	%rsi, %rcx
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	 "??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.globl	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.p2align	4, 0x90
"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z":
.seh_proc "??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$112, %rsp
	.seh_stackalloc 112
	.seh_endprologue
	movq	%rdx, %r14
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	callq	strlen
	movq	%rax, %r15
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	movq	40(%rsi,%rcx), %rcx
	xorl	%edx, %edx
	movq	%rcx, %r12
	subq	%r15, %r12
	movl	$0, %edi
	cmovgq	%r12, %rdi
	testq	%rcx, %rcx
	cmovleq	%rdx, %rdi
	movq	%rsi, 40(%rsp)
	movslq	4(%rax), %rdx
	movq	72(%rsi,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB22_2
	movq	(%rcx), %rax
	callq	*8(%rax)
	movq	(%rsi), %rax
	movslq	4(%rax), %rdx
.LBB22_2:
	cmpl	$0, 16(%rsi,%rdx)
	je	.LBB22_4
	movb	$0, 48(%rsp)
	movl	$4, %ebp
	jmp	.LBB22_28
	.p2align	5, 0x90
.LBB22_4:
	movq	80(%rsi,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB22_6
	cmpq	%rsi, %rcx
	je	.LBB22_6
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	movq	(%rsi), %rax
	movslq	4(%rax), %rcx
	cmpl	$0, 16(%rsi,%rcx)
	sete	48(%rsp)
	movl	$4, %ebp
	jne	.LBB22_28
	jmp	.LBB22_8
	.p2align	5, 0x90
.LBB22_6:
	movb	$1, 48(%rsp)
.LBB22_8:
	movl	4(%rax), %ecx
	movslq	%ecx, %rax
	movl	$448, %edx
	andl	24(%rsi,%rax), %edx
	cmpl	$64, %edx
	je	.LBB22_18
	testq	%rdi, %rdi
	jle	.LBB22_18
	.p2align	4, 0x90
.LBB22_10:
	movslq	%ecx, %rax
	movq	72(%rsi,%rax), %rcx
	movzbl	88(%rsi,%rax), %eax
	movq	64(%rcx), %rdx
	movq	(%rdx), %rbp
	testq	%rbp, %rbp
	je	.LBB22_15
	movq	88(%rcx), %rdi
	movl	(%rdi), %ebx
	testl	%ebx, %ebx
	jle	.LBB22_15
	decl	%ebx
	movl	%ebx, (%rdi)
	leaq	1(%rbp), %rcx
	movq	%rcx, (%rdx)
	movb	%al, (%rbp)
	jmp	.LBB22_13
	.p2align	5, 0x90
.LBB22_15:
	movzbl	%al, %edx
	movq	(%rcx), %rax
	callq	*24(%rax)
	cmpl	$-1, %eax
	je	.LBB22_16
.LBB22_13:
	cmpq	$2, %r12
	jl	.LBB22_17
	decq	%r12
	movq	(%rsi), %rax
	movl	4(%rax), %ecx
	jmp	.LBB22_10
	.p2align	5, 0x90
.LBB22_17:
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	xorl	%edi, %edi
.LBB22_18:
	movq	72(%rsi,%rax), %rcx
	movq	(%rcx), %rax
	movq	%r14, %rdx
	movq	%r15, %r8
	callq	*72(%rax)
	movl	$4, %ebp
	cmpq	%r15, %rax
	jne	.LBB22_27
	testq	%rdi, %rdi
	jle	.LBB22_26
	incq	%rdi
	jmp	.LBB22_21
	.p2align	5, 0x90
.LBB22_24:
	movzbl	%r8b, %edx
	movq	(%rcx), %rax
	callq	*24(%rax)
	cmpl	$-1, %eax
	je	.LBB22_27
	decq	%rdi
	cmpq	$1, %rdi
	jle	.LBB22_26
.LBB22_21:
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	movq	72(%rsi,%rax), %rcx
	movzbl	88(%rsi,%rax), %r8d
	movq	64(%rcx), %rdx
	movq	(%rdx), %rbx
	testq	%rbx, %rbx
	je	.LBB22_24
	movq	88(%rcx), %r9
	movl	(%r9), %eax
	testl	%eax, %eax
	jle	.LBB22_24
	decl	%eax
	movl	%eax, (%r9)
	leaq	1(%rbx), %rax
	movq	%rax, (%rdx)
	movb	%r8b, (%rbx)
	decq	%rdi
	cmpq	$1, %rdi
	jg	.LBB22_21
.LBB22_26:
	xorl	%ebp, %ebp
	jmp	.LBB22_27
	.p2align	5, 0x90
.LBB22_16:
	movl	$4, %ebp
.LBB22_27:
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	movq	$0, 40(%rsi,%rax)
	movq	(%rsi), %rax
.LBB22_28:
	movslq	4(%rax), %rax
	orl	16(%rsi,%rax), %ebp
	xorl	%ecx, %ecx
	cmpq	$0, 72(%rsi,%rax)
	sete	%cl
	shll	$2, %ecx
	andl	$23, %ebp
	orl	%ecx, %ebp
	movl	%ebp, 16(%rsi,%rax)
	andl	20(%rsi,%rax), %ebp
	jne	.LBB22_30
	leaq	40(%rsp), %rcx
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	movq	%rsi, %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	retq
	.p2align	5, 0x90
.LBB22_30:
	testb	$2, %bpl
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rax
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rcx
	cmoveq	%rax, %rcx
	testb	$4, %bpl
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rcx, %rdx
	movl	$1, 56(%rsp)
	leaq	"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B"(%rip), %rax
	movq	%rax, 64(%rsp)
	leaq	72(%rsp), %rsi
	leaq	56(%rsp), %r8
	movq	%rsi, %rcx
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	 "??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	.globl	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	.p2align	4, 0x90
"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z":
.seh_proc "??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@_K@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$128, %rsp
	.seh_stackalloc 128
	.seh_endprologue
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rcx, 56(%rsp)
	movq	(%rcx), %rax
	movslq	4(%rax), %rdx
	movq	72(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB23_2
	movq	(%rcx), %rax
	callq	*8(%rax)
	movq	(%rsi), %rax
	movslq	4(%rax), %rdx
.LBB23_2:
	cmpl	$0, 16(%rsi,%rdx)
	je	.LBB23_4
	movb	$0, 64(%rsp)
	xorl	%ecx, %ecx
	jmp	.LBB23_12
	.p2align	5, 0x90
.LBB23_4:
	movq	80(%rsi,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB23_6
	cmpq	%rsi, %rcx
	je	.LBB23_6
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	movq	(%rsi), %rax
	movslq	4(%rax), %rdx
	xorl	%ecx, %ecx
	cmpl	$0, 16(%rsi,%rdx)
	sete	64(%rsp)
	jne	.LBB23_12
	jmp	.LBB23_8
	.p2align	5, 0x90
.LBB23_6:
	movb	$1, 64(%rsp)
.LBB23_8:
	movslq	4(%rax), %rax
	movq	64(%rsi,%rax), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	88(%rsp), %rcx
	callq	"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"
	movq	%rax, %rbx
	movq	96(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB23_11
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB23_11
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB23_11:
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	leaq	(%rsi,%rax), %r9
	movb	88(%rsi,%rax), %cl
	movq	72(%rsi,%rax), %rax
	movb	$0, 88(%rsp)
	movq	%rax, 96(%rsp)
	movq	(%rbx), %rax
	movq	%rdi, 40(%rsp)
	movb	%cl, 32(%rsp)
	leaq	72(%rsp), %rdx
	leaq	88(%rsp), %r8
	movq	%rbx, %rcx
	callq	*48(%rax)
	movzbl	72(%rsp), %ecx
	shll	$2, %ecx
	movq	(%rsi), %rax
.LBB23_12:
	movslq	4(%rax), %rdx
	movl	16(%rsi,%rdx), %eax
	xorl	%ebx, %ebx
	cmpq	$0, 72(%rsi,%rdx)
	sete	%bl
	shll	$2, %ebx
	andl	$23, %eax
	orl	%ecx, %eax
	orl	%ebx, %eax
	movl	%eax, 16(%rsi,%rdx)
	andl	20(%rsi,%rdx), %eax
	jne	.LBB23_14
	leaq	56(%rsp), %rcx
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	movq	%rsi, %rax
	addq	$128, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.p2align	5, 0x90
.LBB23_14:
	testb	$2, %al
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rcx
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rbx
	cmoveq	%rcx, %rbx
	testb	$4, %al
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rbx, %rdx
	movl	$1, 72(%rsp)
	leaq	"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B"(%rip), %rax
	movq	%rax, 80(%rsp)
	leaq	88(%rsp), %rsi
	leaq	72(%rsp), %r8
	movq	%rsi, %rcx
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	 "??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	.globl	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	.p2align	4, 0x90
"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z":
.seh_proc "??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@N@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$152, %rsp
	.seh_stackalloc 152
	vmovups	%xmm6, 128(%rsp)
	.seh_savexmm %xmm6, 128
	.seh_endprologue
	vmovaps	%xmm1, %xmm6
	movq	%rcx, %rsi
	movq	%rcx, 56(%rsp)
	movq	(%rcx), %rax
	movslq	4(%rax), %rdx
	movq	72(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB24_2
	movq	(%rcx), %rax
	callq	*8(%rax)
	movq	(%rsi), %rax
	movslq	4(%rax), %rdx
.LBB24_2:
	cmpl	$0, 16(%rsi,%rdx)
	je	.LBB24_4
	movb	$0, 64(%rsp)
	xorl	%ecx, %ecx
	jmp	.LBB24_12
	.p2align	5, 0x90
.LBB24_4:
	movq	80(%rsi,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB24_6
	cmpq	%rsi, %rcx
	je	.LBB24_6
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	movq	(%rsi), %rax
	movslq	4(%rax), %rdx
	xorl	%ecx, %ecx
	cmpl	$0, 16(%rsi,%rdx)
	sete	64(%rsp)
	jne	.LBB24_12
	jmp	.LBB24_8
	.p2align	5, 0x90
.LBB24_6:
	movb	$1, 64(%rsp)
.LBB24_8:
	movslq	4(%rax), %rax
	movq	64(%rsi,%rax), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	88(%rsp), %rcx
	callq	"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"
	movq	%rax, %rdi
	movq	96(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB24_11
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB24_11
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB24_11:
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	leaq	(%rsi,%rax), %r9
	movb	88(%rsi,%rax), %cl
	movq	72(%rsi,%rax), %rax
	movb	$0, 88(%rsp)
	movq	%rax, 96(%rsp)
	movq	(%rdi), %rax
	vmovsd	%xmm6, 40(%rsp)
	movb	%cl, 32(%rsp)
	leaq	72(%rsp), %rdx
	leaq	88(%rsp), %r8
	movq	%rdi, %rcx
	callq	*40(%rax)
	movzbl	72(%rsp), %ecx
	shll	$2, %ecx
	movq	(%rsi), %rax
.LBB24_12:
	movslq	4(%rax), %rdx
	movl	16(%rsi,%rdx), %eax
	xorl	%edi, %edi
	cmpq	$0, 72(%rsi,%rdx)
	sete	%dil
	shll	$2, %edi
	andl	$23, %eax
	orl	%ecx, %eax
	orl	%edi, %eax
	movl	%eax, 16(%rsi,%rdx)
	andl	20(%rsi,%rdx), %eax
	jne	.LBB24_14
	leaq	56(%rsp), %rcx
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	movq	%rsi, %rax
	vmovups	128(%rsp), %xmm6
	addq	$152, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.p2align	5, 0x90
.LBB24_14:
	testb	$2, %al
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rcx
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rdi
	cmoveq	%rcx, %rdi
	testb	$4, %al
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rdi, %rdx
	movl	$1, 72(%rsp)
	leaq	"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B"(%rip), %rax
	movq	%rax, 80(%rsp)
	leaq	88(%rsp), %rsi
	leaq	72(%rsp), %r8
	movq	%rsi, %rcx
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	 "?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	.globl	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	.p2align	4, 0x90
"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ":
.seh_proc "?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, %rsi
	movq	(%rcx), %rax
	movslq	4(%rax), %rcx
	movq	72(%rsi,%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_11
	movq	%rsi, 32(%rsp)
	movslq	4(%rax), %rax
	movq	72(%rsi,%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB25_3
	movq	(%rcx), %rax
	callq	*8(%rax)
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
.LBB25_3:
	cmpl	$0, 16(%rsi,%rax)
	je	.LBB25_5
	movb	$0, 40(%rsp)
	jmp	.LBB25_10
	.p2align	5, 0x90
.LBB25_5:
	movq	80(%rsi,%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB25_7
	cmpq	%rsi, %rcx
	je	.LBB25_7
	callq	"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	cmpl	$0, 16(%rsi,%rax)
	sete	40(%rsp)
	jne	.LBB25_10
	jmp	.LBB25_9
	.p2align	5, 0x90
.LBB25_7:
	movb	$1, 40(%rsp)
.LBB25_9:
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	callq	*104(%rax)
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	sete	%cl
	shll	$2, %ecx
	movq	(%rsi), %rax
	movslq	4(%rax), %rdx
	movl	16(%rsi,%rdx), %eax
	xorl	%edi, %edi
	cmpq	$0, 72(%rsi,%rdx)
	sete	%dil
	shll	$2, %edi
	andl	$23, %eax
	orl	%edi, %eax
	orl	%ecx, %eax
	movl	%eax, 16(%rsi,%rdx)
	andl	20(%rsi,%rdx), %eax
	jne	.LBB25_12
.LBB25_10:
	leaq	32(%rsp), %rcx
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
.LBB25_11:
	movq	%rsi, %rax
	addq	$104, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.p2align	5, 0x90
.LBB25_12:
	testb	$2, %al
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rcx
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rdi
	cmoveq	%rcx, %rdi
	testb	$4, %al
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rdi, %rdx
	movl	$1, 48(%rsp)
	leaq	"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B"(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	64(%rsp), %rsi
	leaq	48(%rsp), %r8
	movq	%rsi, %rcx
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	 "??_E?$basic_ostream@DU?$char_traits@D@std@@@std@@$4PPPPPPPM@A@EAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_E?$basic_ostream@DU?$char_traits@D@std@@@std@@$4PPPPPPPM@A@EAAPEAXI@Z"
	.globl	"??_E?$basic_ostream@DU?$char_traits@D@std@@@std@@$4PPPPPPPM@A@EAAPEAXI@Z"
	.p2align	4, 0x90
"??_E?$basic_ostream@DU?$char_traits@D@std@@@std@@$4PPPPPPPM@A@EAAPEAXI@Z":
.seh_proc "??_E?$basic_ostream@DU?$char_traits@D@std@@@std@@$4PPPPPPPM@A@EAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	xorl	%eax, %eax
	subl	-4(%rcx), %eax
	movl	%edx, %ebx
	movslq	%eax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	(%rcx,%rdx), %rsi
	addq	$-16, %rsi
	leaq	"??_7ios_base@std@@6B@"(%rip), %rdi
	movq	%rdi, (%rcx,%rdx)
	movq	%rax, %rcx
	callq	"?_Ios_base_dtor@ios_base@std@@CAXPEAV12@@Z"
	testl	%ebx, %ebx
	je	.LBB26_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB26_2:
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??_G?$basic_ios@DU?$char_traits@D@std@@@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G?$basic_ios@DU?$char_traits@D@std@@@std@@UEAAPEAXI@Z"
	.globl	"??_G?$basic_ios@DU?$char_traits@D@std@@@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_G?$basic_ios@DU?$char_traits@D@std@@@std@@UEAAPEAXI@Z":
.seh_proc "??_G?$basic_ios@DU?$char_traits@D@std@@@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7ios_base@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	callq	"?_Ios_base_dtor@ios_base@std@@CAXPEAV12@@Z"
	testl	%edi, %edi
	je	.LBB27_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB27_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??_Gios_base@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gios_base@std@@UEAAPEAXI@Z"
	.globl	"??_Gios_base@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_Gios_base@std@@UEAAPEAXI@Z":
.seh_proc "??_Gios_base@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7ios_base@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	callq	"?_Ios_base_dtor@ios_base@std@@CAXPEAV12@@Z"
	testl	%edi, %edi
	je	.LBB28_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB28_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	.globl	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	.p2align	4, 0x90
"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z":
.seh_proc "??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$168, %rsp
	.seh_stackalloc 168
	vmovups	%xmm6, 144(%rsp)
	.seh_savexmm %xmm6, 144
	.seh_endprologue
	movq	%rdx, %rbp
	movq	%rcx, %rsi
	movl	(%r8), %r14d
	movq	8(%r8), %r15
	movq	$0, 96(%rsp)
	vmovups	__xmm@000000000000000f0000000000000000(%rip), %xmm6
	vmovups	%xmm6, 112(%rsp)
	movb	$0, 96(%rsp)
	movq	%rdx, %rcx
	callq	strlen
	leaq	96(%rsp), %rdi
	movq	%rdi, %rcx
	movq	%rbp, %rdx
	movq	%rax, %r8
	callq	"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	movq	$0, 32(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 48(%rsp)
	movq	112(%rsp), %rbx
	cmpq	$16, 120(%rsp)
	jb	.LBB29_2
	movq	96(%rsp), %rdi
.LBB29_2:
	cmpq	$16, %rbx
	jae	.LBB29_3
	vmovups	(%rdi), %xmm0
	vmovups	%xmm0, 32(%rsp)
	movq	%rbx, 48(%rsp)
	movq	$15, 56(%rsp)
	testq	%rbx, %rbx
	jne	.LBB29_8
	jmp	.LBB29_9
	.p2align	5, 0x90
.LBB29_3:
	movq	%rbx, %rbp
	orq	$15, %rbp
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rbp
	cmovaeq	%rax, %rbp
	cmpq	$4095, %rbp
	jb	.LBB29_5
	leaq	40(%rbp), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %rcx
	andq	$-32, %rcx
	movq	%rax, -8(%rcx)
	jmp	.LBB29_6
	.p2align	5, 0x90
.LBB29_5:
	leaq	1(%rbp), %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rcx
.LBB29_6:
	movq	%rcx, 32(%rsp)
	leaq	1(%rbx), %r8
	movq	%rdi, %rdx
	callq	_intel_fast_memcpy
	movq	%rbx, 48(%rsp)
	movq	%rbp, 56(%rsp)
.LBB29_8:
	leaq	"??_C@_02LMMGGCAJ@?3?5?$AA@"(%rip), %rdx
	leaq	32(%rsp), %rcx
	movl	$2, %r8d
	callq	"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
.LBB29_9:
	movq	(%r15), %rax
	leaq	64(%rsp), %rdi
	movq	%r15, %rcx
	movq	%rdi, %rdx
	movl	%r14d, %r8d
	callq	*16(%rax)
	movq	80(%rsp), %r8
	cmpq	$16, 88(%rsp)
	jb	.LBB29_11
	movq	64(%rsp), %rdi
.LBB29_11:
	leaq	32(%rsp), %rcx
	movq	%rdi, %rdx
	callq	"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	movq	88(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB29_16
	movq	64(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB29_15
	movq	-8(%rcx), %rbp
	addq	$-8, %rcx
	subq	%rbp, %rcx
	cmpq	$32, %rcx
	jae	.LBB29_30
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%rbp, %rcx
.LBB29_15:
	callq	"??3@YAXPEAX_K@Z"
.LBB29_16:
	vmovups	32(%rsp), %ymm0
	vmovups	%ymm0, 64(%rsp)
	vmovups	%xmm6, 48(%rsp)
	movb	$0, 32(%rsp)
	cmpq	$16, 88(%rsp)
	jb	.LBB29_17
	movq	64(%rsp), %rax
	jmp	.LBB29_19
	.p2align	5, 0x90
.LBB29_17:
	leaq	64(%rsp), %rax
.LBB29_19:
	leaq	"??_7exception@std@@6B@"(%rip), %rcx
	movq	%rcx, (%rsi)
	leaq	8(%rsi), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rsi)
	movq	%rax, 128(%rsp)
	movb	$1, 136(%rsp)
	leaq	128(%rsp), %rcx
	vzeroupper
	callq	__std_exception_copy
	leaq	"??_7runtime_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	88(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB29_24
	movq	64(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB29_23
	movq	-8(%rcx), %rbp
	addq	$-8, %rcx
	subq	%rbp, %rcx
	cmpq	$32, %rcx
	jae	.LBB29_30
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%rbp, %rcx
.LBB29_23:
	callq	"??3@YAXPEAX_K@Z"
.LBB29_24:
	leaq	"??_7_System_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movl	%r14d, 24(%rsi)
	movq	%r15, 32(%rsi)
	movq	120(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB29_29
	movq	96(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB29_28
	movq	-8(%rcx), %rbp
	addq	$-8, %rcx
	subq	%rbp, %rcx
	cmpq	$32, %rcx
	jae	.LBB29_30
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%rbp, %rcx
.LBB29_28:
	callq	"??3@YAXPEAX_K@Z"
.LBB29_29:
	leaq	"??_7failure@ios_base@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	vmovups	144(%rsp), %xmm6
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.p2align	5, 0x90
.LBB29_30:
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 "??0failure@ios_base@std@@QEAA@AEBV012@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0failure@ios_base@std@@QEAA@AEBV012@@Z"
	.globl	"??0failure@ios_base@std@@QEAA@AEBV012@@Z"
	.p2align	4, 0x90
"??0failure@ios_base@std@@QEAA@AEBV012@@Z":
.seh_proc "??0failure@ios_base@std@@QEAA@AEBV012@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rcx)
	leaq	8(%rsi), %rcx
	callq	__std_exception_copy
	movl	24(%rsi), %eax
	movl	%eax, 24(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 32(%rdi)
	leaq	"??_7failure@ios_base@std@@6B@"(%rip), %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??0system_error@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0system_error@std@@QEAA@AEBV01@@Z"
	.globl	"??0system_error@std@@QEAA@AEBV01@@Z"
	.p2align	4, 0x90
"??0system_error@std@@QEAA@AEBV01@@Z":
.seh_proc "??0system_error@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rcx)
	leaq	8(%rsi), %rcx
	callq	__std_exception_copy
	movl	24(%rsi), %eax
	movl	%eax, 24(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 32(%rdi)
	leaq	"??_7system_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??0_System_error@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0_System_error@std@@QEAA@AEBV01@@Z"
	.globl	"??0_System_error@std@@QEAA@AEBV01@@Z"
	.p2align	4, 0x90
"??0_System_error@std@@QEAA@AEBV01@@Z":
.seh_proc "??0_System_error@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rcx)
	leaq	8(%rsi), %rcx
	callq	__std_exception_copy
	leaq	"??_7_System_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rdi)
	movl	24(%rsi), %eax
	movl	%eax, 24(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 32(%rdi)
	movq	%rdi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??0runtime_error@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0runtime_error@std@@QEAA@AEBV01@@Z"
	.globl	"??0runtime_error@std@@QEAA@AEBV01@@Z"
	.p2align	4, 0x90
"??0runtime_error@std@@QEAA@AEBV01@@Z":
.seh_proc "??0runtime_error@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rcx)
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	callq	__std_exception_copy
	leaq	"??_7runtime_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??_G_Iostream_error_category2@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z"
	.globl	"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z":
.seh_proc "??_G_Iostream_error_category2@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	testl	%edx, %edx
	je	.LBB34_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB34_2:
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?name@_Iostream_error_category2@std@@UEBAPEBDXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?name@_Iostream_error_category2@std@@UEBAPEBDXZ"
	.globl	"?name@_Iostream_error_category2@std@@UEBAPEBDXZ"
	.p2align	4, 0x90
"?name@_Iostream_error_category2@std@@UEBAPEBDXZ":
	leaq	"??_C@_08LLGCOLLL@iostream?$AA@"(%rip), %rax
	retq

	.def	 "?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"
	.globl	"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"
	.p2align	4, 0x90
"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z":
.seh_proc "?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	cmpl	$1, %r8d
	jne	.LBB36_3
	movq	$0, (%rsi)
	vmovups	__xmm@000000000000000f0000000000000000(%rip), %xmm0
	vmovups	%xmm0, 16(%rsi)
	movb	$0, (%rsi)
	leaq	"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB"(%rip), %rdx
	movl	$21, %r8d
	movq	%rsi, %rcx
	jmp	.LBB36_2
	.p2align	5, 0x90
.LBB36_3:
	movl	%r8d, %ecx
	callq	"?_Syserror_map@std@@YAPEBDH@Z"
	movq	%rax, %rdi
	movq	$0, (%rsi)
	vmovups	__xmm@000000000000000f0000000000000000(%rip), %xmm0
	vmovups	%xmm0, 16(%rsi)
	movb	$0, (%rsi)
	movq	%rax, %rcx
	callq	strlen
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rax, %r8
.LBB36_2:
	callq	"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z"
	.globl	"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z"
	.p2align	4, 0x90
"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z":
	movq	%rdx, %rax
	movl	%r8d, (%rdx)
	movq	%rcx, 8(%rdx)
	retq

	.def	 "?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z"
	.globl	"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z"
	.p2align	4, 0x90
"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z":
	movq	8(%rdx), %rax
	movq	8(%rcx), %rcx
	cmpq	8(%rax), %rcx
	sete	%cl
	cmpl	%r8d, (%rdx)
	sete	%al
	andb	%cl, %al
	retq

	.def	 "?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"
	.globl	"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"
	.p2align	4, 0x90
"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z":
.seh_proc "?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%r8, %rsi
	movl	%edx, %r8d
	movq	(%rcx), %rax
	leaq	32(%rsp), %rdx
	callq	*24(%rax)
	movq	40(%rsp), %rax
	movq	8(%rsi), %rcx
	movq	8(%rax), %rax
	cmpq	8(%rcx), %rax
	sete	%cl
	movl	32(%rsp), %eax
	cmpl	(%rsi), %eax
	sete	%al
	andb	%cl, %al
	addq	$48, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	.globl	"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	.p2align	4, 0x90
"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z":
.seh_proc "?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%r8, %rsi
	movq	%rcx, %rdi
	movq	24(%rcx), %rax
	cmpq	%r8, %rax
	jae	.LBB40_1
	testq	%rsi, %rsi
	js	.LBB40_21
	movq	%rdi, %r8
	movabsq	$9223372036854775807, %r9
	movq	%rsi, %rdi
	orq	$15, %rdi
	movq	%rax, 40(%rsp)
	js	.LBB40_6
	movq	%rax, %rbx
	shrq	%rbx
	movq	%rbx, %rcx
	xorq	%r9, %rcx
	addq	%rax, %rbx
	cmpq	%rbx, %rdi
	cmovaeq	%rdi, %rbx
	cmpq	%rax, %rcx
	cmovbq	%r9, %rbx
	leaq	1(%rbx), %rcx
	cmpq	$4096, %rcx
	jb	.LBB40_10
	movq	%rdx, 32(%rsp)
	cmpq	$-39, %rcx
	movq	%r8, %rdi
	jb	.LBB40_9
	callq	"?_Throw_bad_array_new_length@std@@YAXXZ"
	.p2align	5, 0x90
.LBB40_1:
	movq	%rdi, %rbx
	cmpq	$16, %rax
	jb	.LBB40_3
	movq	(%rdi), %rbx
.LBB40_3:
	movq	%rsi, 16(%rdi)
	movq	%rbx, %rcx
	movq	%rsi, %r8
	callq	memmove
	movb	$0, (%rbx,%rsi)
	jmp	.LBB40_20
	.p2align	5, 0x90
.LBB40_6:
	movq	%rdx, 32(%rsp)
	movq	%r9, %rbx
	leaq	1(%r9), %rcx
	movq	%r8, %rdi
.LBB40_9:
	addq	$39, %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %rdx
	andq	$-32, %rdx
	movq	%rdx, %rcx
	movq	%rax, -8(%rdx)
	movq	32(%rsp), %rdx
	jmp	.LBB40_13
	.p2align	5, 0x90
.LBB40_10:
	testq	%rcx, %rcx
	movq	%r8, %rdi
	je	.LBB40_11
	movq	%rdx, 32(%rsp)
	callq	"??2@YAPEAX_K@Z"
	movq	32(%rsp), %rdx
	movq	%rax, %rcx
	jmp	.LBB40_13
	.p2align	5, 0x90
.LBB40_11:
	movq	$-1, %rbx
	xorl	%ecx, %ecx
.LBB40_13:
	movq	%rsi, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rcx, %rbx
	movq	%rsi, %r8
	callq	_intel_fast_memcpy
	movb	$0, (%rbx,%rsi)
	movq	40(%rsp), %rdx
	cmpq	$16, %rdx
	jb	.LBB40_19
	movq	(%rdi), %rcx
	cmpq	$4095, %rdx
	jb	.LBB40_15
	movq	-8(%rcx), %rax
	addq	$-8, %rcx
	subq	%rax, %rcx
	cmpq	$32, %rcx
	jae	.LBB40_23
	addq	$40, %rdx
	movq	%rax, %rcx
	jmp	.LBB40_18
	.p2align	5, 0x90
.LBB40_15:
	incq	%rdx
.LBB40_18:
	callq	"??3@YAXPEAX_K@Z"
.LBB40_19:
	movq	%rbx, (%rdi)
.LBB40_20:
	movq	%rdi, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.p2align	5, 0x90
.LBB40_21:
	callq	"?_Xlen_string@std@@YAXXZ"
	.p2align	5, 0x90
.LBB40_23:
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 "??_Gfailure@ios_base@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gfailure@ios_base@std@@UEAAPEAXI@Z"
	.globl	"??_Gfailure@ios_base@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_Gfailure@ios_base@std@@UEAAPEAXI@Z":
.seh_proc "??_Gfailure@ios_base@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testl	%edi, %edi
	je	.LBB41_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB41_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??_Gsystem_error@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gsystem_error@std@@UEAAPEAXI@Z"
	.globl	"??_Gsystem_error@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_Gsystem_error@std@@UEAAPEAXI@Z":
.seh_proc "??_Gsystem_error@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testl	%edi, %edi
	je	.LBB42_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB42_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??_G_System_error@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G_System_error@std@@UEAAPEAXI@Z"
	.globl	"??_G_System_error@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_G_System_error@std@@UEAAPEAXI@Z":
.seh_proc "??_G_System_error@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testl	%edi, %edi
	je	.LBB43_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB43_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	.globl	"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	.p2align	4, 0x90
"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z":
.seh_proc "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, %r14
	movq	16(%rcx), %rcx
	movq	24(%r14), %rbx
	movq	%rbx, %rax
	subq	%rcx, %rax
	cmpq	%r8, %rax
	jae	.LBB44_1
	movabsq	$9223372036854775807, %r10
	movq	%r10, %rax
	subq	%rcx, %rax
	cmpq	%r8, %rax
	jb	.LBB44_22
	leaq	(%rcx,%r8), %r9
	movq	%r9, %rsi
	orq	$15, %rsi
	movq	%r8, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%r9, 32(%rsp)
	js	.LBB44_6
	movq	%rbx, %rdi
	shrq	%rdi
	movq	%rdi, %rax
	xorq	%r10, %rax
	addq	%rbx, %rdi
	cmpq	%rdi, %rsi
	cmovaeq	%rsi, %rdi
	cmpq	%rbx, %rax
	cmovbq	%r10, %rdi
	leaq	1(%rdi), %rax
	cmpq	$4096, %rax
	jb	.LBB44_10
	cmpq	$-39, %rax
	jb	.LBB44_9
	callq	"?_Throw_bad_array_new_length@std@@YAXXZ"
	.p2align	5, 0x90
.LBB44_1:
	leaq	(%rcx,%r8), %rdi
	movq	%rdi, 16(%r14)
	movq	%r14, %rsi
	cmpq	$16, %rbx
	jb	.LBB44_3
	movq	(%r14), %rsi
.LBB44_3:
	addq	%rsi, %rcx
	callq	memmove
	movb	$0, (%rsi,%rdi)
	jmp	.LBB44_21
	.p2align	5, 0x90
.LBB44_6:
	movq	%r10, %rdi
	leaq	1(%r10), %rax
.LBB44_9:
	addq	$39, %rax
	movq	%rax, %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %rdx
	andq	$-32, %rdx
	movq	%rdx, %rcx
	movq	%rax, -8(%rdx)
	movq	32(%rsp), %r9
	movq	%r9, 16(%r14)
	movq	%rdi, 24(%r14)
	cmpq	$16, %rbx
	jae	.LBB44_14
	jmp	.LBB44_19
	.p2align	5, 0x90
.LBB44_10:
	testq	%rax, %rax
	je	.LBB44_11
	movq	%rax, %rcx
	movq	%r9, %rsi
	callq	"??2@YAPEAX_K@Z"
	movq	%rsi, %r9
	movq	%rax, %rcx
	movq	%r9, 16(%r14)
	movq	%rdi, 24(%r14)
	cmpq	$16, %rbx
	jb	.LBB44_19
.LBB44_14:
	movq	(%r14), %rdx
	movq	%rcx, %rdi
	movq	%rdx, 40(%rsp)
	movq	%rbx, %rsi
	movq	48(%rsp), %rbx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	addq	%rdi, %rbx
	movq	%rbx, %rcx
	movq	%rsi, %rbx
	movq	56(%rsp), %rdx
	movq	64(%rsp), %r8
	callq	_intel_fast_memcpy
	movq	32(%rsp), %rax
	movb	$0, (%rdi,%rax)
	leaq	1(%rsi), %rdx
	cmpq	$4096, %rdx
	jb	.LBB44_15
	movq	40(%rsp), %rcx
	movq	-8(%rcx), %rax
	addq	$-8, %rcx
	subq	%rax, %rcx
	cmpq	$32, %rcx
	jae	.LBB44_24
	addq	$40, %rbx
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	"??3@YAXPEAX_K@Z"
	jmp	.LBB44_20
	.p2align	5, 0x90
.LBB44_15:
	movq	40(%rsp), %rcx
	callq	"??3@YAXPEAX_K@Z"
	jmp	.LBB44_20
	.p2align	5, 0x90
.LBB44_11:
	movq	$-1, %rdi
	xorl	%ecx, %ecx
	movq	%r9, 16(%r14)
	movq	%rdi, 24(%r14)
	cmpq	$16, %rbx
	jae	.LBB44_14
.LBB44_19:
	movq	%rcx, %rdi
	movq	%r14, %rdx
	movq	48(%rsp), %rbx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	addq	%rdi, %rbx
	movq	%rbx, %rcx
	movq	56(%rsp), %rdx
	movq	64(%rsp), %r8
	callq	_intel_fast_memcpy
	movq	32(%rsp), %rax
	movb	$0, (%rdi,%rax)
.LBB44_20:
	movq	%rdi, (%r14)
.LBB44_21:
	movq	%r14, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	retq
	.p2align	5, 0x90
.LBB44_22:
	callq	"?_Xlen_string@std@@YAXXZ"
	.p2align	5, 0x90
.LBB44_24:
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 "??_Gruntime_error@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gruntime_error@std@@UEAAPEAXI@Z"
	.globl	"??_Gruntime_error@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_Gruntime_error@std@@UEAAPEAXI@Z":
.seh_proc "??_Gruntime_error@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testl	%edi, %edi
	je	.LBB45_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB45_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"
	.globl	"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"
	.p2align	4, 0x90
"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z":
.seh_proc "??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$184, %rsp
	.seh_stackalloc 184
	.seh_endprologue
	movq	%rcx, %r14
	leaq	40(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB"(%rip), %rbx
	movq	"?id@?$ctype@D@std@@2V0locale@2@A"(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB46_1
	movq	8(%r14), %rax
	cmpq	%rdi, 24(%rax)
	ja	.LBB46_5
	jmp	.LBB46_6
	.p2align	5, 0x90
.LBB46_1:
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	cmpq	$0, "?id@?$ctype@D@std@@2V0locale@2@A"(%rip)
	jne	.LBB46_3
	movslq	"?_Id_cnt@id@locale@std@@0HA"(%rip), %rax
	incq	%rax
	movl	%eax, "?_Id_cnt@id@locale@std@@0HA"(%rip)
	movq	%rax, "?id@?$ctype@D@std@@2V0locale@2@A"(%rip)
.LBB46_3:
	leaq	48(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	"?id@?$ctype@D@std@@2V0locale@2@A"(%rip), %rdi
	movq	8(%r14), %rax
	cmpq	%rdi, 24(%rax)
	jbe	.LBB46_6
.LBB46_5:
	movq	16(%rax), %rcx
	movq	(%rcx,%rdi,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB46_14
.LBB46_6:
	cmpb	$0, 36(%rax)
	je	.LBB46_9
	callq	"?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ"
	cmpq	%rdi, 24(%rax)
	jbe	.LBB46_9
	movq	16(%rax), %rax
	movq	(%rax,%rdi,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB46_14
.LBB46_9:
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB46_14
	movl	$48, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rsi
	movq	8(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB46_11
	movq	40(%rdi), %rax
	addq	$48, %rdi
	testq	%rax, %rax
	cmovneq	%rax, %rdi
	jmp	.LBB46_13
	.p2align	5, 0x90
.LBB46_11:
	leaq	"??_C@_00CNPNBAHC@?$AA@"(%rip), %rdi
.LBB46_13:
	leaq	48(%rsp), %rbx
	movq	%rbx, %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	$0, 56(%rsp)
	movb	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movw	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movw	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	"?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z"
	movl	$0, 8(%rsi)
	leaq	"??_7?$ctype@D@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	leaq	152(%rsp), %rcx
	callq	_Getctype
	vmovups	152(%rsp), %ymm0
	vmovups	%ymm0, 16(%rsi)
	movq	%rbx, %rcx
	vzeroupper
	callq	"??1_Locinfo@std@@QEAA@XZ"
	movq	%rsi, %rcx
	callq	"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*8(%rax)
	movq	%rsi, "?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB"(%rip)
.LBB46_14:
	leaq	40(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	%rsi, %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	retq
	.seh_endproc

	.def	 "??1_Locinfo@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1_Locinfo@std@@QEAA@XZ"
	.globl	"??1_Locinfo@std@@QEAA@XZ"
	.p2align	4, 0x90
"??1_Locinfo@std@@QEAA@XZ":
.seh_proc "??1_Locinfo@std@@QEAA@XZ"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"?_Locinfo_dtor@_Locinfo@std@@SAXPEAV12@@Z"
	movq	88(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB47_2
	callq	free
.LBB47_2:
	movq	$0, 88(%rsi)
	movq	72(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB47_4
	callq	free
.LBB47_4:
	movq	$0, 72(%rsi)
	movq	56(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB47_6
	callq	free
.LBB47_6:
	movq	$0, 56(%rsi)
	movq	40(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB47_8
	callq	free
.LBB47_8:
	movq	$0, 40(%rsi)
	movq	24(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB47_10
	callq	free
.LBB47_10:
	movq	$0, 24(%rsi)
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB47_12
	callq	free
.LBB47_12:
	movq	$0, 8(%rsi)
	movq	%rsi, %rcx
	addq	$32, %rsp
	popq	%rsi
	jmp	"??1_Lockit@std@@QEAA@XZ"
	.seh_endproc

	.def	 "??_G?$ctype@D@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G?$ctype@D@std@@MEAAPEAXI@Z"
	.globl	"??_G?$ctype@D@std@@MEAAPEAXI@Z"
	.p2align	4, 0x90
"??_G?$ctype@D@std@@MEAAPEAXI@Z":
.seh_proc "??_G?$ctype@D@std@@MEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7?$ctype@D@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	cmpl	$0, 32(%rcx)
	jle	.LBB48_2
	movq	24(%rsi), %rcx
	callq	free
	jmp	.LBB48_5
	.p2align	5, 0x90
.LBB48_2:
	jns	.LBB48_5
	movq	24(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB48_5
	callq	"??_V@YAXPEAX@Z"
.LBB48_5:
	movq	40(%rsi), %rcx
	callq	free
	testl	%edi, %edi
	je	.LBB48_7
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB48_7:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?_Incref@facet@locale@std@@UEAAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Incref@facet@locale@std@@UEAAXXZ"
	.globl	"?_Incref@facet@locale@std@@UEAAXXZ"
	.p2align	4, 0x90
"?_Incref@facet@locale@std@@UEAAXXZ":
	lock		incl	8(%rcx)
	retq

	.def	 "?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"
	.globl	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"
	.p2align	4, 0x90
"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ":
	xorl	%eax, %eax
	lock		decl	8(%rcx)
	cmoveq	%rcx, %rax
	retq

	.def	 "?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	.globl	"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	.p2align	4, 0x90
"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z":
.seh_proc "?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r8, %r15
	cmpq	%r8, %rdx
	je	.LBB51_7
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	addq	$16, %rbx
	subq	%rdx, %r15
	cmpq	$8, %r15
	jb	.LBB51_4
	movq	%r15, %r14
	shrq	$3, %r14
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB51_3:
	movzbl	(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, (%rdi,%rsi,8)
	movzbl	1(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 1(%rdi,%rsi,8)
	movzbl	2(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 2(%rdi,%rsi,8)
	movzbl	3(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 3(%rdi,%rsi,8)
	movzbl	4(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 4(%rdi,%rsi,8)
	movzbl	5(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 5(%rdi,%rsi,8)
	movzbl	6(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 6(%rdi,%rsi,8)
	movzbl	7(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 7(%rdi,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %r14
	jne	.LBB51_3
.LBB51_4:
	movq	%r15, %rsi
	andq	$-8, %rsi
	cmpq	%r15, %rsi
	jae	.LBB51_6
	.p2align	4, 0x90
.LBB51_5:
	movzbl	(%rdi,%rsi), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, (%rdi,%rsi)
	incq	%rsi
	cmpq	%rsi, %r15
	jne	.LBB51_5
.LBB51_6:
	addq	%rdi, %r15
.LBB51_7:
	movq	%r15, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.def	 "?do_tolower@?$ctype@D@std@@MEBADD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_tolower@?$ctype@D@std@@MEBADD@Z"
	.globl	"?do_tolower@?$ctype@D@std@@MEBADD@Z"
	.p2align	4, 0x90
"?do_tolower@?$ctype@D@std@@MEBADD@Z":
	leaq	16(%rcx), %rax
	movzbl	%dl, %ecx
	movq	%rax, %rdx
	jmp	_Tolower

	.def	 "?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	.globl	"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	.p2align	4, 0x90
"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z":
.seh_proc "?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r8, %r15
	cmpq	%r8, %rdx
	je	.LBB53_7
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	addq	$16, %rbx
	subq	%rdx, %r15
	cmpq	$8, %r15
	jb	.LBB53_4
	movq	%r15, %r14
	shrq	$3, %r14
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB53_3:
	movzbl	(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, (%rdi,%rsi,8)
	movzbl	1(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 1(%rdi,%rsi,8)
	movzbl	2(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 2(%rdi,%rsi,8)
	movzbl	3(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 3(%rdi,%rsi,8)
	movzbl	4(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 4(%rdi,%rsi,8)
	movzbl	5(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 5(%rdi,%rsi,8)
	movzbl	6(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 6(%rdi,%rsi,8)
	movzbl	7(%rdi,%rsi,8), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 7(%rdi,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %r14
	jne	.LBB53_3
.LBB53_4:
	movq	%r15, %rsi
	andq	$-8, %rsi
	cmpq	%r15, %rsi
	jae	.LBB53_6
	.p2align	4, 0x90
.LBB53_5:
	movzbl	(%rdi,%rsi), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, (%rdi,%rsi)
	incq	%rsi
	cmpq	%rsi, %r15
	jne	.LBB53_5
.LBB53_6:
	addq	%rdi, %r15
.LBB53_7:
	movq	%r15, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.def	 "?do_toupper@?$ctype@D@std@@MEBADD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_toupper@?$ctype@D@std@@MEBADD@Z"
	.globl	"?do_toupper@?$ctype@D@std@@MEBADD@Z"
	.p2align	4, 0x90
"?do_toupper@?$ctype@D@std@@MEBADD@Z":
	leaq	16(%rcx), %rax
	movzbl	%dl, %ecx
	movq	%rax, %rdx
	jmp	_Toupper

	.def	 "?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z"
	.globl	"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z"
	.p2align	4, 0x90
"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z":
.seh_proc "?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r9, %rcx
	movq	%r8, %rsi
	subq	%rdx, %r8
	callq	_intel_fast_memcpy
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?do_widen@?$ctype@D@std@@MEBADD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_widen@?$ctype@D@std@@MEBADD@Z"
	.globl	"?do_widen@?$ctype@D@std@@MEBADD@Z"
	.p2align	4, 0x90
"?do_widen@?$ctype@D@std@@MEBADD@Z":
	movl	%edx, %eax
	retq

	.def	 "?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z"
	.globl	"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z"
	.p2align	4, 0x90
"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z":
.seh_proc "?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r8, %rsi
	movq	80(%rsp), %rcx
	subq	%rdx, %r8
	callq	_intel_fast_memcpy
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?do_narrow@?$ctype@D@std@@MEBADDD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_narrow@?$ctype@D@std@@MEBADDD@Z"
	.globl	"?do_narrow@?$ctype@D@std@@MEBADDD@Z"
	.p2align	4, 0x90
"?do_narrow@?$ctype@D@std@@MEBADDD@Z":
	movl	%edx, %eax
	retq

	.def	 "??_Gctype_base@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gctype_base@std@@UEAAPEAXI@Z"
	.globl	"??_Gctype_base@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_Gctype_base@std@@UEAAPEAXI@Z":
.seh_proc "??_Gctype_base@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	testl	%edx, %edx
	je	.LBB59_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB59_2:
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??_Gfacet@locale@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gfacet@locale@std@@MEAAPEAXI@Z"
	.globl	"??_Gfacet@locale@std@@MEAAPEAXI@Z"
	.p2align	4, 0x90
"??_Gfacet@locale@std@@MEAAPEAXI@Z":
.seh_proc "??_Gfacet@locale@std@@MEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	testl	%edx, %edx
	je	.LBB60_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB60_2:
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??_G_Facet_base@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G_Facet_base@std@@UEAAPEAXI@Z"
	.globl	"??_G_Facet_base@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_G_Facet_base@std@@UEAAPEAXI@Z":
	ud2

	.def	 "??1exception@std@@UEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1exception@std@@UEAA@XZ"
	.globl	"??1exception@std@@UEAA@XZ"
	.p2align	4, 0x90
"??1exception@std@@UEAA@XZ":
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	jmp	__std_exception_destroy

	.def	 "??_Gbad_cast@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gbad_cast@std@@UEAAPEAXI@Z"
	.globl	"??_Gbad_cast@std@@UEAAPEAXI@Z"
	.p2align	4, 0x90
"??_Gbad_cast@std@@UEAAPEAXI@Z":
.seh_proc "??_Gbad_cast@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testl	%edi, %edi
	je	.LBB63_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB63_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.globl	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.p2align	4, 0x90
"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ":
.seh_proc "??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$96, %rsp
	.seh_stackalloc 96
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"?uncaught_exceptions@std@@YAHXZ"
	testl	%eax, %eax
	jne	.LBB64_5
	movq	(%rsi), %rax
	movq	(%rax), %rcx
	movslq	4(%rcx), %rcx
	cmpl	$0, 16(%rax,%rcx)
	jne	.LBB64_5
	testb	$2, 24(%rax,%rcx)
	je	.LBB64_5
	movq	72(%rax,%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rax, 32(%rsp)
	callq	*104(%rdx)
	cmpl	$-1, %eax
	movq	32(%rsp), %rcx
	jne	.LBB64_5
	movq	(%rcx), %rax
	movslq	4(%rax), %rdx
	movl	16(%rcx,%rdx), %eax
	andl	$19, %eax
	orl	$4, %eax
	movl	%eax, 16(%rcx,%rdx)
	movl	20(%rcx,%rdx), %ecx
	andl	%ecx, %eax
	jne	.LBB64_7
.LBB64_5:
	movq	(%rsi), %rax
	movq	(%rax), %rcx
	movslq	4(%rcx), %rcx
	movq	72(%rax,%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB64_6
	movq	(%rcx), %rax
	addq	$96, %rsp
	popq	%rsi
	rex64 jmpq	*16(%rax)
	.p2align	5, 0x90
.LBB64_6:
	nop
	addq	$96, %rsp
	popq	%rsi
	retq
	.p2align	5, 0x90
.LBB64_7:
	testb	$2, %al
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rax
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rsi
	cmoveq	%rax, %rsi
	testb	$4, %cl
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rsi, %rdx
	movl	$1, 40(%rsp)
	leaq	"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B"(%rip), %rax
	movq	%rax, 48(%rsp)
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %r8
	movq	%rsi, %rcx
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rsi, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	 "??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"
	.globl	"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"
	.p2align	4, 0x90
"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z":
.seh_proc "??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, %r14
	leaq	40(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB"(%rip), %rbx
	movq	"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB65_1
	movq	8(%r14), %rax
	cmpq	%rsi, 24(%rax)
	ja	.LBB65_5
	jmp	.LBB65_6
	.p2align	5, 0x90
.LBB65_1:
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	cmpq	$0, "?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"(%rip)
	jne	.LBB65_3
	movslq	"?_Id_cnt@id@locale@std@@0HA"(%rip), %rax
	incq	%rax
	movl	%eax, "?_Id_cnt@id@locale@std@@0HA"(%rip)
	movq	%rax, "?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"(%rip)
.LBB65_3:
	leaq	48(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"(%rip), %rsi
	movq	8(%r14), %rax
	cmpq	%rsi, 24(%rax)
	jbe	.LBB65_6
.LBB65_5:
	movq	16(%rax), %rcx
	movq	(%rcx,%rsi,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB65_14
.LBB65_6:
	cmpb	$0, 36(%rax)
	je	.LBB65_9
	callq	"?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ"
	cmpq	%rsi, 24(%rax)
	jbe	.LBB65_9
	movq	16(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB65_14
.LBB65_9:
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	jne	.LBB65_14
	movl	$16, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB65_11
	movq	40(%rsi), %rax
	addq	$48, %rsi
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	jmp	.LBB65_13
	.p2align	5, 0x90
.LBB65_11:
	leaq	"??_C@_00CNPNBAHC@?$AA@"(%rip), %rsi
.LBB65_13:
	leaq	48(%rsp), %rbx
	movq	%rbx, %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	$0, 56(%rsp)
	movb	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movw	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movw	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	callq	"?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z"
	movl	$0, 8(%rdi)
	leaq	"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"(%rip), %rax
	movq	%rax, (%rdi)
	movq	%rbx, %rcx
	callq	"??1_Locinfo@std@@QEAA@XZ"
	movq	%rdi, %rcx
	callq	"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	callq	*8(%rax)
	movq	%rdi, "?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB"(%rip)
.LBB65_14:
	leaq	40(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	%rdi, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	retq
	.seh_endproc

	.def	 "??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z"
	.globl	"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z"
	.p2align	4, 0x90
"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z":
.seh_proc "??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	testl	%edx, %edx
	je	.LBB66_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB66_2:
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z"
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z"
	.p2align	4, 0x90
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %r14
	movq	%r8, %rdi
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	movb	240(%rsp), %bpl
	movq	248(%rsp), %r9
	leaq	"??_C@_02BBAHNLBA@?$CFp?$AA@"(%rip), %r8
	leaq	80(%rsp), %r15
	movl	$64, %edx
	movq	%r15, %rcx
	callq	sprintf_s
	cltq
	movb	(%rdi), %cl
	movb	%cl, 64(%rsp)
	movq	8(%rdi), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r15, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	64(%rsp), %r8
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r14, %r9
	callq	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	movq	%rbx, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.def	 "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@7fffffffffffffff7fffffffffffffff
	.section	.rdata,"dr",discard,__xmm@7fffffffffffffff7fffffffffffffff
	.p2align	4
__xmm@7fffffffffffffff7fffffffffffffff:
	.quad	0x7fffffffffffffff
	.quad	0x7fffffffffffffff
	.globl	__real@4202a05f20000000
	.section	.rdata,"dr",discard,__real@4202a05f20000000
	.p2align	3
__real@4202a05f20000000:
	.quad	0x4202a05f20000000
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z"
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z"
	.p2align	4, 0x90
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$128, %rsp
	.seh_stackalloc 128
	vmovups	%xmm6, 112(%rsp)
	.seh_savexmm %xmm6, 112
	.seh_endprologue
	movq	$0, 64(%rsp)
	vmovupd	__xmm@000000000000000f0000000000000000(%rip), %xmm0
	vmovupd	%xmm0, 80(%rsp)
	movq	%r9, %rdi
	movq	%r8, %r12
	movq	%rdx, %r15
	movq	%rcx, %r14
	movb	$0, 64(%rsp)
	movl	$12288, %eax
	andl	24(%r9), %eax
	cmpl	$12288, %eax
	jne	.LBB68_2
	movl	$-1, %r13d
	movl	$13, %esi
	vmovsd	232(%rsp), %xmm6
	cmpl	$8192, %eax
	je	.LBB68_3
	jmp	.LBB68_5
	.p2align	5, 0x90
.LBB68_2:
	movq	32(%rdi), %r13
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	testq	%r13, %r13
	movl	$6, %edx
	cmoveq	%rcx, %rdx
	cmovgq	%r13, %rdx
	movslq	%edx, %rsi
	vmovsd	232(%rsp), %xmm6
	cmpl	$8192, %eax
	jne	.LBB68_5
.LBB68_3:
	vandpd	__xmm@7fffffffffffffff7fffffffffffffff(%rip), %xmm6, %xmm0
	vucomisd	__real@4202a05f20000000(%rip), %xmm0
	jbe	.LBB68_5
	leaq	56(%rsp), %rdx
	vmovapd	%xmm6, %xmm0
	callq	frexp
	movl	56(%rsp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	imull	$30103, %ecx, %eax
	shrl	$5, %eax
	imulq	$175921861, %rax, %rax
	shrq	$39, %rax
	addq	%rax, %rsi
.LBB68_5:
	addq	$50, %rsi
	leaq	64(%rsp), %rbx
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	xorl	%r8d, %r8d
	callq	"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"
	movl	24(%rdi), %ecx
	movb	$37, 56(%rsp)
	testb	$32, %cl
	jne	.LBB68_7
	leaq	57(%rsp), %rax
	testb	$16, %cl
	jne	.LBB68_8
	jmp	.LBB68_9
	.p2align	5, 0x90
.LBB68_7:
	leaq	58(%rsp), %rax
	movb	$43, 57(%rsp)
	testb	$16, %cl
	je	.LBB68_9
.LBB68_8:
	movb	$35, (%rax)
	incq	%rax
.LBB68_9:
	movw	$10798, (%rax)
	movb	$76, 2(%rax)
	movl	%ecx, %edx
	andl	$12288, %edx
	testb	$4, %cl
	jne	.LBB68_14
	cmpl	$4096, %edx
	je	.LBB68_18
	cmpl	$8192, %edx
	je	.LBB68_21
	cmpl	$12288, %edx
	jne	.LBB68_22
	movb	$97, %cl
	jmp	.LBB68_24
	.p2align	5, 0x90
.LBB68_14:
	cmpl	$4096, %edx
	je	.LBB68_20
	cmpl	$8192, %edx
	je	.LBB68_21
	cmpl	$12288, %edx
	jne	.LBB68_23
	movb	$65, %cl
	jmp	.LBB68_24
	.p2align	5, 0x90
.LBB68_21:
	movb	$102, %cl
	jmp	.LBB68_24
	.p2align	5, 0x90
.LBB68_18:
	movb	$101, %cl
	jmp	.LBB68_24
	.p2align	5, 0x90
.LBB68_20:
	movb	$69, %cl
	jmp	.LBB68_24
	.p2align	5, 0x90
.LBB68_22:
	movb	$103, %cl
	jmp	.LBB68_24
	.p2align	5, 0x90
.LBB68_23:
	movb	$71, %cl
.LBB68_24:
	movb	%cl, 3(%rax)
	movb	$0, 4(%rax)
	movq	80(%rsp), %rdx
	cmpq	$16, 88(%rsp)
	movq	%rbx, %rcx
	jb	.LBB68_26
	movq	64(%rsp), %rcx
.LBB68_26:
	movb	224(%rsp), %sil
	vmovsd	%xmm6, 32(%rsp)
	leaq	56(%rsp), %r8
	movl	%r13d, %r9d
	callq	sprintf_s
	cltq
	cmpq	$16, 88(%rsp)
	jb	.LBB68_28
	movq	64(%rsp), %rbx
.LBB68_28:
	movb	(%r12), %cl
	movb	%cl, 96(%rsp)
	movq	8(%r12), %rcx
	movq	%rcx, 104(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rbx, 40(%rsp)
	movb	%sil, 32(%rsp)
	leaq	96(%rsp), %r8
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rdi, %r9
	callq	"?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z"
	movq	88(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB68_33
	movq	64(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB68_32
	movq	-8(%rcx), %rbx
	addq	$-8, %rcx
	subq	%rbx, %rcx
	cmpq	$32, %rcx
	jae	.LBB68_34
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LBB68_32:
	callq	"??3@YAXPEAX_K@Z"
.LBB68_33:
	movq	%r15, %rax
	vmovups	112(%rsp), %xmm6
	addq	$128, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.p2align	5, 0x90
.LBB68_34:
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z"
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z"
	.p2align	4, 0x90
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$128, %rsp
	.seh_stackalloc 128
	vmovups	%xmm6, 112(%rsp)
	.seh_savexmm %xmm6, 112
	.seh_endprologue
	movq	$0, 64(%rsp)
	vmovupd	__xmm@000000000000000f0000000000000000(%rip), %xmm0
	vmovupd	%xmm0, 80(%rsp)
	movq	%r9, %rdi
	movq	%r8, %r12
	movq	%rdx, %r15
	movq	%rcx, %r14
	movb	$0, 64(%rsp)
	movl	$12288, %eax
	andl	24(%r9), %eax
	cmpl	$12288, %eax
	jne	.LBB69_2
	movl	$-1, %r13d
	movl	$13, %esi
	vmovsd	232(%rsp), %xmm6
	cmpl	$8192, %eax
	je	.LBB69_3
	jmp	.LBB69_5
	.p2align	5, 0x90
.LBB69_2:
	movq	32(%rdi), %r13
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	testq	%r13, %r13
	movl	$6, %edx
	cmoveq	%rcx, %rdx
	cmovgq	%r13, %rdx
	movslq	%edx, %rsi
	vmovsd	232(%rsp), %xmm6
	cmpl	$8192, %eax
	jne	.LBB69_5
.LBB69_3:
	vandpd	__xmm@7fffffffffffffff7fffffffffffffff(%rip), %xmm6, %xmm0
	vucomisd	__real@4202a05f20000000(%rip), %xmm0
	jbe	.LBB69_5
	leaq	56(%rsp), %rdx
	vmovapd	%xmm6, %xmm0
	callq	frexp
	movl	56(%rsp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	imull	$30103, %ecx, %eax
	shrl	$5, %eax
	imulq	$175921861, %rax, %rax
	shrq	$39, %rax
	addq	%rax, %rsi
.LBB69_5:
	addq	$50, %rsi
	leaq	64(%rsp), %rbx
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	xorl	%r8d, %r8d
	callq	"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"
	movl	24(%rdi), %ecx
	movb	$37, 56(%rsp)
	testb	$32, %cl
	jne	.LBB69_7
	leaq	57(%rsp), %rax
	testb	$16, %cl
	jne	.LBB69_8
	jmp	.LBB69_9
	.p2align	5, 0x90
.LBB69_7:
	leaq	58(%rsp), %rax
	movb	$43, 57(%rsp)
	testb	$16, %cl
	je	.LBB69_9
.LBB69_8:
	movb	$35, (%rax)
	incq	%rax
.LBB69_9:
	movw	$10798, (%rax)
	movl	%ecx, %edx
	andl	$12288, %edx
	testb	$4, %cl
	jne	.LBB69_14
	cmpl	$4096, %edx
	je	.LBB69_18
	cmpl	$8192, %edx
	je	.LBB69_21
	cmpl	$12288, %edx
	jne	.LBB69_22
	movb	$97, %cl
	jmp	.LBB69_24
	.p2align	5, 0x90
.LBB69_14:
	cmpl	$4096, %edx
	je	.LBB69_20
	cmpl	$8192, %edx
	je	.LBB69_21
	cmpl	$12288, %edx
	jne	.LBB69_23
	movb	$65, %cl
	jmp	.LBB69_24
	.p2align	5, 0x90
.LBB69_21:
	movb	$102, %cl
	jmp	.LBB69_24
	.p2align	5, 0x90
.LBB69_18:
	movb	$101, %cl
	jmp	.LBB69_24
	.p2align	5, 0x90
.LBB69_20:
	movb	$69, %cl
	jmp	.LBB69_24
	.p2align	5, 0x90
.LBB69_22:
	movb	$103, %cl
	jmp	.LBB69_24
	.p2align	5, 0x90
.LBB69_23:
	movb	$71, %cl
.LBB69_24:
	movb	%cl, 2(%rax)
	movb	$0, 3(%rax)
	movq	80(%rsp), %rdx
	cmpq	$16, 88(%rsp)
	movq	%rbx, %rcx
	jb	.LBB69_26
	movq	64(%rsp), %rcx
.LBB69_26:
	movb	224(%rsp), %sil
	vmovsd	%xmm6, 32(%rsp)
	leaq	56(%rsp), %r8
	movl	%r13d, %r9d
	callq	sprintf_s
	cltq
	cmpq	$16, 88(%rsp)
	jb	.LBB69_28
	movq	64(%rsp), %rbx
.LBB69_28:
	movb	(%r12), %cl
	movb	%cl, 96(%rsp)
	movq	8(%r12), %rcx
	movq	%rcx, 104(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rbx, 40(%rsp)
	movb	%sil, 32(%rsp)
	leaq	96(%rsp), %r8
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rdi, %r9
	callq	"?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z"
	movq	88(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB69_33
	movq	64(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB69_32
	movq	-8(%rcx), %rbx
	addq	$-8, %rcx
	subq	%rbx, %rcx
	cmpq	$32, %rcx
	jae	.LBB69_34
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LBB69_32:
	callq	"??3@YAXPEAX_K@Z"
.LBB69_33:
	movq	%r15, %rax
	vmovups	112(%rsp), %xmm6
	addq	$128, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.p2align	5, 0x90
.LBB69_34:
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z"
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z"
	.p2align	4, 0x90
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rbx
	movq	%rdx, %r15
	movq	%rcx, %r14
	movl	24(%r9), %ecx
	movb	$37, 56(%rsp)
	testb	$32, %cl
	jne	.LBB70_2
	leaq	57(%rsp), %rax
	testb	$8, %cl
	jne	.LBB70_4
	jmp	.LBB70_5
	.p2align	5, 0x90
.LBB70_2:
	leaq	58(%rsp), %rax
	movb	$43, 57(%rsp)
	testb	$8, %cl
	je	.LBB70_5
.LBB70_4:
	movb	$35, (%rax)
	incq	%rax
.LBB70_5:
	movq	248(%rsp), %r9
	movb	240(%rsp), %bpl
	movw	$13897, (%rax)
	movb	$52, 2(%rax)
	movl	%ecx, %edx
	andl	$3584, %edx
	cmpl	$1024, %edx
	je	.LBB70_9
	cmpl	$2048, %edx
	jne	.LBB70_7
	testb	$4, %cl
	sete	%cl
	shlb	$5, %cl
	orb	$88, %cl
	jmp	.LBB70_10
	.p2align	5, 0x90
.LBB70_9:
	movb	$111, %cl
	jmp	.LBB70_10
	.p2align	5, 0x90
.LBB70_7:
	movb	$117, %cl
.LBB70_10:
	movb	%cl, 3(%rax)
	movb	$0, 4(%rax)
	leaq	80(%rsp), %rsi
	leaq	56(%rsp), %r8
	movl	$64, %edx
	movq	%rsi, %rcx
	callq	sprintf_s
	cltq
	movb	(%rbx), %cl
	movb	%cl, 64(%rsp)
	movq	8(%rbx), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	64(%rsp), %r8
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rdi, %r9
	callq	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	movq	%r15, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.def	 "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z"
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z"
	.p2align	4, 0x90
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rbx
	movq	%rdx, %r15
	movq	%rcx, %r14
	movl	24(%r9), %ecx
	movb	$37, 56(%rsp)
	testb	$32, %cl
	jne	.LBB71_2
	leaq	57(%rsp), %rax
	testb	$8, %cl
	jne	.LBB71_4
	jmp	.LBB71_5
	.p2align	5, 0x90
.LBB71_2:
	leaq	58(%rsp), %rax
	movb	$43, 57(%rsp)
	testb	$8, %cl
	je	.LBB71_5
.LBB71_4:
	movb	$35, (%rax)
	incq	%rax
.LBB71_5:
	movq	248(%rsp), %r9
	movb	240(%rsp), %bpl
	movw	$13897, (%rax)
	movb	$52, 2(%rax)
	movl	%ecx, %edx
	andl	$3584, %edx
	cmpl	$1024, %edx
	je	.LBB71_9
	cmpl	$2048, %edx
	jne	.LBB71_7
	testb	$4, %cl
	sete	%cl
	shlb	$5, %cl
	orb	$88, %cl
	jmp	.LBB71_10
	.p2align	5, 0x90
.LBB71_9:
	movb	$111, %cl
	jmp	.LBB71_10
	.p2align	5, 0x90
.LBB71_7:
	movb	$100, %cl
.LBB71_10:
	movb	%cl, 3(%rax)
	movb	$0, 4(%rax)
	leaq	80(%rsp), %rsi
	leaq	56(%rsp), %r8
	movl	$64, %edx
	movq	%rsi, %rcx
	callq	sprintf_s
	cltq
	movb	(%rbx), %cl
	movb	%cl, 64(%rsp)
	movq	8(%rbx), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	64(%rsp), %r8
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rdi, %r9
	callq	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	movq	%r15, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.def	 "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z"
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z"
	.p2align	4, 0x90
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rbx
	movq	%rdx, %r15
	movq	%rcx, %r14
	movl	24(%r9), %ecx
	movb	$37, 58(%rsp)
	testb	$32, %cl
	jne	.LBB72_2
	leaq	59(%rsp), %rax
	testb	$8, %cl
	jne	.LBB72_4
	jmp	.LBB72_5
	.p2align	5, 0x90
.LBB72_2:
	leaq	60(%rsp), %rax
	movb	$43, 59(%rsp)
	testb	$8, %cl
	je	.LBB72_5
.LBB72_4:
	movb	$35, (%rax)
	incq	%rax
.LBB72_5:
	movl	248(%rsp), %r9d
	movb	240(%rsp), %bpl
	movb	$108, (%rax)
	movl	%ecx, %edx
	andl	$3584, %edx
	cmpl	$1024, %edx
	je	.LBB72_9
	cmpl	$2048, %edx
	jne	.LBB72_7
	testb	$4, %cl
	sete	%cl
	shlb	$5, %cl
	orb	$88, %cl
	jmp	.LBB72_10
	.p2align	5, 0x90
.LBB72_9:
	movb	$111, %cl
	jmp	.LBB72_10
	.p2align	5, 0x90
.LBB72_7:
	movb	$117, %cl
.LBB72_10:
	movb	%cl, 1(%rax)
	movb	$0, 2(%rax)
	leaq	80(%rsp), %rsi
	leaq	58(%rsp), %r8
	movl	$64, %edx
	movq	%rsi, %rcx
	callq	sprintf_s
	cltq
	movb	(%rbx), %cl
	movb	%cl, 64(%rsp)
	movq	8(%rbx), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	64(%rsp), %r8
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rdi, %r9
	callq	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	movq	%r15, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.def	 "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z"
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z"
	.p2align	4, 0x90
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rbx
	movq	%rdx, %r15
	movq	%rcx, %r14
	movl	24(%r9), %ecx
	movb	$37, 58(%rsp)
	testb	$32, %cl
	jne	.LBB73_2
	leaq	59(%rsp), %rax
	testb	$8, %cl
	jne	.LBB73_4
	jmp	.LBB73_5
	.p2align	5, 0x90
.LBB73_2:
	leaq	60(%rsp), %rax
	movb	$43, 59(%rsp)
	testb	$8, %cl
	je	.LBB73_5
.LBB73_4:
	movb	$35, (%rax)
	incq	%rax
.LBB73_5:
	movl	248(%rsp), %r9d
	movb	240(%rsp), %bpl
	movb	$108, (%rax)
	movl	%ecx, %edx
	andl	$3584, %edx
	cmpl	$1024, %edx
	je	.LBB73_9
	cmpl	$2048, %edx
	jne	.LBB73_7
	testb	$4, %cl
	sete	%cl
	shlb	$5, %cl
	orb	$88, %cl
	jmp	.LBB73_10
	.p2align	5, 0x90
.LBB73_9:
	movb	$111, %cl
	jmp	.LBB73_10
	.p2align	5, 0x90
.LBB73_7:
	movb	$100, %cl
.LBB73_10:
	movb	%cl, 1(%rax)
	movb	$0, 2(%rax)
	leaq	80(%rsp), %rsi
	leaq	58(%rsp), %r8
	movl	$64, %edx
	movq	%rsi, %rcx
	callq	sprintf_s
	cltq
	movb	(%rbx), %cl
	movb	%cl, 64(%rsp)
	movq	8(%rbx), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	64(%rsp), %r8
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rdi, %r9
	callq	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	movq	%r15, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.def	 "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z"
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z"
	.p2align	4, 0x90
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$184, %rsp
	.seh_stackalloc 184
	.seh_endprologue
	movq	%r9, %rsi
	movq	%r8, %rdi
	movq	%rdx, %r15
	movb	296(%rsp), %bl
	movb	288(%rsp), %r8b
	testb	$64, 25(%r9)
	jne	.LBB74_2
	movzbl	%bl, %eax
	movb	(%rdi), %dl
	movb	%dl, 136(%rsp)
	movq	8(%rdi), %rdx
	movq	%rdx, 144(%rsp)
	movq	(%rcx), %rbp
	movl	%eax, 40(%rsp)
	movb	%r8b, 32(%rsp)
	leaq	136(%rsp), %r8
	movq	%r15, %rdx
	movq	%rsi, %r9
	callq	*72(%rbp)
	jmp	.LBB74_45
	.p2align	5, 0x90
.LBB74_2:
	movq	64(%rsi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 88(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	80(%rsp), %r12
	movq	%r12, %rcx
	callq	"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	movq	%rax, %rbp
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rdi, 64(%rsp)
	je	.LBB74_5
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB74_5
	movq	(%rax), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%rdi)
	movq	64(%rsp), %rdi
.LBB74_5:
	testb	%bl, %bl
	je	.LBB74_7
	movq	(%rbp), %rax
	leaq	152(%rsp), %rdx
	movq	%rbp, %rcx
	callq	*56(%rax)
	jmp	.LBB74_8
	.p2align	5, 0x90
.LBB74_7:
	movq	(%rbp), %rax
	leaq	152(%rsp), %rdx
	movq	%rbp, %rcx
	callq	*48(%rax)
.LBB74_8:
	vmovups	152(%rsp), %ymm0
	vmovups	%ymm0, 80(%rsp)
	movq	40(%rsi), %rax
	movq	96(%rsp), %r13
	xorl	%ecx, %ecx
	movq	%rax, %r14
	subq	%r13, %r14
	cmovbq	%rcx, %r14
	testq	%rax, %rax
	cmovleq	%rcx, %r14
	movl	$448, %ecx
	movq	%rsi, 128(%rsp)
	andl	24(%rsi), %ecx
	movb	(%rdi), %bl
	movq	8(%rdi), %rsi
	movzbl	288(%rsp), %edx
	movl	%edx, 60(%rsp)
	cmpl	$64, %ecx
	movq	%r15, 72(%rsp)
	je	.LBB74_19
	testq	%r14, %r14
	je	.LBB74_18
	testq	%rsi, %rsi
	je	.LBB74_11
	cmpq	%rax, %r13
	movq	%rax, %rdi
	cmovbq	%r13, %rdi
	subq	%rax, %rdi
	movl	$1, %r14d
	jmp	.LBB74_13
	.p2align	5, 0x90
.LBB74_16:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movl	60(%rsp), %edx
	vzeroupper
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%bl, %ebx
	cmovel	%r14d, %ebx
	incq	%rdi
	je	.LBB74_18
.LBB74_13:
	movq	64(%rsi), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB74_16
	movq	88(%rsi), %rdx
	movl	(%rdx), %ebp
	testl	%ebp, %ebp
	jle	.LBB74_16
	decl	%ebp
	movl	%ebp, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	288(%rsp), %eax
	movb	%al, (%rcx)
	incq	%rdi
	jne	.LBB74_13
	jmp	.LBB74_18
	.p2align	5, 0x90
.LBB74_11:
	movb	$1, %bl
.LBB74_18:
	movq	64(%rsp), %rax
	movb	%bl, (%rax)
	movq	%rsi, 8(%rax)
	xorl	%r14d, %r14d
.LBB74_19:
	movq	104(%rsp), %rax
	testq	%r13, %r13
	movq	%rax, 120(%rsp)
	je	.LBB74_30
	testq	%rsi, %rsi
	je	.LBB74_21
	cmpq	$16, %rax
	jb	.LBB74_24
	movq	80(%rsp), %r12
.LBB74_24:
	xorl	%r15d, %r15d
	jmp	.LBB74_25
	.p2align	5, 0x90
.LBB74_28:
	movzbl	%al, %edx
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	vzeroupper
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%bl, %ebx
	movl	$1, %eax
	cmovel	%eax, %ebx
	incq	%r15
	cmpq	%r15, %r13
	je	.LBB74_30
.LBB74_25:
	movzbl	(%r12,%r15), %eax
	movq	64(%rsi), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB74_28
	movq	88(%rsi), %rdi
	movl	(%rdi), %ebp
	testl	%ebp, %ebp
	jle	.LBB74_28
	decl	%ebp
	movl	%ebp, (%rdi)
	leaq	1(%rdx), %rbp
	movq	%rbp, (%rcx)
	movb	%al, (%rdx)
	incq	%r15
	cmpq	%r15, %r13
	jne	.LBB74_25
	jmp	.LBB74_30
	.p2align	5, 0x90
.LBB74_21:
	movb	$1, %bl
.LBB74_30:
	movq	64(%rsp), %rax
	movb	%bl, (%rax)
	movq	%rsi, 8(%rax)
	movq	128(%rsp), %rax
	movq	$0, 40(%rax)
	testq	%r14, %r14
	je	.LBB74_31
	testq	%rsi, %rsi
	movq	72(%rsp), %r15
	je	.LBB74_33
	movl	$1, %r13d
	movb	288(%rsp), %r12b
	movl	60(%rsp), %edi
	jmp	.LBB74_35
	.p2align	5, 0x90
.LBB74_38:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movl	%edi, %edx
	vzeroupper
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%bl, %ebx
	cmovel	%r13d, %ebx
	decq	%r14
	je	.LBB74_40
.LBB74_35:
	movq	64(%rsi), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB74_38
	movq	88(%rsi), %rdx
	movl	(%rdx), %ebp
	testl	%ebp, %ebp
	jle	.LBB74_38
	decl	%ebp
	movl	%ebp, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%r12b, (%rcx)
	decq	%r14
	jne	.LBB74_35
	jmp	.LBB74_40
	.p2align	5, 0x90
.LBB74_31:
	movq	72(%rsp), %r15
	jmp	.LBB74_40
	.p2align	5, 0x90
.LBB74_33:
	movb	$1, %bl
.LBB74_40:
	movb	%bl, (%r15)
	movq	%rsi, 8(%r15)
	movq	120(%rsp), %rbp
	cmpq	$16, %rbp
	jb	.LBB74_45
	movq	80(%rsp), %rcx
	leaq	1(%rbp), %rdx
	cmpq	$4096, %rdx
	jb	.LBB74_44
	movq	-8(%rcx), %rax
	addq	$-8, %rcx
	subq	%rax, %rcx
	cmpq	$32, %rcx
	jae	.LBB74_46
	addq	$40, %rbp
	movq	%rbp, %rdx
	movq	%rax, %rcx
.LBB74_44:
	vzeroupper
	callq	"??3@YAXPEAX_K@Z"
.LBB74_45:
	movq	%r15, %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	vzeroupper
	retq
	.p2align	5, 0x90
.LBB74_46:
	vzeroupper
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 "?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	.globl	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	.p2align	4, 0x90
"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z":
.seh_proc "?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%r9, %rbx
	movq	%r8, 40(%rsp)
	movq	%rdx, %r12
	movq	256(%rsp), %rsi
	movq	248(%rsp), %r14
	testq	%rsi, %rsi
	je	.LBB75_2
	movb	(%r14), %cl
	addb	$-43, %cl
	xorl	%eax, %eax
	testb	$-3, %cl
	sete	%al
	movl	$3584, %ecx
	andl	24(%rbx), %ecx
	cmpl	$2048, %ecx
	je	.LBB75_3
	jmp	.LBB75_6
	.p2align	5, 0x90
.LBB75_2:
	xorl	%eax, %eax
	movl	$3584, %ecx
	andl	24(%rbx), %ecx
	cmpl	$2048, %ecx
	jne	.LBB75_6
.LBB75_3:
	leaq	2(%rax), %r13
	cmpq	%rsi, %r13
	ja	.LBB75_6
	cmpb	$48, (%r14,%rax)
	jne	.LBB75_6
	movb	1(%rax,%r14), %cl
	orb	$32, %cl
	cmpb	$120, %cl
	je	.LBB75_7
.LBB75_6:
	movq	%rax, %r13
.LBB75_7:
	movq	64(%rbx), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	48(%rsp), %rdi
	movq	%rdi, %rcx
	callq	"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"
	movq	%rax, %rbp
	movq	56(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB75_10
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB75_10
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB75_10:
	movq	%rdi, %rcx
	movq	%rsi, %rdx
	xorl	%r8d, %r8d
	callq	"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z"
	cmpq	$16, 72(%rsp)
	jb	.LBB75_12
	movq	48(%rsp), %rdi
.LBB75_12:
	movq	(%rbp), %rax
	leaq	(%r14,%rsi), %r8
	movq	%rbp, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r9
	callq	*56(%rax)
	movq	64(%rbx), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 112(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	104(%rsp), %rdi
	movq	%rdi, %rcx
	callq	"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	movq	%rax, %rbp
	movq	112(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB75_15
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB75_15
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB75_15:
	movq	%rbx, 96(%rsp)
	movq	(%rbp), %rax
	movq	%rbp, %rcx
	movq	%rdi, %rdx
	callq	*40(%rax)
	cmpq	$16, 128(%rsp)
	jb	.LBB75_17
	movq	104(%rsp), %rdi
.LBB75_17:
	movb	(%rdi), %al
	decb	%al
	cmpb	$125, %al
	ja	.LBB75_24
	movq	(%rbp), %rax
	movq	%rbp, %rcx
	callq	*32(%rax)
	movl	%eax, %r15d
	movb	(%rdi), %al
	leal	-1(%rax), %ecx
	cmpb	$125, %cl
	ja	.LBB75_24
	leaq	48(%rsp), %r14
	.p2align	4, 0x90
.LBB75_20:
	movq	%rsi, %rcx
	subq	%r13, %rcx
	movzbl	%al, %eax
	cmpq	%rax, %rcx
	jbe	.LBB75_24
	subq	%rax, %rsi
	movl	$1, %r8d
	movq	%r14, %rcx
	movq	%rsi, %rdx
	movl	%r15d, %r9d
	callq	"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	leaq	1(%rdi), %rbp
	movzbl	1(%rdi), %eax
	testb	%al, %al
	cmovleq	%rdi, %rbp
	movzbl	(%rbp), %ecx
	leal	-1(%rcx), %edx
	cmpb	$125, %dl
	ja	.LBB75_24
	movq	%rsi, %rdx
	subq	%r13, %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB75_24
	xorl	%ebx, %ebx
	testb	%al, %al
	setg	%bl
	subq	%rcx, %rsi
	movl	$1, %r8d
	movq	%r14, %rcx
	movq	%rsi, %rdx
	movl	%r15d, %r9d
	callq	"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	leaq	(%rbx,%rdi), %rax
	incq	%rax
	cmpb	$0, 1(%rbx,%rdi)
	cmovgq	%rax, %rbp
	movzbl	(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	%rbp, %rdi
	cmpb	$126, %cl
	jb	.LBB75_20
.LBB75_24:
	movq	64(%rsp), %rdx
	movq	96(%rsp), %rcx
	movq	40(%rcx), %r15
	xorl	%eax, %eax
	movq	%r15, %r14
	movq	%rdx, 80(%rsp)
	subq	%rdx, %r14
	cmovbq	%rax, %r14
	testq	%r15, %r15
	cmovleq	%rax, %r14
	movl	$448, %eax
	andl	24(%rcx), %eax
	movq	40(%rsp), %rcx
	movb	(%rcx), %dil
	movq	8(%rcx), %rsi
	movzbl	240(%rsp), %ecx
	movl	%ecx, 36(%rsp)
	cmpl	$64, %eax
	movq	%r12, 88(%rsp)
	je	.LBB75_30
	cmpl	$256, %eax
	jne	.LBB75_34
	testq	%r13, %r13
	je	.LBB75_53
	testq	%rsi, %rsi
	je	.LBB75_60
	cmpq	$16, 72(%rsp)
	jb	.LBB75_47
	movq	48(%rsp), %r12
	jmp	.LBB75_48
	.p2align	5, 0x90
.LBB75_30:
	testq	%r13, %r13
	je	.LBB75_74
	testq	%rsi, %rsi
	je	.LBB75_46
	cmpq	$16, 72(%rsp)
	jb	.LBB75_62
	movq	48(%rsp), %r15
	jmp	.LBB75_63
	.p2align	5, 0x90
.LBB75_34:
	testq	%r14, %r14
	je	.LBB75_41
	testq	%rsi, %rsi
	je	.LBB75_60
	movq	80(%rsp), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbp
	cmovbq	%rax, %rbp
	subq	%r15, %rbp
	movl	$1, %r14d
	jmp	.LBB75_38
	.p2align	5, 0x90
.LBB75_37:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movl	36(%rsp), %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	cmovel	%r14d, %edi
	incq	%rbp
	je	.LBB75_41
.LBB75_38:
	movq	64(%rsi), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB75_37
	movq	88(%rsi), %rdx
	movl	(%rdx), %ebx
	testl	%ebx, %ebx
	jle	.LBB75_37
	decl	%ebx
	movl	%ebx, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	240(%rsp), %eax
	movb	%al, (%rcx)
	incq	%rbp
	jne	.LBB75_38
.LBB75_41:
	movq	40(%rsp), %rax
	movb	%dil, (%rax)
	movq	%rsi, 8(%rax)
	testq	%r13, %r13
	je	.LBB75_45
	testq	%rsi, %rsi
	je	.LBB75_60
	cmpq	$16, 72(%rsp)
	jb	.LBB75_68
	movq	48(%rsp), %r12
	jmp	.LBB75_69
	.p2align	5, 0x90
.LBB75_46:
	movb	$1, %dil
	jmp	.LBB75_74
	.p2align	5, 0x90
.LBB75_47:
	leaq	48(%rsp), %r12
.LBB75_48:
	xorl	%ebp, %ebp
	jmp	.LBB75_50
	.p2align	5, 0x90
.LBB75_49:
	movzbl	%r8b, %edx
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	movl	$1, %eax
	cmovel	%eax, %edi
	incq	%rbp
	cmpq	%rbp, %r13
	je	.LBB75_53
.LBB75_50:
	movzbl	(%r12,%rbp), %r8d
	movq	64(%rsi), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB75_49
	movq	88(%rsi), %rbx
	movl	(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB75_49
	decl	%eax
	movl	%eax, (%rbx)
	leaq	1(%rdx), %rax
	movq	%rax, (%rcx)
	movb	%r8b, (%rdx)
	incq	%rbp
	cmpq	%rbp, %r13
	jne	.LBB75_50
.LBB75_53:
	movq	40(%rsp), %rax
	movb	%dil, (%rax)
	movq	%rsi, 8(%rax)
	testq	%r14, %r14
	je	.LBB75_45
	testq	%rsi, %rsi
	movb	240(%rsp), %r12b
	je	.LBB75_60
	movq	80(%rsp), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbp
	cmovbq	%rax, %rbp
	subq	%r15, %rbp
	movl	$1, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB75_57
	.p2align	5, 0x90
.LBB75_56:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movl	36(%rsp), %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	cmovel	%r15d, %edi
	incq	%rbp
	je	.LBB75_74
.LBB75_57:
	movq	64(%rsi), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB75_56
	movq	88(%rsi), %rdx
	movl	(%rdx), %ebx
	testl	%ebx, %ebx
	jle	.LBB75_56
	decl	%ebx
	movl	%ebx, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%r12b, (%rcx)
	incq	%rbp
	jne	.LBB75_57
	jmp	.LBB75_74
	.p2align	5, 0x90
.LBB75_60:
	movb	$1, %dil
.LBB75_45:
	xorl	%r14d, %r14d
.LBB75_74:
	movq	40(%rsp), %rax
	movb	%dil, (%rax)
	movq	%rsi, 8(%rax)
	cmpq	%r13, 80(%rsp)
	je	.LBB75_85
	testq	%rsi, %rsi
	je	.LBB75_78
	cmpq	$16, 72(%rsp)
	jb	.LBB75_79
	movq	48(%rsp), %r12
	jmp	.LBB75_80
	.p2align	5, 0x90
.LBB75_78:
	movb	$1, %dil
	jmp	.LBB75_85
	.p2align	5, 0x90
.LBB75_79:
	leaq	48(%rsp), %r12
.LBB75_80:
	movl	$1, %r15d
	jmp	.LBB75_82
	.p2align	5, 0x90
.LBB75_81:
	movzbl	%al, %edx
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	cmovel	%r15d, %edi
	incq	%r13
	cmpq	%r13, 80(%rsp)
	je	.LBB75_85
.LBB75_82:
	movzbl	(%r12,%r13), %eax
	movq	64(%rsi), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB75_81
	movq	88(%rsi), %rbx
	movl	(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB75_81
	decl	%ebp
	movl	%ebp, (%rbx)
	leaq	1(%rdx), %rbp
	movq	%rbp, (%rcx)
	movb	%al, (%rdx)
	incq	%r13
	cmpq	%r13, 80(%rsp)
	jne	.LBB75_82
.LBB75_85:
	movq	40(%rsp), %rax
	movb	%dil, (%rax)
	movq	%rsi, 8(%rax)
	movq	96(%rsp), %rax
	movq	$0, 40(%rax)
	testq	%r14, %r14
	je	.LBB75_92
	testq	%rsi, %rsi
	movq	88(%rsp), %r15
	je	.LBB75_93
	movl	$1, %r13d
	movb	240(%rsp), %r12b
	movl	36(%rsp), %ebx
	jmp	.LBB75_89
	.p2align	5, 0x90
.LBB75_88:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movl	%ebx, %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	cmovel	%r13d, %edi
	decq	%r14
	je	.LBB75_94
.LBB75_89:
	movq	64(%rsi), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB75_88
	movq	88(%rsi), %rdx
	movl	(%rdx), %ebp
	testl	%ebp, %ebp
	jle	.LBB75_88
	decl	%ebp
	movl	%ebp, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%r12b, (%rcx)
	decq	%r14
	jne	.LBB75_89
	jmp	.LBB75_94
	.p2align	5, 0x90
.LBB75_92:
	movq	88(%rsp), %r15
	jmp	.LBB75_94
	.p2align	5, 0x90
.LBB75_93:
	movb	$1, %dil
.LBB75_94:
	movb	%dil, (%r15)
	movq	%rsi, 8(%r15)
	movq	128(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB75_99
	movq	104(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB75_98
	movq	-8(%rcx), %rbp
	addq	$-8, %rcx
	subq	%rbp, %rcx
	cmpq	$32, %rcx
	jae	.LBB75_105
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%rbp, %rcx
.LBB75_98:
	callq	"??3@YAXPEAX_K@Z"
.LBB75_99:
	movq	72(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB75_104
	movq	48(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB75_103
	movq	-8(%rcx), %rbp
	addq	$-8, %rcx
	subq	%rbp, %rcx
	cmpq	$32, %rcx
	jae	.LBB75_105
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%rbp, %rcx
.LBB75_103:
	callq	"??3@YAXPEAX_K@Z"
.LBB75_104:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.p2align	5, 0x90
.LBB75_62:
	leaq	48(%rsp), %r15
.LBB75_63:
	xorl	%ebp, %ebp
	movl	$1, %r12d
	jmp	.LBB75_65
	.p2align	5, 0x90
.LBB75_64:
	movzbl	%r8b, %edx
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	cmovel	%r12d, %edi
	incq	%rbp
	cmpq	%rbp, %r13
	je	.LBB75_74
.LBB75_65:
	movzbl	(%r15,%rbp), %r8d
	movq	64(%rsi), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB75_64
	movq	88(%rsi), %rbx
	movl	(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB75_64
	decl	%eax
	movl	%eax, (%rbx)
	leaq	1(%rdx), %rax
	movq	%rax, (%rcx)
	movb	%r8b, (%rdx)
	incq	%rbp
	cmpq	%rbp, %r13
	jne	.LBB75_65
	jmp	.LBB75_74
	.p2align	5, 0x90
.LBB75_68:
	leaq	48(%rsp), %r12
.LBB75_69:
	xorl	%r14d, %r14d
	movl	$1, %r15d
	xorl	%ebp, %ebp
	jmp	.LBB75_71
	.p2align	5, 0x90
.LBB75_70:
	movzbl	%r8b, %edx
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	cmovel	%r15d, %edi
	incq	%rbp
	cmpq	%rbp, %r13
	je	.LBB75_74
.LBB75_71:
	movzbl	(%r12,%rbp), %r8d
	movq	64(%rsi), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB75_70
	movq	88(%rsi), %rax
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jle	.LBB75_70
	decl	%ebx
	movl	%ebx, (%rax)
	leaq	1(%rdx), %rax
	movq	%rax, (%rcx)
	movb	%r8b, (%rdx)
	incq	%rbp
	cmpq	%rbp, %r13
	jne	.LBB75_71
	jmp	.LBB75_74
	.p2align	5, 0x90
.LBB75_105:
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 sprintf_s;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,sprintf_s
	.globl	sprintf_s
	.p2align	4, 0x90
sprintf_s:
.seh_proc sprintf_s
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%r8, %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	movq	%r9, 120(%rsp)
	leaq	120(%rsp), %r14
	movq	%r14, 48(%rsp)
	callq	__local_stdio_printf_options
	movq	(%rax), %rcx
	movq	%r14, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rbx, %rdx
	movq	%rdi, %r8
	movq	%rsi, %r9
	callq	__stdio_common_vsprintf_s
	testl	%eax, %eax
	movl	$-1, %ecx
	cmovsl	%ecx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	retq
	.seh_endproc

	.def	 "??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	.globl	"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	.p2align	4, 0x90
"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z":
.seh_proc "??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$248, %rsp
	.seh_stackalloc 248
	.seh_endprologue
	movq	%rcx, %r14
	leaq	40(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB"(%rip), %rbx
	movq	"?id@?$numpunct@D@std@@2V0locale@2@A"(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB77_1
	movq	8(%r14), %rax
	cmpq	%rdi, 24(%rax)
	ja	.LBB77_5
	jmp	.LBB77_6
	.p2align	5, 0x90
.LBB77_1:
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	cmpq	$0, "?id@?$numpunct@D@std@@2V0locale@2@A"(%rip)
	jne	.LBB77_3
	movslq	"?_Id_cnt@id@locale@std@@0HA"(%rip), %rax
	incq	%rax
	movl	%eax, "?_Id_cnt@id@locale@std@@0HA"(%rip)
	movq	%rax, "?id@?$numpunct@D@std@@2V0locale@2@A"(%rip)
.LBB77_3:
	leaq	48(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	"?id@?$numpunct@D@std@@2V0locale@2@A"(%rip), %rdi
	movq	8(%r14), %rax
	cmpq	%rdi, 24(%rax)
	jbe	.LBB77_6
.LBB77_5:
	movq	16(%rax), %rcx
	movq	(%rcx,%rdi,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB77_17
.LBB77_6:
	cmpb	$0, 36(%rax)
	je	.LBB77_9
	callq	"?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ"
	cmpq	%rdi, 24(%rax)
	jbe	.LBB77_9
	movq	16(%rax), %rax
	movq	(%rax,%rdi,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB77_17
.LBB77_9:
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB77_17
	movl	$48, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rsi
	movq	8(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB77_11
	movq	40(%rdi), %rax
	addq	$48, %rdi
	testq	%rax, %rax
	cmovneq	%rax, %rdi
	jmp	.LBB77_13
	.p2align	5, 0x90
.LBB77_11:
	leaq	"??_C@_00CNPNBAHC@?$AA@"(%rip), %rdi
.LBB77_13:
	leaq	48(%rsp), %rbx
	movq	%rbx, %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	$0, 56(%rsp)
	movb	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movw	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movw	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	"?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z"
	movl	$0, 8(%rsi)
	leaq	"??_7?$numpunct@D@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	callq	localeconv
	leaq	200(%rsp), %rcx
	callq	_Getcvt
	movq	$0, 16(%rsi)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 32(%rsi)
	leaq	152(%rsp), %rcx
	callq	_Getcvt
	movl	$1, %ecx
	movl	$1, %edx
	callq	calloc
	testq	%rax, %rax
	je	.LBB77_18
	movq	%rax, 16(%rsi)
	movl	$6, %ecx
	movl	$1, %edx
	callq	calloc
	testq	%rax, %rax
	je	.LBB77_18
	movq	%rsi, %rcx
	addq	$32, %rcx
	movl	$1936482662, (%rax)
	movb	$101, 4(%rax)
	movq	%rax, (%rcx)
	movl	$5, %ecx
	movl	$1, %edx
	callq	calloc
	testq	%rax, %rax
	je	.LBB77_18
	movl	$1702195828, (%rax)
	movq	%rax, 40(%rsi)
	movw	$11310, 24(%rsi)
	leaq	48(%rsp), %rcx
	callq	"??1_Locinfo@std@@QEAA@XZ"
	movq	%rsi, %rcx
	callq	"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*8(%rax)
	movq	%rsi, "?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB"(%rip)
.LBB77_17:
	leaq	40(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	%rsi, %rax
	addq	$248, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	retq
	.p2align	5, 0x90
.LBB77_18:
	callq	"?_Xbad_alloc@std@@YAXXZ"
	int3
	.seh_endproc

	.def	 "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	.globl	"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	.p2align	4, 0x90
"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z":
.seh_proc "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r8, %r15
	movq	16(%rcx), %rsi
	movq	%rsi, %r8
	subq	%rdx, %r8
	jb	.LBB78_21
	movq	%rcx, %r12
	movq	24(%rcx), %rdi
	movq	%rdi, %rax
	subq	%rsi, %rax
	cmpq	%r15, %rax
	movb	%r9b, 47(%rsp)
	jae	.LBB78_2
	movabsq	$9223372036854775807, %r10
	movq	%r10, %rcx
	subq	%rsi, %rcx
	cmpq	%r15, %rcx
	jb	.LBB78_22
	addq	%r15, %rsi
	movq	%rsi, %rcx
	orq	$15, %rcx
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	js	.LBB78_7
	movq	%rdi, %rbx
	shrq	%rbx
	movq	%rbx, %rax
	xorq	%r10, %rax
	addq	%rdi, %rbx
	cmpq	%rbx, %rcx
	cmovaeq	%rcx, %rbx
	cmpq	%rdi, %rax
	cmovbq	%r10, %rbx
	leaq	1(%rbx), %rcx
	cmpq	$4096, %rcx
	jb	.LBB78_11
	cmpq	$-39, %rcx
	jb	.LBB78_10
	callq	"?_Throw_bad_array_new_length@std@@YAXXZ"
	.p2align	5, 0x90
.LBB78_2:
	addq	%r15, %rsi
	movq	%rsi, 16(%r12)
	movq	%r12, %rsi
	cmpq	$16, %rdi
	jb	.LBB78_4
	movq	(%r12), %rsi
.LBB78_4:
	addq	%rdx, %rsi
	incq	%r8
	leaq	(%rsi,%r15), %rcx
	movq	%rsi, %rdx
	callq	memmove
	movq	%rsi, %rcx
	movb	47(%rsp), %dl
	movq	%r15, %r8
	callq	_intel_fast_memset
	jmp	.LBB78_20
	.p2align	5, 0x90
.LBB78_7:
	movq	%r10, %rbx
	leaq	1(%r10), %rcx
.LBB78_10:
	addq	$39, %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rcx
	addq	$39, %rax
	andq	$-32, %rax
	movq	%rcx, -8(%rax)
	movq	%rsi, 16(%r12)
	movq	%rbx, 24(%r12)
	cmpq	$16, %rdi
	jae	.LBB78_15
	jmp	.LBB78_19
	.p2align	5, 0x90
.LBB78_11:
	testq	%rcx, %rcx
	je	.LBB78_12
	callq	"??2@YAPEAX_K@Z"
	movq	%rsi, 16(%r12)
	movq	%rbx, 24(%r12)
	cmpq	$16, %rdi
	jb	.LBB78_19
.LBB78_15:
	movq	(%r12), %r14
	movq	%rax, %rsi
	movq	%rax, %rcx
	movq	%r14, %rdx
	movq	%rdi, %rbx
	movq	48(%rsp), %rdi
	movq	%rdi, %r8
	callq	_intel_fast_memcpy
	movq	%rsi, 64(%rsp)
	addq	%rdi, %rsi
	movq	%rsi, %rcx
	movb	47(%rsp), %dl
	movq	%r15, %r8
	callq	_intel_fast_memset
	movq	56(%rsp), %r8
	incq	%r8
	addq	%r14, %rdi
	addq	%r15, %rsi
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %rsi
	callq	_intel_fast_memcpy
	leaq	1(%rbx), %rdx
	cmpq	$4096, %rdx
	jb	.LBB78_18
	movq	-8(%r14), %rax
	addq	$-8, %r14
	subq	%rax, %r14
	cmpq	$32, %r14
	jae	.LBB78_24
	addq	$40, %rsi
	movq	%rsi, %rdx
	movq	%rax, %r14
.LBB78_18:
	movq	%r14, %rcx
	callq	"??3@YAXPEAX_K@Z"
	movq	64(%rsp), %rax
	movq	%rax, (%r12)
	jmp	.LBB78_20
	.p2align	5, 0x90
.LBB78_12:
	movq	$-1, %rbx
	xorl	%eax, %eax
	movq	%rsi, 16(%r12)
	movq	%rbx, 24(%r12)
	cmpq	$16, %rdi
	jae	.LBB78_15
.LBB78_19:
	movq	%rax, %r14
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	48(%rsp), %rsi
	movq	%rsi, %r8
	callq	_intel_fast_memcpy
	leaq	(%r14,%rsi), %rdi
	movq	%rdi, %rcx
	movb	47(%rsp), %dl
	movq	%r15, %r8
	callq	_intel_fast_memset
	movq	56(%rsp), %r8
	incq	%r8
	addq	%r12, %rsi
	addq	%r15, %rdi
	movq	%rdi, %rcx
	movq	%rsi, %rdx
	callq	_intel_fast_memcpy
	movq	%r14, (%r12)
.LBB78_20:
	movq	%r12, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	retq
	.p2align	5, 0x90
.LBB78_21:
	callq	"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"
	.p2align	5, 0x90
.LBB78_22:
	callq	"?_Xlen_string@std@@YAXXZ"
	.p2align	5, 0x90
.LBB78_24:
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 "??_G?$numpunct@D@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G?$numpunct@D@std@@MEAAPEAXI@Z"
	.globl	"??_G?$numpunct@D@std@@MEAAPEAXI@Z"
	.p2align	4, 0x90
"??_G?$numpunct@D@std@@MEAAPEAXI@Z":
.seh_proc "??_G?$numpunct@D@std@@MEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7?$numpunct@D@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	movq	16(%rcx), %rcx
	callq	free
	movq	32(%rsi), %rcx
	callq	free
	movq	40(%rsi), %rcx
	callq	free
	testl	%edi, %edi
	je	.LBB79_2
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX@Z"
.LBB79_2:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?do_decimal_point@?$numpunct@D@std@@MEBADXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_decimal_point@?$numpunct@D@std@@MEBADXZ"
	.globl	"?do_decimal_point@?$numpunct@D@std@@MEBADXZ"
	.p2align	4, 0x90
"?do_decimal_point@?$numpunct@D@std@@MEBADXZ":
	movb	24(%rcx), %al
	retq

	.def	 "?do_thousands_sep@?$numpunct@D@std@@MEBADXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ"
	.globl	"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ"
	.p2align	4, 0x90
"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ":
	movb	25(%rcx), %al
	retq

	.def	 "?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.globl	"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.p2align	4, 0x90
"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ":
.seh_proc "?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	16(%rcx), %rdi
	movq	$0, (%rdx)
	vmovups	__xmm@000000000000000f0000000000000000(%rip), %xmm0
	vmovups	%xmm0, 16(%rdx)
	movb	$0, (%rdx)
	movq	%rdi, %rcx
	callq	strlen
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rax, %r8
	callq	"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.globl	"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.p2align	4, 0x90
"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ":
.seh_proc "?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	32(%rcx), %rdi
	movq	$0, (%rdx)
	vmovups	__xmm@000000000000000f0000000000000000(%rip), %xmm0
	vmovups	%xmm0, 16(%rdx)
	movb	$0, (%rdx)
	movq	%rdi, %rcx
	callq	strlen
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rax, %r8
	callq	"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.globl	"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.p2align	4, 0x90
"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ":
.seh_proc "?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	40(%rcx), %rdi
	movq	$0, (%rdx)
	vmovups	__xmm@000000000000000f0000000000000000(%rip), %xmm0
	vmovups	%xmm0, 16(%rdx)
	movb	$0, (%rdx)
	movq	%rdi, %rcx
	callq	strlen
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rax, %r8
	callq	"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	 "?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"
	.globl	"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"
	.p2align	4, 0x90
"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ":
.seh_proc "?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@"(%rip), %rcx
	callq	"?_Xout_of_range@std@@YAXPEBD@Z"
	int3
	.seh_endproc

	.def	 "?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"
	.globl	"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"
	.p2align	4, 0x90
"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z":
.seh_proc "?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	movq	16(%rcx), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB86_1
	movq	%rbx, %rax
	subq	%rcx, %rax
	movq	24(%rsi), %r14
	movq	%r14, %rdx
	subq	%rcx, %rdx
	cmpq	%rax, %rdx
	jae	.LBB86_5
	movabsq	$9223372036854775807, %r9
	movq	%r9, %rdx
	subq	%rcx, %rdx
	cmpq	%rax, %rdx
	jb	.LBB86_25
	movq	%rbx, %rdi
	orq	$15, %rdi
	movq	%rax, 64(%rsp)
	movb	%r8b, 39(%rsp)
	movq	%rcx, 56(%rsp)
	js	.LBB86_10
	movq	%r14, %rdx
	shrq	%rdx
	movq	%rdx, %r10
	xorq	%r9, %r10
	addq	%r14, %rdx
	cmpq	%rdx, %rdi
	cmovaeq	%rdi, %rdx
	movq	%rdx, %rdi
	cmpq	%r14, %r10
	cmovbq	%r9, %rdi
	leaq	1(%rdi), %rdx
	cmpq	$4096, %rdx
	jb	.LBB86_14
	cmpq	$-39, %rdx
	jb	.LBB86_13
	callq	"?_Throw_bad_array_new_length@std@@YAXXZ"
	.p2align	5, 0x90
.LBB86_1:
	cmpq	$16, 24(%rsi)
	movq	%rsi, %rax
	jb	.LBB86_3
	movq	(%rsi), %rax
.LBB86_3:
	movq	%rbx, 16(%rsi)
	movb	$0, (%rax,%rbx)
	jmp	.LBB86_24
	.p2align	5, 0x90
.LBB86_5:
	movq	%rbx, 16(%rsi)
	cmpq	$16, %r14
	jb	.LBB86_7
	movq	(%rsi), %rsi
.LBB86_7:
	addq	%rsi, %rcx
	movl	%r8d, %edx
	movq	%rax, %r8
	callq	_intel_fast_memset
	movb	$0, (%rsi,%rbx)
	jmp	.LBB86_24
	.p2align	5, 0x90
.LBB86_10:
	movq	%r9, %rdi
	leaq	1(%r9), %rdx
.LBB86_13:
	addq	$39, %rdx
	movq	%rdx, %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rcx
	addq	$39, %rax
	andq	$-32, %rax
	movq	%rcx, -8(%rax)
	movq	%rbx, 16(%rsi)
	movq	%rdi, 24(%rsi)
	cmpq	$16, %r14
	jae	.LBB86_18
	jmp	.LBB86_23
	.p2align	5, 0x90
.LBB86_14:
	testq	%rdx, %rdx
	je	.LBB86_15
	movq	%rdx, %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rbx, 16(%rsi)
	movq	%rdi, 24(%rsi)
	cmpq	$16, %r14
	jb	.LBB86_23
.LBB86_18:
	movq	(%rsi), %rdx
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rcx
	movq	%rdx, 48(%rsp)
	movq	56(%rsp), %rdi
	movq	%rdi, %r8
	callq	_intel_fast_memcpy
	addq	40(%rsp), %rdi
	movq	%rdi, %rcx
	movb	39(%rsp), %dl
	movq	64(%rsp), %r8
	callq	_intel_fast_memset
	movq	40(%rsp), %rax
	movb	$0, (%rax,%rbx)
	leaq	1(%r14), %rdx
	cmpq	$4096, %rdx
	jb	.LBB86_19
	movq	48(%rsp), %rcx
	movq	-8(%rcx), %rax
	addq	$-8, %rcx
	subq	%rax, %rcx
	cmpq	$32, %rcx
	jae	.LBB86_27
	addq	$40, %r14
	movq	%r14, %rdx
	movq	%rax, %rcx
	jmp	.LBB86_22
	.p2align	5, 0x90
.LBB86_19:
	movq	48(%rsp), %rcx
.LBB86_22:
	callq	"??3@YAXPEAX_K@Z"
	movq	40(%rsp), %rax
	movq	%rax, (%rsi)
	jmp	.LBB86_24
	.p2align	5, 0x90
.LBB86_15:
	movq	$-1, %rdi
	xorl	%eax, %eax
	movq	%rbx, 16(%rsi)
	movq	%rdi, 24(%rsi)
	cmpq	$16, %r14
	jae	.LBB86_18
.LBB86_23:
	movq	%rax, %r14
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movq	56(%rsp), %rdi
	movq	%rdi, %r8
	callq	_intel_fast_memcpy
	addq	%r14, %rdi
	movq	%rdi, %rcx
	movb	39(%rsp), %dl
	movq	64(%rsp), %r8
	callq	_intel_fast_memset
	movb	$0, (%r14,%rbx)
	movq	%r14, (%rsi)
.LBB86_24:
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	retq
	.p2align	5, 0x90
.LBB86_25:
	callq	"?_Xlen_string@std@@YAXXZ"
	.p2align	5, 0x90
.LBB86_27:
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 "?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z"
	.globl	"?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z"
	.p2align	4, 0x90
"?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z":
.seh_proc "?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %rbp
	movq	%r8, %r13
	movq	%rdx, %rcx
	movq	264(%rsp), %r14
	cmpq	$0, 272(%rsp)
	je	.LBB87_2
	movb	(%r14), %al
	addb	$-43, %al
	xorl	%r15d, %r15d
	testb	$-3, %al
	sete	%r15b
	jmp	.LBB87_3
	.p2align	5, 0x90
.LBB87_2:
	xorl	%r15d, %r15d
.LBB87_3:
	movl	24(%rbp), %eax
	notl	%eax
	testl	$12288, %eax
	movq	%rcx, 96(%rsp)
	jne	.LBB87_8
	leaq	2(%r15), %rax
	leaq	"??_C@_02OOPEBDOJ@pP?$AA@"(%rip), %rdx
	cmpq	272(%rsp), %rax
	ja	.LBB87_9
	cmpb	$48, (%r14,%r15)
	jne	.LBB87_9
	movb	1(%r15,%r14), %cl
	orb	$32, %cl
	cmpb	$120, %cl
	jne	.LBB87_9
	movq	%rax, %r15
	jmp	.LBB87_9
	.p2align	5, 0x90
.LBB87_8:
	leaq	"??_C@_02MDKMJEGG@eE?$AA@"(%rip), %rdx
.LBB87_9:
	movq	%r14, %rcx
	callq	strcspn
	movq	%rax, %rsi
	movw	$46, 42(%rsp)
	callq	localeconv
	movq	(%rax), %rax
	movb	(%rax), %al
	movb	%al, 42(%rsp)
	leaq	42(%rsp), %rdx
	movq	%r14, %rcx
	callq	strcspn
	movq	%rax, %r12
	movq	64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	48(%rsp), %rbx
	movq	%rbx, %rcx
	callq	"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"
	movq	%rax, %rdi
	movq	56(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB87_12
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB87_12
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB87_12:
	movq	%rbx, %rcx
	movq	272(%rsp), %rdx
	xorl	%r8d, %r8d
	callq	"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z"
	cmpq	$16, 72(%rsp)
	jb	.LBB87_14
	movq	48(%rsp), %rbx
.LBB87_14:
	movq	%r13, 104(%rsp)
	movq	(%rdi), %rax
	movq	272(%rsp), %rcx
	leaq	(%r14,%rcx), %r8
	movq	%rdi, %rcx
	movq	%r14, %rdx
	movq	%rbx, %r9
	callq	*56(%rax)
	movq	%rbp, 112(%rsp)
	movq	64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 128(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	120(%rsp), %rcx
	callq	"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	movq	%rax, %r14
	movq	128(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB87_17
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB87_17
	movq	(%rax), %rbp
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%rbp)
.LBB87_17:
	movq	(%r14), %rax
	leaq	120(%rsp), %rbp
	movq	%r14, %rcx
	movq	%rbp, %rdx
	callq	*40(%rax)
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*32(%rax)
	movl	%eax, %r13d
	cmpq	272(%rsp), %r12
	je	.LBB87_22
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*24(%rax)
	cmpq	$16, 72(%rsp)
	jb	.LBB87_20
	movq	48(%rsp), %rcx
	jmp	.LBB87_21
	.p2align	5, 0x90
.LBB87_20:
	leaq	48(%rsp), %rcx
.LBB87_21:
	movb	%al, (%rcx,%r12)
	movq	%r12, %rsi
.LBB87_22:
	cmpq	$16, 144(%rsp)
	jb	.LBB87_24
	movq	120(%rsp), %rbp
.LBB87_24:
	movb	256(%rsp), %r12b
	movb	(%rbp), %al
	leal	-1(%rax), %ecx
	cmpb	$125, %cl
	ja	.LBB87_30
	leaq	48(%rsp), %r14
	.p2align	4, 0x90
.LBB87_26:
	movq	%rsi, %rcx
	subq	%r15, %rcx
	movzbl	%al, %eax
	cmpq	%rax, %rcx
	jbe	.LBB87_30
	subq	%rax, %rsi
	movl	$1, %r8d
	movq	%r14, %rcx
	movq	%rsi, %rdx
	movl	%r13d, %r9d
	callq	"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	leaq	1(%rbp), %rdi
	movzbl	1(%rbp), %eax
	testb	%al, %al
	cmovleq	%rbp, %rdi
	movzbl	(%rdi), %ecx
	leal	-1(%rcx), %edx
	cmpb	$125, %dl
	ja	.LBB87_30
	movq	%rsi, %rdx
	subq	%r15, %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB87_30
	xorl	%ebx, %ebx
	testb	%al, %al
	setg	%bl
	subq	%rcx, %rsi
	movl	$1, %r8d
	movq	%r14, %rcx
	movq	%rsi, %rdx
	movl	%r13d, %r9d
	callq	"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	leaq	(%rbx,%rbp), %rax
	incq	%rax
	cmpb	$0, 1(%rbx,%rbp)
	cmovgq	%rax, %rdi
	movzbl	(%rdi), %eax
	leal	-1(%rax), %ecx
	movq	%rdi, %rbp
	cmpb	$126, %cl
	jb	.LBB87_26
.LBB87_30:
	movq	64(%rsp), %rdx
	movq	112(%rsp), %rcx
	movq	40(%rcx), %rbp
	xorl	%eax, %eax
	movq	%rbp, %r14
	movq	%rdx, 80(%rsp)
	subq	%rdx, %r14
	cmovbq	%rax, %r14
	testq	%rbp, %rbp
	cmovleq	%rax, %r14
	movl	$448, %eax
	andl	24(%rcx), %eax
	movq	104(%rsp), %r13
	movb	(%r13), %dil
	movq	8(%r13), %rsi
	movzbl	%r12b, %ecx
	movl	%ecx, 44(%rsp)
	cmpl	$64, %eax
	je	.LBB87_36
	cmpl	$256, %eax
	jne	.LBB87_40
	testq	%r15, %r15
	je	.LBB87_51
	testq	%rsi, %rsi
	je	.LBB87_67
	cmpq	$16, 72(%rsp)
	movq	%rbp, 88(%rsp)
	jb	.LBB87_54
	movq	48(%rsp), %r12
	jmp	.LBB87_55
	.p2align	5, 0x90
.LBB87_36:
	testq	%r15, %r15
	je	.LBB87_81
	testq	%rsi, %rsi
	je	.LBB87_53
	cmpq	$16, 72(%rsp)
	jb	.LBB87_69
	movq	48(%rsp), %r12
	jmp	.LBB87_70
	.p2align	5, 0x90
.LBB87_40:
	testq	%r14, %r14
	je	.LBB87_47
	testq	%rsi, %rsi
	je	.LBB87_67
	movq	80(%rsp), %rax
	cmpq	%rbp, %rax
	movq	%rbp, %rbx
	cmovbq	%rax, %rbx
	subq	%rbp, %rbx
	movl	$1, %r14d
	jmp	.LBB87_44
	.p2align	5, 0x90
.LBB87_43:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movl	44(%rsp), %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	cmovel	%r14d, %edi
	incq	%rbx
	je	.LBB87_47
.LBB87_44:
	movq	64(%rsi), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB87_43
	movq	88(%rsi), %rdx
	movl	(%rdx), %ebp
	testl	%ebp, %ebp
	jle	.LBB87_43
	decl	%ebp
	movl	%ebp, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%r12b, (%rcx)
	incq	%rbx
	jne	.LBB87_44
.LBB87_47:
	movb	%dil, (%r13)
	movq	%rsi, 8(%r13)
	testq	%r15, %r15
	je	.LBB87_52
	testq	%rsi, %rsi
	je	.LBB87_67
	cmpq	$16, 72(%rsp)
	jb	.LBB87_75
	movq	48(%rsp), %r12
	jmp	.LBB87_76
	.p2align	5, 0x90
.LBB87_51:
	movq	%rbp, 88(%rsp)
	jmp	.LBB87_60
	.p2align	5, 0x90
.LBB87_53:
	movb	$1, %dil
	jmp	.LBB87_81
	.p2align	5, 0x90
.LBB87_54:
	leaq	48(%rsp), %r12
.LBB87_55:
	xorl	%ebx, %ebx
	jmp	.LBB87_57
	.p2align	5, 0x90
.LBB87_56:
	movzbl	%r8b, %edx
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	movl	$1, %eax
	cmovel	%eax, %edi
	incq	%rbx
	cmpq	%rbx, %r15
	je	.LBB87_60
.LBB87_57:
	movzbl	(%r12,%rbx), %r8d
	movq	64(%rsi), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB87_56
	movq	88(%rsi), %rbp
	movl	(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB87_56
	decl	%eax
	movl	%eax, (%rbp)
	leaq	1(%rdx), %rax
	movq	%rax, (%rcx)
	movb	%r8b, (%rdx)
	incq	%rbx
	cmpq	%rbx, %r15
	jne	.LBB87_57
.LBB87_60:
	movb	%dil, (%r13)
	movq	%rsi, 8(%r13)
	testq	%r14, %r14
	je	.LBB87_52
	testq	%rsi, %rsi
	je	.LBB87_67
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovbq	%rax, %rbx
	subq	%rcx, %rbx
	movl	$1, %r12d
	xorl	%r14d, %r14d
	jmp	.LBB87_64
	.p2align	5, 0x90
.LBB87_63:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movl	44(%rsp), %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	cmovel	%r12d, %edi
	incq	%rbx
	je	.LBB87_81
.LBB87_64:
	movq	64(%rsi), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB87_63
	movq	88(%rsi), %rdx
	movl	(%rdx), %ebp
	testl	%ebp, %ebp
	jle	.LBB87_63
	decl	%ebp
	movl	%ebp, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	256(%rsp), %eax
	movb	%al, (%rcx)
	incq	%rbx
	jne	.LBB87_64
	jmp	.LBB87_81
	.p2align	5, 0x90
.LBB87_67:
	movb	$1, %dil
.LBB87_52:
	xorl	%r14d, %r14d
.LBB87_81:
	movb	%dil, (%r13)
	movq	%rsi, 8(%r13)
	cmpq	%r15, 80(%rsp)
	je	.LBB87_92
	testq	%rsi, %rsi
	je	.LBB87_85
	cmpq	$16, 72(%rsp)
	jb	.LBB87_86
	movq	48(%rsp), %r13
	jmp	.LBB87_87
	.p2align	5, 0x90
.LBB87_85:
	movb	$1, %dil
	jmp	.LBB87_92
	.p2align	5, 0x90
.LBB87_86:
	leaq	48(%rsp), %r13
.LBB87_87:
	movl	$1, %r12d
	jmp	.LBB87_89
	.p2align	5, 0x90
.LBB87_88:
	movzbl	%al, %edx
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	cmovel	%r12d, %edi
	incq	%r15
	cmpq	%r15, 80(%rsp)
	je	.LBB87_92
.LBB87_89:
	movzbl	(%r13,%r15), %eax
	movq	64(%rsi), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB87_88
	movq	88(%rsi), %rbp
	movl	(%rbp), %ebx
	testl	%ebx, %ebx
	jle	.LBB87_88
	decl	%ebx
	movl	%ebx, (%rbp)
	leaq	1(%rdx), %rbp
	movq	%rbp, (%rcx)
	movb	%al, (%rdx)
	incq	%r15
	cmpq	%r15, 80(%rsp)
	jne	.LBB87_89
.LBB87_92:
	movq	104(%rsp), %rax
	movb	%dil, (%rax)
	movq	%rsi, 8(%rax)
	movq	112(%rsp), %rax
	movq	$0, 40(%rax)
	testq	%r14, %r14
	je	.LBB87_99
	testq	%rsi, %rsi
	movq	96(%rsp), %r15
	je	.LBB87_100
	movl	$1, %r13d
	movb	256(%rsp), %r12b
	movl	44(%rsp), %ebx
	jmp	.LBB87_96
	.p2align	5, 0x90
.LBB87_95:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movl	%ebx, %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	cmovel	%r13d, %edi
	decq	%r14
	je	.LBB87_101
.LBB87_96:
	movq	64(%rsi), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB87_95
	movq	88(%rsi), %rdx
	movl	(%rdx), %ebp
	testl	%ebp, %ebp
	jle	.LBB87_95
	decl	%ebp
	movl	%ebp, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%r12b, (%rcx)
	decq	%r14
	jne	.LBB87_96
	jmp	.LBB87_101
	.p2align	5, 0x90
.LBB87_99:
	movq	96(%rsp), %r15
	jmp	.LBB87_101
	.p2align	5, 0x90
.LBB87_100:
	movb	$1, %dil
.LBB87_101:
	movb	%dil, (%r15)
	movq	%rsi, 8(%r15)
	movq	144(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB87_106
	movq	120(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB87_105
	movq	-8(%rcx), %rbp
	addq	$-8, %rcx
	subq	%rbp, %rcx
	cmpq	$32, %rcx
	jae	.LBB87_112
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%rbp, %rcx
.LBB87_105:
	callq	"??3@YAXPEAX_K@Z"
.LBB87_106:
	movq	72(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB87_111
	movq	48(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB87_110
	movq	-8(%rcx), %rbp
	addq	$-8, %rcx
	subq	%rbp, %rcx
	cmpq	$32, %rcx
	jae	.LBB87_112
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%rbp, %rcx
.LBB87_110:
	callq	"??3@YAXPEAX_K@Z"
.LBB87_111:
	movq	%r15, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.p2align	5, 0x90
.LBB87_69:
	leaq	48(%rsp), %r12
.LBB87_70:
	xorl	%ebx, %ebx
	jmp	.LBB87_72
	.p2align	5, 0x90
.LBB87_71:
	movzbl	%r8b, %edx
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	movl	$1, %eax
	cmovel	%eax, %edi
	incq	%rbx
	cmpq	%rbx, %r15
	je	.LBB87_81
.LBB87_72:
	movzbl	(%r12,%rbx), %r8d
	movq	64(%rsi), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB87_71
	movq	88(%rsi), %rbp
	movl	(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB87_71
	decl	%eax
	movl	%eax, (%rbp)
	leaq	1(%rdx), %rax
	movq	%rax, (%rcx)
	movb	%r8b, (%rdx)
	incq	%rbx
	cmpq	%rbx, %r15
	jne	.LBB87_72
	jmp	.LBB87_81
	.p2align	5, 0x90
.LBB87_75:
	leaq	48(%rsp), %r12
.LBB87_76:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	.LBB87_78
	.p2align	5, 0x90
.LBB87_77:
	movzbl	%r8b, %edx
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	movzbl	%dil, %edi
	movl	$1, %eax
	cmovel	%eax, %edi
	incq	%rbx
	cmpq	%rbx, %r15
	je	.LBB87_81
.LBB87_78:
	movzbl	(%r12,%rbx), %r8d
	movq	64(%rsi), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB87_77
	movq	88(%rsi), %rax
	movl	(%rax), %ebp
	testl	%ebp, %ebp
	jle	.LBB87_77
	decl	%ebp
	movl	%ebp, (%rax)
	leaq	1(%rdx), %rax
	movq	%rax, (%rcx)
	movb	%r8b, (%rdx)
	incq	%rbx
	cmpq	%rbx, %r15
	jne	.LBB87_78
	jmp	.LBB87_81
	.p2align	5, 0x90
.LBB87_112:
	callq	_invalid_parameter_noinfo_noreturn
	int3
	.seh_endproc

	.def	 "??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ"
	.globl	"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ"
	.p2align	4, 0x90
"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ":
	movq	$0, "?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"(%rip)
	retq

	.def	 "??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ"
	.globl	"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ"
	.p2align	4, 0x90
"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ":
	movq	$0, "?id@?$numpunct@D@std@@2V0locale@2@A"(%rip)
	retq

	.section	.rdata,"dr"
	.p2align	4
".L?map@?1??ascii_to_digit4@@YAED@Z@4QBEB.const":
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\002\003\004\005\006\007\b\t\000\000\000\000\000\000\000\n\013\f\r\016\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\n\013\f\r\016\017"
	.zero	153

	.section	.rdata,"dr",discard,"??_C@_0BH@GKBEKKHM@0123456789ABCDEFabcdef?$AA@"
	.globl	"??_C@_0BH@GKBEKKHM@0123456789ABCDEFabcdef?$AA@"
"??_C@_0BH@GKBEKKHM@0123456789ABCDEFabcdef?$AA@":
	.asciz	"0123456789ABCDEFabcdef"

	.section	.rdata,"dr",discard,"??_C@_0BE@NLNDGEPD@?$CFd?3?5?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFd?6?$AA@"
	.globl	"??_C@_0BE@NLNDGEPD@?$CFd?3?5?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFd?6?$AA@"
"??_C@_0BE@NLNDGEPD@?$CFd?3?5?$CFd?5?$CFd?5?$CFd?5?$CFd?5?$CFd?6?$AA@":
	.asciz	"%d: %d %d %d %d %d\n"

	.section	.bss,"bw",discard,"?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"
	.globl	"?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A"
	.p2align	3
"?rng@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@3@@Z@4V?$mersenne_twister_engine@_K$0EA@$0BDI@$0JM@$0BP@$0?EKPNJAKFFGJJOGBH@$0BN@$0FFFFFFFFFFFFFFFF@$0BB@$0HBNGHPPPONKGAAAA@$0CF@$0?IBBCAAAAAAAAA@$0CL@$0FIFBPECNEMJFHPCN@@3@A":
	.zero	5008

	.section	.bss,"bw",discard,"?$TSS0@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@4HA"
	.globl	"?$TSS0@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@4HA"
	.p2align	2
"?$TSS0@?1??random_string@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@_KV?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@4HA":
	.long	0

	.section	.rdata,"dr",discard,"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@"
	.globl	"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@"
"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@":
	.asciz	"string too long"

	.section	.data,"dw",discard,"??_R0?AVbad_array_new_length@std@@@8"
	.globl	"??_R0?AVbad_array_new_length@std@@@8"
	.p2align	4
"??_R0?AVbad_array_new_length@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVbad_array_new_length@std@@"
	.zero	1

	.section	.xdata,"dr",discard,"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24"
	.p2align	4
"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24":
	.long	0
	.long	"??_R0?AVbad_array_new_length@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	24
	.long	"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVbad_alloc@std@@@8"
	.globl	"??_R0?AVbad_alloc@std@@@8"
	.p2align	4
"??_R0?AVbad_alloc@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVbad_alloc@std@@"
	.zero	4

	.section	.xdata,"dr",discard,"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24"
	.p2align	4
"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24":
	.long	16
	.long	"??_R0?AVbad_alloc@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	24
	.long	"??0bad_alloc@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVexception@std@@@8"
	.globl	"??_R0?AVexception@std@@@8"
	.p2align	4
"??_R0?AVexception@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVexception@std@@"
	.zero	4

	.section	.xdata,"dr",discard,"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"
	.p2align	4
"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24":
	.long	0
	.long	"??_R0?AVexception@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	24
	.long	"??0exception@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.xdata,"dr",discard,"_CTA3?AVbad_array_new_length@std@@"
	.globl	"_CTA3?AVbad_array_new_length@std@@"
	.p2align	3
"_CTA3?AVbad_array_new_length@std@@":
	.long	3
	.long	"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24"@IMGREL
	.long	"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24"@IMGREL
	.long	"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"@IMGREL

	.section	.xdata,"dr",discard,"_TI3?AVbad_array_new_length@std@@"
	.globl	"_TI3?AVbad_array_new_length@std@@"
	.p2align	3
"_TI3?AVbad_array_new_length@std@@":
	.long	0
	.long	"??1exception@std@@UEAA@XZ"@IMGREL
	.long	0
	.long	"_CTA3?AVbad_array_new_length@std@@"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@"
	.globl	"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@"
"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@":
	.asciz	"bad array new length"

	.section	.rdata,"dr",largest,"??_7bad_array_new_length@std@@6B@"
	.p2align	4
.L__unnamed_1:
	.quad	"??_R4bad_array_new_length@std@@6B@"
	.quad	"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4bad_array_new_length@std@@6B@"
	.globl	"??_R4bad_array_new_length@std@@6B@"
	.p2align	4
"??_R4bad_array_new_length@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVbad_array_new_length@std@@@8"@IMGREL
	.long	"??_R3bad_array_new_length@std@@8"@IMGREL
	.long	"??_R4bad_array_new_length@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_R3bad_array_new_length@std@@8"
	.globl	"??_R3bad_array_new_length@std@@8"
	.p2align	3
"??_R3bad_array_new_length@std@@8":
	.long	0
	.long	0
	.long	3
	.long	"??_R2bad_array_new_length@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2bad_array_new_length@std@@8"
	.globl	"??_R2bad_array_new_length@std@@8"
	.p2align	2
"??_R2bad_array_new_length@std@@8":
	.long	"??_R1A@?0A@EA@bad_array_new_length@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@bad_alloc@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@bad_array_new_length@std@@8"
	.globl	"??_R1A@?0A@EA@bad_array_new_length@std@@8"
	.p2align	4
"??_R1A@?0A@EA@bad_array_new_length@std@@8":
	.long	"??_R0?AVbad_array_new_length@std@@@8"@IMGREL
	.long	2
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3bad_array_new_length@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@bad_alloc@std@@8"
	.globl	"??_R1A@?0A@EA@bad_alloc@std@@8"
	.p2align	4
"??_R1A@?0A@EA@bad_alloc@std@@8":
	.long	"??_R0?AVbad_alloc@std@@@8"@IMGREL
	.long	1
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3bad_alloc@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3bad_alloc@std@@8"
	.globl	"??_R3bad_alloc@std@@8"
	.p2align	3
"??_R3bad_alloc@std@@8":
	.long	0
	.long	0
	.long	2
	.long	"??_R2bad_alloc@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2bad_alloc@std@@8"
	.globl	"??_R2bad_alloc@std@@8"
	.p2align	2
"??_R2bad_alloc@std@@8":
	.long	"??_R1A@?0A@EA@bad_alloc@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@exception@std@@8"
	.globl	"??_R1A@?0A@EA@exception@std@@8"
	.p2align	4
"??_R1A@?0A@EA@exception@std@@8":
	.long	"??_R0?AVexception@std@@@8"@IMGREL
	.long	0
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3exception@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3exception@std@@8"
	.globl	"??_R3exception@std@@8"
	.p2align	3
"??_R3exception@std@@8":
	.long	0
	.long	0
	.long	1
	.long	"??_R2exception@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2exception@std@@8"
	.globl	"??_R2exception@std@@8"
	.p2align	2
"??_R2exception@std@@8":
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",largest,"??_7bad_alloc@std@@6B@"
	.p2align	4
.L__unnamed_2:
	.quad	"??_R4bad_alloc@std@@6B@"
	.quad	"??_Gbad_alloc@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4bad_alloc@std@@6B@"
	.globl	"??_R4bad_alloc@std@@6B@"
	.p2align	4
"??_R4bad_alloc@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVbad_alloc@std@@@8"@IMGREL
	.long	"??_R3bad_alloc@std@@8"@IMGREL
	.long	"??_R4bad_alloc@std@@6B@"@IMGREL

	.section	.rdata,"dr",largest,"??_7exception@std@@6B@"
	.p2align	4
.L__unnamed_3:
	.quad	"??_R4exception@std@@6B@"
	.quad	"??_Gexception@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4exception@std@@6B@"
	.globl	"??_R4exception@std@@6B@"
	.p2align	4
"??_R4exception@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVexception@std@@@8"@IMGREL
	.long	"??_R3exception@std@@8"@IMGREL
	.long	"??_R4exception@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@"
	.globl	"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@"
"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@":
	.asciz	"Unknown exception"

	.section	.bss,"bw",discard,"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.globl	"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.p2align	3
"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA":
	.quad	0

	.section	.rdata,"dr",discard,"??_C@_0BA@LDFPKFIO@?$DN?$DN?$DN?$DN?5Measuring?5?$AA@"
	.globl	"??_C@_0BA@LDFPKFIO@?$DN?$DN?$DN?$DN?5Measuring?5?$AA@"
"??_C@_0BA@LDFPKFIO@?$DN?$DN?$DN?$DN?5Measuring?5?$AA@":
	.asciz	"==== Measuring "

	.section	.rdata,"dr",discard,"??_C@_0L@EAIEPLDH@?5iteration?$AA@"
	.globl	"??_C@_0L@EAIEPLDH@?5iteration?$AA@"
"??_C@_0L@EAIEPLDH@?5iteration?$AA@":
	.asciz	" iteration"

	.section	.rdata,"dr",discard,"??_C@_01LKDEMHDF@s?$AA@"
	.globl	"??_C@_01LKDEMHDF@s?$AA@"
"??_C@_01LKDEMHDF@s?$AA@":
	.asciz	"s"

	.section	.rdata,"dr",discard,"??_C@_00CNPNBAHC@?$AA@"
	.globl	"??_C@_00CNPNBAHC@?$AA@"
"??_C@_00CNPNBAHC@?$AA@":
	.zero	1

	.section	.rdata,"dr",discard,"??_C@_06JIGGMPGM@?5?$DN?$DN?$DN?$DN?6?$AA@"
	.globl	"??_C@_06JIGGMPGM@?5?$DN?$DN?$DN?$DN?6?$AA@"
"??_C@_06JIGGMPGM@?5?$DN?$DN?$DN?$DN?6?$AA@":
	.asciz	" ====\n"

	.section	.rdata,"dr",discard,"??_C@_0DF@FOPJEEBJ@Clocks?5?5?5?5?5?5?5?5?5?5Millisec?5?5?5?5?5?5?5?5@"
	.globl	"??_C@_0DF@FOPJEEBJ@Clocks?5?5?5?5?5?5?5?5?5?5Millisec?5?5?5?5?5?5?5?5@"
"??_C@_0DF@FOPJEEBJ@Clocks?5?5?5?5?5?5?5?5?5?5Millisec?5?5?5?5?5?5?5?5@":
	.asciz	"Clocks          Millisec        CPI             IPS\n"

	.section	.rdata,"dr",discard,"??_C@_0BD@KLNANHCB@?9?9?9?9?5Average?5?9?9?9?9?6?$AA@"
	.globl	"??_C@_0BD@KLNANHCB@?9?9?9?9?5Average?5?9?9?9?9?6?$AA@"
"??_C@_0BD@KLNANHCB@?9?9?9?9?5Average?5?9?9?9?9?6?$AA@":
	.asciz	"---- Average ----\n"

	.section	.rdata,"dr",discard,"??_C@_02PHMGELLB@?6?6?$AA@"
	.globl	"??_C@_02PHMGELLB@?6?6?$AA@"
"??_C@_02PHMGELLB@?6?6?$AA@":
	.asciz	"\n\n"

	.section	.rdata,"dr",discard,"??_8?$basic_ostream@DU?$char_traits@D@std@@@std@@7B@"
	.globl	"??_8?$basic_ostream@DU?$char_traits@D@std@@@std@@7B@"
	.p2align	2
"??_8?$basic_ostream@DU?$char_traits@D@std@@@std@@7B@":
	.long	0
	.long	16

	.section	.rdata,"dr",largest,"??_7?$basic_ostream@DU?$char_traits@D@std@@@std@@6B@"
	.p2align	3
.L__unnamed_4:
	.quad	"??_R4?$basic_ostream@DU?$char_traits@D@std@@@std@@6B@"
	.quad	"??_E?$basic_ostream@DU?$char_traits@D@std@@@std@@$4PPPPPPPM@A@EAAPEAXI@Z"

	.section	.rdata,"dr",discard,"??_R4?$basic_ostream@DU?$char_traits@D@std@@@std@@6B@"
	.globl	"??_R4?$basic_ostream@DU?$char_traits@D@std@@@std@@6B@"
	.p2align	4
"??_R4?$basic_ostream@DU?$char_traits@D@std@@@std@@6B@":
	.long	1
	.long	16
	.long	4
	.long	"??_R0?AV?$basic_ostream@DU?$char_traits@D@std@@@std@@@8"@IMGREL
	.long	"??_R3?$basic_ostream@DU?$char_traits@D@std@@@std@@8"@IMGREL
	.long	"??_R4?$basic_ostream@DU?$char_traits@D@std@@@std@@6B@"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV?$basic_ostream@DU?$char_traits@D@std@@@std@@@8"
	.globl	"??_R0?AV?$basic_ostream@DU?$char_traits@D@std@@@std@@@8"
	.p2align	4
"??_R0?AV?$basic_ostream@DU?$char_traits@D@std@@@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV?$basic_ostream@DU?$char_traits@D@std@@@std@@"
	.zero	6

	.section	.rdata,"dr",discard,"??_R3?$basic_ostream@DU?$char_traits@D@std@@@std@@8"
	.globl	"??_R3?$basic_ostream@DU?$char_traits@D@std@@@std@@8"
	.p2align	3
"??_R3?$basic_ostream@DU?$char_traits@D@std@@@std@@8":
	.long	0
	.long	0
	.long	4
	.long	"??_R2?$basic_ostream@DU?$char_traits@D@std@@@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2?$basic_ostream@DU?$char_traits@D@std@@@std@@8"
	.globl	"??_R2?$basic_ostream@DU?$char_traits@D@std@@@std@@8"
	.p2align	4
"??_R2?$basic_ostream@DU?$char_traits@D@std@@@std@@8":
	.long	"??_R1A@?0A@EA@?$basic_ostream@DU?$char_traits@D@std@@@std@@8"@IMGREL
	.long	"??_R1A@A@3FA@?$basic_ios@DU?$char_traits@D@std@@@std@@8"@IMGREL
	.long	"??_R1A@A@3EA@ios_base@std@@8"@IMGREL
	.long	"??_R17A@3EA@?$_Iosb@H@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@?$basic_ostream@DU?$char_traits@D@std@@@std@@8"
	.globl	"??_R1A@?0A@EA@?$basic_ostream@DU?$char_traits@D@std@@@std@@8"
	.p2align	4
"??_R1A@?0A@EA@?$basic_ostream@DU?$char_traits@D@std@@@std@@8":
	.long	"??_R0?AV?$basic_ostream@DU?$char_traits@D@std@@@std@@@8"@IMGREL
	.long	3
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3?$basic_ostream@DU?$char_traits@D@std@@@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@A@3FA@?$basic_ios@DU?$char_traits@D@std@@@std@@8"
	.globl	"??_R1A@A@3FA@?$basic_ios@DU?$char_traits@D@std@@@std@@8"
	.p2align	4
"??_R1A@A@3FA@?$basic_ios@DU?$char_traits@D@std@@@std@@8":
	.long	"??_R0?AV?$basic_ios@DU?$char_traits@D@std@@@std@@@8"@IMGREL
	.long	2
	.long	0
	.long	0
	.long	4
	.long	80
	.long	"??_R3?$basic_ios@DU?$char_traits@D@std@@@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV?$basic_ios@DU?$char_traits@D@std@@@std@@@8"
	.globl	"??_R0?AV?$basic_ios@DU?$char_traits@D@std@@@std@@@8"
	.p2align	4
"??_R0?AV?$basic_ios@DU?$char_traits@D@std@@@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV?$basic_ios@DU?$char_traits@D@std@@@std@@"
	.zero	2

	.section	.rdata,"dr",discard,"??_R3?$basic_ios@DU?$char_traits@D@std@@@std@@8"
	.globl	"??_R3?$basic_ios@DU?$char_traits@D@std@@@std@@8"
	.p2align	3
"??_R3?$basic_ios@DU?$char_traits@D@std@@@std@@8":
	.long	0
	.long	0
	.long	3
	.long	"??_R2?$basic_ios@DU?$char_traits@D@std@@@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2?$basic_ios@DU?$char_traits@D@std@@@std@@8"
	.globl	"??_R2?$basic_ios@DU?$char_traits@D@std@@@std@@8"
	.p2align	2
"??_R2?$basic_ios@DU?$char_traits@D@std@@@std@@8":
	.long	"??_R1A@?0A@EA@?$basic_ios@DU?$char_traits@D@std@@@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@ios_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@?$_Iosb@H@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@?$basic_ios@DU?$char_traits@D@std@@@std@@8"
	.globl	"??_R1A@?0A@EA@?$basic_ios@DU?$char_traits@D@std@@@std@@8"
	.p2align	4
"??_R1A@?0A@EA@?$basic_ios@DU?$char_traits@D@std@@@std@@8":
	.long	"??_R0?AV?$basic_ios@DU?$char_traits@D@std@@@std@@@8"@IMGREL
	.long	2
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3?$basic_ios@DU?$char_traits@D@std@@@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@ios_base@std@@8"
	.globl	"??_R1A@?0A@EA@ios_base@std@@8"
	.p2align	4
"??_R1A@?0A@EA@ios_base@std@@8":
	.long	"??_R0?AVios_base@std@@@8"@IMGREL
	.long	1
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3ios_base@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVios_base@std@@@8"
	.globl	"??_R0?AVios_base@std@@@8"
	.p2align	4
"??_R0?AVios_base@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVios_base@std@@"
	.zero	5

	.section	.rdata,"dr",discard,"??_R3ios_base@std@@8"
	.globl	"??_R3ios_base@std@@8"
	.p2align	3
"??_R3ios_base@std@@8":
	.long	0
	.long	0
	.long	2
	.long	"??_R2ios_base@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2ios_base@std@@8"
	.globl	"??_R2ios_base@std@@8"
	.p2align	2
"??_R2ios_base@std@@8":
	.long	"??_R1A@?0A@EA@ios_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@?$_Iosb@H@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R17?0A@EA@?$_Iosb@H@std@@8"
	.globl	"??_R17?0A@EA@?$_Iosb@H@std@@8"
	.p2align	4
"??_R17?0A@EA@?$_Iosb@H@std@@8":
	.long	"??_R0?AV?$_Iosb@H@std@@@8"@IMGREL
	.long	0
	.long	8
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3?$_Iosb@H@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV?$_Iosb@H@std@@@8"
	.globl	"??_R0?AV?$_Iosb@H@std@@@8"
	.p2align	4
"??_R0?AV?$_Iosb@H@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV?$_Iosb@H@std@@"
	.zero	4

	.section	.rdata,"dr",discard,"??_R3?$_Iosb@H@std@@8"
	.globl	"??_R3?$_Iosb@H@std@@8"
	.p2align	3
"??_R3?$_Iosb@H@std@@8":
	.long	0
	.long	0
	.long	1
	.long	"??_R2?$_Iosb@H@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2?$_Iosb@H@std@@8"
	.globl	"??_R2?$_Iosb@H@std@@8"
	.p2align	2
"??_R2?$_Iosb@H@std@@8":
	.long	"??_R1A@?0A@EA@?$_Iosb@H@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@?$_Iosb@H@std@@8"
	.globl	"??_R1A@?0A@EA@?$_Iosb@H@std@@8"
	.p2align	4
"??_R1A@?0A@EA@?$_Iosb@H@std@@8":
	.long	"??_R0?AV?$_Iosb@H@std@@@8"@IMGREL
	.long	0
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3?$_Iosb@H@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@A@3EA@ios_base@std@@8"
	.globl	"??_R1A@A@3EA@ios_base@std@@8"
	.p2align	4
"??_R1A@A@3EA@ios_base@std@@8":
	.long	"??_R0?AVios_base@std@@@8"@IMGREL
	.long	1
	.long	0
	.long	0
	.long	4
	.long	64
	.long	"??_R3ios_base@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R17A@3EA@?$_Iosb@H@std@@8"
	.globl	"??_R17A@3EA@?$_Iosb@H@std@@8"
	.p2align	4
"??_R17A@3EA@?$_Iosb@H@std@@8":
	.long	"??_R0?AV?$_Iosb@H@std@@@8"@IMGREL
	.long	0
	.long	8
	.long	0
	.long	4
	.long	64
	.long	"??_R3?$_Iosb@H@std@@8"@IMGREL

	.section	.rdata,"dr",largest,"??_7?$basic_ios@DU?$char_traits@D@std@@@std@@6B@"
	.p2align	3
.L__unnamed_5:
	.quad	"??_R4?$basic_ios@DU?$char_traits@D@std@@@std@@6B@"
	.quad	"??_G?$basic_ios@DU?$char_traits@D@std@@@std@@UEAAPEAXI@Z"

	.section	.rdata,"dr",discard,"??_R4?$basic_ios@DU?$char_traits@D@std@@@std@@6B@"
	.globl	"??_R4?$basic_ios@DU?$char_traits@D@std@@@std@@6B@"
	.p2align	4
"??_R4?$basic_ios@DU?$char_traits@D@std@@@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV?$basic_ios@DU?$char_traits@D@std@@@std@@@8"@IMGREL
	.long	"??_R3?$basic_ios@DU?$char_traits@D@std@@@std@@8"@IMGREL
	.long	"??_R4?$basic_ios@DU?$char_traits@D@std@@@std@@6B@"@IMGREL

	.section	.rdata,"dr",largest,"??_7ios_base@std@@6B@"
	.p2align	3
.L__unnamed_6:
	.quad	"??_R4ios_base@std@@6B@"
	.quad	"??_Gios_base@std@@UEAAPEAXI@Z"

	.section	.rdata,"dr",discard,"??_R4ios_base@std@@6B@"
	.globl	"??_R4ios_base@std@@6B@"
	.p2align	4
"??_R4ios_base@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVios_base@std@@@8"@IMGREL
	.long	"??_R3ios_base@std@@8"@IMGREL
	.long	"??_R4ios_base@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"
	.globl	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"
"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@":
	.asciz	"ios_base::badbit set"

	.section	.rdata,"dr",discard,"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"
	.globl	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"
"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@":
	.asciz	"ios_base::failbit set"

	.section	.rdata,"dr",discard,"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"
	.globl	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"
"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@":
	.asciz	"ios_base::eofbit set"

	.section	.data,"dw",discard,"??_R0?AVfailure@ios_base@std@@@8"
	.globl	"??_R0?AVfailure@ios_base@std@@@8"
	.p2align	4
"??_R0?AVfailure@ios_base@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVfailure@ios_base@std@@"
	.zero	5

	.section	.xdata,"dr",discard,"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40"
	.globl	"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40"
	.p2align	4
"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40":
	.long	0
	.long	"??_R0?AVfailure@ios_base@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	40
	.long	"??0failure@ios_base@std@@QEAA@AEBV012@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVsystem_error@std@@@8"
	.globl	"??_R0?AVsystem_error@std@@@8"
	.p2align	4
"??_R0?AVsystem_error@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVsystem_error@std@@"
	.zero	1

	.section	.xdata,"dr",discard,"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40"
	.globl	"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40"
	.p2align	4
"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40":
	.long	0
	.long	"??_R0?AVsystem_error@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	40
	.long	"??0system_error@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV_System_error@std@@@8"
	.globl	"??_R0?AV_System_error@std@@@8"
	.p2align	4
"??_R0?AV_System_error@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV_System_error@std@@"

	.section	.xdata,"dr",discard,"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40"
	.globl	"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40"
	.p2align	4
"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40":
	.long	0
	.long	"??_R0?AV_System_error@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	40
	.long	"??0_System_error@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVruntime_error@std@@@8"
	.globl	"??_R0?AVruntime_error@std@@@8"
	.p2align	4
"??_R0?AVruntime_error@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVruntime_error@std@@"

	.section	.xdata,"dr",discard,"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24"
	.p2align	4
"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24":
	.long	0
	.long	"??_R0?AVruntime_error@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	24
	.long	"??0runtime_error@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.xdata,"dr",discard,"_CTA5?AVfailure@ios_base@std@@"
	.globl	"_CTA5?AVfailure@ios_base@std@@"
	.p2align	4
"_CTA5?AVfailure@ios_base@std@@":
	.long	5
	.long	"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40"@IMGREL
	.long	"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40"@IMGREL
	.long	"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40"@IMGREL
	.long	"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24"@IMGREL
	.long	"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"@IMGREL

	.section	.xdata,"dr",discard,"_TI5?AVfailure@ios_base@std@@"
	.globl	"_TI5?AVfailure@ios_base@std@@"
	.p2align	3
"_TI5?AVfailure@ios_base@std@@":
	.long	0
	.long	"??1exception@std@@UEAA@XZ"@IMGREL
	.long	0
	.long	"_CTA5?AVfailure@ios_base@std@@"@IMGREL

	.section	.data,"dw",discard,"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B"
	.globl	"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B"
	.p2align	3
"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@B":
	.quad	"??_7_Iostream_error_category2@std@@6B@"
	.quad	5

	.section	.rdata,"dr",largest,"??_7_Iostream_error_category2@std@@6B@"
	.p2align	4
.L__unnamed_7:
	.quad	"??_R4_Iostream_error_category2@std@@6B@"
	.quad	"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z"
	.quad	"?name@_Iostream_error_category2@std@@UEBAPEBDXZ"
	.quad	"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"
	.quad	"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z"
	.quad	"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z"
	.quad	"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"

	.section	.rdata,"dr",discard,"??_R4_Iostream_error_category2@std@@6B@"
	.globl	"??_R4_Iostream_error_category2@std@@6B@"
	.p2align	4
"??_R4_Iostream_error_category2@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV_Iostream_error_category2@std@@@8"@IMGREL
	.long	"??_R3_Iostream_error_category2@std@@8"@IMGREL
	.long	"??_R4_Iostream_error_category2@std@@6B@"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV_Iostream_error_category2@std@@@8"
	.globl	"??_R0?AV_Iostream_error_category2@std@@@8"
	.p2align	4
"??_R0?AV_Iostream_error_category2@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV_Iostream_error_category2@std@@"
	.zero	4

	.section	.rdata,"dr",discard,"??_R3_Iostream_error_category2@std@@8"
	.globl	"??_R3_Iostream_error_category2@std@@8"
	.p2align	3
"??_R3_Iostream_error_category2@std@@8":
	.long	0
	.long	0
	.long	2
	.long	"??_R2_Iostream_error_category2@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2_Iostream_error_category2@std@@8"
	.globl	"??_R2_Iostream_error_category2@std@@8"
	.p2align	2
"??_R2_Iostream_error_category2@std@@8":
	.long	"??_R1A@?0A@EA@_Iostream_error_category2@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@error_category@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@_Iostream_error_category2@std@@8"
	.globl	"??_R1A@?0A@EA@_Iostream_error_category2@std@@8"
	.p2align	4
"??_R1A@?0A@EA@_Iostream_error_category2@std@@8":
	.long	"??_R0?AV_Iostream_error_category2@std@@@8"@IMGREL
	.long	1
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3_Iostream_error_category2@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@error_category@std@@8"
	.globl	"??_R1A@?0A@EA@error_category@std@@8"
	.p2align	4
"??_R1A@?0A@EA@error_category@std@@8":
	.long	"??_R0?AVerror_category@std@@@8"@IMGREL
	.long	0
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3error_category@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVerror_category@std@@@8"
	.globl	"??_R0?AVerror_category@std@@@8"
	.p2align	4
"??_R0?AVerror_category@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVerror_category@std@@"
	.zero	7

	.section	.rdata,"dr",discard,"??_R3error_category@std@@8"
	.globl	"??_R3error_category@std@@8"
	.p2align	3
"??_R3error_category@std@@8":
	.long	0
	.long	0
	.long	1
	.long	"??_R2error_category@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2error_category@std@@8"
	.globl	"??_R2error_category@std@@8"
	.p2align	2
"??_R2error_category@std@@8":
	.long	"??_R1A@?0A@EA@error_category@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_C@_08LLGCOLLL@iostream?$AA@"
	.globl	"??_C@_08LLGCOLLL@iostream?$AA@"
"??_C@_08LLGCOLLL@iostream?$AA@":
	.asciz	"iostream"

	.section	.rdata,"dr",discard,"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB"
	.globl	"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB"
	.p2align	4
"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB":
	.asciz	"iostream stream error"

	.section	.rdata,"dr",largest,"??_7failure@ios_base@std@@6B@"
	.p2align	4
.L__unnamed_8:
	.quad	"??_R4failure@ios_base@std@@6B@"
	.quad	"??_Gfailure@ios_base@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4failure@ios_base@std@@6B@"
	.globl	"??_R4failure@ios_base@std@@6B@"
	.p2align	4
"??_R4failure@ios_base@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVfailure@ios_base@std@@@8"@IMGREL
	.long	"??_R3failure@ios_base@std@@8"@IMGREL
	.long	"??_R4failure@ios_base@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_R3failure@ios_base@std@@8"
	.globl	"??_R3failure@ios_base@std@@8"
	.p2align	3
"??_R3failure@ios_base@std@@8":
	.long	0
	.long	0
	.long	5
	.long	"??_R2failure@ios_base@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2failure@ios_base@std@@8"
	.globl	"??_R2failure@ios_base@std@@8"
	.p2align	4
"??_R2failure@ios_base@std@@8":
	.long	"??_R1A@?0A@EA@failure@ios_base@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@system_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_System_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@runtime_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@failure@ios_base@std@@8"
	.globl	"??_R1A@?0A@EA@failure@ios_base@std@@8"
	.p2align	4
"??_R1A@?0A@EA@failure@ios_base@std@@8":
	.long	"??_R0?AVfailure@ios_base@std@@@8"@IMGREL
	.long	4
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3failure@ios_base@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@system_error@std@@8"
	.globl	"??_R1A@?0A@EA@system_error@std@@8"
	.p2align	4
"??_R1A@?0A@EA@system_error@std@@8":
	.long	"??_R0?AVsystem_error@std@@@8"@IMGREL
	.long	3
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3system_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3system_error@std@@8"
	.globl	"??_R3system_error@std@@8"
	.p2align	3
"??_R3system_error@std@@8":
	.long	0
	.long	0
	.long	4
	.long	"??_R2system_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2system_error@std@@8"
	.globl	"??_R2system_error@std@@8"
	.p2align	4
"??_R2system_error@std@@8":
	.long	"??_R1A@?0A@EA@system_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_System_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@runtime_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@_System_error@std@@8"
	.globl	"??_R1A@?0A@EA@_System_error@std@@8"
	.p2align	4
"??_R1A@?0A@EA@_System_error@std@@8":
	.long	"??_R0?AV_System_error@std@@@8"@IMGREL
	.long	2
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3_System_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3_System_error@std@@8"
	.globl	"??_R3_System_error@std@@8"
	.p2align	3
"??_R3_System_error@std@@8":
	.long	0
	.long	0
	.long	3
	.long	"??_R2_System_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2_System_error@std@@8"
	.globl	"??_R2_System_error@std@@8"
	.p2align	2
"??_R2_System_error@std@@8":
	.long	"??_R1A@?0A@EA@_System_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@runtime_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@runtime_error@std@@8"
	.globl	"??_R1A@?0A@EA@runtime_error@std@@8"
	.p2align	4
"??_R1A@?0A@EA@runtime_error@std@@8":
	.long	"??_R0?AVruntime_error@std@@@8"@IMGREL
	.long	1
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3runtime_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3runtime_error@std@@8"
	.globl	"??_R3runtime_error@std@@8"
	.p2align	3
"??_R3runtime_error@std@@8":
	.long	0
	.long	0
	.long	2
	.long	"??_R2runtime_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2runtime_error@std@@8"
	.globl	"??_R2runtime_error@std@@8"
	.p2align	2
"??_R2runtime_error@std@@8":
	.long	"??_R1A@?0A@EA@runtime_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",largest,"??_7system_error@std@@6B@"
	.p2align	4
.L__unnamed_9:
	.quad	"??_R4system_error@std@@6B@"
	.quad	"??_Gsystem_error@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4system_error@std@@6B@"
	.globl	"??_R4system_error@std@@6B@"
	.p2align	4
"??_R4system_error@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVsystem_error@std@@@8"@IMGREL
	.long	"??_R3system_error@std@@8"@IMGREL
	.long	"??_R4system_error@std@@6B@"@IMGREL

	.section	.rdata,"dr",largest,"??_7_System_error@std@@6B@"
	.p2align	4
.L__unnamed_10:
	.quad	"??_R4_System_error@std@@6B@"
	.quad	"??_G_System_error@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4_System_error@std@@6B@"
	.globl	"??_R4_System_error@std@@6B@"
	.p2align	4
"??_R4_System_error@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV_System_error@std@@@8"@IMGREL
	.long	"??_R3_System_error@std@@8"@IMGREL
	.long	"??_R4_System_error@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_02LMMGGCAJ@?3?5?$AA@"
	.globl	"??_C@_02LMMGGCAJ@?3?5?$AA@"
"??_C@_02LMMGGCAJ@?3?5?$AA@":
	.asciz	": "

	.section	.rdata,"dr",largest,"??_7runtime_error@std@@6B@"
	.p2align	4
.L__unnamed_11:
	.quad	"??_R4runtime_error@std@@6B@"
	.quad	"??_Gruntime_error@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4runtime_error@std@@6B@"
	.globl	"??_R4runtime_error@std@@6B@"
	.p2align	4
"??_R4runtime_error@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVruntime_error@std@@@8"@IMGREL
	.long	"??_R3runtime_error@std@@8"@IMGREL
	.long	"??_R4runtime_error@std@@6B@"@IMGREL

	.section	.bss,"bw",discard,"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB"
	.globl	"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB"
	.p2align	3
"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB":
	.quad	0

	.section	.rdata,"dr",largest,"??_7?$ctype@D@std@@6B@"
	.p2align	4
.L__unnamed_12:
	.quad	"??_R4?$ctype@D@std@@6B@"
	.quad	"??_G?$ctype@D@std@@MEAAPEAXI@Z"
	.quad	"?_Incref@facet@locale@std@@UEAAXXZ"
	.quad	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"
	.quad	"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	.quad	"?do_tolower@?$ctype@D@std@@MEBADD@Z"
	.quad	"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	.quad	"?do_toupper@?$ctype@D@std@@MEBADD@Z"
	.quad	"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z"
	.quad	"?do_widen@?$ctype@D@std@@MEBADD@Z"
	.quad	"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z"
	.quad	"?do_narrow@?$ctype@D@std@@MEBADDD@Z"

	.section	.rdata,"dr",discard,"??_R4?$ctype@D@std@@6B@"
	.globl	"??_R4?$ctype@D@std@@6B@"
	.p2align	4
"??_R4?$ctype@D@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV?$ctype@D@std@@@8"@IMGREL
	.long	"??_R3?$ctype@D@std@@8"@IMGREL
	.long	"??_R4?$ctype@D@std@@6B@"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV?$ctype@D@std@@@8"
	.globl	"??_R0?AV?$ctype@D@std@@@8"
	.p2align	4
"??_R0?AV?$ctype@D@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV?$ctype@D@std@@"
	.zero	4

	.section	.rdata,"dr",discard,"??_R3?$ctype@D@std@@8"
	.globl	"??_R3?$ctype@D@std@@8"
	.p2align	3
"??_R3?$ctype@D@std@@8":
	.long	0
	.long	1
	.long	5
	.long	"??_R2?$ctype@D@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2?$ctype@D@std@@8"
	.globl	"??_R2?$ctype@D@std@@8"
	.p2align	4
"??_R2?$ctype@D@std@@8":
	.long	"??_R1A@?0A@EA@?$ctype@D@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@ctype_base@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@facet@locale@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@?$ctype@D@std@@8"
	.globl	"??_R1A@?0A@EA@?$ctype@D@std@@8"
	.p2align	4
"??_R1A@?0A@EA@?$ctype@D@std@@8":
	.long	"??_R0?AV?$ctype@D@std@@@8"@IMGREL
	.long	4
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3?$ctype@D@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@ctype_base@std@@8"
	.globl	"??_R1A@?0A@EA@ctype_base@std@@8"
	.p2align	4
"??_R1A@?0A@EA@ctype_base@std@@8":
	.long	"??_R0?AUctype_base@std@@@8"@IMGREL
	.long	3
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3ctype_base@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AUctype_base@std@@@8"
	.globl	"??_R0?AUctype_base@std@@@8"
	.p2align	4
"??_R0?AUctype_base@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AUctype_base@std@@"
	.zero	3

	.section	.rdata,"dr",discard,"??_R3ctype_base@std@@8"
	.globl	"??_R3ctype_base@std@@8"
	.p2align	3
"??_R3ctype_base@std@@8":
	.long	0
	.long	1
	.long	4
	.long	"??_R2ctype_base@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2ctype_base@std@@8"
	.globl	"??_R2ctype_base@std@@8"
	.p2align	4
"??_R2ctype_base@std@@8":
	.long	"??_R1A@?0A@EA@ctype_base@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@facet@locale@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@facet@locale@std@@8"
	.globl	"??_R1A@?0A@EA@facet@locale@std@@8"
	.p2align	4
"??_R1A@?0A@EA@facet@locale@std@@8":
	.long	"??_R0?AVfacet@locale@std@@@8"@IMGREL
	.long	2
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3facet@locale@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVfacet@locale@std@@@8"
	.globl	"??_R0?AVfacet@locale@std@@@8"
	.p2align	4
"??_R0?AVfacet@locale@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVfacet@locale@std@@"
	.zero	1

	.section	.rdata,"dr",discard,"??_R3facet@locale@std@@8"
	.globl	"??_R3facet@locale@std@@8"
	.p2align	3
"??_R3facet@locale@std@@8":
	.long	0
	.long	1
	.long	3
	.long	"??_R2facet@locale@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2facet@locale@std@@8"
	.globl	"??_R2facet@locale@std@@8"
	.p2align	2
"??_R2facet@locale@std@@8":
	.long	"??_R1A@?0A@EA@facet@locale@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@_Facet_base@std@@8"
	.globl	"??_R1A@?0A@EA@_Facet_base@std@@8"
	.p2align	4
"??_R1A@?0A@EA@_Facet_base@std@@8":
	.long	"??_R0?AV_Facet_base@std@@@8"@IMGREL
	.long	0
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3_Facet_base@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV_Facet_base@std@@@8"
	.globl	"??_R0?AV_Facet_base@std@@@8"
	.p2align	4
"??_R0?AV_Facet_base@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV_Facet_base@std@@"
	.zero	2

	.section	.rdata,"dr",discard,"??_R3_Facet_base@std@@8"
	.globl	"??_R3_Facet_base@std@@8"
	.p2align	3
"??_R3_Facet_base@std@@8":
	.long	0
	.long	0
	.long	1
	.long	"??_R2_Facet_base@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2_Facet_base@std@@8"
	.globl	"??_R2_Facet_base@std@@8"
	.p2align	2
"??_R2_Facet_base@std@@8":
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R17?0A@EA@_Crt_new_delete@std@@8"
	.globl	"??_R17?0A@EA@_Crt_new_delete@std@@8"
	.p2align	4
"??_R17?0A@EA@_Crt_new_delete@std@@8":
	.long	"??_R0?AU_Crt_new_delete@std@@@8"@IMGREL
	.long	0
	.long	8
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3_Crt_new_delete@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AU_Crt_new_delete@std@@@8"
	.globl	"??_R0?AU_Crt_new_delete@std@@@8"
	.p2align	4
"??_R0?AU_Crt_new_delete@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AU_Crt_new_delete@std@@"
	.zero	6

	.section	.rdata,"dr",discard,"??_R3_Crt_new_delete@std@@8"
	.globl	"??_R3_Crt_new_delete@std@@8"
	.p2align	3
"??_R3_Crt_new_delete@std@@8":
	.long	0
	.long	0
	.long	1
	.long	"??_R2_Crt_new_delete@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2_Crt_new_delete@std@@8"
	.globl	"??_R2_Crt_new_delete@std@@8"
	.p2align	2
"??_R2_Crt_new_delete@std@@8":
	.long	"??_R1A@?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@_Crt_new_delete@std@@8"
	.globl	"??_R1A@?0A@EA@_Crt_new_delete@std@@8"
	.p2align	4
"??_R1A@?0A@EA@_Crt_new_delete@std@@8":
	.long	"??_R0?AU_Crt_new_delete@std@@@8"@IMGREL
	.long	0
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3_Crt_new_delete@std@@8"@IMGREL

	.section	.rdata,"dr",largest,"??_7ctype_base@std@@6B@"
	.p2align	4
.L__unnamed_13:
	.quad	"??_R4ctype_base@std@@6B@"
	.quad	"??_Gctype_base@std@@UEAAPEAXI@Z"
	.quad	"?_Incref@facet@locale@std@@UEAAXXZ"
	.quad	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"

	.section	.rdata,"dr",discard,"??_R4ctype_base@std@@6B@"
	.globl	"??_R4ctype_base@std@@6B@"
	.p2align	4
"??_R4ctype_base@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AUctype_base@std@@@8"@IMGREL
	.long	"??_R3ctype_base@std@@8"@IMGREL
	.long	"??_R4ctype_base@std@@6B@"@IMGREL

	.section	.rdata,"dr",largest,"??_7facet@locale@std@@6B@"
	.p2align	4
.L__unnamed_14:
	.quad	"??_R4facet@locale@std@@6B@"
	.quad	"??_Gfacet@locale@std@@MEAAPEAXI@Z"
	.quad	"?_Incref@facet@locale@std@@UEAAXXZ"
	.quad	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"

	.section	.rdata,"dr",discard,"??_R4facet@locale@std@@6B@"
	.globl	"??_R4facet@locale@std@@6B@"
	.p2align	4
"??_R4facet@locale@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVfacet@locale@std@@@8"@IMGREL
	.long	"??_R3facet@locale@std@@8"@IMGREL
	.long	"??_R4facet@locale@std@@6B@"@IMGREL

	.section	.rdata,"dr",largest,"??_7_Facet_base@std@@6B@"
	.p2align	4
.L__unnamed_15:
	.quad	"??_R4_Facet_base@std@@6B@"
	.quad	"??_G_Facet_base@std@@UEAAPEAXI@Z"
	.quad	_purecall
	.quad	_purecall

	.section	.rdata,"dr",discard,"??_R4_Facet_base@std@@6B@"
	.globl	"??_R4_Facet_base@std@@6B@"
	.p2align	4
"??_R4_Facet_base@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV_Facet_base@std@@@8"@IMGREL
	.long	"??_R3_Facet_base@std@@8"@IMGREL
	.long	"??_R4_Facet_base@std@@6B@"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVbad_cast@std@@@8"
	.globl	"??_R0?AVbad_cast@std@@@8"
	.p2align	4
"??_R0?AVbad_cast@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVbad_cast@std@@"
	.zero	5

	.section	.rdata,"dr",largest,"??_7bad_cast@std@@6B@"
	.p2align	4
.L__unnamed_16:
	.quad	"??_R4bad_cast@std@@6B@"
	.quad	"??_Gbad_cast@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4bad_cast@std@@6B@"
	.globl	"??_R4bad_cast@std@@6B@"
	.p2align	4
"??_R4bad_cast@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVbad_cast@std@@@8"@IMGREL
	.long	"??_R3bad_cast@std@@8"@IMGREL
	.long	"??_R4bad_cast@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_R3bad_cast@std@@8"
	.globl	"??_R3bad_cast@std@@8"
	.p2align	3
"??_R3bad_cast@std@@8":
	.long	0
	.long	0
	.long	2
	.long	"??_R2bad_cast@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2bad_cast@std@@8"
	.globl	"??_R2bad_cast@std@@8"
	.p2align	2
"??_R2bad_cast@std@@8":
	.long	"??_R1A@?0A@EA@bad_cast@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@bad_cast@std@@8"
	.globl	"??_R1A@?0A@EA@bad_cast@std@@8"
	.p2align	4
"??_R1A@?0A@EA@bad_cast@std@@8":
	.long	"??_R0?AVbad_cast@std@@@8"@IMGREL
	.long	1
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3bad_cast@std@@8"@IMGREL

	.section	.bss,"bw",discard,"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB"
	.globl	"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB"
	.p2align	3
"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB":
	.quad	0

	.section	.bss,"bw",discard,"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"
	.globl	"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"
	.p2align	3
"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A":
	.zero	8

	.section	.rdata,"dr",largest,"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"
	.p2align	4
.L__unnamed_17:
	.quad	"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"
	.quad	"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z"
	.quad	"?_Incref@facet@locale@std@@UEAAXXZ"
	.quad	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z"

	.section	.rdata,"dr",discard,"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"
	.globl	"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"
	.p2align	4
"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8"@IMGREL
	.long	"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"@IMGREL
	.long	"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8"
	.globl	"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8"
	.p2align	4
"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@"
	.zero	6

	.section	.rdata,"dr",discard,"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.globl	"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.p2align	3
"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8":
	.long	0
	.long	1
	.long	4
	.long	"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.globl	"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.p2align	4
"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8":
	.long	"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@facet@locale@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.globl	"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.p2align	4
"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8":
	.long	"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8"@IMGREL
	.long	3
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_02BBAHNLBA@?$CFp?$AA@"
	.globl	"??_C@_02BBAHNLBA@?$CFp?$AA@"
"??_C@_02BBAHNLBA@?$CFp?$AA@":
	.asciz	"%p"

	.section	.bss,"bw",discard,"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB"
	.globl	"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB"
	.p2align	3
"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB":
	.quad	0

	.section	.bss,"bw",discard,"?id@?$numpunct@D@std@@2V0locale@2@A"
	.globl	"?id@?$numpunct@D@std@@2V0locale@2@A"
	.p2align	3
"?id@?$numpunct@D@std@@2V0locale@2@A":
	.zero	8

	.section	.rdata,"dr",largest,"??_7?$numpunct@D@std@@6B@"
	.p2align	4
.L__unnamed_18:
	.quad	"??_R4?$numpunct@D@std@@6B@"
	.quad	"??_G?$numpunct@D@std@@MEAAPEAXI@Z"
	.quad	"?_Incref@facet@locale@std@@UEAAXXZ"
	.quad	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"
	.quad	"?do_decimal_point@?$numpunct@D@std@@MEBADXZ"
	.quad	"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ"
	.quad	"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.quad	"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.quad	"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"

	.section	.rdata,"dr",discard,"??_R4?$numpunct@D@std@@6B@"
	.globl	"??_R4?$numpunct@D@std@@6B@"
	.p2align	4
"??_R4?$numpunct@D@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV?$numpunct@D@std@@@8"@IMGREL
	.long	"??_R3?$numpunct@D@std@@8"@IMGREL
	.long	"??_R4?$numpunct@D@std@@6B@"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV?$numpunct@D@std@@@8"
	.globl	"??_R0?AV?$numpunct@D@std@@@8"
	.p2align	4
"??_R0?AV?$numpunct@D@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV?$numpunct@D@std@@"
	.zero	1

	.section	.rdata,"dr",discard,"??_R3?$numpunct@D@std@@8"
	.globl	"??_R3?$numpunct@D@std@@8"
	.p2align	3
"??_R3?$numpunct@D@std@@8":
	.long	0
	.long	1
	.long	4
	.long	"??_R2?$numpunct@D@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2?$numpunct@D@std@@8"
	.globl	"??_R2?$numpunct@D@std@@8"
	.p2align	4
"??_R2?$numpunct@D@std@@8":
	.long	"??_R1A@?0A@EA@?$numpunct@D@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@facet@locale@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@?$numpunct@D@std@@8"
	.globl	"??_R1A@?0A@EA@?$numpunct@D@std@@8"
	.p2align	4
"??_R1A@?0A@EA@?$numpunct@D@std@@8":
	.long	"??_R0?AV?$numpunct@D@std@@@8"@IMGREL
	.long	3
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3?$numpunct@D@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@"
	.globl	"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@"
"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@":
	.asciz	"invalid string position"

	.section	.rdata,"dr",discard,"??_C@_02MDKMJEGG@eE?$AA@"
	.globl	"??_C@_02MDKMJEGG@eE?$AA@"
"??_C@_02MDKMJEGG@eE?$AA@":
	.asciz	"eE"

	.section	.rdata,"dr",discard,"??_C@_02OOPEBDOJ@pP?$AA@"
	.globl	"??_C@_02OOPEBDOJ@pP?$AA@"
"??_C@_02OOPEBDOJ@pP?$AA@":
	.asciz	"pP"

	.section	.CRT$XCU,"dr",associative,"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"
	.p2align	3
	.quad	"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ"
	.section	.CRT$XCU,"dr",associative,"?id@?$numpunct@D@std@@2V0locale@2@A"
	.p2align	3
	.quad	"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ"
	.section	.drectve,"yn"
	.ascii	" /DEFAULTLIB:libcmt.lib"
	.ascii	" /DEFAULTLIB:libircmt.lib"
	.ascii	" /DEFAULTLIB:svml_dispmt.lib"
	.ascii	" /DEFAULTLIB:libdecimal.lib"
	.ascii	" /DEFAULTLIB:libmmt.lib"
	.ascii	" /DEFAULTLIB:oldnames.lib"
	.ascii	" /DEFAULTLIB:libiomp5md.lib"
	.ascii	" /FAILIFMISMATCH:\"_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\""
	.ascii	" /FAILIFMISMATCH:\"_MSC_VER=1900\""
	.ascii	" /FAILIFMISMATCH:\"_ITERATOR_DEBUG_LEVEL=0\""
	.ascii	" /FAILIFMISMATCH:\"RuntimeLibrary=MT_StaticRelease\""
	.ascii	" /DEFAULTLIB:libcpmt.lib"
	.ascii	" /FAILIFMISMATCH:\"annotate_vector=0\""
	.ascii	" /INCLUDE:\"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A\""
	.ascii	" /INCLUDE:\"?id@?$numpunct@D@std@@2V0locale@2@A\""
	.globl	"??_7bad_array_new_length@std@@6B@"
.set "??_7bad_array_new_length@std@@6B@", .L__unnamed_1+8
	.globl	"??_7bad_alloc@std@@6B@"
.set "??_7bad_alloc@std@@6B@", .L__unnamed_2+8
	.globl	"??_7exception@std@@6B@"
.set "??_7exception@std@@6B@", .L__unnamed_3+8
	.globl	"??_7?$basic_ostream@DU?$char_traits@D@std@@@std@@6B@"
.set "??_7?$basic_ostream@DU?$char_traits@D@std@@@std@@6B@", .L__unnamed_4+8
	.globl	"??_7?$basic_ios@DU?$char_traits@D@std@@@std@@6B@"
.set "??_7?$basic_ios@DU?$char_traits@D@std@@@std@@6B@", .L__unnamed_5+8
	.globl	"??_7ios_base@std@@6B@"
.set "??_7ios_base@std@@6B@", .L__unnamed_6+8
	.globl	"??_7_Iostream_error_category2@std@@6B@"
.set "??_7_Iostream_error_category2@std@@6B@", .L__unnamed_7+8
	.globl	"??_7failure@ios_base@std@@6B@"
.set "??_7failure@ios_base@std@@6B@", .L__unnamed_8+8
	.globl	"??_7system_error@std@@6B@"
.set "??_7system_error@std@@6B@", .L__unnamed_9+8
	.globl	"??_7_System_error@std@@6B@"
.set "??_7_System_error@std@@6B@", .L__unnamed_10+8
	.globl	"??_7runtime_error@std@@6B@"
.set "??_7runtime_error@std@@6B@", .L__unnamed_11+8
	.globl	"??_7?$ctype@D@std@@6B@"
.set "??_7?$ctype@D@std@@6B@", .L__unnamed_12+8
	.globl	"??_7ctype_base@std@@6B@"
.set "??_7ctype_base@std@@6B@", .L__unnamed_13+8
	.globl	"??_7facet@locale@std@@6B@"
.set "??_7facet@locale@std@@6B@", .L__unnamed_14+8
	.globl	"??_7_Facet_base@std@@6B@"
.set "??_7_Facet_base@std@@6B@", .L__unnamed_15+8
	.globl	"??_7bad_cast@std@@6B@"
.set "??_7bad_cast@std@@6B@", .L__unnamed_16+8
	.globl	"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"
.set "??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@", .L__unnamed_17+8
	.globl	"??_7?$numpunct@D@std@@6B@"
.set "??_7?$numpunct@D@std@@6B@", .L__unnamed_18+8
	.globl	_fltused
