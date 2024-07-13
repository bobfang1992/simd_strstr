	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.globl	__Z8rand_intv                   ; -- Begin function _Z8rand_intv
	.p2align	2
__Z8rand_intv:                          ; @_Z8rand_intv
	.cfi_startproc
; %bb.0:
	adrp	x8, __ZZ8rand_intvE1i@PAGE
	ldrsw	x9, [x8, __ZZ8rand_intvE1i@PAGEOFF]
	add	w10, w9, #1
	str	w10, [x8, __ZZ8rand_intvE1i@PAGEOFF]
	mov	w8, #26215                      ; =0x6667
	movk	w8, #26214, lsl #16
	smull	x8, w9, w8
	lsr	x10, x8, #63
	lsr	x8, x8, #34
	add	w8, w8, w10
	mov	w10, #10                        ; =0xa
	msub	w8, w8, w10, w9
	sxtb	w0, w8
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z21create_array_for_testv     ; -- Begin function _Z21create_array_for_testv
	.p2align	2
__Z21create_array_for_testv:            ; @_Z21create_array_for_testv
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x8
	stp	xzr, xzr, [x8]
	str	xzr, [x8, #16]
	mov	w20, #1073741824                ; =0x40000000
	mov	w0, #1073741824                 ; =0x40000000
	bl	__Znwm
	mov	x21, x0
	mov	x24, #0                         ; =0x0
	add	x8, x0, x20
	adrp	x25, __ZZ8rand_intvE1i@PAGE
	stp	x0, x0, [x19]
	str	x8, [x19, #16]
	mov	w26, #26215                     ; =0x6667
	movk	w26, #26214, lsl #16
	mov	w27, #10                        ; =0xa
	b	LBB1_2
LBB1_1:                                 ;   in Loop: Header=BB1_2 Depth=1
	strb	w23, [x21], #1
	mov	x22, x21
	str	x21, [x19, #8]
	add	x24, x24, #1
	cmp	x24, x20
	b.eq	LBB1_29
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_22 Depth 2
                                        ;     Child Loop BB1_26 Depth 2
                                        ;     Child Loop BB1_10 Depth 2
	ldrsw	x8, [x25, __ZZ8rand_intvE1i@PAGEOFF]
	add	w9, w8, #1
	str	w9, [x25, __ZZ8rand_intvE1i@PAGEOFF]
	smull	x9, w8, w26
	lsr	x10, x9, #63
	asr	x9, x9, #34
	add	w9, w9, w10
	msub	w23, w9, w27, w8
	ldr	x8, [x19, #16]
	cmp	x21, x8
	b.lo	LBB1_1
; %bb.3:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	x20, [x19]
	sub	x28, x21, x20
	adds	x9, x28, #1
	b.mi	LBB1_30
; %bb.4:                                ;   in Loop: Header=BB1_2 Depth=1
	sub	x8, x8, x20
	lsl	x10, x8, #1
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	x10, #4611686018427387903       ; =0x3fffffffffffffff
	cmp	x8, x10
	mov	x8, #9223372036854775807        ; =0x7fffffffffffffff
	csel	x22, x9, x8, lo
	cbz	x22, LBB1_13
; %bb.5:                                ;   in Loop: Header=BB1_2 Depth=1
Ltmp0:
	mov	x0, x22
	bl	__Znwm
Ltmp1:
; %bb.6:                                ;   in Loop: Header=BB1_2 Depth=1
	add	x9, x0, x28
	add	x8, x0, x22
	mov	x22, x9
	strb	w23, [x22], #1
	cmp	x21, x20
	b.eq	LBB1_14
LBB1_7:                                 ;   in Loop: Header=BB1_2 Depth=1
	cmp	x28, #8
	b.hs	LBB1_16
LBB1_8:                                 ;   in Loop: Header=BB1_2 Depth=1
	mov	x10, x21
LBB1_9:                                 ;   in Loop: Header=BB1_2 Depth=1
	sub	x9, x9, #1
LBB1_10:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x10, #-1]!
	strb	w11, [x9], #-1
	cmp	x10, x20
	b.ne	LBB1_10
LBB1_11:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	x21, [x19]
	stp	x0, x22, [x19]
	str	x8, [x19, #16]
	cbnz	x21, LBB1_15
; %bb.12:                               ;   in Loop: Header=BB1_2 Depth=1
	mov	w20, #1073741824                ; =0x40000000
	str	x22, [x19, #8]
	add	x24, x24, #1
	mov	x21, x22
	cmp	x24, x20
	b.ne	LBB1_2
	b	LBB1_29
LBB1_13:                                ;   in Loop: Header=BB1_2 Depth=1
	mov	x0, #0                          ; =0x0
	add	x9, x0, x28
	add	x8, x0, x22
	mov	x22, x9
	strb	w23, [x22], #1
	cmp	x21, x20
	b.ne	LBB1_7
LBB1_14:                                ;   in Loop: Header=BB1_2 Depth=1
	stp	x9, x22, [x19]
	str	x8, [x19, #16]
LBB1_15:                                ;   in Loop: Header=BB1_2 Depth=1
	mov	x0, x21
	bl	__ZdlPv
	mov	w20, #1073741824                ; =0x40000000
	str	x22, [x19, #8]
	add	x24, x24, #1
	mov	x21, x22
	cmp	x24, x20
	b.ne	LBB1_2
	b	LBB1_29
LBB1_16:                                ;   in Loop: Header=BB1_2 Depth=1
	sub	x10, x20, x21
	add	x10, x10, #1
	add	x11, x0, x28
	sub	x11, x11, #1
	add	x12, x11, x10
	cmp	x12, x11
	b.hi	LBB1_8
; %bb.17:                               ;   in Loop: Header=BB1_2 Depth=1
	sub	x11, x21, #1
	add	x10, x11, x10
	cmp	x10, x11
	b.hi	LBB1_8
; %bb.18:                               ;   in Loop: Header=BB1_2 Depth=1
	sub	x10, x20, x0
	cmp	x10, #64
	b.lo	LBB1_8
; %bb.19:                               ;   in Loop: Header=BB1_2 Depth=1
	cmp	x28, #64
	b.hs	LBB1_21
; %bb.20:                               ;   in Loop: Header=BB1_2 Depth=1
	mov	x11, #0                         ; =0x0
	b	LBB1_25
LBB1_21:                                ;   in Loop: Header=BB1_2 Depth=1
	and	x11, x28, #0xffffffffffffffc0
	sub	x10, x21, #32
	add	x12, x0, x28
	sub	x12, x12, #32
	mov	x13, x11
LBB1_22:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q1, q0, [x10]
	ldp	q3, q2, [x10, #-32]
	stp	q1, q0, [x12]
	stp	q3, q2, [x12, #-32]
	sub	x10, x10, #64
	sub	x12, x12, #64
	sub	x13, x13, #64
	cbnz	x13, LBB1_22
; %bb.23:                               ;   in Loop: Header=BB1_2 Depth=1
	cmp	x28, x11
	b.eq	LBB1_11
; %bb.24:                               ;   in Loop: Header=BB1_2 Depth=1
	tst	x28, #0x38
	b.eq	LBB1_28
LBB1_25:                                ;   in Loop: Header=BB1_2 Depth=1
	and	x12, x28, #0xfffffffffffffff8
	sub	x10, x21, x12
	sub	x9, x9, x12
	sub	x14, x21, x11
	sub	x13, x14, x20
	add	x13, x0, x13
	sub	x13, x13, #8
	sub	x14, x14, #8
	sub	x11, x11, x12
LBB1_26:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d0, [x14], #-8
	str	d0, [x13], #-8
	adds	x11, x11, #8
	b.ne	LBB1_26
; %bb.27:                               ;   in Loop: Header=BB1_2 Depth=1
	cmp	x28, x12
	b.ne	LBB1_9
	b	LBB1_11
LBB1_28:                                ;   in Loop: Header=BB1_2 Depth=1
	sub	x9, x9, x11
	sub	x10, x21, x11
	b	LBB1_9
LBB1_29:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB1_30:
Ltmp3:
	mov	x0, x19
	bl	__ZNKSt3__16vectorIaNS_9allocatorIaEEE20__throw_length_errorB8ne180100Ev
Ltmp4:
; %bb.31:
	brk	#0x1
LBB1_32:
Ltmp2:
	mov	x21, x0
	b	LBB1_34
LBB1_33:
Ltmp5:
	mov	x21, x0
	ldr	x20, [x19]
LBB1_34:
	cbz	x20, LBB1_36
; %bb.35:
	str	x20, [x19, #8]
	mov	x0, x20
	bl	__ZdlPv
LBB1_36:
	mov	x0, x21
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Lfunc_end0-Ltmp4               ;   Call between Ltmp4 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z14sum_sequentialRKNSt3__16vectorIaNS_9allocatorIaEEEE ; -- Begin function _Z14sum_sequentialRKNSt3__16vectorIaNS_9allocatorIaEEEE
	.p2align	2
__Z14sum_sequentialRKNSt3__16vectorIaNS_9allocatorIaEEEE: ; @_Z14sum_sequentialRKNSt3__16vectorIaNS_9allocatorIaEEEE
	.cfi_startproc
; %bb.0:
	movi.2d	v0, #0000000000000000
	movi.2d	v4, #0000000000000000
	ldr	x8, [x0]
	movi.2d	v1, #0000000000000000
	add	x8, x8, #32
	movi.2d	v5, #0000000000000000
	mov	w9, #1073741824                 ; =0x40000000
	movi.2d	v6, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v21, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v19, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v20, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v22, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v23, #0000000000000000
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q24, q25, [x8, #-32]
	sshll.8h	v26, v24, #0
	sshll2.8h	v24, v24, #0
	sshll.8h	v27, v25, #0
	sshll2.8h	v25, v25, #0
	ldp	q28, q29, [x8], #64
	sshll.8h	v30, v28, #0
	sshll2.8h	v28, v28, #0
	sshll.8h	v31, v29, #0
	sshll2.8h	v29, v29, #0
	saddw2.4s	v5, v5, v24
	saddw.4s	v1, v1, v24
	saddw2.4s	v4, v4, v26
	saddw.4s	v0, v0, v26
	saddw2.4s	v21, v21, v25
	saddw.4s	v7, v7, v25
	saddw2.4s	v18, v18, v27
	saddw.4s	v6, v6, v27
	saddw2.4s	v20, v20, v28
	saddw.4s	v3, v3, v28
	saddw2.4s	v19, v19, v30
	saddw.4s	v2, v2, v30
	saddw2.4s	v23, v23, v29
	saddw.4s	v17, v17, v29
	saddw2.4s	v22, v22, v31
	saddw.4s	v16, v16, v31
	subs	x9, x9, #64
	b.ne	LBB2_1
; %bb.2:
	add.4s	v4, v18, v4
	add.4s	v5, v21, v5
	add.4s	v0, v6, v0
	add.4s	v1, v7, v1
	add.4s	v6, v22, v19
	add.4s	v4, v6, v4
	add.4s	v6, v23, v20
	add.4s	v5, v6, v5
	add.4s	v2, v16, v2
	add.4s	v0, v2, v0
	add.4s	v2, v17, v3
	add.4s	v1, v2, v1
	add.4s	v0, v0, v1
	add.4s	v1, v4, v5
	add.4s	v0, v0, v1
	addv.4s	s0, v0
	fmov	w0, s0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z7std_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE ; -- Begin function _Z7std_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE
	.p2align	2
__Z7std_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE: ; @_Z7std_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE
	.cfi_startproc
; %bb.0:
	ldp	x10, x8, [x0]
	cmp	x10, x8
	b.eq	LBB3_3
; %bb.1:
	sub	x9, x8, x10
	cmp	x9, #8
	b.hs	LBB3_4
; %bb.2:
	mov	w0, #0                          ; =0x0
	mov	x12, x10
	b	LBB3_14
LBB3_3:
	mov	w0, #0                          ; =0x0
	ret
LBB3_4:
	cmp	x9, #64
	b.hs	LBB3_6
; %bb.5:
	mov	w0, #0                          ; =0x0
	mov	x11, #0                         ; =0x0
	b	LBB3_10
LBB3_6:
	movi.2d	v0, #0000000000000000
	and	x11, x9, #0xffffffffffffffc0
	movi.2d	v4, #0000000000000000
	add	x12, x10, #32
	movi.2d	v1, #0000000000000000
	mov	x13, x11
	movi.2d	v5, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v21, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v19, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v20, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v22, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v23, #0000000000000000
LBB3_7:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q24, q25, [x12, #-32]
	sshll.8h	v26, v24, #0
	sshll2.8h	v24, v24, #0
	sshll.8h	v27, v25, #0
	sshll2.8h	v25, v25, #0
	ldp	q28, q29, [x12], #64
	sshll.8h	v30, v28, #0
	sshll2.8h	v28, v28, #0
	sshll.8h	v31, v29, #0
	sshll2.8h	v29, v29, #0
	saddw2.4s	v5, v5, v24
	saddw.4s	v1, v1, v24
	saddw2.4s	v4, v4, v26
	saddw.4s	v0, v0, v26
	saddw2.4s	v21, v21, v25
	saddw.4s	v7, v7, v25
	saddw2.4s	v18, v18, v27
	saddw.4s	v6, v6, v27
	saddw2.4s	v20, v20, v28
	saddw.4s	v3, v3, v28
	saddw2.4s	v19, v19, v30
	saddw.4s	v2, v2, v30
	saddw2.4s	v23, v23, v29
	saddw.4s	v17, v17, v29
	saddw2.4s	v22, v22, v31
	saddw.4s	v16, v16, v31
	subs	x13, x13, #64
	b.ne	LBB3_7
; %bb.8:
	add.4s	v4, v18, v4
	add.4s	v5, v21, v5
	add.4s	v0, v6, v0
	add.4s	v1, v7, v1
	add.4s	v6, v22, v19
	add.4s	v4, v6, v4
	add.4s	v6, v23, v20
	add.4s	v5, v6, v5
	add.4s	v2, v16, v2
	add.4s	v0, v2, v0
	add.4s	v2, v17, v3
	add.4s	v1, v2, v1
	add.4s	v0, v0, v1
	add.4s	v1, v4, v5
	add.4s	v0, v0, v1
	addv.4s	s0, v0
	fmov	w0, s0
	cmp	x9, x11
	b.eq	LBB3_15
; %bb.9:
	tst	x9, #0x38
	b.eq	LBB3_13
LBB3_10:
	and	x13, x9, #0xfffffffffffffff8
	add	x12, x10, x13
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	mov.s	v1[0], w0
	add	x10, x10, x11
	sub	x11, x11, x13
LBB3_11:                                ; =>This Inner Loop Header: Depth=1
	ldr	d2, [x10], #8
	sshll.8h	v2, v2, #0
	saddw2.4s	v0, v0, v2
	saddw.4s	v1, v1, v2
	adds	x11, x11, #8
	b.ne	LBB3_11
; %bb.12:
	add.4s	v0, v1, v0
	addv.4s	s0, v0
	fmov	w0, s0
	cmp	x9, x13
	b.ne	LBB3_14
	b	LBB3_15
LBB3_13:
	add	x12, x10, x11
LBB3_14:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w9, [x12], #1
	add	w0, w0, w9
	cmp	x12, x8
	b.ne	LBB3_14
LBB3_15:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z17arm_neon_simd_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE ; -- Begin function _Z17arm_neon_simd_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE
	.p2align	2
__Z17arm_neon_simd_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE: ; @_Z17arm_neon_simd_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE
	.cfi_startproc
; %bb.0:
	ldp	x8, x10, [x0]
	cmp	x8, x10
	b.eq	LBB4_5
; %bb.1:
	sub	x9, x10, x8
	cmp	x9, #16
	b.lo	LBB4_6
; %bb.2:
	mov	x12, #0                         ; =0x0
	movi.2d	v0, #0000000000000000
LBB4_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	q1, [x8, x12]
	sshll.8h	v2, v1, #0
	sshll2.8h	v1, v1, #0
	sadalp.4s	v0, v2
	sadalp.4s	v0, v1
	add	x11, x12, #16
	add	x13, x12, #31
	mov	x12, x11
	cmp	x13, x9
	b.lo	LBB4_3
; %bb.4:
	addv.4s	s2, v0
	fmov	w0, s2
	cmp	x11, x9
	b.lo	LBB4_7
	b	LBB4_20
LBB4_5:
	mov	w0, #0                          ; =0x0
	ret
LBB4_6:
	mov	x11, #0                         ; =0x0
	movi.2d	v0, #0000000000000000
	addv.4s	s2, v0
	fmov	w0, s2
	cmp	x11, x9
	b.hs	LBB4_20
LBB4_7:
	sub	x10, x10, x11
	sub	x10, x10, x8
	cmp	x10, #8
	b.hs	LBB4_9
; %bb.8:
	mov	x13, x11
	b	LBB4_19
LBB4_9:
	cmp	x10, #32
	b.hs	LBB4_11
; %bb.10:
	mov	x12, #0                         ; =0x0
	b	LBB4_15
LBB4_11:
	and	x12, x10, #0xffffffffffffffe0
	movi.2d	v1, #0000000000000000
	movi.2d	v0, #0000000000000000
	mov.s	v0[0], v2[0]
	add	x13, x11, x8
	add	x13, x13, #16
	mov	x14, x12
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
LBB4_12:                                ; =>This Inner Loop Header: Depth=1
	ldp	q16, q17, [x13, #-16]
	sshll.8h	v18, v16, #0
	sshll2.8h	v16, v16, #0
	sshll.8h	v19, v17, #0
	sshll2.8h	v17, v17, #0
	saddw2.4s	v3, v3, v16
	saddw.4s	v2, v2, v16
	saddw2.4s	v1, v1, v18
	saddw.4s	v0, v0, v18
	saddw2.4s	v7, v7, v17
	saddw.4s	v5, v5, v17
	saddw2.4s	v6, v6, v19
	saddw.4s	v4, v4, v19
	add	x13, x13, #32
	subs	x14, x14, #32
	b.ne	LBB4_12
; %bb.13:
	add.4s	v1, v6, v1
	add.4s	v3, v7, v3
	add.4s	v0, v4, v0
	add.4s	v2, v5, v2
	add.4s	v0, v0, v2
	add.4s	v1, v1, v3
	add.4s	v0, v0, v1
	addv.4s	s0, v0
	fmov	w0, s0
	cmp	x10, x12
	b.eq	LBB4_20
; %bb.14:
	tst	x10, #0x18
	b.eq	LBB4_18
LBB4_15:
	and	x14, x10, #0xfffffffffffffff8
	add	x13, x11, x14
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	mov.s	v1[0], w0
	sub	x15, x12, x14
	add	x11, x8, x11
	add	x11, x11, x12
LBB4_16:                                ; =>This Inner Loop Header: Depth=1
	ldr	d2, [x11], #8
	sshll.8h	v2, v2, #0
	saddw2.4s	v0, v0, v2
	saddw.4s	v1, v1, v2
	adds	x15, x15, #8
	b.ne	LBB4_16
; %bb.17:
	add.4s	v0, v1, v0
	addv.4s	s0, v0
	fmov	w0, s0
	cmp	x10, x14
	b.ne	LBB4_19
	b	LBB4_20
LBB4_18:
	add	x13, x11, x12
LBB4_19:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w10, [x8, x13]
	add	w0, w0, w10
	add	x13, x13, #1
	cmp	x13, x9
	b.lo	LBB4_19
LBB4_20:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12parallel_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE ; -- Begin function _Z12parallel_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE
	.p2align	2
__Z12parallel_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE: ; @_Z12parallel_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #208
	stp	x28, x27, [sp, #112]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #128]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #144]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #160]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	ldp	x8, x9, [x0]
	cmp	x8, x9
	b.eq	LBB5_39
; %bb.1:
	mov	x19, x0
	bl	__ZNSt3__16thread20hardware_concurrencyEv
                                        ; kill: def $w0 killed $w0 def $x0
	ldp	x23, x22, [x19]
	stp	xzr, xzr, [sp, #88]
	str	xzr, [sp, #104]
	stp	xzr, xzr, [sp, #64]
	str	xzr, [sp, #80]
	cbz	w0, LBB5_40
; %bb.2:
	sxtw	x21, w0
	tbnz	w21, #31, LBB5_56
; %bb.3:
	lsl	x20, x21, #2
Ltmp6:
	mov	x0, x20
	bl	__Znwm
Ltmp7:
; %bb.4:
	sub	x23, x22, x23
	add	x22, x0, x21, lsl #2
	str	x0, [sp, #64]
	str	x22, [sp, #80]
	sdiv	x25, x23, x21
	mov	x1, x20
	bl	_bzero
	mov	x20, #0                         ; =0x0
	mov	x28, #0                         ; =0x0
	str	x22, [sp, #72]
	sub	w27, w21, #1
	and	x21, x21, #0xffffffff
	add	x22, sp, #64
	stp	x21, x23, [sp, #8]              ; 16-byte Folded Spill
	b	LBB5_6
LBB5_5:                                 ;   in Loop: Header=BB5_6 Depth=1
	add	x22, sp, #64
	str	x20, [sp, #96]
	cmp	x28, x21
	b.eq	LBB5_31
LBB5_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB5_21 Depth 2
                                        ;     Child Loop BB5_23 Depth 2
                                        ;     Child Loop BB5_26 Depth 2
	mov	x8, x28
	mul	x9, x25, x28
	str	w8, [sp, #56]
	add	x28, x28, #1
	mul	x10, x25, x28
	cmp	x8, x27
	csel	x8, x23, x10, eq
	stp	x9, x8, [sp, #24]
	stp	x19, x22, [sp, #40]
	ldr	x8, [sp, #104]
	cmp	x20, x8
	b.hs	LBB5_9
; %bb.7:                                ;   in Loop: Header=BB5_6 Depth=1
Ltmp19:
	add	x1, sp, #24
	mov	x0, x20
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB8ne180100IS2_JZ12parallel_sumRKNS_6vectorIaNS1_IaEEEEE3$_0EvvEEvRS3_PT_DpOT0_
Ltmp20:
; %bb.8:                                ;   in Loop: Header=BB5_6 Depth=1
	add	x20, x20, #8
	str	x20, [sp, #96]
	cmp	x28, x21
	b.ne	LBB5_6
	b	LBB5_31
LBB5_9:                                 ;   in Loop: Header=BB5_6 Depth=1
	ldr	x9, [sp, #88]
	sub	x26, x20, x9
	asr	x24, x26, #3
	add	x10, x24, #1
	lsr	x11, x10, #61
	cbnz	x11, LBB5_54
; %bb.10:                               ;   in Loop: Header=BB5_6 Depth=1
	sub	x8, x8, x9
	asr	x9, x8, #2
	cmp	x9, x10
	csel	x9, x9, x10, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x8, x10
	mov	x8, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x20, x9, x8, lo
	cbz	x20, LBB5_14
; %bb.11:                               ;   in Loop: Header=BB5_6 Depth=1
	lsr	x8, x20, #61
	cbnz	x8, LBB5_55
; %bb.12:                               ;   in Loop: Header=BB5_6 Depth=1
	lsl	x0, x20, #3
Ltmp8:
	bl	__Znwm
Ltmp9:
; %bb.13:                               ;   in Loop: Header=BB5_6 Depth=1
	mov	x23, x0
	b	LBB5_15
LBB5_14:                                ;   in Loop: Header=BB5_6 Depth=1
	mov	x23, #0                         ; =0x0
LBB5_15:                                ;   in Loop: Header=BB5_6 Depth=1
	add	x21, x23, x24, lsl #3
Ltmp13:
	add	x1, sp, #24
	mov	x0, x21
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB8ne180100IS2_JZ12parallel_sumRKNS_6vectorIaNS1_IaEEEEE3$_0EvvEEvRS3_PT_DpOT0_
Ltmp14:
; %bb.16:                               ;   in Loop: Header=BB5_6 Depth=1
	add	x8, x23, x20, lsl #3
	add	x20, x21, #8
	ldp	x9, x22, [sp, #88]
	subs	x10, x22, x9
	b.eq	LBB5_28
; %bb.17:                               ;   in Loop: Header=BB5_6 Depth=1
	sub	x11, x10, #8
	cmp	x11, #120
	b.lo	LBB5_23
; %bb.18:                               ;   in Loop: Header=BB5_6 Depth=1
	lsr	x10, x11, #3
	and	x11, x11, #0xfffffffffffffff8
	sub	x11, x26, x11
	add	x11, x23, x11
	sub	x11, x11, #8
	cmp	x11, x22
	b.hs	LBB5_20
; %bb.19:                               ;   in Loop: Header=BB5_6 Depth=1
	sub	x11, x22, x10, lsl #3
	sub	x11, x11, #8
	cmp	x11, x21
	b.lo	LBB5_23
LBB5_20:                                ;   in Loop: Header=BB5_6 Depth=1
	add	x10, x10, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x13, x11, #3
	sub	x12, x22, x13
	sub	x21, x21, x13
	sub	x13, x22, #32
	add	x14, x23, x24, lsl #3
	sub	x14, x14, #32
	mov	x15, x11
	movi.2d	v4, #0000000000000000
LBB5_21:                                ;   Parent Loop BB5_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q1, q0, [x13]
	ldp	q3, q2, [x13, #-32]
	stp	q1, q0, [x14]
	stp	q3, q2, [x14, #-32]
	stp	q4, q4, [x13]
	stp	q4, q4, [x13, #-32]
	sub	x13, x13, #64
	sub	x14, x14, #64
	sub	x15, x15, #8
	cbnz	x15, LBB5_21
; %bb.22:                               ;   in Loop: Header=BB5_6 Depth=1
	mov	x22, x12
	cmp	x10, x11
	b.eq	LBB5_24
LBB5_23:                                ;   Parent Loop BB5_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [x22, #-8]!
	str	x10, [x21, #-8]!
	str	xzr, [x22]
	cmp	x22, x9
	b.ne	LBB5_23
LBB5_24:                                ;   in Loop: Header=BB5_6 Depth=1
	ldp	x22, x0, [sp, #88]
	stp	x21, x20, [sp, #88]
	str	x8, [sp, #104]
	cmp	x0, x22
	b.eq	LBB5_29
; %bb.25:                               ;   in Loop: Header=BB5_6 Depth=1
	ldp	x21, x23, [sp, #8]              ; 16-byte Folded Reload
LBB5_26:                                ;   Parent Loop BB5_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x0, x0, #8
	bl	__ZNSt3__16threadD1Ev
	cmp	x0, x22
	b.ne	LBB5_26
; %bb.27:                               ;   in Loop: Header=BB5_6 Depth=1
	cbnz	x22, LBB5_30
	b	LBB5_5
LBB5_28:                                ;   in Loop: Header=BB5_6 Depth=1
	stp	x21, x20, [sp, #88]
	str	x8, [sp, #104]
LBB5_29:                                ;   in Loop: Header=BB5_6 Depth=1
	ldp	x21, x23, [sp, #8]              ; 16-byte Folded Reload
	cbz	x22, LBB5_5
LBB5_30:                                ;   in Loop: Header=BB5_6 Depth=1
	mov	x0, x22
	bl	__ZdlPv
	b	LBB5_5
LBB5_31:
	ldr	x19, [sp, #88]
	b	LBB5_33
LBB5_32:                                ;   in Loop: Header=BB5_33 Depth=1
	add	x19, x19, #8
LBB5_33:                                ; =>This Inner Loop Header: Depth=1
	cmp	x19, x20
	b.eq	LBB5_36
; %bb.34:                               ;   in Loop: Header=BB5_33 Depth=1
	ldr	x8, [x19]
	cbz	x8, LBB5_32
; %bb.35:                               ;   in Loop: Header=BB5_33 Depth=1
Ltmp22:
	mov	x0, x19
	bl	__ZNSt3__16thread4joinEv
Ltmp23:
	b	LBB5_32
LBB5_36:
	ldp	x0, x8, [sp, #64]
	cmp	x0, x8
	b.eq	LBB5_41
LBB5_37:
	sub	x9, x8, x0
	sub	x9, x9, #4
	cmp	x9, #60
	b.hs	LBB5_42
; %bb.38:
	mov	w19, #0                         ; =0x0
	mov	x9, x0
	b	LBB5_45
LBB5_39:
	mov	w19, #0                         ; =0x0
	b	LBB5_53
LBB5_40:
	mov	x0, #0                          ; =0x0
	ldr	x8, [sp, #72]
	cmp	x0, x8
	b.ne	LBB5_37
LBB5_41:
	mov	w19, #0                         ; =0x0
	b	LBB5_46
LBB5_42:
	lsr	x9, x9, #2
	add	x10, x9, #1
	and	x11, x10, #0x7ffffffffffffff0
	add	x9, x0, x11, lsl #2
	add	x12, x0, #32
	movi.2d	v0, #0000000000000000
	mov	x13, x11
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB5_43:                                ; =>This Inner Loop Header: Depth=1
	ldp	q4, q5, [x12, #-32]
	ldp	q6, q7, [x12], #64
	add.4s	v0, v4, v0
	add.4s	v1, v5, v1
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
	subs	x13, x13, #16
	b.ne	LBB5_43
; %bb.44:
	add.4s	v0, v1, v0
	add.4s	v0, v2, v0
	add.4s	v0, v3, v0
	addv.4s	s0, v0
	fmov	w19, s0
	cmp	x10, x11
	b.eq	LBB5_46
LBB5_45:                                ; =>This Inner Loop Header: Depth=1
	ldr	w10, [x9], #4
	add	w19, w10, w19
	cmp	x9, x8
	b.ne	LBB5_45
LBB5_46:
	cbz	x0, LBB5_48
; %bb.47:
	str	x0, [sp, #72]
	bl	__ZdlPv
LBB5_48:
	ldr	x20, [sp, #88]
	cbz	x20, LBB5_53
; %bb.49:
	ldr	x0, [sp, #96]
	mov	x8, x20
	cmp	x0, x20
	b.eq	LBB5_52
LBB5_50:                                ; =>This Inner Loop Header: Depth=1
	sub	x0, x0, #8
	bl	__ZNSt3__16threadD1Ev
	cmp	x0, x20
	b.ne	LBB5_50
; %bb.51:
	ldr	x8, [sp, #88]
LBB5_52:
	str	x20, [sp, #96]
	mov	x0, x8
	bl	__ZdlPv
LBB5_53:
	mov	x0, x19
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB5_54:
Ltmp16:
	add	x0, sp, #88
	bl	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
Ltmp17:
	b	LBB5_57
LBB5_55:
Ltmp11:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp12:
	b	LBB5_57
LBB5_56:
Ltmp25:
	add	x0, sp, #64
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev
Ltmp26:
LBB5_57:
	brk	#0x1
LBB5_58:
Ltmp27:
	b	LBB5_67
LBB5_59:
Ltmp10:
	b	LBB5_67
LBB5_60:
Ltmp24:
	b	LBB5_67
LBB5_61:
Ltmp15:
	mov	x19, x0
	cbnz	x23, LBB5_64
; %bb.62:
	ldr	x0, [sp, #64]
	cbnz	x0, LBB5_68
LBB5_63:
	add	x0, sp, #88
	bl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B8ne180100Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB5_64:
	mov	x0, x23
	bl	__ZdlPv
	ldr	x0, [sp, #64]
	cbz	x0, LBB5_63
	b	LBB5_68
LBB5_65:
Ltmp21:
	mov	x19, x0
	str	x20, [sp, #96]
	ldr	x0, [sp, #64]
	cbz	x0, LBB5_63
	b	LBB5_68
LBB5_66:
Ltmp18:
LBB5_67:
	mov	x19, x0
	ldr	x0, [sp, #64]
	cbz	x0, LBB5_63
LBB5_68:
	str	x0, [sp, #72]
	bl	__ZdlPv
	add	x0, sp, #88
	bl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B8ne180100Ev
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp6-Lfunc_begin1             ; >> Call Site 1 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp27-Lfunc_begin1            ;     jumps to Ltmp27
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin1             ; >> Call Site 2 <<
	.uleb128 Ltmp19-Ltmp7                   ;   Call between Ltmp7 and Ltmp19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp20-Ltmp19                  ;   Call between Ltmp19 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin1            ;     jumps to Ltmp21
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin1             ; >> Call Site 4 <<
	.uleb128 Ltmp9-Ltmp8                    ;   Call between Ltmp8 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin1            ;     jumps to Ltmp10
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp14-Ltmp13                  ;   Call between Ltmp13 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin1            ;     jumps to Ltmp15
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Ltmp23-Ltmp22                  ;   Call between Ltmp22 and Ltmp23
	.uleb128 Ltmp24-Lfunc_begin1            ;     jumps to Ltmp24
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin1            ; >> Call Site 7 <<
	.uleb128 Ltmp12-Ltmp16                  ;   Call between Ltmp16 and Ltmp12
	.uleb128 Ltmp18-Lfunc_begin1            ;     jumps to Ltmp18
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin1            ; >> Call Site 8 <<
	.uleb128 Ltmp26-Ltmp25                  ;   Call between Ltmp25 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin1            ;     jumps to Ltmp27
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin1            ; >> Call Site 9 <<
	.uleb128 Lfunc_end1-Ltmp26              ;   Call between Ltmp26 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B8ne180100Ev ; -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B8ne180100Ev
	.globl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B8ne180100Ev: ; @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x20, [x0]
	cbz	x20, LBB6_5
; %bb.1:
	ldr	x0, [x19, #8]
	mov	x8, x20
	cmp	x0, x20
	b.eq	LBB6_4
LBB6_2:                                 ; =>This Inner Loop Header: Depth=1
	sub	x0, x0, #8
	bl	__ZNSt3__16threadD1Ev
	cmp	x0, x20
	b.ne	LBB6_2
; %bb.3:
	ldr	x8, [x19]
LBB6_4:
	str	x20, [x19, #8]
	mov	x0, x8
	bl	__ZdlPv
LBB6_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z17parallel_neon_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE ; -- Begin function _Z17parallel_neon_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE
	.p2align	2
__Z17parallel_neon_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE: ; @_Z17parallel_neon_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #208
	stp	x28, x27, [sp, #112]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #128]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #144]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #160]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	ldp	x8, x9, [x0]
	cmp	x8, x9
	b.eq	LBB7_39
; %bb.1:
	mov	x19, x0
	bl	__ZNSt3__16thread20hardware_concurrencyEv
                                        ; kill: def $w0 killed $w0 def $x0
	ldp	x23, x22, [x19]
	stp	xzr, xzr, [sp, #88]
	str	xzr, [sp, #104]
	stp	xzr, xzr, [sp, #64]
	str	xzr, [sp, #80]
	cbz	w0, LBB7_40
; %bb.2:
	sxtw	x21, w0
	tbnz	w21, #31, LBB7_56
; %bb.3:
	lsl	x20, x21, #2
Ltmp28:
	mov	x0, x20
	bl	__Znwm
Ltmp29:
; %bb.4:
	sub	x23, x22, x23
	add	x22, x0, x21, lsl #2
	str	x0, [sp, #64]
	str	x22, [sp, #80]
	sdiv	x25, x23, x21
	mov	x1, x20
	bl	_bzero
	mov	x20, #0                         ; =0x0
	mov	x28, #0                         ; =0x0
	str	x22, [sp, #72]
	sub	w27, w21, #1
	and	x21, x21, #0xffffffff
	add	x22, sp, #64
	stp	x21, x23, [sp, #8]              ; 16-byte Folded Spill
	b	LBB7_6
LBB7_5:                                 ;   in Loop: Header=BB7_6 Depth=1
	add	x22, sp, #64
	str	x20, [sp, #96]
	cmp	x28, x21
	b.eq	LBB7_31
LBB7_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_21 Depth 2
                                        ;     Child Loop BB7_23 Depth 2
                                        ;     Child Loop BB7_26 Depth 2
	mov	x8, x28
	mul	x9, x25, x28
	str	w8, [sp, #56]
	add	x28, x28, #1
	mul	x10, x25, x28
	cmp	x8, x27
	csel	x8, x23, x10, eq
	stp	x9, x8, [sp, #24]
	stp	x19, x22, [sp, #40]
	ldr	x8, [sp, #104]
	cmp	x20, x8
	b.hs	LBB7_9
; %bb.7:                                ;   in Loop: Header=BB7_6 Depth=1
Ltmp41:
	add	x1, sp, #24
	mov	x0, x20
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB8ne180100IS2_JZ17parallel_neon_sumRKNS_6vectorIaNS1_IaEEEEE3$_0EvvEEvRS3_PT_DpOT0_
Ltmp42:
; %bb.8:                                ;   in Loop: Header=BB7_6 Depth=1
	add	x20, x20, #8
	str	x20, [sp, #96]
	cmp	x28, x21
	b.ne	LBB7_6
	b	LBB7_31
LBB7_9:                                 ;   in Loop: Header=BB7_6 Depth=1
	ldr	x9, [sp, #88]
	sub	x26, x20, x9
	asr	x24, x26, #3
	add	x10, x24, #1
	lsr	x11, x10, #61
	cbnz	x11, LBB7_54
; %bb.10:                               ;   in Loop: Header=BB7_6 Depth=1
	sub	x8, x8, x9
	asr	x9, x8, #2
	cmp	x9, x10
	csel	x9, x9, x10, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x8, x10
	mov	x8, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x20, x9, x8, lo
	cbz	x20, LBB7_14
; %bb.11:                               ;   in Loop: Header=BB7_6 Depth=1
	lsr	x8, x20, #61
	cbnz	x8, LBB7_55
; %bb.12:                               ;   in Loop: Header=BB7_6 Depth=1
	lsl	x0, x20, #3
Ltmp30:
	bl	__Znwm
Ltmp31:
; %bb.13:                               ;   in Loop: Header=BB7_6 Depth=1
	mov	x23, x0
	b	LBB7_15
LBB7_14:                                ;   in Loop: Header=BB7_6 Depth=1
	mov	x23, #0                         ; =0x0
LBB7_15:                                ;   in Loop: Header=BB7_6 Depth=1
	add	x21, x23, x24, lsl #3
Ltmp35:
	add	x1, sp, #24
	mov	x0, x21
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB8ne180100IS2_JZ17parallel_neon_sumRKNS_6vectorIaNS1_IaEEEEE3$_0EvvEEvRS3_PT_DpOT0_
Ltmp36:
; %bb.16:                               ;   in Loop: Header=BB7_6 Depth=1
	add	x8, x23, x20, lsl #3
	add	x20, x21, #8
	ldp	x9, x22, [sp, #88]
	subs	x10, x22, x9
	b.eq	LBB7_28
; %bb.17:                               ;   in Loop: Header=BB7_6 Depth=1
	sub	x11, x10, #8
	cmp	x11, #120
	b.lo	LBB7_23
; %bb.18:                               ;   in Loop: Header=BB7_6 Depth=1
	lsr	x10, x11, #3
	and	x11, x11, #0xfffffffffffffff8
	sub	x11, x26, x11
	add	x11, x23, x11
	sub	x11, x11, #8
	cmp	x11, x22
	b.hs	LBB7_20
; %bb.19:                               ;   in Loop: Header=BB7_6 Depth=1
	sub	x11, x22, x10, lsl #3
	sub	x11, x11, #8
	cmp	x11, x21
	b.lo	LBB7_23
LBB7_20:                                ;   in Loop: Header=BB7_6 Depth=1
	add	x10, x10, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x13, x11, #3
	sub	x12, x22, x13
	sub	x21, x21, x13
	sub	x13, x22, #32
	add	x14, x23, x24, lsl #3
	sub	x14, x14, #32
	mov	x15, x11
	movi.2d	v4, #0000000000000000
LBB7_21:                                ;   Parent Loop BB7_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q1, q0, [x13]
	ldp	q3, q2, [x13, #-32]
	stp	q1, q0, [x14]
	stp	q3, q2, [x14, #-32]
	stp	q4, q4, [x13]
	stp	q4, q4, [x13, #-32]
	sub	x13, x13, #64
	sub	x14, x14, #64
	sub	x15, x15, #8
	cbnz	x15, LBB7_21
; %bb.22:                               ;   in Loop: Header=BB7_6 Depth=1
	mov	x22, x12
	cmp	x10, x11
	b.eq	LBB7_24
LBB7_23:                                ;   Parent Loop BB7_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [x22, #-8]!
	str	x10, [x21, #-8]!
	str	xzr, [x22]
	cmp	x22, x9
	b.ne	LBB7_23
LBB7_24:                                ;   in Loop: Header=BB7_6 Depth=1
	ldp	x22, x0, [sp, #88]
	stp	x21, x20, [sp, #88]
	str	x8, [sp, #104]
	cmp	x0, x22
	b.eq	LBB7_29
; %bb.25:                               ;   in Loop: Header=BB7_6 Depth=1
	ldp	x21, x23, [sp, #8]              ; 16-byte Folded Reload
LBB7_26:                                ;   Parent Loop BB7_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x0, x0, #8
	bl	__ZNSt3__16threadD1Ev
	cmp	x0, x22
	b.ne	LBB7_26
; %bb.27:                               ;   in Loop: Header=BB7_6 Depth=1
	cbnz	x22, LBB7_30
	b	LBB7_5
LBB7_28:                                ;   in Loop: Header=BB7_6 Depth=1
	stp	x21, x20, [sp, #88]
	str	x8, [sp, #104]
LBB7_29:                                ;   in Loop: Header=BB7_6 Depth=1
	ldp	x21, x23, [sp, #8]              ; 16-byte Folded Reload
	cbz	x22, LBB7_5
LBB7_30:                                ;   in Loop: Header=BB7_6 Depth=1
	mov	x0, x22
	bl	__ZdlPv
	b	LBB7_5
LBB7_31:
	ldr	x19, [sp, #88]
	b	LBB7_33
LBB7_32:                                ;   in Loop: Header=BB7_33 Depth=1
	add	x19, x19, #8
LBB7_33:                                ; =>This Inner Loop Header: Depth=1
	cmp	x19, x20
	b.eq	LBB7_36
; %bb.34:                               ;   in Loop: Header=BB7_33 Depth=1
	ldr	x8, [x19]
	cbz	x8, LBB7_32
; %bb.35:                               ;   in Loop: Header=BB7_33 Depth=1
Ltmp44:
	mov	x0, x19
	bl	__ZNSt3__16thread4joinEv
Ltmp45:
	b	LBB7_32
LBB7_36:
	ldp	x0, x8, [sp, #64]
	cmp	x0, x8
	b.eq	LBB7_41
LBB7_37:
	sub	x9, x8, x0
	sub	x9, x9, #4
	cmp	x9, #60
	b.hs	LBB7_42
; %bb.38:
	mov	w19, #0                         ; =0x0
	mov	x9, x0
	b	LBB7_45
LBB7_39:
	mov	w19, #0                         ; =0x0
	b	LBB7_53
LBB7_40:
	mov	x0, #0                          ; =0x0
	ldr	x8, [sp, #72]
	cmp	x0, x8
	b.ne	LBB7_37
LBB7_41:
	mov	w19, #0                         ; =0x0
	b	LBB7_46
LBB7_42:
	lsr	x9, x9, #2
	add	x10, x9, #1
	and	x11, x10, #0x7ffffffffffffff0
	add	x9, x0, x11, lsl #2
	add	x12, x0, #32
	movi.2d	v0, #0000000000000000
	mov	x13, x11
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB7_43:                                ; =>This Inner Loop Header: Depth=1
	ldp	q4, q5, [x12, #-32]
	ldp	q6, q7, [x12], #64
	add.4s	v0, v4, v0
	add.4s	v1, v5, v1
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
	subs	x13, x13, #16
	b.ne	LBB7_43
; %bb.44:
	add.4s	v0, v1, v0
	add.4s	v0, v2, v0
	add.4s	v0, v3, v0
	addv.4s	s0, v0
	fmov	w19, s0
	cmp	x10, x11
	b.eq	LBB7_46
LBB7_45:                                ; =>This Inner Loop Header: Depth=1
	ldr	w10, [x9], #4
	add	w19, w10, w19
	cmp	x9, x8
	b.ne	LBB7_45
LBB7_46:
	cbz	x0, LBB7_48
; %bb.47:
	str	x0, [sp, #72]
	bl	__ZdlPv
LBB7_48:
	ldr	x20, [sp, #88]
	cbz	x20, LBB7_53
; %bb.49:
	ldr	x0, [sp, #96]
	mov	x8, x20
	cmp	x0, x20
	b.eq	LBB7_52
LBB7_50:                                ; =>This Inner Loop Header: Depth=1
	sub	x0, x0, #8
	bl	__ZNSt3__16threadD1Ev
	cmp	x0, x20
	b.ne	LBB7_50
; %bb.51:
	ldr	x8, [sp, #88]
LBB7_52:
	str	x20, [sp, #96]
	mov	x0, x8
	bl	__ZdlPv
LBB7_53:
	mov	x0, x19
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB7_54:
Ltmp38:
	add	x0, sp, #88
	bl	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
Ltmp39:
	b	LBB7_57
LBB7_55:
Ltmp33:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp34:
	b	LBB7_57
LBB7_56:
Ltmp47:
	add	x0, sp, #64
	bl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev
Ltmp48:
LBB7_57:
	brk	#0x1
LBB7_58:
Ltmp49:
	b	LBB7_67
LBB7_59:
Ltmp32:
	b	LBB7_67
LBB7_60:
Ltmp46:
	b	LBB7_67
LBB7_61:
Ltmp37:
	mov	x19, x0
	cbnz	x23, LBB7_64
; %bb.62:
	ldr	x0, [sp, #64]
	cbnz	x0, LBB7_68
LBB7_63:
	add	x0, sp, #88
	bl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B8ne180100Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB7_64:
	mov	x0, x23
	bl	__ZdlPv
	ldr	x0, [sp, #64]
	cbz	x0, LBB7_63
	b	LBB7_68
LBB7_65:
Ltmp43:
	mov	x19, x0
	str	x20, [sp, #96]
	ldr	x0, [sp, #64]
	cbz	x0, LBB7_63
	b	LBB7_68
LBB7_66:
Ltmp40:
LBB7_67:
	mov	x19, x0
	ldr	x0, [sp, #64]
	cbz	x0, LBB7_63
LBB7_68:
	str	x0, [sp, #72]
	bl	__ZdlPv
	add	x0, sp, #88
	bl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B8ne180100Ev
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp28-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp29-Ltmp28                  ;   Call between Ltmp28 and Ltmp29
	.uleb128 Ltmp49-Lfunc_begin2            ;     jumps to Ltmp49
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp41-Ltmp29                  ;   Call between Ltmp29 and Ltmp41
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp42-Ltmp41                  ;   Call between Ltmp41 and Ltmp42
	.uleb128 Ltmp43-Lfunc_begin2            ;     jumps to Ltmp43
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Ltmp31-Ltmp30                  ;   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin2            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin2            ; >> Call Site 5 <<
	.uleb128 Ltmp36-Ltmp35                  ;   Call between Ltmp35 and Ltmp36
	.uleb128 Ltmp37-Lfunc_begin2            ;     jumps to Ltmp37
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin2            ; >> Call Site 6 <<
	.uleb128 Ltmp45-Ltmp44                  ;   Call between Ltmp44 and Ltmp45
	.uleb128 Ltmp46-Lfunc_begin2            ;     jumps to Ltmp46
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin2            ; >> Call Site 7 <<
	.uleb128 Ltmp34-Ltmp38                  ;   Call between Ltmp38 and Ltmp34
	.uleb128 Ltmp40-Lfunc_begin2            ;     jumps to Ltmp40
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin2            ; >> Call Site 8 <<
	.uleb128 Ltmp48-Ltmp47                  ;   Call between Ltmp47 and Ltmp48
	.uleb128 Ltmp49-Lfunc_begin2            ;     jumps to Ltmp49
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin2            ; >> Call Site 9 <<
	.uleb128 Lfunc_end2-Ltmp48              ;   Call between Ltmp48 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE ; -- Begin function _Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	2
__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE: ; @_Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #432
	stp	x28, x27, [sp, #336]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #352]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #368]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #384]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #400]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #416]            ; 16-byte Folded Spill
	add	x29, sp, #416
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x21, x0
	bl	__ZNSt3__16chrono12system_clock3nowEv
	stur	x0, [x29, #-120]
	sub	x0, x29, #120
	bl	__ZNSt3__16chrono12system_clock9to_time_tERKNS0_10time_pointIS1_NS0_8durationIxNS_5ratioILl1ELl1000000EEEEEEE
	stur	x0, [x29, #-128]
	sub	x0, x29, #128
	bl	_localtime
	mov	x22, x0
	ldur	x25, [x29, #-120]
	add	x8, sp, #24
	add	x19, x8, #112
Lloh0:
	adrp	x27, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh1:
	ldr	x27, [x27, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x24, x27, #64
	add	x20, x8, #8
Lloh2:
	adrp	x26, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh3:
	ldr	x26, [x26, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldp	x9, x10, [x26, #8]
	str	x24, [sp, #136]
	str	x9, [sp, #24]
	ldur	x9, [x9, #-24]
	str	x10, [x8, x9]
	ldr	x9, [sp, #24]
	ldur	x9, [x9, #-24]
	add	x23, x8, x9
Ltmp50:
	mov	x0, x23
	mov	x1, x20
	bl	__ZNSt3__18ios_base4initEPv
Ltmp51:
; %bb.1:
	str	xzr, [x23, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x23, #144]
	add	x8, x27, #24
	str	x8, [sp, #24]
	str	x24, [sp, #136]
Ltmp53:
	mov	x0, x20
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp54:
; %bb.2:
Lloh4:
	adrp	x27, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh5:
	ldr	x27, [x27, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x27, #16
	str	x8, [sp, #32]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #96]
	mov	w8, #16                         ; =0x10
	str	w8, [sp, #128]
Lloh6:
	adrp	x8, l_.str@PAGE
Lloh7:
	add	x8, x8, l_.str@PAGEOFF
	stp	x22, x8, [x29, #-112]
Ltmp56:
	add	x0, sp, #24
	sub	x1, x29, #112
	bl	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_9__iom_t10IS4_EE
Ltmp57:
; %bb.3:
	mov	w8, #46                         ; =0x2e
	sturb	w8, [x29, #-112]
Ltmp59:
	add	x0, sp, #24
	sub	x1, x29, #112
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp60:
; %bb.4:
	mov	x22, x0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x23, x0, x9
	ldr	w9, [x23, #144]
	cmn	w9, #1
	b.ne	LBB8_9
; %bb.5:
Ltmp62:
	sub	x8, x29, #112
	mov	x0, x23
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp63:
; %bb.6:
Ltmp65:
Lloh8:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh9:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	sub	x0, x29, #112
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp66:
; %bb.7:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp67:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp68:
; %bb.8:
	mov	x24, x0
	sub	x0, x29, #112
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x23, #144]
	ldr	x8, [x22]
LBB8_9:
	mov	x9, #63439                      ; =0xf7cf
	movk	x9, #58195, lsl #16
	movk	x9, #39845, lsl #32
	movk	x9, #8388, lsl #48
	smulh	x10, x25, x9
	asr	x11, x10, #7
	add	x10, x11, x10, lsr #63
	smulh	x9, x10, x9
	asr	x11, x9, #7
	add	x9, x11, x9, lsr #63
	mov	w11, #1000                      ; =0x3e8
	msub	x1, x9, x11, x10
	mov	w9, #48                         ; =0x30
	str	w9, [x23, #144]
	ldur	x8, [x8, #-24]
	add	x8, x22, x8
	mov	w9, #3                          ; =0x3
	str	x9, [x8, #24]
Ltmp70:
	mov	x0, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp71:
; %bb.10:
	ldr	w8, [sp, #128]
	tbnz	w8, #4, LBB8_13
; %bb.11:
	tbnz	w8, #3, LBB8_27
; %bb.12:
	mov	x22, #0                         ; =0x0
	strb	wzr, [sp, #23]
	mov	x24, sp
	b	LBB8_21
LBB8_13:
	ldr	x8, [sp, #120]
	ldr	x9, [sp, #80]
	cmp	x8, x9
	b.hs	LBB8_15
; %bb.14:
	str	x9, [sp, #120]
	mov	x8, x9
LBB8_15:
	add	x9, sp, #24
	ldr	x23, [x9, #48]!
	mov	x9, #9223372036854775800        ; =0x7ffffffffffffff8
	sub	x22, x8, x23
	cmp	x22, x9
	b.hs	LBB8_28
LBB8_16:
	cmp	x22, #23
	b.hs	LBB8_18
; %bb.17:
	strb	w22, [sp, #23]
	mov	x24, sp
	cbnz	x22, LBB8_20
	b	LBB8_21
LBB8_18:
	and	x8, x22, #0xfffffffffffffff8
	add	x8, x8, #8
	orr	x9, x22, #0x7
	cmp	x9, #23
	csel	x8, x8, x9, eq
	add	x25, x8, #1
Ltmp73:
	mov	x0, x25
	bl	__Znwm
Ltmp74:
; %bb.19:
	mov	x24, x0
	orr	x8, x25, #0x8000000000000000
	stp	x22, x8, [sp, #8]
	str	x0, [sp]
LBB8_20:
	mov	x0, x24
	mov	x1, x23
	mov	x2, x22
	bl	_memmove
LBB8_21:
	strb	wzr, [x24, x22]
	ldrb	w8, [sp, #23]
	sxtb	w9, w8
	cmp	w9, #0
	mov	x9, sp
	ldp	x10, x11, [sp]
	csel	x9, x10, x9, lt
	csel	x8, x11, x8, lt
	ldrsb	w10, [x21, #23]
	cmp	w10, #0
	ldp	x11, x12, [x21]
	csel	x11, x11, x21, lt
	and	x10, x10, #0xff
	csel	x10, x12, x10, lt
	stp	x9, x8, [x29, #-112]
	stp	x11, x10, [x29, #-96]
Ltmp78:
Lloh10:
	adrp	x0, l_.str.1@PAGE
Lloh11:
	add	x0, x0, l_.str.1@PAGEOFF
	sub	x3, x29, #112
	mov	w1, #6                          ; =0x6
	mov	w2, #221                        ; =0xdd
	bl	__ZN3fmt3v106vprintENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE
Ltmp79:
; %bb.22:
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB8_24
; %bb.23:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB8_24:
	ldr	x8, [x26]
	str	x8, [sp, #24]
	ldr	x9, [x26, #24]
	ldur	x8, [x8, #-24]
	add	x10, sp, #24
	str	x9, [x10, x8]
	add	x8, x27, #16
	str	x8, [sp, #32]
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB8_26
; %bb.25:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
LBB8_26:
	mov	x0, x20
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	add	x1, x26, #8
	add	x0, sp, #24
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldp	x29, x30, [sp, #416]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #400]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #384]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #368]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #352]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #336]            ; 16-byte Folded Reload
	add	sp, sp, #432
	ret
LBB8_27:
	add	x8, sp, #24
	add	x9, x8, #24
	ldr	x8, [sp, #64]
	ldr	x23, [x9]
	mov	x9, #9223372036854775800        ; =0x7ffffffffffffff8
	sub	x22, x8, x23
	cmp	x22, x9
	b.lo	LBB8_16
LBB8_28:
Ltmp75:
	mov	x0, sp
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
Ltmp76:
; %bb.29:
	brk	#0x1
LBB8_30:
Ltmp64:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB8_31:
Ltmp69:
	mov	x20, x0
	sub	x0, x29, #112
	bl	__ZNSt3__16localeD1Ev
	add	x0, sp, #24
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB8_32:
Ltmp80:
	mov	x20, x0
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB8_40
; %bb.33:
	ldr	x0, [sp]
	bl	__ZdlPv
	add	x0, sp, #24
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB8_34:
Ltmp72:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB8_35:
Ltmp61:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB8_36:
Ltmp58:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB8_37:
Ltmp55:
	mov	x20, x0
	add	x1, x26, #8
	add	x0, sp, #24
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB8_38:
Ltmp52:
	mov	x20, x0
	mov	x0, x19
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB8_39:
Ltmp77:
	mov	x20, x0
LBB8_40:
	add	x0, sp, #24
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh10, Lloh11
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp50-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp50
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp51-Ltmp50                  ;   Call between Ltmp50 and Ltmp51
	.uleb128 Ltmp52-Lfunc_begin3            ;     jumps to Ltmp52
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp53-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Ltmp54-Ltmp53                  ;   Call between Ltmp53 and Ltmp54
	.uleb128 Ltmp55-Lfunc_begin3            ;     jumps to Ltmp55
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin3            ; >> Call Site 4 <<
	.uleb128 Ltmp57-Ltmp56                  ;   Call between Ltmp56 and Ltmp57
	.uleb128 Ltmp58-Lfunc_begin3            ;     jumps to Ltmp58
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin3            ; >> Call Site 5 <<
	.uleb128 Ltmp60-Ltmp59                  ;   Call between Ltmp59 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin3            ;     jumps to Ltmp61
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp62-Lfunc_begin3            ; >> Call Site 6 <<
	.uleb128 Ltmp63-Ltmp62                  ;   Call between Ltmp62 and Ltmp63
	.uleb128 Ltmp64-Lfunc_begin3            ;     jumps to Ltmp64
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp65-Lfunc_begin3            ; >> Call Site 7 <<
	.uleb128 Ltmp68-Ltmp65                  ;   Call between Ltmp65 and Ltmp68
	.uleb128 Ltmp69-Lfunc_begin3            ;     jumps to Ltmp69
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp70-Lfunc_begin3            ; >> Call Site 8 <<
	.uleb128 Ltmp71-Ltmp70                  ;   Call between Ltmp70 and Ltmp71
	.uleb128 Ltmp72-Lfunc_begin3            ;     jumps to Ltmp72
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin3            ; >> Call Site 9 <<
	.uleb128 Ltmp74-Ltmp73                  ;   Call between Ltmp73 and Ltmp74
	.uleb128 Ltmp77-Lfunc_begin3            ;     jumps to Ltmp77
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp74-Lfunc_begin3            ; >> Call Site 10 <<
	.uleb128 Ltmp78-Ltmp74                  ;   Call between Ltmp74 and Ltmp78
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp78-Lfunc_begin3            ; >> Call Site 11 <<
	.uleb128 Ltmp79-Ltmp78                  ;   Call between Ltmp78 and Ltmp79
	.uleb128 Ltmp80-Lfunc_begin3            ;     jumps to Ltmp80
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp75-Lfunc_begin3            ; >> Call Site 12 <<
	.uleb128 Ltmp76-Ltmp75                  ;   Call between Ltmp75 and Ltmp76
	.uleb128 Ltmp77-Lfunc_begin3            ;     jumps to Ltmp77
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp76-Lfunc_begin3            ; >> Call Site 13 <<
	.uleb128 Lfunc_end3-Ltmp76              ;   Call between Ltmp76 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_9__iom_t10IS4_EE ; -- Begin function _ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_9__iom_t10IS4_EE
	.globl	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_9__iom_t10IS4_EE
	.weak_def_can_be_hidden	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_9__iom_t10IS4_EE
	.p2align	2
__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_9__iom_t10IS4_EE: ; @_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_9__iom_t10IS4_EE
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x20, x1
	mov	x19, x0
Ltmp81:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp82:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB9_12
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp84:
	add	x8, sp, #24
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp85:
; %bb.3:
Ltmp87:
Lloh12:
	adrp	x1, __ZNSt3__18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE@GOTPAGE
Lloh13:
	ldr	x1, [x1, __ZNSt3__18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp88:
; %bb.4:
	mov	x21, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB9_9
; %bb.5:
Ltmp90:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp91:
; %bb.6:
Ltmp92:
Lloh14:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh15:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp93:
; %bb.7:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp94:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp95:
; %bb.8:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB9_9:
	ldp	x25, x20, [x20]
	mov	x0, x20
	bl	_strlen
	add	x6, x20, x0
Ltmp97:
	sxtb	w3, w24
	mov	x0, x21
	mov	x1, x23
	mov	x2, x22
	mov	x4, x25
	mov	x5, x20
	bl	__ZNKSt3__18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE3putES4_RNS_8ios_baseEcPK2tmPKcSC_
Ltmp98:
; %bb.10:
	cbnz	x0, LBB9_12
; %bb.11:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x1
Ltmp100:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp101:
LBB9_12:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB9_13:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB9_14:
Ltmp102:
	b	LBB9_20
LBB9_15:
Ltmp96:
	b	LBB9_17
LBB9_16:
Ltmp89:
LBB9_17:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB9_21
LBB9_18:
Ltmp86:
	b	LBB9_20
LBB9_19:
Ltmp99:
LBB9_20:
	mov	x20, x0
LBB9_21:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB9_23
LBB9_22:
Ltmp83:
	mov	x20, x0
LBB9_23:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp103:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp104:
; %bb.24:
	bl	___cxa_end_catch
	b	LBB9_13
LBB9_25:
Ltmp105:
	mov	x19, x0
Ltmp106:
	bl	___cxa_end_catch
Ltmp107:
; %bb.26:
	mov	x0, x19
	bl	__Unwind_Resume
LBB9_27:
Ltmp108:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh14, Lloh15
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table9:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp81-Lfunc_begin4            ; >> Call Site 1 <<
	.uleb128 Ltmp82-Ltmp81                  ;   Call between Ltmp81 and Ltmp82
	.uleb128 Ltmp83-Lfunc_begin4            ;     jumps to Ltmp83
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp84-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp85-Ltmp84                  ;   Call between Ltmp84 and Ltmp85
	.uleb128 Ltmp86-Lfunc_begin4            ;     jumps to Ltmp86
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp87-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Ltmp88-Ltmp87                  ;   Call between Ltmp87 and Ltmp88
	.uleb128 Ltmp89-Lfunc_begin4            ;     jumps to Ltmp89
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp90-Lfunc_begin4            ; >> Call Site 4 <<
	.uleb128 Ltmp91-Ltmp90                  ;   Call between Ltmp90 and Ltmp91
	.uleb128 Ltmp99-Lfunc_begin4            ;     jumps to Ltmp99
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp92-Lfunc_begin4            ; >> Call Site 5 <<
	.uleb128 Ltmp95-Ltmp92                  ;   Call between Ltmp92 and Ltmp95
	.uleb128 Ltmp96-Lfunc_begin4            ;     jumps to Ltmp96
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp97-Lfunc_begin4            ; >> Call Site 6 <<
	.uleb128 Ltmp98-Ltmp97                  ;   Call between Ltmp97 and Ltmp98
	.uleb128 Ltmp99-Lfunc_begin4            ;     jumps to Ltmp99
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp100-Lfunc_begin4           ; >> Call Site 7 <<
	.uleb128 Ltmp101-Ltmp100                ;   Call between Ltmp100 and Ltmp101
	.uleb128 Ltmp102-Lfunc_begin4           ;     jumps to Ltmp102
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp101-Lfunc_begin4           ; >> Call Site 8 <<
	.uleb128 Ltmp103-Ltmp101                ;   Call between Ltmp101 and Ltmp103
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp103-Lfunc_begin4           ; >> Call Site 9 <<
	.uleb128 Ltmp104-Ltmp103                ;   Call between Ltmp103 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin4           ;     jumps to Ltmp105
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp104-Lfunc_begin4           ; >> Call Site 10 <<
	.uleb128 Ltmp106-Ltmp104                ;   Call between Ltmp104 and Ltmp106
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin4           ; >> Call Site 11 <<
	.uleb128 Ltmp107-Ltmp106                ;   Call between Ltmp106 and Ltmp107
	.uleb128 Ltmp108-Lfunc_begin4           ;     jumps to Ltmp108
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp107-Lfunc_begin4           ; >> Call Site 12 <<
	.uleb128 Lfunc_end4-Ltmp107             ;   Call between Ltmp107 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ; -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	2
__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ; @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x0
Lloh16:
	adrp	x21, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh17:
	ldr	x21, [x21, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x21]
	str	x8, [x0]
	ldr	x9, [x21, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
Lloh18:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh19:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	mov	x20, x0
	str	x8, [x20, #8]!
	ldrsb	w8, [x20, #87]
	tbz	w8, #31, LBB10_2
; %bb.1:
	ldr	x0, [x19, #72]
	bl	__ZdlPv
LBB10_2:
	mov	x0, x20
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	add	x1, x21, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #112
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh18, Lloh19
	.loh AdrpLdrGot	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.globl	__Z13run_benchmarkRKNSt3__16vectorIaNS_9allocatorIaEEEEmNS_8functionIFiS5_EEE ; -- Begin function _Z13run_benchmarkRKNSt3__16vectorIaNS_9allocatorIaEEEEmNS_8functionIFiS5_EEE
	.p2align	2
__Z13run_benchmarkRKNSt3__16vectorIaNS_9allocatorIaEEEEmNS_8functionIFiS5_EEE: ; @_Z13run_benchmarkRKNSt3__16vectorIaNS_9allocatorIaEEEEmNS_8functionIFiS5_EEE
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #160
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	mov	x19, x1
	mov	x20, x0
	cbz	x1, LBB11_4
; %bb.1:
	mov	x22, x2
	movi	d8, #0000000000000000
	mov	x26, #145685290680320           ; =0x848000000000
	movk	x26, #16686, lsl #48
Lloh20:
	adrp	x23, __ZNSt3__14coutE@GOTPAGE
Lloh21:
	ldr	x23, [x23, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	x27, x19
Lloh22:
	adrp	x24, l_.str.2@PAGE
Lloh23:
	add	x24, x24, l_.str.2@PAGEOFF
LBB11_2:                                ; =>This Inner Loop Header: Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x25, x0
	ldr	x0, [x22, #24]
	cbz	x0, LBB11_20
; %bb.3:                                ;   in Loop: Header=BB11_2 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #48]
	mov	x1, x20
	blr	x8
	mov	x21, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x25
	scvtf	d0, x8
	fmov	d1, x26
	fdiv	d0, d0, d1
	fadd	d8, d8, d0
	mov	x0, x23
	mov	x1, x24
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	subs	x27, x27, #1
	b.ne	LBB11_2
	b	LBB11_5
LBB11_4:
	mov	w21, #0                         ; =0x0
	movi	d8, #0000000000000000
LBB11_5:
Lloh24:
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
Lloh25:
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	add	x8, sp, #8
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp109:
Lloh26:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh27:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp110:
; %bb.6:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp111:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp112:
; %bb.7:
	mov	x22, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Lloh28:
	adrp	x23, __ZNSt3__14coutE@GOTPAGE
Lloh29:
	ldr	x23, [x23, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	x0, x23
	mov	x1, x22
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	mov	w8, w21
	stp	x8, xzr, [sp, #32]
Lloh30:
	adrp	x0, l_.str.3@PAGE
Lloh31:
	add	x0, x0, l_.str.3@PAGEOFF
	add	x8, sp, #8
	add	x3, sp, #32
	mov	w1, #10                         ; =0xa
	mov	w2, #1                          ; =0x1
	bl	__ZN3fmt3v107vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE
Ltmp114:
	add	x0, sp, #8
	bl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp115:
; %bb.8:
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB11_10
; %bb.9:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB11_10:
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fdiv	d8, d8, d0
	str	xzr, [sp, #40]
	str	d8, [sp, #32]
Lloh32:
	adrp	x0, l_.str.4@PAGE
Lloh33:
	add	x0, x0, l_.str.4@PAGEOFF
	add	x8, sp, #8
	add	x3, sp, #32
	mov	w1, #32                         ; =0x20
	mov	w2, #10                         ; =0xa
	bl	__ZN3fmt3v107vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE
Ltmp117:
	add	x0, sp, #8
	bl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp118:
; %bb.11:
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB11_13
; %bb.12:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB11_13:
	ldp	x9, x8, [x20]
	sub	x8, x8, x9
	mul	x8, x8, x19
	ucvtf	d9, x8
	str	xzr, [sp, #40]
	str	d9, [sp, #32]
Lloh34:
	adrp	x0, l_.str.5@PAGE
Lloh35:
	add	x0, x0, l_.str.5@PAGEOFF
	add	x8, sp, #8
	add	x3, sp, #32
	mov	w1, #25                         ; =0x19
	mov	w2, #10                         ; =0xa
	bl	__ZN3fmt3v107vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE
Ltmp120:
	add	x0, sp, #8
	bl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp121:
; %bb.14:
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB11_16
; %bb.15:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB11_16:
	mov	x8, #4472074429978902528        ; =0x3e10000000000000
	fmov	d0, x8
	fmul	d0, d9, d0
	fdiv	d0, d0, d8
	str	xzr, [sp, #40]
	str	d0, [sp, #32]
Lloh36:
	adrp	x0, l_.str.6@PAGE
Lloh37:
	add	x0, x0, l_.str.6@PAGEOFF
	add	x8, sp, #8
	add	x3, sp, #32
	mov	w1, #19                         ; =0x13
	mov	w2, #10                         ; =0xa
	bl	__ZN3fmt3v107vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE
Ltmp123:
	add	x0, sp, #8
	bl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp124:
; %bb.17:
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB11_19
; %bb.18:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB11_19:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB11_20:
	bl	__ZNSt3__125__throw_bad_function_callB8ne180100Ev
LBB11_21:
Ltmp125:
	b	LBB11_25
LBB11_22:
Ltmp122:
	b	LBB11_25
LBB11_23:
Ltmp119:
	b	LBB11_25
LBB11_24:
Ltmp116:
LBB11_25:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB11_28
; %bb.26:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB11_27:
Ltmp113:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
LBB11_28:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpLdrGot	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh24, Lloh25
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpLdrGot	Lloh28, Lloh29
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh36, Lloh37
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table11:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp109-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp109
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp109-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp112-Ltmp109                ;   Call between Ltmp109 and Ltmp112
	.uleb128 Ltmp113-Lfunc_begin5           ;     jumps to Ltmp113
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp112-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp114-Ltmp112                ;   Call between Ltmp112 and Ltmp114
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp114-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp115-Ltmp114                ;   Call between Ltmp114 and Ltmp115
	.uleb128 Ltmp116-Lfunc_begin5           ;     jumps to Ltmp116
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp115-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp117-Ltmp115                ;   Call between Ltmp115 and Ltmp117
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp117-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp118-Ltmp117                ;   Call between Ltmp117 and Ltmp118
	.uleb128 Ltmp119-Lfunc_begin5           ;     jumps to Ltmp119
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp118-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Ltmp120-Ltmp118                ;   Call between Ltmp118 and Ltmp120
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp120-Lfunc_begin5           ; >> Call Site 8 <<
	.uleb128 Ltmp121-Ltmp120                ;   Call between Ltmp120 and Ltmp121
	.uleb128 Ltmp122-Lfunc_begin5           ;     jumps to Ltmp122
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp121-Lfunc_begin5           ; >> Call Site 9 <<
	.uleb128 Ltmp123-Ltmp121                ;   Call between Ltmp121 and Ltmp123
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp123-Lfunc_begin5           ; >> Call Site 10 <<
	.uleb128 Ltmp124-Ltmp123                ;   Call between Ltmp123 and Ltmp124
	.uleb128 Ltmp125-Lfunc_begin5           ;     jumps to Ltmp125
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp124-Lfunc_begin5           ; >> Call Site 11 <<
	.uleb128 Lfunc_end5-Ltmp124             ;   Call between Ltmp124 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI12_0:
	.quad	41                              ; 0x29
	.quad	-9223372036854775760            ; 0x8000000000000030
lCPI12_1:
	.quad	40                              ; 0x28
	.quad	-9223372036854775760            ; 0x8000000000000030
lCPI12_2:
	.quad	43                              ; 0x2b
	.quad	-9223372036854775760            ; 0x8000000000000030
lCPI12_3:
	.quad	38                              ; 0x26
	.quad	-9223372036854775768            ; 0x8000000000000028
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #288
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w27, -40
	.cfi_offset w28, -48
Lloh38:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh39:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh40:
	ldr	x8, [x8]
	stur	x8, [x29, #-40]
	mov	w0, #48                         ; =0x30
	bl	__Znwm
	str	x0, [sp, #48]
Lloh41:
	adrp	x8, lCPI12_0@PAGE
Lloh42:
	ldr	q0, [x8, lCPI12_0@PAGEOFF]
	str	q0, [sp]                        ; 16-byte Folded Spill
	stur	q0, [sp, #56]
Lloh43:
	adrp	x8, l_.str.7@PAGE
Lloh44:
	add	x8, x8, l_.str.7@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldur	q0, [x8, #25]
	stur	q0, [x0, #25]
	strb	wzr, [x0, #41]
Ltmp126:
	add	x0, sp, #48
	bl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp127:
; %bb.1:
	ldrsb	w8, [sp, #71]
	tbz	w8, #31, LBB12_3
; %bb.2:
	ldr	x0, [sp, #48]
	bl	__ZdlPv
LBB12_3:
Ltmp129:
	add	x8, sp, #48
	bl	__Z21create_array_for_testv
Ltmp130:
; %bb.4:
Ltmp132:
	mov	w0, #48                         ; =0x30
	bl	__Znwm
Ltmp133:
; %bb.5:
	str	x0, [sp, #24]
Lloh45:
	adrp	x8, lCPI12_1@PAGE
Lloh46:
	ldr	q0, [x8, lCPI12_1@PAGEOFF]
	stur	q0, [sp, #32]
Lloh47:
	adrp	x8, l_.str.8@PAGE
Lloh48:
	add	x8, x8, l_.str.8@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldr	x8, [x8, #32]
	str	x8, [x0, #32]
	strb	wzr, [x0, #40]
Ltmp135:
	add	x0, sp, #24
	bl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp136:
; %bb.6:
	ldrsb	w8, [sp, #47]
	tbz	w8, #31, LBB12_8
; %bb.7:
	ldr	x0, [sp, #24]
	bl	__ZdlPv
LBB12_8:
Lloh49:
	adrp	x19, __ZTVNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE@GOTPAGE
Lloh50:
	ldr	x19, [x19, __ZTVNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE@GOTPAGEOFF]
	add	x8, x19, #16
Lloh51:
	adrp	x9, __Z14sum_sequentialRKNSt3__16vectorIaNS_9allocatorIaEEEE@PAGE
Lloh52:
	add	x9, x9, __Z14sum_sequentialRKNSt3__16vectorIaNS_9allocatorIaEEEE@PAGEOFF
	stp	x8, x9, [x29, #-72]
	sub	x20, x29, #72
	stur	x20, [x29, #-48]
Ltmp138:
	add	x0, sp, #48
	sub	x2, x29, #72
	mov	w1, #100                        ; =0x64
	bl	__Z13run_benchmarkRKNSt3__16vectorIaNS_9allocatorIaEEEEmNS_8functionIFiS5_EEE
Ltmp139:
; %bb.9:
	ldur	x0, [x29, #-48]
	cmp	x0, x20
	b.eq	LBB12_12
; %bb.10:
	cbz	x0, LBB12_14
; %bb.11:
	mov	w8, #5                          ; =0x5
	b	LBB12_13
LBB12_12:
	mov	w8, #4                          ; =0x4
	sub	x0, x29, #72
LBB12_13:
	ldr	x9, [x0]
	ldr	x8, [x9, x8, lsl #3]
	blr	x8
LBB12_14:
Ltmp141:
	mov	w0, #48                         ; =0x30
	bl	__Znwm
Ltmp142:
; %bb.15:
	str	x0, [sp, #24]
	ldr	q0, [sp]                        ; 16-byte Folded Reload
	stur	q0, [sp, #32]
Lloh53:
	adrp	x8, l_.str.9@PAGE
Lloh54:
	add	x8, x8, l_.str.9@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldur	q0, [x8, #25]
	stur	q0, [x0, #25]
	strb	wzr, [x0, #41]
Ltmp144:
	add	x0, sp, #24
	bl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp145:
; %bb.16:
	ldrsb	w8, [sp, #47]
	tbz	w8, #31, LBB12_18
; %bb.17:
	ldr	x0, [sp, #24]
	bl	__ZdlPv
LBB12_18:
	add	x8, x19, #16
Lloh55:
	adrp	x9, __Z7std_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE@PAGE
Lloh56:
	add	x9, x9, __Z7std_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE@PAGEOFF
	stp	x8, x9, [x29, #-104]
	sub	x20, x29, #104
	stur	x20, [x29, #-80]
Ltmp147:
	add	x0, sp, #48
	sub	x2, x29, #104
	mov	w1, #100                        ; =0x64
	bl	__Z13run_benchmarkRKNSt3__16vectorIaNS_9allocatorIaEEEEmNS_8functionIFiS5_EEE
Ltmp148:
; %bb.19:
	ldur	x0, [x29, #-80]
	cmp	x0, x20
	b.eq	LBB12_22
; %bb.20:
	cbz	x0, LBB12_24
; %bb.21:
	mov	w8, #5                          ; =0x5
	b	LBB12_23
LBB12_22:
	mov	w8, #4                          ; =0x4
	sub	x0, x29, #104
LBB12_23:
	ldr	x9, [x0]
	ldr	x8, [x9, x8, lsl #3]
	blr	x8
LBB12_24:
Ltmp150:
	mov	w0, #48                         ; =0x30
	bl	__Znwm
Ltmp151:
; %bb.25:
	str	x0, [sp, #24]
Lloh57:
	adrp	x8, lCPI12_2@PAGE
Lloh58:
	ldr	q0, [x8, lCPI12_2@PAGEOFF]
	str	q0, [sp]                        ; 16-byte Folded Spill
	stur	q0, [sp, #32]
Lloh59:
	adrp	x8, l_.str.10@PAGE
Lloh60:
	add	x8, x8, l_.str.10@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldur	q0, [x8, #27]
	stur	q0, [x0, #27]
	strb	wzr, [x0, #43]
Ltmp153:
	add	x0, sp, #24
	bl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp154:
; %bb.26:
	ldrsb	w8, [sp, #47]
	tbz	w8, #31, LBB12_28
; %bb.27:
	ldr	x0, [sp, #24]
	bl	__ZdlPv
LBB12_28:
	add	x8, x19, #16
Lloh61:
	adrp	x9, __Z17arm_neon_simd_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE@PAGE
Lloh62:
	add	x9, x9, __Z17arm_neon_simd_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE@PAGEOFF
	stp	x8, x9, [sp, #136]
	add	x20, sp, #136
	str	x20, [sp, #160]
Ltmp156:
	add	x0, sp, #48
	add	x2, sp, #136
	mov	w1, #100                        ; =0x64
	bl	__Z13run_benchmarkRKNSt3__16vectorIaNS_9allocatorIaEEEEmNS_8functionIFiS5_EEE
Ltmp157:
; %bb.29:
	ldr	x0, [sp, #160]
	cmp	x0, x20
	b.eq	LBB12_32
; %bb.30:
	cbz	x0, LBB12_34
; %bb.31:
	mov	w8, #5                          ; =0x5
	b	LBB12_33
LBB12_32:
	mov	w8, #4                          ; =0x4
	add	x0, sp, #136
LBB12_33:
	ldr	x9, [x0]
	ldr	x8, [x9, x8, lsl #3]
	blr	x8
LBB12_34:
Ltmp159:
	mov	w0, #40                         ; =0x28
	bl	__Znwm
Ltmp160:
; %bb.35:
	str	x0, [sp, #24]
Lloh63:
	adrp	x8, lCPI12_3@PAGE
Lloh64:
	ldr	q0, [x8, lCPI12_3@PAGEOFF]
	stur	q0, [sp, #32]
Lloh65:
	adrp	x8, l_.str.11@PAGE
Lloh66:
	add	x8, x8, l_.str.11@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldur	x8, [x8, #30]
	stur	x8, [x0, #30]
	strb	wzr, [x0, #38]
Ltmp162:
	add	x0, sp, #24
	bl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp163:
; %bb.36:
	ldrsb	w8, [sp, #47]
	tbz	w8, #31, LBB12_38
; %bb.37:
	ldr	x0, [sp, #24]
	bl	__ZdlPv
LBB12_38:
	add	x8, x19, #16
Lloh67:
	adrp	x9, __Z12parallel_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE@PAGE
Lloh68:
	add	x9, x9, __Z12parallel_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE@PAGEOFF
	stp	x8, x9, [sp, #104]
	add	x20, sp, #104
	str	x20, [sp, #128]
Ltmp165:
	add	x0, sp, #48
	add	x2, sp, #104
	mov	w1, #100                        ; =0x64
	bl	__Z13run_benchmarkRKNSt3__16vectorIaNS_9allocatorIaEEEEmNS_8functionIFiS5_EEE
Ltmp166:
; %bb.39:
	ldr	x0, [sp, #128]
	cmp	x0, x20
	b.eq	LBB12_42
; %bb.40:
	cbz	x0, LBB12_44
; %bb.41:
	mov	w8, #5                          ; =0x5
	b	LBB12_43
LBB12_42:
	mov	w8, #4                          ; =0x4
	add	x0, sp, #104
LBB12_43:
	ldr	x9, [x0]
	ldr	x8, [x9, x8, lsl #3]
	blr	x8
LBB12_44:
Ltmp168:
	mov	w0, #48                         ; =0x30
	bl	__Znwm
Ltmp169:
; %bb.45:
	str	x0, [sp, #24]
	ldr	q0, [sp]                        ; 16-byte Folded Reload
	stur	q0, [sp, #32]
Lloh69:
	adrp	x8, l_.str.12@PAGE
Lloh70:
	add	x8, x8, l_.str.12@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldur	q0, [x8, #27]
	stur	q0, [x0, #27]
	strb	wzr, [x0, #43]
Ltmp171:
	add	x0, sp, #24
	bl	__Z20print_with_timestampRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp172:
; %bb.46:
	ldrsb	w8, [sp, #47]
	tbz	w8, #31, LBB12_48
; %bb.47:
	ldr	x0, [sp, #24]
	bl	__ZdlPv
LBB12_48:
	add	x8, x19, #16
Lloh71:
	adrp	x9, __Z17parallel_neon_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE@PAGE
Lloh72:
	add	x9, x9, __Z17parallel_neon_sumRKNSt3__16vectorIaNS_9allocatorIaEEEE@PAGEOFF
	stp	x8, x9, [sp, #72]
	add	x20, sp, #72
	str	x20, [sp, #96]
Ltmp174:
	add	x0, sp, #48
	add	x2, sp, #72
	mov	w1, #100                        ; =0x64
	bl	__Z13run_benchmarkRKNSt3__16vectorIaNS_9allocatorIaEEEEmNS_8functionIFiS5_EEE
Ltmp175:
; %bb.49:
	ldr	x0, [sp, #96]
	cmp	x0, x20
	b.eq	LBB12_52
; %bb.50:
	cbz	x0, LBB12_54
; %bb.51:
	mov	w8, #5                          ; =0x5
	b	LBB12_53
LBB12_52:
	mov	w8, #4                          ; =0x4
	add	x0, sp, #72
LBB12_53:
	ldr	x9, [x0]
	ldr	x8, [x9, x8, lsl #3]
	blr	x8
LBB12_54:
	ldr	x0, [sp, #48]
	cbz	x0, LBB12_56
; %bb.55:
	str	x0, [sp, #56]
	bl	__ZdlPv
LBB12_56:
	ldur	x8, [x29, #-40]
Lloh73:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh74:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh75:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB12_58
; %bb.57:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
LBB12_58:
	bl	___stack_chk_fail
LBB12_59:
Ltmp176:
	mov	x19, x0
	ldr	x0, [sp, #96]
	cmp	x0, x20
	b.ne	LBB12_77
; %bb.60:
	mov	w8, #4                          ; =0x4
	add	x0, sp, #72
	b	LBB12_79
LBB12_61:
Ltmp173:
	b	LBB12_81
LBB12_62:
Ltmp170:
	b	LBB12_84
LBB12_63:
Ltmp167:
	mov	x19, x0
	ldr	x0, [sp, #128]
	cmp	x0, x20
	b.ne	LBB12_77
; %bb.64:
	mov	w8, #4                          ; =0x4
	add	x0, sp, #104
	b	LBB12_79
LBB12_65:
Ltmp164:
	b	LBB12_81
LBB12_66:
Ltmp161:
	b	LBB12_84
LBB12_67:
Ltmp158:
	mov	x19, x0
	ldr	x0, [sp, #160]
	cmp	x0, x20
	b.ne	LBB12_77
; %bb.68:
	mov	w8, #4                          ; =0x4
	add	x0, sp, #136
	b	LBB12_79
LBB12_69:
Ltmp155:
	b	LBB12_81
LBB12_70:
Ltmp152:
	b	LBB12_84
LBB12_71:
Ltmp149:
	mov	x19, x0
	ldur	x0, [x29, #-80]
	cmp	x0, x20
	b.ne	LBB12_77
; %bb.72:
	mov	w8, #4                          ; =0x4
	sub	x0, x29, #104
	b	LBB12_79
LBB12_73:
Ltmp146:
	b	LBB12_81
LBB12_74:
Ltmp143:
	b	LBB12_84
LBB12_75:
Ltmp140:
	mov	x19, x0
	ldur	x0, [x29, #-48]
	cmp	x0, x20
	b.ne	LBB12_77
; %bb.76:
	mov	w8, #4                          ; =0x4
	sub	x0, x29, #72
	b	LBB12_79
LBB12_77:
	cbz	x0, LBB12_85
; %bb.78:
	mov	w8, #5                          ; =0x5
LBB12_79:
	ldr	x9, [x0]
	ldr	x8, [x9, x8, lsl #3]
	blr	x8
	b	LBB12_85
LBB12_80:
Ltmp137:
LBB12_81:
	mov	x19, x0
	ldrsb	w8, [sp, #47]
	tbz	w8, #31, LBB12_85
; %bb.82:
	ldr	x0, [sp, #24]
	bl	__ZdlPv
	b	LBB12_85
LBB12_83:
Ltmp134:
LBB12_84:
	mov	x19, x0
LBB12_85:
	ldr	x0, [sp, #48]
	cbnz	x0, LBB12_87
LBB12_86:
	mov	x0, x19
	bl	__Unwind_Resume
LBB12_87:
	str	x0, [sp, #56]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB12_88:
Ltmp131:
	bl	__Unwind_Resume
LBB12_89:
Ltmp128:
	mov	x19, x0
	ldrsb	w8, [sp, #71]
	tbz	w8, #31, LBB12_86
; %bb.90:
	ldr	x0, [sp, #48]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdrp	Lloh41, Lloh43
	.loh AdrpLdr	Lloh41, Lloh42
	.loh AdrpLdrGotLdr	Lloh38, Lloh39, Lloh40
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdrp	Lloh45, Lloh47
	.loh AdrpLdr	Lloh45, Lloh46
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpLdrGot	Lloh49, Lloh50
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdrp	Lloh57, Lloh59
	.loh AdrpLdr	Lloh57, Lloh58
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdrp	Lloh63, Lloh65
	.loh AdrpLdr	Lloh63, Lloh64
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpLdrGotLdr	Lloh73, Lloh74, Lloh75
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table12:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp126-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp126
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp126-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp127-Ltmp126                ;   Call between Ltmp126 and Ltmp127
	.uleb128 Ltmp128-Lfunc_begin6           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp129-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Ltmp130-Ltmp129                ;   Call between Ltmp129 and Ltmp130
	.uleb128 Ltmp131-Lfunc_begin6           ;     jumps to Ltmp131
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp132-Lfunc_begin6           ; >> Call Site 4 <<
	.uleb128 Ltmp133-Ltmp132                ;   Call between Ltmp132 and Ltmp133
	.uleb128 Ltmp134-Lfunc_begin6           ;     jumps to Ltmp134
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp135-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Ltmp136-Ltmp135                ;   Call between Ltmp135 and Ltmp136
	.uleb128 Ltmp137-Lfunc_begin6           ;     jumps to Ltmp137
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp138-Lfunc_begin6           ; >> Call Site 6 <<
	.uleb128 Ltmp139-Ltmp138                ;   Call between Ltmp138 and Ltmp139
	.uleb128 Ltmp140-Lfunc_begin6           ;     jumps to Ltmp140
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp139-Lfunc_begin6           ; >> Call Site 7 <<
	.uleb128 Ltmp141-Ltmp139                ;   Call between Ltmp139 and Ltmp141
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp141-Lfunc_begin6           ; >> Call Site 8 <<
	.uleb128 Ltmp142-Ltmp141                ;   Call between Ltmp141 and Ltmp142
	.uleb128 Ltmp143-Lfunc_begin6           ;     jumps to Ltmp143
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp144-Lfunc_begin6           ; >> Call Site 9 <<
	.uleb128 Ltmp145-Ltmp144                ;   Call between Ltmp144 and Ltmp145
	.uleb128 Ltmp146-Lfunc_begin6           ;     jumps to Ltmp146
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp147-Lfunc_begin6           ; >> Call Site 10 <<
	.uleb128 Ltmp148-Ltmp147                ;   Call between Ltmp147 and Ltmp148
	.uleb128 Ltmp149-Lfunc_begin6           ;     jumps to Ltmp149
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin6           ; >> Call Site 11 <<
	.uleb128 Ltmp150-Ltmp148                ;   Call between Ltmp148 and Ltmp150
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp150-Lfunc_begin6           ; >> Call Site 12 <<
	.uleb128 Ltmp151-Ltmp150                ;   Call between Ltmp150 and Ltmp151
	.uleb128 Ltmp152-Lfunc_begin6           ;     jumps to Ltmp152
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp153-Lfunc_begin6           ; >> Call Site 13 <<
	.uleb128 Ltmp154-Ltmp153                ;   Call between Ltmp153 and Ltmp154
	.uleb128 Ltmp155-Lfunc_begin6           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp156-Lfunc_begin6           ; >> Call Site 14 <<
	.uleb128 Ltmp157-Ltmp156                ;   Call between Ltmp156 and Ltmp157
	.uleb128 Ltmp158-Lfunc_begin6           ;     jumps to Ltmp158
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp157-Lfunc_begin6           ; >> Call Site 15 <<
	.uleb128 Ltmp159-Ltmp157                ;   Call between Ltmp157 and Ltmp159
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp159-Lfunc_begin6           ; >> Call Site 16 <<
	.uleb128 Ltmp160-Ltmp159                ;   Call between Ltmp159 and Ltmp160
	.uleb128 Ltmp161-Lfunc_begin6           ;     jumps to Ltmp161
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp162-Lfunc_begin6           ; >> Call Site 17 <<
	.uleb128 Ltmp163-Ltmp162                ;   Call between Ltmp162 and Ltmp163
	.uleb128 Ltmp164-Lfunc_begin6           ;     jumps to Ltmp164
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin6           ; >> Call Site 18 <<
	.uleb128 Ltmp166-Ltmp165                ;   Call between Ltmp165 and Ltmp166
	.uleb128 Ltmp167-Lfunc_begin6           ;     jumps to Ltmp167
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp166-Lfunc_begin6           ; >> Call Site 19 <<
	.uleb128 Ltmp168-Ltmp166                ;   Call between Ltmp166 and Ltmp168
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp168-Lfunc_begin6           ; >> Call Site 20 <<
	.uleb128 Ltmp169-Ltmp168                ;   Call between Ltmp168 and Ltmp169
	.uleb128 Ltmp170-Lfunc_begin6           ;     jumps to Ltmp170
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp171-Lfunc_begin6           ; >> Call Site 21 <<
	.uleb128 Ltmp172-Ltmp171                ;   Call between Ltmp171 and Ltmp172
	.uleb128 Ltmp173-Lfunc_begin6           ;     jumps to Ltmp173
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp174-Lfunc_begin6           ; >> Call Site 22 <<
	.uleb128 Ltmp175-Ltmp174                ;   Call between Ltmp174 and Ltmp175
	.uleb128 Ltmp176-Lfunc_begin6           ;     jumps to Ltmp176
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp175-Lfunc_begin6           ; >> Call Site 23 <<
	.uleb128 Lfunc_end6-Ltmp175             ;   Call between Ltmp175 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIaNS_9allocatorIaEEE20__throw_length_errorB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIaNS_9allocatorIaEEE20__throw_length_errorB8ne180100Ev
	.globl	__ZNKSt3__16vectorIaNS_9allocatorIaEEE20__throw_length_errorB8ne180100Ev
	.weak_def_can_be_hidden	__ZNKSt3__16vectorIaNS_9allocatorIaEEE20__throw_length_errorB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIaNS_9allocatorIaEEE20__throw_length_errorB8ne180100Ev: ; @_ZNKSt3__16vectorIaNS_9allocatorIaEEE20__throw_length_errorB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh76:
	adrp	x0, l_.str.13@PAGE
Lloh77:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.loh AdrpAdd	Lloh76, Lloh77
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne180100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne180100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne180100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne180100EPKc
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp177:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne180100EPKc
Ltmp178:
; %bb.1:
Lloh78:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh79:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh80:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh81:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB15_2:
Ltmp179:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh80, Lloh81
	.loh AdrpLdrGot	Lloh78, Lloh79
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table15:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp177-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp177
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp177-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp178-Ltmp177                ;   Call between Ltmp177 and Ltmp178
	.uleb128 Ltmp179-Lfunc_begin7           ;     jumps to Ltmp179
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp178-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp178             ;   Call between Ltmp178 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B8ne180100EPKc ; -- Begin function _ZNSt12length_errorC1B8ne180100EPKc
	.globl	__ZNSt12length_errorC1B8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B8ne180100EPKc
	.p2align	2
__ZNSt12length_errorC1B8ne180100EPKc:   ; @_ZNSt12length_errorC1B8ne180100EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh82:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh83:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh82, Lloh83
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB8ne180100v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne180100v
	.globl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB8ne180100v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB8ne180100v: ; @_ZSt28__throw_bad_array_new_lengthB8ne180100v
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	bl	__ZNSt20bad_array_new_lengthC1Ev
Lloh84:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh85:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh86:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh87:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh86, Lloh87
	.loh AdrpLdrGot	Lloh84, Lloh85
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev
	.weak_def_can_be_hidden	__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev: ; @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh88:
	adrp	x0, l_.str.13@PAGE
Lloh89:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.loh AdrpAdd	Lloh88, Lloh89
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB8ne180100IS2_JZ12parallel_sumRKNS_6vectorIaNS1_IaEEEEE3$_0EvvEEvRS3_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB8ne180100IS2_JZ12parallel_sumRKNS_6vectorIaNS1_IaEEEEE3$_0EvvEEvRS3_PT_DpOT0_: ; @"_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB8ne180100IS2_JZ12parallel_sumRKNS_6vectorIaNS1_IaEEEEE3$_0EvvEEvRS3_PT_DpOT0_"
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x22, x1
	mov	x21, x0
	mov	w0, #8                          ; =0x8
	bl	__Znwm
	mov	x20, x0
Ltmp180:
	bl	__ZNSt3__115__thread_structC1Ev
Ltmp181:
; %bb.1:
Ltmp183:
	mov	w0, #48                         ; =0x30
	bl	__Znwm
Ltmp184:
; %bb.2:
	mov	x19, x0
	str	x20, [x0]
	ldp	q0, q1, [x22]
	stur	q0, [x0, #8]
	stur	q1, [x0, #24]
	ldr	x8, [x22, #32]
	str	x8, [x0, #40]
Ltmp186:
Lloh90:
	adrp	x2, __ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ12parallel_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEEEEPvSF_@PAGE
Lloh91:
	add	x2, x2, __ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ12parallel_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEEEEPvSF_@PAGEOFF
	mov	x0, x21
	mov	x1, #0                          ; =0x0
	mov	x3, x19
	bl	_pthread_create
Ltmp187:
; %bb.3:
	cbnz	w0, LBB19_5
; %bb.4:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB19_5:
Ltmp188:
Lloh92:
	adrp	x1, l_.str.14@PAGE
Lloh93:
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__120__throw_system_errorEiPKc
Ltmp189:
; %bb.6:
	brk	#0x1
LBB19_7:
Ltmp185:
	mov	x21, x0
	mov	x0, x20
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
LBB19_8:
Ltmp182:
	mov	x21, x0
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
LBB19_9:
Ltmp190:
	mov	x21, x0
	ldr	x0, [x19]
	str	xzr, [x19]
	cbnz	x0, LBB19_11
; %bb.10:
	mov	x20, x19
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
LBB19_11:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
	mov	x20, x19
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh90, Lloh91
	.loh AdrpAdd	Lloh92, Lloh93
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table19:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp180-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp180
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp180-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp181-Ltmp180                ;   Call between Ltmp180 and Ltmp181
	.uleb128 Ltmp182-Lfunc_begin8           ;     jumps to Ltmp182
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp183-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Ltmp184-Ltmp183                ;   Call between Ltmp183 and Ltmp184
	.uleb128 Ltmp185-Lfunc_begin8           ;     jumps to Ltmp185
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp186-Lfunc_begin8           ; >> Call Site 4 <<
	.uleb128 Ltmp189-Ltmp186                ;   Call between Ltmp186 and Ltmp189
	.uleb128 Ltmp190-Lfunc_begin8           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp189-Lfunc_begin8           ; >> Call Site 5 <<
	.uleb128 Lfunc_end8-Ltmp189             ;   Call between Ltmp189 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ12parallel_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEEEEPvSF_
__ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ12parallel_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEEEEPvSF_: ; @"_ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ12parallel_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEEEEPvSF_"
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	str	x0, [sp, #8]
Ltmp191:
	bl	__ZNSt3__119__thread_local_dataEv
Ltmp192:
; %bb.1:
	ldr	x1, [x19]
	str	xzr, [x19]
	ldr	x0, [x0]
Ltmp193:
	bl	_pthread_setspecific
Ltmp194:
; %bb.2:
	ldp	x11, x8, [x19, #8]
	subs	x10, x8, x11
	b.le	LBB20_5
; %bb.3:
	ldr	x9, [x19, #24]
	ldr	x9, [x9]
	cmp	x10, #8
	b.hs	LBB20_6
; %bb.4:
	mov	w13, #0                         ; =0x0
	mov	x14, x11
	b	LBB20_16
LBB20_5:
	mov	w13, #0                         ; =0x0
	b	LBB20_18
LBB20_6:
	cmp	x10, #64
	b.hs	LBB20_8
; %bb.7:
	mov	w13, #0                         ; =0x0
	mov	x12, #0                         ; =0x0
	b	LBB20_12
LBB20_8:
	movi.2d	v0, #0000000000000000
	and	x12, x10, #0xffffffffffffffc0
	movi.2d	v4, #0000000000000000
	add	x13, x11, x9
	movi.2d	v1, #0000000000000000
	add	x13, x13, #32
	movi.2d	v5, #0000000000000000
	mov	x14, x12
	movi.2d	v6, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v21, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v19, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v20, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v22, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v23, #0000000000000000
LBB20_9:                                ; =>This Inner Loop Header: Depth=1
	ldp	q24, q25, [x13, #-32]
	sshll.8h	v26, v24, #0
	sshll2.8h	v24, v24, #0
	sshll.8h	v27, v25, #0
	sshll2.8h	v25, v25, #0
	ldp	q28, q29, [x13], #64
	sshll.8h	v30, v28, #0
	sshll2.8h	v28, v28, #0
	sshll.8h	v31, v29, #0
	sshll2.8h	v29, v29, #0
	saddw2.4s	v5, v5, v24
	saddw.4s	v1, v1, v24
	saddw2.4s	v4, v4, v26
	saddw.4s	v0, v0, v26
	saddw2.4s	v21, v21, v25
	saddw.4s	v7, v7, v25
	saddw2.4s	v18, v18, v27
	saddw.4s	v6, v6, v27
	saddw2.4s	v20, v20, v28
	saddw.4s	v3, v3, v28
	saddw2.4s	v19, v19, v30
	saddw.4s	v2, v2, v30
	saddw2.4s	v23, v23, v29
	saddw.4s	v17, v17, v29
	saddw2.4s	v22, v22, v31
	saddw.4s	v16, v16, v31
	subs	x14, x14, #64
	b.ne	LBB20_9
; %bb.10:
	add.4s	v4, v18, v4
	add.4s	v5, v21, v5
	add.4s	v0, v6, v0
	add.4s	v1, v7, v1
	add.4s	v6, v22, v19
	add.4s	v4, v6, v4
	add.4s	v6, v23, v20
	add.4s	v5, v6, v5
	add.4s	v2, v16, v2
	add.4s	v0, v2, v0
	add.4s	v2, v17, v3
	add.4s	v1, v2, v1
	add.4s	v0, v0, v1
	add.4s	v1, v4, v5
	add.4s	v0, v0, v1
	addv.4s	s0, v0
	fmov	w13, s0
	cmp	x10, x12
	b.eq	LBB20_18
; %bb.11:
	tst	x10, #0x38
	b.eq	LBB20_15
LBB20_12:
	and	x15, x10, #0xfffffffffffffff8
	add	x14, x11, x15
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	mov.s	v1[0], w13
	sub	x13, x12, x15
	add	x11, x12, x11
	add	x11, x9, x11
LBB20_13:                               ; =>This Inner Loop Header: Depth=1
	ldr	d2, [x11], #8
	sshll.8h	v2, v2, #0
	saddw2.4s	v0, v0, v2
	saddw.4s	v1, v1, v2
	adds	x13, x13, #8
	b.ne	LBB20_13
; %bb.14:
	add.4s	v0, v1, v0
	addv.4s	s0, v0
	fmov	w13, s0
	cmp	x10, x15
	b.ne	LBB20_16
	b	LBB20_18
LBB20_15:
	add	x14, x11, x12
LBB20_16:
	sub	x8, x8, x14
	add	x9, x9, x14
LBB20_17:                               ; =>This Inner Loop Header: Depth=1
	ldrsb	w10, [x9], #1
	add	w13, w13, w10
	subs	x8, x8, #1
	b.ne	LBB20_17
LBB20_18:
	ldr	x8, [x19, #32]
	ldrsw	x9, [x19, #40]
	ldr	x8, [x8]
	str	w13, [x8, x9, lsl #2]
	ldr	x0, [x19]
	str	xzr, [x19]
	cbz	x0, LBB20_20
; %bb.19:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
LBB20_20:
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB20_21:
Ltmp195:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ12parallel_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEENS3_ISD_EEED1B8ne180100Ev
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table20:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp191-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp194-Ltmp191                ;   Call between Ltmp191 and Ltmp194
	.uleb128 Ltmp195-Lfunc_begin9           ;     jumps to Ltmp195
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp194-Lfunc_begin9           ; >> Call Site 2 <<
	.uleb128 Lfunc_end9-Ltmp194             ;   Call between Ltmp194 and Lfunc_end9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ12parallel_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEENS3_ISD_EEED1B8ne180100Ev
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ12parallel_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEENS3_ISD_EEED1B8ne180100Ev: ; @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ12parallel_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEENS3_ISD_EEED1B8ne180100Ev"
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x20, [x0]
	str	xzr, [x0]
	cbz	x20, LBB21_4
; %bb.1:
	ldr	x0, [x20]
	str	xzr, [x20]
	cbz	x0, LBB21_3
; %bb.2:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
LBB21_3:
	mov	x0, x20
	bl	__ZdlPv
LBB21_4:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.globl	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.weak_def_can_be_hidden	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev: ; @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh94:
	adrp	x0, l_.str.13@PAGE
Lloh95:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.loh AdrpAdd	Lloh94, Lloh95
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB8ne180100IS2_JZ17parallel_neon_sumRKNS_6vectorIaNS1_IaEEEEE3$_0EvvEEvRS3_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB8ne180100IS2_JZ17parallel_neon_sumRKNS_6vectorIaNS1_IaEEEEE3$_0EvvEEvRS3_PT_DpOT0_: ; @"_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB8ne180100IS2_JZ17parallel_neon_sumRKNS_6vectorIaNS1_IaEEEEE3$_0EvvEEvRS3_PT_DpOT0_"
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x22, x1
	mov	x21, x0
	mov	w0, #8                          ; =0x8
	bl	__Znwm
	mov	x20, x0
Ltmp196:
	bl	__ZNSt3__115__thread_structC1Ev
Ltmp197:
; %bb.1:
Ltmp199:
	mov	w0, #48                         ; =0x30
	bl	__Znwm
Ltmp200:
; %bb.2:
	mov	x19, x0
	str	x20, [x0]
	ldp	q0, q1, [x22]
	stur	q0, [x0, #8]
	stur	q1, [x0, #24]
	ldr	x8, [x22, #32]
	str	x8, [x0, #40]
Ltmp202:
Lloh96:
	adrp	x2, __ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ17parallel_neon_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEEEEPvSF_@PAGE
Lloh97:
	add	x2, x2, __ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ17parallel_neon_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEEEEPvSF_@PAGEOFF
	mov	x0, x21
	mov	x1, #0                          ; =0x0
	mov	x3, x19
	bl	_pthread_create
Ltmp203:
; %bb.3:
	cbnz	w0, LBB23_5
; %bb.4:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB23_5:
Ltmp204:
Lloh98:
	adrp	x1, l_.str.14@PAGE
Lloh99:
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__120__throw_system_errorEiPKc
Ltmp205:
; %bb.6:
	brk	#0x1
LBB23_7:
Ltmp201:
	mov	x21, x0
	mov	x0, x20
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
LBB23_8:
Ltmp198:
	mov	x21, x0
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
LBB23_9:
Ltmp206:
	mov	x21, x0
	ldr	x0, [x19]
	str	xzr, [x19]
	cbnz	x0, LBB23_11
; %bb.10:
	mov	x20, x19
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
LBB23_11:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
	mov	x20, x19
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh96, Lloh97
	.loh AdrpAdd	Lloh98, Lloh99
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table23:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ; >> Call Site 1 <<
	.uleb128 Ltmp196-Lfunc_begin10          ;   Call between Lfunc_begin10 and Ltmp196
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp196-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp197-Ltmp196                ;   Call between Ltmp196 and Ltmp197
	.uleb128 Ltmp198-Lfunc_begin10          ;     jumps to Ltmp198
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp199-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Ltmp200-Ltmp199                ;   Call between Ltmp199 and Ltmp200
	.uleb128 Ltmp201-Lfunc_begin10          ;     jumps to Ltmp201
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp202-Lfunc_begin10          ; >> Call Site 4 <<
	.uleb128 Ltmp205-Ltmp202                ;   Call between Ltmp202 and Ltmp205
	.uleb128 Ltmp206-Lfunc_begin10          ;     jumps to Ltmp206
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp205-Lfunc_begin10          ; >> Call Site 5 <<
	.uleb128 Lfunc_end10-Ltmp205            ;   Call between Ltmp205 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ17parallel_neon_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEEEEPvSF_
__ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ17parallel_neon_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEEEEPvSF_: ; @"_ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ17parallel_neon_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEEEEPvSF_"
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	str	x0, [sp, #8]
Ltmp207:
	bl	__ZNSt3__119__thread_local_dataEv
Ltmp208:
; %bb.1:
	ldr	x1, [x19]
	str	xzr, [x19]
	ldr	x0, [x0]
Ltmp209:
	bl	_pthread_setspecific
Ltmp210:
; %bb.2:
	ldp	x9, x8, [x19, #16]
	ldr	x10, [x19, #8]
	ldr	x8, [x8]
	add	x11, x10, #15
	movi.2d	v0, #0000000000000000
	cmp	x11, x9
	b.hs	LBB24_5
LBB24_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	q1, [x8, x10]
	sshll.8h	v2, v1, #0
	sshll2.8h	v1, v1, #0
	sadalp.4s	v0, v2
	sadalp.4s	v0, v1
	add	x11, x10, #16
	add	x12, x10, #31
	mov	x10, x11
	cmp	x12, x9
	b.lo	LBB24_3
; %bb.4:
	addv.4s	s2, v0
	fmov	w13, s2
	subs	x10, x9, x11
	b.hi	LBB24_6
	b	LBB24_20
LBB24_5:
	mov	x11, x10
	addv.4s	s2, v0
	fmov	w13, s2
	subs	x10, x9, x10
	b.ls	LBB24_20
LBB24_6:
	cmp	x10, #8
	b.hs	LBB24_8
; %bb.7:
	mov	x14, x11
	b	LBB24_18
LBB24_8:
	cmp	x10, #32
	b.hs	LBB24_10
; %bb.9:
	mov	x12, #0                         ; =0x0
	b	LBB24_14
LBB24_10:
	and	x12, x10, #0xffffffffffffffe0
	movi.2d	v1, #0000000000000000
	movi.2d	v0, #0000000000000000
	mov.s	v0[0], v2[0]
	add	x13, x11, x8
	add	x13, x13, #16
	mov	x14, x12
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
LBB24_11:                               ; =>This Inner Loop Header: Depth=1
	ldp	q16, q17, [x13, #-16]
	sshll.8h	v18, v16, #0
	sshll2.8h	v16, v16, #0
	sshll.8h	v19, v17, #0
	sshll2.8h	v17, v17, #0
	saddw2.4s	v3, v3, v16
	saddw.4s	v2, v2, v16
	saddw2.4s	v1, v1, v18
	saddw.4s	v0, v0, v18
	saddw2.4s	v7, v7, v17
	saddw.4s	v5, v5, v17
	saddw2.4s	v6, v6, v19
	saddw.4s	v4, v4, v19
	add	x13, x13, #32
	subs	x14, x14, #32
	b.ne	LBB24_11
; %bb.12:
	add.4s	v1, v6, v1
	add.4s	v3, v7, v3
	add.4s	v0, v4, v0
	add.4s	v2, v5, v2
	add.4s	v0, v0, v2
	add.4s	v1, v1, v3
	add.4s	v0, v0, v1
	addv.4s	s0, v0
	fmov	w13, s0
	cmp	x10, x12
	b.eq	LBB24_20
; %bb.13:
	tst	x10, #0x18
	b.eq	LBB24_17
LBB24_14:
	and	x15, x10, #0xfffffffffffffff8
	add	x14, x11, x15
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	mov.s	v1[0], w13
	sub	x13, x12, x15
	add	x12, x8, x12
	add	x11, x12, x11
LBB24_15:                               ; =>This Inner Loop Header: Depth=1
	ldr	d2, [x11], #8
	sshll.8h	v2, v2, #0
	saddw2.4s	v0, v0, v2
	saddw.4s	v1, v1, v2
	adds	x13, x13, #8
	b.ne	LBB24_15
; %bb.16:
	add.4s	v0, v1, v0
	addv.4s	s0, v0
	fmov	w13, s0
	cmp	x10, x15
	b.ne	LBB24_18
	b	LBB24_20
LBB24_17:
	add	x14, x11, x12
LBB24_18:
	sub	x9, x9, x14
	add	x8, x8, x14
LBB24_19:                               ; =>This Inner Loop Header: Depth=1
	ldrsb	w10, [x8], #1
	add	w13, w13, w10
	subs	x9, x9, #1
	b.ne	LBB24_19
LBB24_20:
	ldr	x8, [x19, #32]
	ldrsw	x9, [x19, #40]
	ldr	x8, [x8]
	str	w13, [x8, x9, lsl #2]
	ldr	x0, [x19]
	str	xzr, [x19]
	cbz	x0, LBB24_22
; %bb.21:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
LBB24_22:
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, #0                          ; =0x0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB24_23:
Ltmp211:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ17parallel_neon_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEENS3_ISD_EEED1B8ne180100Ev
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table24:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp207-Lfunc_begin11          ; >> Call Site 1 <<
	.uleb128 Ltmp210-Ltmp207                ;   Call between Ltmp207 and Ltmp210
	.uleb128 Ltmp211-Lfunc_begin11          ;     jumps to Ltmp211
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp210-Lfunc_begin11          ; >> Call Site 2 <<
	.uleb128 Lfunc_end11-Ltmp210            ;   Call between Ltmp210 and Lfunc_end11
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ17parallel_neon_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEENS3_ISD_EEED1B8ne180100Ev
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ17parallel_neon_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEENS3_ISD_EEED1B8ne180100Ev: ; @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ17parallel_neon_sumRKNS_6vectorIaNS_9allocatorIaEEEEE3$_0EEENS3_ISD_EEED1B8ne180100Ev"
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x20, [x0]
	str	xzr, [x0]
	cbz	x20, LBB25_4
; %bb.1:
	ldr	x0, [x20]
	str	xzr, [x20]
	cbz	x0, LBB25_3
; %bb.2:
	bl	__ZNSt3__115__thread_structD1Ev
	bl	__ZdlPv
LBB25_3:
	mov	x0, x20
	bl	__ZdlPv
LBB25_4:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.weak_def_can_be_hidden	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh100:
	adrp	x0, l_.str.15@PAGE
Lloh101:
	add	x0, x0, l_.str.15@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.loh AdrpAdd	Lloh100, Lloh101
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp212:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp213:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB27_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB27_7
; %bb.3:
Ltmp215:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp216:
; %bb.4:
Ltmp217:
Lloh102:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh103:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp218:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp219:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp220:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB27_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp222:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp223:
; %bb.8:
	cbnz	x0, LBB27_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
	orr	w1, w8, w9
Ltmp225:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp226:
LBB27_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB27_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB27_12:
Ltmp227:
	b	LBB27_15
LBB27_13:
Ltmp221:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB27_16
LBB27_14:
Ltmp224:
LBB27_15:
	mov	x20, x0
LBB27_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB27_18
LBB27_17:
Ltmp214:
	mov	x20, x0
LBB27_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp228:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp229:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB27_11
LBB27_20:
Ltmp230:
	mov	x19, x0
Ltmp231:
	bl	___cxa_end_catch
Ltmp232:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB27_22:
Ltmp233:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh102, Lloh103
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table27:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp212-Lfunc_begin12          ; >> Call Site 1 <<
	.uleb128 Ltmp213-Ltmp212                ;   Call between Ltmp212 and Ltmp213
	.uleb128 Ltmp214-Lfunc_begin12          ;     jumps to Ltmp214
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp215-Lfunc_begin12          ; >> Call Site 2 <<
	.uleb128 Ltmp216-Ltmp215                ;   Call between Ltmp215 and Ltmp216
	.uleb128 Ltmp224-Lfunc_begin12          ;     jumps to Ltmp224
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp217-Lfunc_begin12          ; >> Call Site 3 <<
	.uleb128 Ltmp220-Ltmp217                ;   Call between Ltmp217 and Ltmp220
	.uleb128 Ltmp221-Lfunc_begin12          ;     jumps to Ltmp221
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp222-Lfunc_begin12          ; >> Call Site 4 <<
	.uleb128 Ltmp223-Ltmp222                ;   Call between Ltmp222 and Ltmp223
	.uleb128 Ltmp224-Lfunc_begin12          ;     jumps to Ltmp224
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp225-Lfunc_begin12          ; >> Call Site 5 <<
	.uleb128 Ltmp226-Ltmp225                ;   Call between Ltmp225 and Ltmp226
	.uleb128 Ltmp227-Lfunc_begin12          ;     jumps to Ltmp227
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp226-Lfunc_begin12          ; >> Call Site 6 <<
	.uleb128 Ltmp228-Ltmp226                ;   Call between Ltmp226 and Ltmp228
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp228-Lfunc_begin12          ; >> Call Site 7 <<
	.uleb128 Ltmp229-Ltmp228                ;   Call between Ltmp228 and Ltmp229
	.uleb128 Ltmp230-Lfunc_begin12          ;     jumps to Ltmp230
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp229-Lfunc_begin12          ; >> Call Site 8 <<
	.uleb128 Ltmp231-Ltmp229                ;   Call between Ltmp229 and Ltmp231
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp231-Lfunc_begin12          ; >> Call Site 9 <<
	.uleb128 Ltmp232-Ltmp231                ;   Call between Ltmp231 and Ltmp232
	.uleb128 Ltmp233-Lfunc_begin12          ;     jumps to Ltmp233
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp232-Lfunc_begin12          ; >> Call Site 10 <<
	.uleb128 Lfunc_end12-Ltmp232            ;   Call between Ltmp232 and Lfunc_end12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end12:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB28_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB28_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB28_15
LBB28_3:
	cmp	x23, #1
	b.lt	LBB28_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB28_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB28_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB28_8
LBB28_7:
	and	x8, x23, #0xfffffffffffffff8
	add	x8, x8, #8
	orr	x9, x23, #0x7
	cmp	x9, #23
	csel	x8, x8, x9, eq
	add	x26, x8, #1
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB28_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp234:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp235:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB28_11
; %bb.10:
	cmp	x24, x23
	b.ne	LBB28_15
	b	LBB28_12
LBB28_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB28_15
LBB28_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB28_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB28_15
LBB28_14:
	str	xzr, [x20, #24]
	b	LBB28_16
LBB28_15:
	mov	x19, #0                         ; =0x0
LBB28_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB28_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
LBB28_18:
Ltmp236:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB28_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB28_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table28:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Lfunc_begin13-Lfunc_begin13    ; >> Call Site 1 <<
	.uleb128 Ltmp234-Lfunc_begin13          ;   Call between Lfunc_begin13 and Ltmp234
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp234-Lfunc_begin13          ; >> Call Site 2 <<
	.uleb128 Ltmp235-Ltmp234                ;   Call between Ltmp234 and Ltmp235
	.uleb128 Ltmp236-Lfunc_begin13          ;     jumps to Ltmp236
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp235-Lfunc_begin13          ; >> Call Site 3 <<
	.uleb128 Lfunc_end13-Ltmp235            ;   Call between Ltmp235 and Lfunc_end13
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__125__throw_bad_function_callB8ne180100Ev ; -- Begin function _ZNSt3__125__throw_bad_function_callB8ne180100Ev
	.globl	__ZNSt3__125__throw_bad_function_callB8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__125__throw_bad_function_callB8ne180100Ev
	.p2align	2
__ZNSt3__125__throw_bad_function_callB8ne180100Ev: ; @_ZNSt3__125__throw_bad_function_callB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8                          ; =0x8
	bl	___cxa_allocate_exception
Lloh104:
	adrp	x8, __ZTVNSt3__117bad_function_callE@GOTPAGE
Lloh105:
	ldr	x8, [x8, __ZTVNSt3__117bad_function_callE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
Lloh106:
	adrp	x1, __ZTINSt3__117bad_function_callE@PAGE
Lloh107:
	add	x1, x1, __ZTINSt3__117bad_function_callE@PAGEOFF
Lloh108:
	adrp	x2, __ZNSt3__117bad_function_callD1Ev@PAGE
Lloh109:
	add	x2, x2, __ZNSt3__117bad_function_callD1Ev@PAGEOFF
	bl	___cxa_throw
	.loh AdrpAdd	Lloh108, Lloh109
	.loh AdrpAdd	Lloh106, Lloh107
	.loh AdrpLdrGot	Lloh104, Lloh105
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117bad_function_callD1Ev ; -- Begin function _ZNSt3__117bad_function_callD1Ev
	.globl	__ZNSt3__117bad_function_callD1Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callD1Ev
	.p2align	2
__ZNSt3__117bad_function_callD1Ev:      ; @_ZNSt3__117bad_function_callD1Ev
	.cfi_startproc
; %bb.0:
	b	__ZNSt9exceptionD2Ev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117bad_function_callD0Ev ; -- Begin function _ZNSt3__117bad_function_callD0Ev
	.globl	__ZNSt3__117bad_function_callD0Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callD0Ev
	.p2align	2
__ZNSt3__117bad_function_callD0Ev:      ; @_ZNSt3__117bad_function_callD0Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt9exceptionD2Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	__ZdlPv
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED1Ev ; -- Begin function _ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED1Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED1Ev
	.p2align	2
__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED1Ev: ; @_ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED1Ev
	.cfi_startproc
; %bb.0:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED0Ev ; -- Begin function _ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED0Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED0Ev
	.p2align	2
__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED0Ev: ; @_ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED0Ev
	.cfi_startproc
; %bb.0:
	b	__ZdlPv
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEv ; -- Begin function _ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEv
	.globl	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEv
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEv
	.p2align	2
__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEv: ; @_ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEv
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	mov	w0, #16                         ; =0x10
	bl	__Znwm
Lloh110:
	adrp	x8, __ZTVNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE@GOTPAGE
Lloh111:
	ldr	x8, [x8, __ZTVNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE@GOTPAGEOFF]
	add	x8, x8, #16
	ldr	x9, [x19, #8]
	stp	x8, x9, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh110, Lloh111
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEPNS0_6__baseIS8_EE ; -- Begin function _ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEPNS0_6__baseIS8_EE
	.globl	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEPNS0_6__baseIS8_EE
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEPNS0_6__baseIS8_EE
	.p2align	2
__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEPNS0_6__baseIS8_EE: ; @_ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEPNS0_6__baseIS8_EE
	.cfi_startproc
; %bb.0:
Lloh112:
	adrp	x8, __ZTVNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE@GOTPAGE
Lloh113:
	ldr	x8, [x8, __ZTVNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE@GOTPAGEOFF]
	ldr	x9, [x0, #8]
	add	x8, x8, #16
	stp	x8, x9, [x1]
	ret
	.loh AdrpLdrGot	Lloh112, Lloh113
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7destroyEv ; -- Begin function _ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7destroyEv
	.globl	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7destroyEv
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7destroyEv
	.p2align	2
__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7destroyEv: ; @_ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7destroyEv
	.cfi_startproc
; %bb.0:
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E18destroy_deallocateEv ; -- Begin function _ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E18destroy_deallocateEv
	.globl	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E18destroy_deallocateEv
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E18destroy_deallocateEv
	.p2align	2
__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E18destroy_deallocateEv: ; @_ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E18destroy_deallocateEv
	.cfi_startproc
; %bb.0:
	b	__ZdlPv
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EclES7_ ; -- Begin function _ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EclES7_
	.globl	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EclES7_
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EclES7_
	.p2align	2
__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EclES7_: ; @_ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EclES7_
	.cfi_startproc
; %bb.0:
	ldr	x2, [x0, #8]
	mov	x0, x1
	br	x2
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E6targetERKSt9type_info ; -- Begin function _ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E6targetERKSt9type_info
	.globl	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E6targetERKSt9type_info
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E6targetERKSt9type_info
	.p2align	2
__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E6targetERKSt9type_info: ; @_ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E6targetERKSt9type_info
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x9, [x1, #8]
Lloh114:
	adrp	x8, __ZTSPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE@PAGE
Lloh115:
	add	x8, x8, __ZTSPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE@PAGEOFF
	mov	x10, #-9223372036854775808      ; =0x8000000000000000
	add	x10, x8, x10
	cmp	x9, x10
	b.ne	LBB39_2
LBB39_1:
	add	x0, x19, #8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB39_2:
	tst	x9, x10
	b.lt	LBB39_4
; %bb.3:
	mov	x0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB39_4:
	and	x0, x9, #0x7fffffffffffffff
	mov	x9, #-9223372036854775808       ; =0x8000000000000000
	add	x8, x8, x9
	and	x1, x8, #0x7fffffffffffffff
	bl	_strcmp
	cbz	w0, LBB39_1
; %bb.5:
	mov	x0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh114, Lloh115
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E11target_typeEv ; -- Begin function _ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E11target_typeEv
	.globl	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E11target_typeEv
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E11target_typeEv
	.p2align	2
__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E11target_typeEv: ; @_ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E11target_typeEv
	.cfi_startproc
; %bb.0:
Lloh116:
	adrp	x0, __ZTIPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE@PAGE
Lloh117:
	add	x0, x0, __ZTIPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE@PAGEOFF
	ret
	.loh AdrpAdd	Lloh116, Lloh117
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,__ZZ8rand_intvE1i,4,2 ; @_ZZ8rand_intvE1i
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%Y-%m-%d %H:%M:%S"

l_.str.1:                               ; @.str.1
	.asciz	"{} {}\n"

l_.str.2:                               ; @.str.2
	.asciz	"."

l_.str.3:                               ; @.str.3
	.asciz	"Result: {}"

l_.str.4:                               ; @.str.4
	.asciz	"Total execution time: {} seconds"

l_.str.5:                               ; @.str.5
	.asciz	"Total bytes processed: {}"

l_.str.6:                               ; @.str.6
	.asciz	"Throughput: {} GB/s"

l_.str.7:                               ; @.str.7
	.asciz	"-------- creating array for test --------"

l_.str.8:                               ; @.str.8
	.asciz	"-------- running sequential sum --------"

l_.str.9:                               ; @.str.9
	.asciz	"-------- running std::accumulate --------"

l_.str.10:                              ; @.str.10
	.asciz	"-------- running arm_neon_simd_sum --------"

l_.str.11:                              ; @.str.11
	.asciz	"-------- running parallel sum --------"

l_.str.12:                              ; @.str.12
	.asciz	"-------- running parallel NEON sum --------"

l_.str.13:                              ; @.str.13
	.asciz	"vector"

l_.str.14:                              ; @.str.14
	.asciz	"thread constructor failed"

l_.str.15:                              ; @.str.15
	.asciz	"basic_string"

	.private_extern	__ZTSNSt3__117bad_function_callE ; @_ZTSNSt3__117bad_function_callE
	.section	__TEXT,__const
	.globl	__ZTSNSt3__117bad_function_callE
	.weak_definition	__ZTSNSt3__117bad_function_callE
__ZTSNSt3__117bad_function_callE:
	.asciz	"NSt3__117bad_function_callE"

	.private_extern	__ZTINSt3__117bad_function_callE ; @_ZTINSt3__117bad_function_callE
	.section	__DATA,__const
	.globl	__ZTINSt3__117bad_function_callE
	.weak_definition	__ZTINSt3__117bad_function_callE
	.p2align	3, 0x0
__ZTINSt3__117bad_function_callE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__117bad_function_callE-9223372036854775808
	.quad	__ZTISt9exception

	.globl	__ZTVNSt3__117bad_function_callE ; @_ZTVNSt3__117bad_function_callE
	.weak_def_can_be_hidden	__ZTVNSt3__117bad_function_callE
	.p2align	3, 0x0
__ZTVNSt3__117bad_function_callE:
	.quad	0
	.quad	__ZTINSt3__117bad_function_callE
	.quad	__ZNSt3__117bad_function_callD1Ev
	.quad	__ZNSt3__117bad_function_callD0Ev
	.quad	__ZNKSt9exception4whatEv

	.globl	__ZTVNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE ; @_ZTVNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE
	.weak_def_can_be_hidden	__ZTVNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE
	.p2align	3, 0x0
__ZTVNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE
	.quad	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED1Ev
	.quad	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7__cloneEPNS0_6__baseIS8_EE
	.quad	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EclES7_
	.quad	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_E11target_typeEv

	.private_extern	__ZTSNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE ; @_ZTSNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE
	.section	__TEXT,__const
	.globl	__ZTSNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE
	.weak_definition	__ZTSNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE
__ZTSNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE:
	.asciz	"NSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE"

	.private_extern	__ZTSNSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE ; @_ZTSNSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE
	.globl	__ZTSNSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE
	.weak_definition	__ZTSNSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE
__ZTSNSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE:
	.asciz	"NSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE"

	.private_extern	__ZTINSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE ; @_ZTINSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE
	.section	__DATA,__const
	.globl	__ZTINSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE
	.weak_definition	__ZTINSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE
	.p2align	3, 0x0
__ZTINSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE-9223372036854775808

	.private_extern	__ZTINSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE ; @_ZTINSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE
	.globl	__ZTINSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE
	.weak_definition	__ZTINSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE
	.p2align	3, 0x0
__ZTINSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIPFiRKNS_6vectorIaNS_9allocatorIaEEEEENS3_IS9_EES8_EE-9223372036854775808
	.quad	__ZTINSt3__110__function6__baseIFiRKNS_6vectorIaNS_9allocatorIaEEEEEEE

	.private_extern	__ZTSPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE ; @_ZTSPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
	.section	__TEXT,__const
	.globl	__ZTSPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
	.weak_definition	__ZTSPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
__ZTSPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE:
	.asciz	"PFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE"

	.private_extern	__ZTSFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE ; @_ZTSFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
	.globl	__ZTSFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
	.weak_definition	__ZTSFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
__ZTSFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE:
	.asciz	"FiRKNSt3__16vectorIaNS_9allocatorIaEEEEE"

	.private_extern	__ZTIFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE ; @_ZTIFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
	.section	__DATA,__const
	.globl	__ZTIFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
	.weak_definition	__ZTIFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
	.p2align	3, 0x0
__ZTIFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE:
	.quad	__ZTVN10__cxxabiv120__function_type_infoE+16
	.quad	__ZTSFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE-9223372036854775808

	.private_extern	__ZTIPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE ; @_ZTIPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
	.globl	__ZTIPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
	.weak_definition	__ZTIPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE
	.p2align	3, 0x0
__ZTIPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE:
	.quad	__ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	__ZTSPFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE-9223372036854775808
	.long	0                               ; 0x0
	.space	4
	.quad	__ZTIFiRKNSt3__16vectorIaNS_9allocatorIaEEEEE

.subsections_via_symbols
