	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0802DC80
sub_0802DC80: @ 0x0802DC80
	push {r4-r6,lr}
	mov r5, #0
	b _0802DD34
_0802DC86:
	add r0, r5, #0
	bl sub_08063C5C
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r1, r1, r0
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r4, #28]
	mov r0, #228
	lsl r0, r0, #1
	strh r0, [r4, #54]
	ldr r0, _0802DCB8  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r0, #3
	beq _0802DCCC
	cmp r0, #3
	bgt _0802DCBC
	cmp r0, #2
	beq _0802DCC2
	b _0802DCE2
	.byte 0x00
	.byte 0x00
_0802DCB8:
	.4byte gUnknown_03006C80
_0802DCBC:
	cmp r0, #4
	beq _0802DCD6
	b _0802DCE2
_0802DCC2:
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #4
	add r0, r0, #80
	b _0802DCE0
_0802DCCC:
	lsl r0, r5, #2
	add r0, r0, r5
	add r0, r0, #10
	lsl r0, r0, #3
	b _0802DCE0
_0802DCD6:
	lsl r0, r5, #2
	add r0, r0, r5
	add r0, r0, #7
	lsl r0, r0, #3
	add r0, r0, #4
_0802DCE0:
	strh r0, [r4, #50]
_0802DCE2:
	add r3, r5, #0
	add r3, r3, #12
	mov r0, #15
	add r2, r3, #0
	and r2, r2, r0
	ldrb r0, [r4, #30]
	mov r6, #16
	neg r6, r6
	add r1, r6, #0
	and r0, r0, r1
	orr r0, r0, r2
	mov r1, #15
	and r3, r3, r1
	lsl r3, r3, #4
	and r0, r0, r1
	orr r0, r0, r3
	strb r0, [r4, #30]
	ldr r0, _0802DD44  @ =gUnknown_03000414
	ldrb r0, [r0]
	cmp r5, r0
	bne _0802DD10
	ldr r0, _0802DD48  @ =gUnknown_03000450
	str r4, [r0]
_0802DD10:
	add r0, r5, #0
	mov r1, #255
	mov r2, #0
	bl sub_08063D28
	mov r0, #13
	mov r1, #0
	add r2, r5, #0
	bl sub_0804C8A8
	mov r0, #13
	mov r1, #2
	add r2, r5, #0
	bl sub_0804C8A8
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
_0802DD34:
	ldr r0, _0802DD4C  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r5, r0
	bcc _0802DC86
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802DD44:
	.4byte gUnknown_03000414
_0802DD48:
	.4byte gUnknown_03000450
_0802DD4C:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0802DC80

	THUMB_FUNC_START sub_0802DD50
sub_0802DD50: @ 0x0802DD50
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	add r7, r1, #0
	lsl r2, r2, #24
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r8, r3
	lsr r5, r2, #24
	cmp r5, #0
	beq _0802DDA0
_0802DD68:
	add r0, r7, #0
	mov r1, #10
	bl __umodsi3
	add r4, r0, #0
	lsl r4, r4, #16
	lsr r4, r4, #16
	add r0, r7, #0
	mov r1, #10
	bl __udivsi3
	add r7, r0, #0
	add r0, r4, #0
	add r0, r0, #32
	mov r1, r8
	orr r0, r0, r1
	strh r0, [r6]
	add r0, r6, #0
	add r0, r0, #64
	add r4, r4, #64
	orr r4, r4, r1
	strh r4, [r0]
	sub r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	sub r6, r6, #2
	cmp r5, #0
	bne _0802DD68
_0802DDA0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802DD50

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802DDAC
sub_0802DDAC: @ 0x0802DDAC
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r5, _0802DE28  @ =gUnknown_03000420
	mov r1, #0
	mov r0, #1
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	str r1, [sp]
	ldr r4, _0802DE2C  @ =gUnknown_0202D110
	ldr r2, _0802DE30  @ =0x01000400
	mov r0, sp
	add r1, r4, #0
	bl CpuFastSet
	ldrb r1, [r5, #3]
	lsl r1, r1, #11
	add r0, r4, #0
	add r0, r0, #44
	add r1, r1, r0
	mov r2, #144
	lsl r2, r2, #3
	add r3, r1, r2
	ldr r6, _0802DE34  @ =0x0000101C
	add r0, r6, #0
	strh r0, [r3]
	add r6, r6, #1
	add r0, r6, #0
	strh r0, [r3, #2]
	mov r0, #152
	lsl r0, r0, #3
	add r3, r1, r0
	add r6, r6, #1
	add r0, r6, #0
	strh r0, [r3]
	ldr r0, _0802DE38  @ =0x000004C2
	add r3, r1, r0
	ldr r1, _0802DE3C  @ =0x0000101F
	add r0, r1, #0
	strh r0, [r3]
	ldrb r0, [r5, #3]
	lsl r0, r0, #11
	add r4, r4, #56
	add r0, r0, r4
	add r2, r0, r2
	ldr r0, _0802DE40  @ =gUnknown_03006C80
	ldr r1, [r0, #8]
	ldr r0, _0802DE44  @ =0x0001869F
	cmp r1, r0
	bls _0802DE10
	add r1, r0, #0
_0802DE10:
	mov r3, #192
	lsl r3, r3, #6
	add r0, r2, #0
	mov r2, #5
	bl sub_0802DD50
	bl sub_0802C934
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_0802DE28:
	.4byte gUnknown_03000420
_0802DE2C:
	.4byte gUnknown_0202D110
_0802DE30:
	.4byte 0x01000400
_0802DE34:
	.4byte 0x0000101C
_0802DE38:
	.4byte 0x000004C2
_0802DE3C:
	.4byte 0x0000101F
_0802DE40:
	.4byte gUnknown_03006C80
_0802DE44:
	.4byte 0x0001869F
	THUMB_FUNC_END sub_0802DDAC

	THUMB_FUNC_START sub_0802DE48
sub_0802DE48: @ 0x0802DE48
	push {r4-r7,lr}
	ldr r6, _0802DE64  @ =gUnknown_02016D78
	ldr r7, _0802DE68  @ =gUnknown_03006C80
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0802DE6C
	strh r0, [r6]
	add r6, r6, #2
	strh r0, [r6]
	add r6, r6, #2
	strh r0, [r6]
	strh r0, [r6, #2]
	b _0802DEAE
	.byte 0x00
	.byte 0x00
_0802DE64:
	.4byte gUnknown_02016D78
_0802DE68:
	.4byte gUnknown_03006C80
_0802DE6C:
	lsl r0, r0, #4
	bl Sqrt
	ldr r4, _0802DEB4  @ =0x0000FFFC
	and r4, r4, r0
	ldr r0, [r7, #12]
	mul r0, r4, r0
	ldr r5, [r7, #8]
	add r1, r5, #0
	bl __udivsi3
	strh r0, [r6]
	add r6, r6, #2
	ldr r0, [r7, #16]
	mul r0, r4, r0
	add r1, r5, #0
	bl __udivsi3
	strh r0, [r6]
	add r6, r6, #2
	ldr r0, [r7, #20]
	mul r0, r4, r0
	add r1, r5, #0
	bl __udivsi3
	strh r0, [r6]
	add r6, r6, #2
	ldr r0, [r7, #24]
	mul r0, r4, r0
	add r1, r5, #0
	bl __udivsi3
	strh r0, [r6]
_0802DEAE:
	pop {r4-r7}
	pop {r0}
	bx r0
_0802DEB4:
	.4byte 0x0000FFFC
	THUMB_FUNC_END sub_0802DE48

	THUMB_FUNC_START sub_0802DEB8
sub_0802DEB8: @ 0x0802DEB8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _0802DF9C  @ =gUnknown_03000520
	ldrb r7, [r0]
	cmp r7, #0
	bne _0802DF8E
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	mov r8, r0
	ldr r1, _0802DFA0  @ =0x00006739
	add r0, r1, #0
	mov r1, r8
	strh r0, [r1]
	ldr r6, _0802DFA4  @ =gUnknown_020163D0
	mov r1, #0
	mov r9, r1
	mov r4, r9
	orr r4, r4, r0
	strh r4, [r6]
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0802BF60
	bl sub_0800BEC4
	ldr r5, _0802DFA8  @ =gUnknown_02016D60
	add r0, r5, #0
	mov r1, #40
	bl sub_0800B850
	ldr r0, _0802DFAC  @ =gUnknown_03000830
	mov r1, r9
	strb r1, [r0]
	mov r0, #20
	bl sub_0800B890
	mov r0, r8
	strh r4, [r0]
	strh r4, [r6]
	mov r0, #1
	bl sub_0800BA44
	mov r0, #35
	bl sub_0800BA44
	ldr r0, _0802DFB0  @ =gUnknown_03006C80
	ldrb r0, [r0]
	add r0, r0, #34
	bl sub_0800BA44
	bl sub_0802DC80
	bl sub_0802DDAC
	bl sub_0802DE48
	bl sub_0802E5E0
	mov r0, #5
	bl sub_08036704
	ldr r2, _0802DFB4  @ =gUnknown_030004A0
	add r1, r2, #0
	add r1, r1, #102
	mov r0, #253
	lsl r0, r0, #6
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _0802DFB8  @ =0x0000070C
	strh r0, [r1]
	ldr r0, _0802DFBC  @ =0x00001B4C
	strh r0, [r2, #8]
	ldr r0, _0802DFC0  @ =0x00009E42
	strh r0, [r2, #32]
	ldr r0, _0802DFC4  @ =0x00009C43
	strh r0, [r2, #44]
	strh r7, [r2, #12]
	strh r7, [r2, #10]
	strh r7, [r2, #34]
	mov r1, #176
	lsl r1, r1, #1
	strh r1, [r2, #36]
	strh r7, [r2, #46]
	strh r1, [r2, #48]
	ldr r0, _0802DFC8  @ =gUnknown_03000450
	strh r7, [r0, #32]
	strh r1, [r0, #34]
	mov r0, #234
	lsl r0, r0, #5
	strh r0, [r2]
	add r5, r5, #39
	mov r1, r9
	strb r1, [r5]
	mov r0, #2
	mov r1, #4
	bl sub_0800C0B0
	ldr r1, _0802DFCC  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_0802DF8E:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802DF9C:
	.4byte gUnknown_03000520
_0802DFA0:
	.4byte 0x00006739
_0802DFA4:
	.4byte gUnknown_020163D0
_0802DFA8:
	.4byte gUnknown_02016D60
_0802DFAC:
	.4byte gUnknown_03000830
_0802DFB0:
	.4byte gUnknown_03006C80
_0802DFB4:
	.4byte gUnknown_030004A0
_0802DFB8:
	.4byte 0x0000070C
_0802DFBC:
	.4byte 0x00001B4C
_0802DFC0:
	.4byte 0x00009E42
_0802DFC4:
	.4byte 0x00009C43
_0802DFC8:
	.4byte gUnknown_03000450
_0802DFCC:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0802DEB8

	THUMB_FUNC_START sub_0802DFD0
sub_0802DFD0: @ 0x0802DFD0
	push {r4,lr}
	ldr r0, _0802E010  @ =gUnknown_03000450
	ldr r1, [r0]
	add r4, r0, #0
	cmp r1, #0
	beq _0802E020
	ldrh r0, [r1, #54]
	sub r0, r0, #80
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r0, #0
	bge _0802DFEA
	mov r1, #0
_0802DFEA:
	lsl r0, r1, #16
	asr r0, r0, #16
	mov r2, #176
	lsl r2, r2, #1
	cmp r0, r2
	ble _0802DFF8
	add r1, r2, #0
_0802DFF8:
	ldrh r3, [r4, #34]
	mov r0, #34
	ldrsh r2, [r4, r0]
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r2, r0
	beq _0802E018
	add r1, r4, #0
	cmp r2, r0
	bge _0802E014
	add r0, r3, #1
	b _0802E016
_0802E010:
	.4byte gUnknown_03000450
_0802E014:
	sub r0, r3, #1
_0802E016:
	strh r0, [r1, #34]
_0802E018:
	ldr r1, _0802E028  @ =gUnknown_030004A0
	ldrh r0, [r4, #34]
	strh r0, [r1, #48]
	strh r0, [r1, #36]
_0802E020:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802E028:
	.4byte gUnknown_030004A0
	THUMB_FUNC_END sub_0802DFD0

	THUMB_FUNC_START sub_0802E02C
sub_0802E02C: @ 0x0802E02C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r6, _0802E058  @ =gUnknown_02016D78
	bl 0x08137AFC
	bl sub_0802DFD0
	bl 0x08000BAC
	ldr r3, _0802E05C  @ =gUnknown_03000BFC
	ldrb r0, [r3]
	cmp r0, #1
	beq _0802E08A
	cmp r0, #1
	bgt _0802E060
	cmp r0, #0
	beq _0802E06E
	b _0802E192
	.byte 0x00
	.byte 0x00
_0802E058:
	.4byte gUnknown_02016D78
_0802E05C:
	.4byte gUnknown_03000BFC
_0802E060:
	cmp r0, #2
	bne _0802E066
	b _0802E160
_0802E066:
	cmp r0, #3
	bne _0802E06C
	b _0802E180
_0802E06C:
	b _0802E192
_0802E06E:
	ldr r0, _0802E0E0  @ =gUnknown_03000520
	ldrb r1, [r0]
	cmp r1, #0
	beq _0802E078
	b _0802E192
_0802E078:
	mov r0, #1
	strb r0, [r3]
	add r0, r6, #0
	sub r0, r0, #24
	str r1, [r0, #12]
	str r1, [r0, #16]
	ldr r0, _0802E0E4  @ =0x00000195
	bl sub_0800D24C
_0802E08A:
	ldr r0, _0802E0E8  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _0802E09C
	mov r0, #8
	bl sub_0800D24C
_0802E09C:
	mov r4, #0
	ldr r0, _0802E0EC  @ =gUnknown_03006C80
	mov r10, r0
	ldrb r0, [r0]
	cmp r4, r0
	bcs _0802E134
	ldr r5, _0802E0F0  @ =gUnknown_03006A30
	mov r1, #40
	add r1, r1, r5
	mov r9, r1
	mov r3, #16
	neg r3, r3
	mov r8, r3
_0802E0B6:
	lsl r0, r4, #1
	add r3, r0, r6
	ldrh r0, [r3]
	cmp r0, #0
	beq _0802E0FA
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r0, r0, #4
	add r0, r0, r9
	ldr r1, [r0]
	ldrh r2, [r1, #54]
	mov r7, #54
	ldrsh r0, [r1, r7]
	cmp r0, r8
	ble _0802E0F4
	sub r0, r2, #1
	strh r0, [r1, #54]
	ldrh r0, [r3]
	sub r0, r0, #1
	strh r0, [r3]
	b _0802E126
_0802E0E0:
	.4byte gUnknown_03000520
_0802E0E4:
	.4byte 0x00000195
_0802E0E8:
	.4byte gUnknown_03000948
_0802E0EC:
	.4byte gUnknown_03006C80
_0802E0F0:
	.4byte gUnknown_03006A30
_0802E0F4:
	mov r0, #0
	strh r0, [r3]
	b _0802E126
_0802E0FA:
	ldr r3, _0802E154  @ =gUnknown_02016D60
	mov r2, #1
	lsl r2, r2, r4
	ldr r1, [r3, #12]
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	bne _0802E126
	orr r1, r1, r2
	str r1, [r3, #12]
	ldr r0, [r3, #16]
	add r0, r0, #1
	str r0, [r3, #16]
	mov r0, #9
	bl sub_0800D24C
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r0, r0, #4
	add r0, r0, r5
	mov r1, #2
	strb r1, [r0, #12]
_0802E126:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _0802E158  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r4, r0
	bcc _0802E0B6
_0802E134:
	ldr r2, _0802E154  @ =gUnknown_02016D60
	ldr r0, [r2, #16]
	mov r1, r10
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802E192
	ldr r1, _0802E15C  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #180
	strh r0, [r2, #4]
	add r0, r0, #226
	bl sub_0800D24C
	b _0802E192
_0802E154:
	.4byte gUnknown_02016D60
_0802E158:
	.4byte gUnknown_03006C80
_0802E15C:
	.4byte gUnknown_03000BFC
_0802E160:
	add r1, r6, #0
	sub r1, r1, #24
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802E192
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #1
	mov r1, #8
	bl sub_0800C0B0
	b _0802E192
_0802E180:
	ldr r0, _0802E1A0  @ =gUnknown_03000520
	ldrb r2, [r0]
	cmp r2, #0
	bne _0802E192
	ldr r1, _0802E1A4  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r2, [r3]
_0802E192:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802E1A0:
	.4byte gUnknown_03000520
_0802E1A4:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0802E02C

	THUMB_FUNC_START sub_0802E1A8
sub_0802E1A8: @ 0x0802E1A8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r0, _0802E210  @ =gUnknown_02016D60
	ldr r6, [r0, #8]
	mov r2, #8
	ldr r0, _0802E214  @ =gUnknown_03006C80
	mov r12, r0
	ldr r4, _0802E218  @ =gUnknown_0202A3F0
	mov r3, #255
_0802E1C2:
	lsl r1, r2, #24
	asr r1, r1, #24
	lsl r2, r1, #2
	add r2, r2, r4
	ldrb r0, [r2]
	orr r0, r0, r3
	strb r0, [r2]
	ldrb r0, [r2, #1]
	orr r0, r0, r3
	strb r0, [r2, #1]
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r2, r1, #24
	asr r1, r1, #24
	cmp r1, #15
	ble _0802E1C2
	mov r2, #1
	mov r1, r12
	ldrb r1, [r1]
	cmp r2, r1
	bge _0802E25A
_0802E1EC:
	lsl r2, r2, #24
	asr r1, r2, #24
	lsl r0, r1, #2
	add r0, r0, r6
	ldr r7, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r4, r1, #24
	lsl r3, r4, #24
	asr r0, r3, #24
	mov r8, r2
	cmp r0, #0
	blt _0802E240
	lsl r0, r0, #2
	add r0, r0, r6
	lsl r5, r7, #16
	b _0802E238
	.byte 0x00
	.byte 0x00
_0802E210:
	.4byte gUnknown_02016D60
_0802E214:
	.4byte gUnknown_03006C80
_0802E218:
	.4byte gUnknown_0202A3F0
_0802E21C:
	asr r0, r3, #24
	lsl r1, r0, #2
	add r1, r1, r6
	ldr r2, [r1]
	str r2, [r1, #4]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	lsl r3, r4, #24
	asr r0, r3, #24
	cmp r0, #0
	blt _0802E240
	lsl r0, r0, #2
	add r0, r0, r6
_0802E238:
	ldrb r1, [r0, #1]
	lsr r0, r5, #24
	cmp r1, r0
	bhi _0802E21C
_0802E240:
	lsl r0, r4, #24
	asr r0, r0, #22
	add r0, r0, r6
	str r7, [r0, #4]
	mov r0, #128
	lsl r0, r0, #17
	add r0, r0, r8
	lsr r2, r0, #24
	asr r0, r0, #24
	mov r3, r12
	ldrb r3, [r3]
	cmp r0, r3
	blt _0802E1EC
_0802E25A:
	mov r0, r12
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r6
	sub r0, r0, #4
	ldrb r0, [r0, #1]
	str r0, [sp]
	mov r2, #0
	cmp r2, r1
	bge _0802E342
	ldr r1, _0802E2B8  @ =gUnknown_03006A30
	add r1, r1, #40
	mov r9, r1
	ldr r3, _0802E2BC  @ =gUnknown_084277F8
	mov r10, r3
	mov r7, #204
	lsl r7, r7, #1
	mov r5, r12
_0802E27E:
	lsl r0, r2, #24
	asr r1, r0, #22
	add r4, r1, r6
	ldrb r1, [r4, #1]
	mov r8, r0
	cmp r1, #0
	bne _0802E2C0
	ldrb r0, [r4]
	mov r1, #255
	mov r2, #0
	bl sub_08063D28
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r9
	ldr r2, [r0]
	strh r7, [r2, #54]
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0802E318
	ldrb r2, [r4]
	mov r0, #13
	mov r1, #8
	bl sub_0804C8A8
	b _0802E318
	.byte 0x00
	.byte 0x00
_0802E2B8:
	.4byte gUnknown_03006A30
_0802E2BC:
	.4byte gUnknown_084277F8
_0802E2C0:
	ldrb r3, [r4, #1]
	ldr r1, [sp]
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r3, r0
	bne _0802E2F8
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	ldr r3, _0802E2F4  @ =gUnknown_03006A30
	add r0, r0, r3
	mov r1, #7
	strb r1, [r0, #12]
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r9
	ldr r2, [r0]
	ldrb r1, [r5]
	lsl r0, r1, #1
	add r0, r0, r1
	add r0, r0, #2
	b _0802E30E
	.byte 0x00
	.byte 0x00
_0802E2F4:
	.4byte gUnknown_03006A30
_0802E2F8:
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r9
	ldr r2, [r0]
	ldrb r1, [r5]
	lsl r0, r1, #1
	add r0, r0, r1
	add r0, r0, r3
	sub r0, r0, #1
_0802E30E:
	lsl r0, r0, #1
	add r0, r0, r10
	ldrh r0, [r0]
	add r0, r0, r7
	strh r0, [r2, #54]
_0802E318:
	mov r0, r8
	asr r4, r0, #24
	lsl r0, r4, #2
	add r0, r0, r6
	ldrb r2, [r0, #1]
	lsl r2, r2, #4
	ldrb r0, [r0]
	orr r2, r2, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r0, #13
	mov r1, #9
	bl sub_0804C8A8
	add r4, r4, #1
	lsl r4, r4, #24
	lsr r2, r4, #24
	asr r4, r4, #24
	ldrb r1, [r5]
	cmp r4, r1
	blt _0802E27E
_0802E342:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802E1A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802E354
sub_0802E354: @ 0x0802E354
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r5, _0802E36C  @ =gUnknown_03000BFC
	ldrb r0, [r5]
	cmp r0, #1
	beq _0802E3EC
	cmp r0, #1
	bgt _0802E370
	cmp r0, #0
	beq _0802E37A
	b _0802E4A4
	.byte 0x00
	.byte 0x00
_0802E36C:
	.4byte gUnknown_03000BFC
_0802E370:
	cmp r0, #2
	beq _0802E3FC
	cmp r0, #3
	beq _0802E428
	b _0802E4A4
_0802E37A:
	ldr r0, _0802E3D4  @ =gUnknown_03000520
	ldrb r4, [r0]
	cmp r4, #0
	beq _0802E384
	b _0802E4AC
_0802E384:
	bl sub_0802E1A8
	ldr r0, _0802E3D8  @ =gUnknown_02016D60
	add r0, r0, #39
	mov r1, #1
	strb r1, [r0]
	ldr r1, _0802E3DC  @ =gUnknown_030004A0
	mov r0, #226
	lsl r0, r0, #5
	strh r0, [r1]
	strh r4, [r1, #34]
	mov r2, #168
	lsl r2, r2, #1
	strh r2, [r1, #36]
	strh r4, [r1, #46]
	strh r2, [r1, #48]
	ldr r0, _0802E3E0  @ =gUnknown_03000450
	strh r4, [r0, #32]
	strh r2, [r0, #34]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r2, _0802E3E4  @ =gUnknown_03000E20
	ldr r0, _0802E3E8  @ =gUnknown_03006C80
	ldrb r0, [r0, #2]
	mov r3, #165
	lsl r3, r3, #2
	add r1, r3, #0
	cmp r0, #0
	beq _0802E3C6
	mov r0, #150
	lsl r0, r0, #1
	add r1, r0, #0
_0802E3C6:
	strh r1, [r2, #2]
	mov r0, #0
	mov r1, #4
	bl sub_0800C0B0
	b _0802E4A4
	.byte 0x00
	.byte 0x00
_0802E3D4:
	.4byte gUnknown_03000520
_0802E3D8:
	.4byte gUnknown_02016D60
_0802E3DC:
	.4byte gUnknown_030004A0
_0802E3E0:
	.4byte gUnknown_03000450
_0802E3E4:
	.4byte gUnknown_03000E20
_0802E3E8:
	.4byte gUnknown_03006C80
_0802E3EC:
	ldr r0, _0802E3F8  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E4AC
	mov r0, #2
	b _0802E4A2
_0802E3F8:
	.4byte gUnknown_03000520
_0802E3FC:
	ldr r1, _0802E420  @ =gUnknown_03000E20
	ldrh r0, [r1, #2]
	sub r0, r0, #1
	strh r0, [r1, #2]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802E4A4
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r0, _0802E424  @ =0x80040000
	bl sub_0800D24C
	mov r0, #1
	mov r1, #8
	bl sub_0800C0B0
	b _0802E4A4
_0802E420:
	.4byte gUnknown_03000E20
_0802E424:
	.4byte 0x80040000
_0802E428:
	ldr r0, _0802E480  @ =gUnknown_03000520
	ldrb r4, [r0]
	cmp r4, #0
	bne _0802E4AC
	ldr r0, _0802E484  @ =0x80010000
	bl sub_0800D24C
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0802BF60
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	strh r4, [r0]
	ldr r0, _0802E488  @ =gUnknown_020163D0
	strh r4, [r0]
	str r4, [sp]
	mov r1, #192
	lsl r1, r1, #19
	ldr r2, _0802E48C  @ =0x01006000
	mov r0, sp
	bl CpuFastSet
	ldr r4, _0802E490  @ =gUnknown_03006C80
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0802E498
	mov r0, #2
	bl sub_0800B5EC
	ldr r1, _0802E494  @ =gUnknown_03005050
	mov r0, #1
	strb r0, [r1]
	add r1, r4, #0
	add r1, r1, #79
	mov r0, #40
	strb r0, [r1]
	bl sub_08039D64
	b _0802E4A4
_0802E480:
	.4byte gUnknown_03000520
_0802E484:
	.4byte 0x80010000
_0802E488:
	.4byte gUnknown_020163D0
_0802E48C:
	.4byte 0x01006000
_0802E490:
	.4byte gUnknown_03006C80
_0802E494:
	.4byte gUnknown_03005050
_0802E498:
	ldr r0, _0802E4B4  @ =gUnknown_03005050
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #0
_0802E4A2:
	strb r0, [r5]
_0802E4A4:
	bl 0x08137AFC
	bl 0x08000BAC
_0802E4AC:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_0802E4B4:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0802E354

	THUMB_FUNC_START sub_0802E4B8
sub_0802E4B8: @ 0x0802E4B8
	push {r4,lr}
	sub sp, sp, #24
	ldr r4, _0802E4D0  @ =gUnknown_03000BFC
	ldrb r0, [r4]
	cmp r0, #1
	beq _0802E57C
	cmp r0, #1
	bgt _0802E4D4
	cmp r0, #0
	beq _0802E4DA
	b _0802E5CC
	.byte 0x00
	.byte 0x00
_0802E4D0:
	.4byte gUnknown_03000BFC
_0802E4D4:
	cmp r0, #2
	beq _0802E5AC
	b _0802E5CC
_0802E4DA:
	mov r0, #21
	bl sub_0800B890
	mov r0, #0
	mov r1, #0
	bl sub_0800B980
	ldr r0, _0802E50C  @ =gUnknown_08427818
	ldr r2, _0802E510  @ =0x04000006
	mov r1, sp
	bl CpuSet
	ldr r0, _0802E514  @ =gUnknown_03000414
	ldrb r0, [r0]
	bl sub_08039AA0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802E51C
	mov r1, sp
	mov r0, #35
	strb r0, [r1, #18]
	ldr r0, _0802E518  @ =0x0000041E
	b _0802E524
	.byte 0x00
	.byte 0x00
_0802E50C:
	.4byte gUnknown_08427818
_0802E510:
	.4byte 0x04000006
_0802E514:
	.4byte gUnknown_03000414
_0802E518:
	.4byte 0x0000041E
_0802E51C:
	mov r1, sp
	mov r0, #3
	strb r0, [r1, #18]
	ldr r0, _0802E568  @ =0x0000040C
_0802E524:
	bl sub_0800F4C4
	lsl r0, r0, #16
	lsr r4, r0, #16
	mov r0, #121
	bl sub_0800D24C
	ldr r1, _0802E56C  @ =gUnknown_030004A0
	mov r0, #0
	strh r0, [r1, #10]
	lsl r0, r4, #2
	sub r0, r0, #72
	strh r0, [r1, #12]
	ldr r0, _0802E570  @ =gUnknown_08142374
	ldrh r0, [r0, #36]
	strh r0, [r1, #8]
	ldrh r2, [r1]
	mov r3, #128
	lsl r3, r3, #1
	add r0, r3, #0
	orr r0, r0, r2
	strh r0, [r1]
	mov r0, #0
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _0802E574  @ =gUnknown_02016D60
	mov r0, #120
	strh r0, [r1, #4]
	ldr r1, _0802E578  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _0802E5CC
_0802E568:
	.4byte 0x0000040C
_0802E56C:
	.4byte gUnknown_030004A0
_0802E570:
	.4byte gUnknown_08142374
_0802E574:
	.4byte gUnknown_02016D60
_0802E578:
	.4byte gUnknown_03000BFC
_0802E57C:
	ldr r0, _0802E5A4  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E5CC
	ldr r1, _0802E5A8  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802E5CC
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0802E5CC
	.byte 0x00
	.byte 0x00
_0802E5A4:
	.4byte gUnknown_03000520
_0802E5A8:
	.4byte gUnknown_02016D60
_0802E5AC:
	ldr r0, _0802E5D4  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E5CC
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _0802E5D8  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _0802E5DC  @ =gUnknown_020163D0
	strh r1, [r0]
	mov r0, #5
	bl sub_0800B5EC
_0802E5CC:
	add sp, sp, #24
	pop {r4}
	pop {r0}
	bx r0
_0802E5D4:
	.4byte gUnknown_03000520
_0802E5D8:
	.4byte 0x00006739
_0802E5DC:
	.4byte gUnknown_020163D0
	THUMB_FUNC_END sub_0802E4B8

	THUMB_FUNC_START sub_0802E5E0
sub_0802E5E0: @ 0x0802E5E0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r0, #16
	bl sub_0800BD14
	add r5, r0, #0
	ldr r0, _0802E650  @ =gUnknown_02016D60
	str r5, [r0, #8]
	cmp r5, #0
	bne _0802E5F8
	b _0802E744
_0802E5F8:
	mov r3, #0
	ldr r0, _0802E654  @ =gUnknown_03006C80
	mov r8, r0
	ldrb r0, [r0]
	cmp r3, r0
	bge _0802E62C
	mov r7, #0
	mov r6, r8
	mov r4, r8
	add r4, r4, #12
_0802E60C:
	lsl r1, r3, #24
	asr r1, r1, #24
	lsl r0, r1, #2
	add r2, r0, r5
	strb r3, [r2]
	strb r7, [r2, #1]
	add r0, r0, r4
	ldr r0, [r0]
	strh r0, [r2, #2]
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r3, r1, #24
	asr r1, r1, #24
	ldrb r2, [r6]
	cmp r1, r2
	blt _0802E60C
_0802E62C:
	mov r3, #1
	mov r4, r8
	ldrb r4, [r4]
	cmp r3, r4
	bge _0802E696
_0802E636:
	lsl r2, r3, #24
	asr r1, r2, #24
	lsl r0, r1, #2
	add r0, r0, r5
	ldr r6, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r3, r1, #24
	lsl r4, r3, #24
	asr r0, r4, #24
	mov r12, r2
	b _0802E66C
	.byte 0x00
	.byte 0x00
_0802E650:
	.4byte gUnknown_02016D60
_0802E654:
	.4byte gUnknown_03006C80
_0802E658:
	asr r0, r4, #24
	lsl r1, r0, #2
	add r1, r1, r5
	ldr r2, [r1]
	str r2, [r1, #4]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r4, r3, #24
	asr r0, r4, #24
_0802E66C:
	cmp r0, #0
	blt _0802E67C
	lsl r0, r0, #2
	add r0, r0, r5
	ldrh r1, [r0, #2]
	lsr r0, r6, #16
	cmp r1, r0
	bcc _0802E658
_0802E67C:
	lsl r0, r3, #24
	asr r0, r0, #22
	add r0, r0, r5
	str r6, [r0, #4]
	mov r0, #128
	lsl r0, r0, #17
	add r0, r0, r12
	lsr r3, r0, #24
	asr r0, r0, #24
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	blt _0802E636
_0802E696:
	mov r2, #1
	mov r3, #1
	mov r4, r8
	ldrb r4, [r4]
	cmp r3, r4
	bge _0802E6D4
_0802E6A2:
	lsl r0, r3, #24
	asr r1, r0, #22
	add r3, r1, r5
	sub r4, r3, #4
	ldrh r1, [r3, #2]
	mov r12, r0
	ldrh r0, [r4, #2]
	cmp r1, r0
	bne _0802E6BA
	ldrb r0, [r4, #1]
	strb r0, [r3, #1]
	b _0802E6BC
_0802E6BA:
	strb r2, [r3, #1]
_0802E6BC:
	mov r1, #128
	lsl r1, r1, #17
	add r1, r1, r12
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	lsr r3, r1, #24
	asr r1, r1, #24
	mov r4, r8
	ldrb r4, [r4]
	cmp r1, r4
	blt _0802E6A2
_0802E6D4:
	mov r3, #1
	mov r0, r8
	ldrb r0, [r0]
	cmp r3, r0
	bge _0802E744
_0802E6DE:
	lsl r2, r3, #24
	asr r1, r2, #24
	lsl r0, r1, #2
	add r0, r0, r5
	ldr r6, [r0]
	sub r1, r1, #1
	lsl r1, r1, #24
	lsr r3, r1, #24
	lsl r4, r3, #24
	asr r0, r4, #24
	mov r12, r2
	cmp r0, #0
	blt _0802E72A
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r1, [r0]
	lsl r0, r6, #24
	lsr r0, r0, #24
	cmp r1, r0
	bls _0802E72A
	add r7, r0, #0
_0802E708:
	asr r0, r4, #24
	lsl r1, r0, #2
	add r1, r1, r5
	ldr r2, [r1]
	str r2, [r1, #4]
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	lsl r4, r3, #24
	asr r0, r4, #24
	cmp r0, #0
	blt _0802E72A
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	cmp r0, r7
	bhi _0802E708
_0802E72A:
	lsl r0, r3, #24
	asr r0, r0, #22
	add r0, r0, r5
	str r6, [r0, #4]
	mov r0, #128
	lsl r0, r0, #17
	add r0, r0, r12
	lsr r3, r0, #24
	asr r0, r0, #24
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	blt _0802E6DE
_0802E744:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802E5E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802E750
sub_0802E750: @ 0x0802E750
	lsl r0, r0, #24
	ldr r1, _0802E760  @ =gUnknown_02016D60
	ldr r1, [r1, #8]
	lsr r0, r0, #22
	add r0, r0, r1
	ldrb r0, [r0, #1]
	bx lr
	.byte 0x00
	.byte 0x00
_0802E760:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_0802E750

	THUMB_FUNC_START sub_0802E764
sub_0802E764: @ 0x0802E764
	push {lr}
	bl 0x0800099C
	ldr r1, _0802E784  @ =gUnknown_08427830
	ldr r0, _0802E788  @ =gUnknown_03005050
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_0802E904
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802E784:
	.4byte gUnknown_08427830
_0802E788:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0802E764

	THUMB_FUNC_START sub_0802E78C
sub_0802E78C: @ 0x0802E78C
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r7, _0802E8A8  @ =gUnknown_03000520
	ldrb r6, [r7]
	cmp r6, #0
	beq _0802E79A
	b _0802E8A0
_0802E79A:
	ldr r0, _0802E8AC  @ =gUnknown_03000830
	strb r6, [r0]
	ldr r0, _0802E8B0  @ =0x80010000
	bl sub_0800D24C
	ldr r0, _0802E8B4  @ =0x800B01AD
	bl sub_0800D24C
	bl sub_0800BED8
	bl sub_08059A44
	bl sub_080123BC
	bl sub_0801239C
	bl sub_0802BF60
	bl sub_0802C278
	bl sub_0803A2E8
	bl sub_0800D6F4
	bl sub_0804CCBC
	mov r0, sp
	mov r4, #0
	strh r6, [r0]
	ldr r5, _0802E8B8  @ =gUnknown_02016D60
	ldr r2, _0802E8BC  @ =0x01000014
	add r1, r5, #0
	bl CpuSet
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _0802E8C0  @ =gUnknown_03006A30
	ldr r2, _0802E8C4  @ =0x05000090
	bl CpuSet
	mov r0, #23
	bl sub_0800B890
	mov r0, #1
	bl sub_0800BA44
	mov r0, #2
	bl sub_0800BA44
	mov r0, #18
	bl sub_0802C2DC
	ldr r0, _0802E8C8  @ =gUnknown_0202A4F8
	str r6, [r0]
	ldr r0, _0802E8CC  @ =gUnknown_03000414
	strb r4, [r0]
	ldr r0, _0802E8D0  @ =gUnknown_03000420
	strb r4, [r0]
	strb r4, [r0, #3]
	ldr r2, _0802E8D4  @ =gUnknown_030004A0
	ldr r0, _0802E8D8  @ =gUnknown_0202D110
	str r0, [r2, #16]
	ldr r0, _0802E8DC  @ =gUnknown_08142374
	ldrh r0, [r0, #36]
	strh r0, [r2, #8]
	ldr r0, _0802E8E0  @ =0x00001A09
	strh r0, [r2, #20]
	ldr r0, _0802E8E4  @ =0x00009E0A
	strh r0, [r2, #32]
	ldr r0, _0802E8E8  @ =0x00009C03
	strh r0, [r2, #44]
	add r1, r2, #0
	add r1, r1, #102
	ldr r0, _0802E8EC  @ =0x00003E66
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _0802E8F0  @ =0x00000C0C
	strh r0, [r1]
	strh r6, [r2, #34]
	strh r6, [r2, #24]
	strh r6, [r2, #22]
	strh r6, [r2, #12]
	strh r6, [r2, #10]
	mov r1, #192
	strh r1, [r2, #36]
	strh r6, [r2, #46]
	strh r1, [r2, #48]
	ldr r0, _0802E8F4  @ =gUnknown_03000450
	strh r6, [r0, #32]
	strh r1, [r0, #34]
	ldrh r0, [r2]
	mov r3, #216
	lsl r3, r3, #5
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0802E8F8  @ =gUnknown_0200B310
	str r6, [r0]
	bl sub_0802C934
	ldr r1, _0802E8FC  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _0802E900  @ =gUnknown_03000BFC
	strb r4, [r0]
	mov r0, #180
	strb r0, [r5, #9]
	strb r4, [r5, #10]
	strb r4, [r5, #11]
	strb r4, [r5, #12]
	sub r0, r0, #181
	str r0, [r7, #12]
	mov r0, #2
	mov r1, #4
	bl sub_0800C0B0
	mov r0, #25
	strb r0, [r7, #7]
	add r0, r0, #231
	bl sub_0800C1EC
	mov r0, #90
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	mov r1, #120
	strh r1, [r0, #50]
	mov r1, #224
	strh r1, [r0, #54]
_0802E8A0:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_0802E8A8:
	.4byte gUnknown_03000520
_0802E8AC:
	.4byte gUnknown_03000830
_0802E8B0:
	.4byte 0x80010000
_0802E8B4:
	.4byte 0x800B01AD
_0802E8B8:
	.4byte gUnknown_02016D60
_0802E8BC:
	.4byte 0x01000014
_0802E8C0:
	.4byte gUnknown_03006A30
_0802E8C4:
	.4byte 0x05000090
_0802E8C8:
	.4byte gUnknown_0202A4F8
_0802E8CC:
	.4byte gUnknown_03000414
_0802E8D0:
	.4byte gUnknown_03000420
_0802E8D4:
	.4byte gUnknown_030004A0
_0802E8D8:
	.4byte gUnknown_0202D110
_0802E8DC:
	.4byte gUnknown_08142374
_0802E8E0:
	.4byte 0x00001A09
_0802E8E4:
	.4byte 0x00009E0A
_0802E8E8:
	.4byte 0x00009C03
_0802E8EC:
	.4byte 0x00003E66
_0802E8F0:
	.4byte 0x00000C0C
_0802E8F4:
	.4byte gUnknown_03000450
_0802E8F8:
	.4byte gUnknown_0200B310
_0802E8FC:
	.4byte gUnknown_03005050
_0802E900:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_0802E78C

	THUMB_FUNC_START sub_0802E904
sub_0802E904: @ 0x0802E904
	push {r4,r5,lr}
	ldr r0, _0802E930  @ =gUnknown_02016D60
	ldrb r1, [r0, #11]
	add r4, r0, #0
	cmp r1, #0
	bne _0802E9A0
	ldr r2, _0802E934  @ =gUnknown_03000948
	ldrh r1, [r2]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802E924
	ldr r1, _0802E938  @ =gUnknown_030004A0
	ldrh r0, [r1, #22]
	add r0, r0, #1
	strh r0, [r1, #22]
_0802E924:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0802E93C
	sub r0, r0, #1
	strb r0, [r4, #9]
	b _0802E9A0
_0802E930:
	.4byte gUnknown_02016D60
_0802E934:
	.4byte gUnknown_03000948
_0802E938:
	.4byte gUnknown_030004A0
_0802E93C:
	ldrh r1, [r2]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _0802E9A0
	ldr r5, _0802E970  @ =gUnknown_0842783C
	ldrb r2, [r4, #10]
	lsl r0, r2, #1
	add r0, r0, r5
	ldrh r1, [r0]
	ldr r0, _0802E974  @ =0x0000FFFF
	cmp r1, r0
	beq _0802E97C
	add r3, r2, #0
	cmp r3, #255
	beq _0802E97C
	ldr r1, _0802E978  @ =gUnknown_030004A0
	add r0, r2, #1
	strb r0, [r4, #10]
	lsl r0, r3, #1
	add r0, r0, r5
	ldrh r0, [r0]
	add r1, r1, #104
	strh r0, [r1]
	b _0802E9A0
	.byte 0x00
	.byte 0x00
_0802E970:
	.4byte gUnknown_0842783C
_0802E974:
	.4byte 0x0000FFFF
_0802E978:
	.4byte gUnknown_030004A0
_0802E97C:
	ldr r2, _0802E9A8  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _0802E9AC  @ =0x0000FDFF
	and r0, r0, r1
	mov r3, #128
	lsl r3, r3, #3
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	add r1, r2, #0
	add r1, r1, #102
	ldr r0, _0802E9B0  @ =0x00003C64
	strh r0, [r1]
	add r2, r2, #104
	ldr r0, _0802E9B4  @ =0x00000808
	strh r0, [r2]
	mov r0, #1
	strb r0, [r4, #11]
_0802E9A0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802E9A8:
	.4byte gUnknown_030004A0
_0802E9AC:
	.4byte 0x0000FDFF
_0802E9B0:
	.4byte 0x00003C64
_0802E9B4:
	.4byte 0x00000808
	THUMB_FUNC_END sub_0802E904

	THUMB_FUNC_START sub_0802E9B8
sub_0802E9B8: @ 0x0802E9B8
	push {r4,r5,lr}
	ldr r5, _0802EA04  @ =gUnknown_02016D60
	ldrb r0, [r5, #11]
	cmp r0, #0
	beq _0802E9FE
	ldr r0, _0802EA08  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E9FE
	ldr r0, _0802EA0C  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r4, #3
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0802E9F6
	bl 0x0800099C
	add r1, r0, #0
	ldr r2, _0802EA10  @ =0x03000030
	and r1, r1, r4
	lsl r1, r1, #5
	mov r0, #150
	lsl r0, r0, #6
	add r1, r1, r0
	ldr r0, [r2]
	add r0, r0, r1
	mov r1, #15
	mov r2, #1
	bl sub_0800B8D4
_0802E9F6:
	ldrb r0, [r5, #12]
	lsl r0, r0, #4
	bl sub_0800C1EC
_0802E9FE:
	pop {r4,r5}
	pop {r0}
	bx r0
_0802EA04:
	.4byte gUnknown_02016D60
_0802EA08:
	.4byte gUnknown_03000520
_0802EA0C:
	.4byte gUnknown_03000948
_0802EA10:
	.4byte 0x03000030
	THUMB_FUNC_END sub_0802E9B8

	THUMB_FUNC_START sub_0802EA14
sub_0802EA14: @ 0x0802EA14
	push {r4,lr}
	ldr r1, _0802EA78  @ =gUnknown_08427858
	ldr r4, _0802EA7C  @ =gUnknown_03000BFC
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl 0x08137AFC
	bl 0x08000BAC
	bl sub_0802BFC4
	bl sub_0802E9B8
	ldr r0, _0802EA80  @ =gUnknown_03000BD0
	ldrh r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0802EA72
	ldr r0, _0802EA84  @ =0x80010000
	bl sub_0800D24C
	ldr r1, _0802EA88  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	ldr r1, _0802EA8C  @ =gUnknown_02016D60
	mov r2, #0
	strb r2, [r1, #9]
	mov r0, #255
	strb r0, [r1, #10]
	ldr r1, _0802EA90  @ =gUnknown_03005050
	mov r0, #2
	strb r0, [r1]
	strb r2, [r4]
	ldr r1, _0802EA94  @ =0x00006739
	mov r0, #0
	bl sub_0800B980
	mov r0, #3
	mov r1, #32
	bl sub_0800C0B0
_0802EA72:
	pop {r4}
	pop {r0}
	bx r0
_0802EA78:
	.4byte gUnknown_08427858
_0802EA7C:
	.4byte gUnknown_03000BFC
_0802EA80:
	.4byte gUnknown_03000BD0
_0802EA84:
	.4byte 0x80010000
_0802EA88:
	.4byte gUnknown_03000520
_0802EA8C:
	.4byte gUnknown_02016D60
_0802EA90:
	.4byte gUnknown_03005050
_0802EA94:
	.4byte 0x00006739
	THUMB_FUNC_END sub_0802EA14

	THUMB_FUNC_START sub_0802EA98
sub_0802EA98: @ 0x0802EA98
	push {r4,r5,lr}
	ldr r0, _0802EAB0  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r5, r0, #0
	cmp r1, #10
	bls _0802EAA6
	b _0802ED84
_0802EAA6:
	lsl r0, r1, #2
	ldr r1, _0802EAB4  @ =0x0802EAB8
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802EAB0:
	.4byte gUnknown_02016D60
_0802EAB4:
	.4byte 0x0802EAB8
	.4byte _0802EAE4
	.4byte _0802EB68
	.4byte _0802EB98
	.4byte _0802EBAC
	.4byte _0802EC0C
	.4byte _0802EC40
	.4byte _0802EC50
	.4byte _0802ECA4
	.4byte _0802ECCC
	.4byte _0802ED14
	.4byte _0802ED64
_0802EAE4:
	ldr r0, _0802EB5C  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802EAEE
	b _0802ED84
_0802EAEE:
	mov r0, #0
	bl sub_08063C5C
	add r2, r0, #0
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	mov r1, #0
	mov r0, #104
	strh r0, [r2, #50]
	mov r0, #200
	lsl r0, r0, #1
	strh r0, [r2, #54]
	add r0, r2, #0
	add r0, r0, #42
	strb r1, [r0]
	ldrb r1, [r2, #31]
	mov r0, #63
	and r0, r0, r1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2, #31]
	add r1, r2, #0
	add r1, r1, #46
	mov r0, #3
	strb r0, [r1]
	add r2, r2, #94
	ldrb r1, [r2]
	sub r0, r0, #16
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, #93
	mov r1, #0
	mov r2, #0
	bl sub_0804CCE4
	ldr r0, _0802EB60  @ =gUnknown_0202A7E0
	ldr r2, [r0, #12]
	mov r0, #136
	strh r0, [r2, #50]
	mov r0, #196
	lsl r0, r0, #1
	strh r0, [r2, #54]
	ldr r1, _0802EB64  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _0802ED84
	.byte 0x00
	.byte 0x00
_0802EB5C:
	.4byte gUnknown_03000520
_0802EB60:
	.4byte gUnknown_0202A7E0
_0802EB64:
	.4byte gUnknown_02016D60
_0802EB68:
	ldrb r4, [r5, #9]
	cmp r4, #0
	beq _0802EB70
	b _0802ED84
_0802EB70:
	mov r0, #0
	mov r1, #104
	mov r2, #0
	bl sub_08063D28
	ldr r1, _0802EB94  @ =gUnknown_0202A7E0
	mov r0, #2
	strb r0, [r1, #4]
	mov r0, #224
	strb r0, [r1, #5]
	strb r4, [r1, #6]
	ldr r0, [r1, #12]
	add r0, r0, #42
	strb r4, [r0]
	ldr r1, [r1, #12]
	mov r0, #128
	str r0, [r1, #12]
	b _0802ED00
_0802EB94:
	.4byte gUnknown_0202A7E0
_0802EB98:
	ldr r0, _0802EBA8  @ =gUnknown_0202A7E0
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0802EBA2
	b _0802ED84
_0802EBA2:
	mov r0, #60
	strh r0, [r5, #4]
	b _0802ED00
_0802EBA8:
	.4byte gUnknown_0202A7E0
_0802EBAC:
	ldrb r0, [r5, #11]
	cmp r0, #0
	bne _0802EBB4
	b _0802ED84
_0802EBB4:
	ldrh r0, [r5, #4]
	cmp r0, #8
	bne _0802EBC4
	ldr r0, _0802EC00  @ =gUnknown_0202A7E0
	ldr r0, [r0, #12]
	add r0, r0, #42
	mov r1, #6
	strb r1, [r0]
_0802EBC4:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802EBD2
	b _0802ED84
_0802EBD2:
	ldr r0, _0802EC04  @ =0x00000501
	bl sub_0800D67C
	ldr r3, _0802EC08  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	ldr r0, _0802EC00  @ =gUnknown_0202A7E0
	ldr r0, [r0, #12]
	add r0, r0, #42
	mov r1, #4
	strb r1, [r0]
	b _0802ED00
_0802EC00:
	.4byte gUnknown_0202A7E0
_0802EC04:
	.4byte 0x00000501
_0802EC08:
	.4byte gUnknown_02000010
_0802EC0C:
	ldr r0, _0802EC38  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	beq _0802EC1A
	b _0802ED84
_0802EC1A:
	bl sub_0800D644
	ldr r4, _0802EC3C  @ =gUnknown_02016D60
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	mov r1, #16
	mov r2, #0
	bl sub_08063D28
	mov r0, #16
	strh r0, [r4, #4]
	b _0802ED84
	.byte 0x00
	.byte 0x00
_0802EC38:
	.4byte gUnknown_02000010
_0802EC3C:
	.4byte gUnknown_02016D60
_0802EC40:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802EC4E
	b _0802ED84
_0802EC4E:
	b _0802ED00
_0802EC50:
	mov r0, #60
	strh r0, [r5, #4]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r0, _0802EC94  @ =gUnknown_0202A7E0
	ldr r0, [r0, #12]
	add r0, r0, #42
	mov r1, #6
	strb r1, [r0]
	ldr r0, _0802EC98  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r0, r0, #42
	mov r1, #2
	strb r1, [r0]
	ldr r0, _0802EC9C  @ =0x00000502
	bl sub_0800D67C
	ldr r3, _0802ECA0  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	b _0802ED84
	.byte 0x00
	.byte 0x00
_0802EC94:
	.4byte gUnknown_0202A7E0
_0802EC98:
	.4byte gUnknown_03006A30
_0802EC9C:
	.4byte 0x00000502
_0802ECA0:
	.4byte gUnknown_02000010
_0802ECA4:
	ldr r0, _0802ECC4  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802ED84
	bl sub_0800D644
	ldr r0, _0802ECC8  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r1, #16
	strh r1, [r0, #4]
	b _0802ED84
	.byte 0x00
	.byte 0x00
_0802ECC4:
	.4byte gUnknown_02000010
_0802ECC8:
	.4byte gUnknown_02016D60
_0802ECCC:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802ED84
	ldr r0, _0802ED08  @ =0x00000503
	bl sub_0800D67C
	ldr r3, _0802ED0C  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	ldr r0, _0802ED10  @ =0x80040008
	bl sub_0800D24C
_0802ED00:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _0802ED84
_0802ED08:
	.4byte 0x00000503
_0802ED0C:
	.4byte gUnknown_02000010
_0802ED10:
	.4byte 0x80040008
_0802ED14:
	ldr r0, _0802ED50  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802ED84
	bl sub_0800D644
	ldr r1, _0802ED54  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	mov r4, #0
	strb r0, [r1]
	mov r0, #0
	mov r1, #16
	mov r2, #0
	bl sub_08063D28
	ldr r1, _0802ED58  @ =gUnknown_03006A30
	mov r0, #8
	strb r0, [r1, #12]
	ldr r0, [r1, #40]
	add r0, r0, #42
	strb r4, [r0]
	ldr r0, _0802ED5C  @ =gUnknown_0202A7E0
	ldr r1, _0802ED60  @ =gUnknown_08427870
	bl sub_0804CE64
	b _0802ED84
	.byte 0x00
	.byte 0x00
_0802ED50:
	.4byte gUnknown_02000010
_0802ED54:
	.4byte gUnknown_02016D60
_0802ED58:
	.4byte gUnknown_03006A30
_0802ED5C:
	.4byte gUnknown_0202A7E0
_0802ED60:
	.4byte gUnknown_08427870
_0802ED64:
	ldr r0, _0802ED8C  @ =gUnknown_0202A7E0
	bl sub_0804CE7C
	cmp r0, #0
	beq _0802ED84
	ldr r0, _0802ED90  @ =gUnknown_02016D60
	mov r2, #0
	strb r2, [r0]
	ldr r1, _0802ED94  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _0802ED98  @ =gUnknown_03000520
	strb r2, [r1, #7]
	ldr r0, _0802ED9C  @ =0x0020FFF0
	str r0, [r1, #12]
_0802ED84:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802ED8C:
	.4byte gUnknown_0202A7E0
_0802ED90:
	.4byte gUnknown_02016D60
_0802ED94:
	.4byte gUnknown_03000BFC
_0802ED98:
	.4byte gUnknown_03000520
_0802ED9C:
	.4byte 0x0020FFF0
	THUMB_FUNC_END sub_0802EA98

	THUMB_FUNC_START sub_0802EDA0
sub_0802EDA0: @ 0x0802EDA0
	push {r4-r6,lr}
	ldr r0, _0802EDB8  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r3, r0, #0
	cmp r1, #11
	bls _0802EDAE
	b _0802F074
_0802EDAE:
	lsl r0, r1, #2
	ldr r1, _0802EDBC  @ =0x0802EDC0
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802EDB8:
	.4byte gUnknown_02016D60
_0802EDBC:
	.4byte 0x0802EDC0
	.4byte _0802EDF0
	.4byte _0802EE20
	.4byte _0802EE90
	.4byte _0802EF2C
	.4byte _0802EF42
	.4byte _0802EF80
	.4byte _0802EF80
	.4byte _0802EF80
	.4byte _0802EF92
	.4byte _0802EFF8
	.4byte _0802F028
	.4byte _0802F02E
_0802EDF0:
	ldr r0, _0802EE18  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	beq _0802EDFE
	b _0802F074
_0802EDFE:
	ldrb r0, [r3, #12]
	cmp r0, #6
	bhi _0802EE06
	b _0802EFB2
_0802EE06:
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #120
	strh r0, [r3, #4]
	ldr r0, _0802EE1C  @ =0x00000203
	bl sub_0800D24C
	b _0802F074
_0802EE18:
	.4byte gUnknown_03000948
_0802EE1C:
	.4byte 0x00000203
_0802EE20:
	ldr r0, _0802EE80  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _0802EE4E
	bl 0x0800099C
	ldr r1, _0802EE84  @ =gUnknown_0202A7E0
	ldr r1, [r1, #12]
	mov r4, #3
	and r0, r0, r4
	lsl r0, r0, #1
	add r1, r1, #42
	strb r0, [r1]
	bl 0x0800099C
	ldr r1, _0802EE88  @ =gUnknown_03006A30
	ldr r1, [r1, #40]
	and r0, r0, r4
	lsl r0, r0, #1
	add r1, r1, #42
	strb r0, [r1]
_0802EE4E:
	ldr r1, _0802EE8C  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802EE5E
	b _0802F074
_0802EE5E:
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #215
	lsl r0, r0, #1
	bl sub_0800D24C
	mov r0, #98
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	mov r1, #152
	strh r1, [r0, #50]
	mov r1, #4
	strh r1, [r0, #54]
	b _0802F074
_0802EE80:
	.4byte gUnknown_03000948
_0802EE84:
	.4byte gUnknown_0202A7E0
_0802EE88:
	.4byte gUnknown_03006A30
_0802EE8C:
	.4byte gUnknown_02016D60
_0802EE90:
	ldr r4, _0802EED8  @ =gUnknown_0202A7E0
	ldr r0, [r4, #12]
	cmp r0, #0
	beq _0802EEC4
	ldr r0, _0802EEDC  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _0802EEC4
	bl 0x0800099C
	ldr r1, [r4, #12]
	mov r4, #3
	and r0, r0, r4
	lsl r0, r0, #1
	add r1, r1, #42
	strb r0, [r1]
	bl 0x0800099C
	ldr r1, _0802EEE0  @ =gUnknown_03006A30
	ldr r1, [r1, #40]
	and r0, r0, r4
	lsl r0, r0, #1
	add r1, r1, #42
	strb r0, [r1]
_0802EEC4:
	ldr r6, _0802EEE4  @ =gUnknown_02016D60
	ldrb r0, [r6, #13]
	cmp r0, #1
	bne _0802EEE8
	mov r0, #0
	bl sub_0804CD94
	mov r0, #0
	strb r0, [r6, #13]
	b _0802F074
_0802EED8:
	.4byte gUnknown_0202A7E0
_0802EEDC:
	.4byte gUnknown_03000948
_0802EEE0:
	.4byte gUnknown_03006A30
_0802EEE4:
	.4byte gUnknown_02016D60
_0802EEE8:
	cmp r0, #2
	beq _0802EEEE
	b _0802F074
_0802EEEE:
	mov r0, #90
	mov r1, #1
	mov r2, #20
	bl sub_0804C8A8
	ldr r4, _0802EF28  @ =gUnknown_03006A30
	ldr r1, [r4, #40]
	ldrh r1, [r1, #50]
	sub r1, r1, #16
	mov r5, #0
	strh r1, [r0, #50]
	ldr r1, [r4, #40]
	ldrh r1, [r1, #54]
	sub r1, r1, #32
	strh r1, [r0, #54]
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	mov r0, #60
	strh r0, [r6, #4]
	mov r0, #0
	mov r1, #16
	mov r2, #16
	bl sub_08063D28
	ldr r0, [r4, #40]
	add r0, r0, #42
	strb r5, [r0]
	b _0802F074
_0802EF28:
	.4byte gUnknown_03006A30
_0802EF2C:
	ldrh r0, [r3, #4]
	sub r0, r0, #1
	strh r0, [r3, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802EF3A
	b _0802F074
_0802EF3A:
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	b _0802F074
_0802EF42:
	ldr r2, _0802EF58  @ =gUnknown_03000450
	ldrh r1, [r2, #34]
	mov r4, #34
	ldrsh r0, [r2, r4]
	cmp r0, #0
	ble _0802EF5C
	add r0, r1, #0
	sub r0, r0, #8
	strh r0, [r2, #34]
	b _0802F04A
	.byte 0x00
	.byte 0x00
_0802EF58:
	.4byte gUnknown_03000450
_0802EF5C:
	ldr r1, _0802EF78  @ =gUnknown_030004A0
	mov r0, #0
	strh r0, [r2, #34]
	strh r0, [r1, #48]
	strh r0, [r1, #36]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #40
	strh r0, [r3, #4]
	ldr r0, _0802EF7C  @ =0x000001AF
	bl sub_0800D24C
	b _0802F074
_0802EF78:
	.4byte gUnknown_030004A0
_0802EF7C:
	.4byte 0x000001AF
_0802EF80:
	ldrh r0, [r3, #4]
	sub r0, r0, #1
	strh r0, [r3, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F074
	bl sub_0802F080
	b _0802F074
_0802EF92:
	ldr r1, _0802EFB8  @ =gUnknown_03000520
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802F074
	strb r0, [r1, #7]
	ldr r0, _0802EFBC  @ =0x0020FFF0
	str r0, [r1, #12]
	ldr r0, _0802EFC0  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _0802F074
	ldrb r0, [r3, #12]
	cmp r0, #6
	bhi _0802EFC4
_0802EFB2:
	add r0, r0, #1
	strb r0, [r3, #12]
	b _0802F074
_0802EFB8:
	.4byte gUnknown_03000520
_0802EFBC:
	.4byte 0x0020FFF0
_0802EFC0:
	.4byte gUnknown_03000948
_0802EFC4:
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	ldr r0, _0802EFF0  @ =0x00000504
	bl sub_0800D67C
	ldr r3, _0802EFF4  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	b _0802F074
	.byte 0x00
	.byte 0x00
_0802EFF0:
	.4byte 0x00000504
_0802EFF4:
	.4byte gUnknown_02000010
_0802EFF8:
	ldr r0, _0802F020  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802F074
	bl sub_0800D644
	ldr r1, _0802F024  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #1
	strb r0, [r1, #14]
	mov r0, #253
	lsl r0, r0, #1
	bl sub_0800D24C
	b _0802F074
	.byte 0x00
	.byte 0x00
_0802F020:
	.4byte gUnknown_02000010
_0802F024:
	.4byte gUnknown_02016D60
_0802F028:
	bl sub_0802FA94
	b _0802F074
_0802F02E:
	ldr r0, _0802F054  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802F074
	ldr r1, _0802F058  @ =gUnknown_03000450
	ldrh r2, [r1, #34]
	mov r4, #34
	ldrsh r0, [r1, r4]
	cmp r0, #119
	bgt _0802F060
	add r0, r2, #1
	strh r0, [r1, #34]
_0802F04A:
	ldr r1, _0802F05C  @ =gUnknown_030004A0
	strh r0, [r1, #48]
	strh r0, [r1, #36]
	b _0802F074
	.byte 0x00
	.byte 0x00
_0802F054:
	.4byte gUnknown_03000948
_0802F058:
	.4byte gUnknown_03000450
_0802F05C:
	.4byte gUnknown_030004A0
_0802F060:
	mov r0, #120
	strh r0, [r1, #34]
	ldr r1, _0802F07C  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #4
	strb r0, [r3]
	mov r0, #40
	strh r0, [r3, #4]
_0802F074:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F07C:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_0802EDA0

	THUMB_FUNC_START sub_0802F080
sub_0802F080: @ 0x0802F080
	push {lr}
	ldr r1, _0802F0AC  @ =gUnknown_02016D60
	mov r2, #0
	mov r0, #20
	strh r0, [r1, #4]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r2, [r1, #12]
	ldr r1, _0802F0B0  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
	ldr r0, _0802F0B4  @ =0x000001F9
	bl sub_0800D24C
	pop {r0}
	bx r0
_0802F0AC:
	.4byte gUnknown_02016D60
_0802F0B0:
	.4byte gUnknown_03000520
_0802F0B4:
	.4byte 0x000001F9
	THUMB_FUNC_END sub_0802F080

	THUMB_FUNC_START sub_0802F0B8
sub_0802F0B8: @ 0x0802F0B8
	push {r4,lr}
	ldr r1, _0802F0D0  @ =gUnknown_02016D60
	ldrb r0, [r1]
	sub r0, r0, #4
	add r4, r1, #0
	cmp r0, #4
	bhi _0802F1B0
	lsl r0, r0, #2
	ldr r1, _0802F0D4  @ =0x0802F0D8
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802F0D0:
	.4byte gUnknown_02016D60
_0802F0D4:
	.4byte 0x0802F0D8
	.4byte _0802F0EC
	.4byte _0802F100
	.4byte _0802F12C
	.4byte _0802F16C
	.4byte _0802F19C
_0802F0EC:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F1B0
	ldr r0, _0802F0FC  @ =0x00000505
	b _0802F13A
_0802F0FC:
	.4byte 0x00000505
_0802F100:
	ldr r0, _0802F124  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802F1B0
	bl sub_0800D644
	ldr r1, _0802F128  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #60
	strh r0, [r1, #4]
	mov r0, #2
	strb r0, [r1, #14]
	b _0802F1B0
	.byte 0x00
	.byte 0x00
_0802F124:
	.4byte gUnknown_02000010
_0802F128:
	.4byte gUnknown_02016D60
_0802F12C:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F1B0
	ldr r0, _0802F164  @ =0x00000506
_0802F13A:
	bl sub_0800D67C
	ldr r3, _0802F168  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0802F1B0
	.byte 0x00
	.byte 0x00
_0802F164:
	.4byte 0x00000506
_0802F168:
	.4byte gUnknown_02000010
_0802F16C:
	ldr r0, _0802F190  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802F1B0
	bl sub_0800D644
	ldr r1, _0802F194  @ =gUnknown_02016D60
	mov r0, #3
	strb r0, [r1, #14]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _0802F198  @ =0x00000203
	bl sub_0800D24C
	b _0802F1B0
_0802F190:
	.4byte gUnknown_02000010
_0802F194:
	.4byte gUnknown_02016D60
_0802F198:
	.4byte 0x00000203
_0802F19C:
	ldrb r2, [r4, #14]
	cmp r2, #0
	bne _0802F1B0
	ldr r0, _0802F1B8  @ =gUnknown_03000BFC
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	strb r2, [r4]
	mov r0, #30
	strh r0, [r4, #4]
_0802F1B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F1B8:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_0802F0B8

	THUMB_FUNC_START sub_0802F1BC
sub_0802F1BC: @ 0x0802F1BC
	push {r4,lr}
	ldr r0, _0802F1D4  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #6
	bls _0802F1CA
	b _0802F2F8
_0802F1CA:
	lsl r0, r1, #2
	ldr r1, _0802F1D8  @ =0x0802F1DC
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802F1D4:
	.4byte gUnknown_02016D60
_0802F1D8:
	.4byte 0x0802F1DC
	.4byte _0802F1F8
	.4byte _0802F212
	.4byte _0802F228
	.4byte _0802F278
	.4byte _0802F288
	.4byte _0802F29A
	.4byte _0802F2E0
_0802F1F8:
	ldrh r0, [r2, #4]
	sub r0, r0, #1
	strh r0, [r2, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F206
	b _0802F2F8
_0802F206:
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	mov r0, #4
	strb r0, [r2, #14]
	b _0802F2F8
_0802F212:
	ldr r1, _0802F220  @ =gUnknown_03000450
	ldr r0, _0802F224  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	str r0, [r1]
	mov r0, #120
	strh r0, [r2, #4]
	b _0802F2F8
_0802F220:
	.4byte gUnknown_03000450
_0802F224:
	.4byte gUnknown_03006A30
_0802F228:
	bl sub_0802FA94
	ldr r1, _0802F270  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F2F8
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #5
	strb r0, [r1, #14]
	mov r0, #90
	mov r1, #1
	mov r2, #20
	bl sub_0804C8A8
	ldr r4, _0802F274  @ =gUnknown_03006A30
	ldr r1, [r4, #40]
	ldrh r1, [r1, #50]
	sub r1, r1, #16
	strh r1, [r0, #50]
	ldr r1, [r4, #40]
	ldrh r1, [r1, #54]
	sub r1, r1, #24
	strh r1, [r0, #54]
	mov r0, #0
	mov r1, #8
	mov r2, #8
	bl sub_08063D28
	mov r0, #8
	strb r0, [r4, #12]
	b _0802F2F8
_0802F270:
	.4byte gUnknown_02016D60
_0802F274:
	.4byte gUnknown_03006A30
_0802F278:
	bl sub_0802FA94
	ldr r1, _0802F284  @ =gUnknown_02016D60
	mov r0, #180
	strh r0, [r1, #4]
	b _0802F2F8
_0802F284:
	.4byte gUnknown_02016D60
_0802F288:
	ldrh r0, [r2, #4]
	sub r0, r0, #1
	strh r0, [r2, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F2F8
	ldrb r0, [r2]
	add r0, r0, #1
	b _0802F2F6
_0802F29A:
	ldr r0, _0802F2BC  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802F2F8
	ldrb r3, [r2, #12]
	cmp r3, #15
	bhi _0802F2C4
	ldr r0, _0802F2C0  @ =gUnknown_03000520
	mov r1, #1
	neg r1, r1
	str r1, [r0, #12]
	add r0, r3, #1
	strb r0, [r2, #12]
	b _0802F2F8
	.byte 0x00
	.byte 0x00
_0802F2BC:
	.4byte gUnknown_03000948
_0802F2C0:
	.4byte gUnknown_03000520
_0802F2C4:
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	mov r0, #90
	strh r0, [r2, #4]
	bl sub_0800D644
	ldr r0, _0802F2DC  @ =0x80040000
	bl sub_0800D24C
	b _0802F2F8
	.byte 0x00
	.byte 0x00
_0802F2DC:
	.4byte 0x80040000
_0802F2E0:
	ldrh r0, [r2, #4]
	sub r0, r0, #1
	strh r0, [r2, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F2F8
	ldr r0, _0802F300  @ =gUnknown_03000BFC
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #0
_0802F2F6:
	strb r0, [r2]
_0802F2F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F300:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_0802F1BC

	THUMB_FUNC_START sub_0802F304
sub_0802F304: @ 0x0802F304
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r7, r0, #24
	lsl r1, r1, #16
	lsr r6, r1, #16
	ldr r4, _0802F354  @ =gUnknown_02000010
	ldrb r1, [r4]
	mov r5, #127
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #6
	bne _0802F320
	bl sub_0800D644
_0802F320:
	ldrb r1, [r4]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0802F35C
	ldr r1, _0802F358  @ =gUnknown_02016D60
	mov r0, #255
	strb r0, [r1, #15]
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F35C
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #30
	strh r0, [r1, #4]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0802FA3C
	mov r0, #1
	b _0802F35E
	.byte 0x00
	.byte 0x00
_0802F354:
	.4byte gUnknown_02000010
_0802F358:
	.4byte gUnknown_02016D60
_0802F35C:
	mov r0, #0
_0802F35E:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802F304

	THUMB_FUNC_START sub_0802F364
sub_0802F364: @ 0x0802F364
	push {r4,lr}
	ldr r0, _0802F37C  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r4, r0, #0
	cmp r1, #13
	bls _0802F372
	b _0802F676
_0802F372:
	lsl r0, r1, #2
	ldr r1, _0802F380  @ =0x0802F384
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802F37C:
	.4byte gUnknown_02016D60
_0802F380:
	.4byte 0x0802F384
	.4byte _0802F3BC
	.4byte _0802F3DC
	.4byte _0802F43C
	.4byte _0802F474
	.4byte _0802F4E0
	.4byte _0802F524
	.4byte _0802F542
	.4byte _0802F566
	.4byte _0802F594
	.4byte _0802F5CC
	.4byte _0802F5DC
	.4byte _0802F5EC
	.4byte _0802F5FC
	.4byte _0802F654
_0802F3BC:
	ldr r2, _0802F3D0  @ =gUnknown_030004A0
	ldr r1, _0802F3D4  @ =gUnknown_03000450
	mov r0, #0
	strh r0, [r1, #34]
	strh r0, [r2, #48]
	strh r0, [r2, #36]
	ldr r0, _0802F3D8  @ =0x800B01AD
	bl sub_0800D24C
	b _0802F4BC
_0802F3D0:
	.4byte gUnknown_030004A0
_0802F3D4:
	.4byte gUnknown_03000450
_0802F3D8:
	.4byte 0x800B01AD
_0802F3DC:
	ldr r0, _0802F430  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	beq _0802F3EA
	b _0802F676
_0802F3EA:
	ldrb r0, [r4, #12]
	sub r0, r0, #1
	strb r0, [r4, #12]
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802F3F8
	b _0802F676
_0802F3F8:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #120
	strh r0, [r4, #4]
	mov r0, #90
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	ldr r4, _0802F434  @ =gUnknown_0202A7E0
	str r0, [r4, #12]
	mov r0, #90
	mov r1, #0
	mov r2, #1
	bl sub_0804C8A8
	str r0, [r4, #32]
	mov r0, #90
	mov r1, #0
	mov r2, #2
	bl sub_0804C8A8
	str r0, [r4, #52]
	ldr r0, _0802F438  @ =0x00000201
	bl sub_0800D24C
	b _0802F676
_0802F430:
	.4byte gUnknown_03000948
_0802F434:
	.4byte gUnknown_0202A7E0
_0802F438:
	.4byte 0x00000201
_0802F43C:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F44A
	b _0802F676
_0802F44A:
	mov r0, #161
	lsl r0, r0, #3
	bl sub_0800D67C
	ldr r3, _0802F470  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	b _0802F63C
_0802F470:
	.4byte gUnknown_02000010
_0802F474:
	ldr r0, _0802F4C8  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0802F482
	b _0802F676
_0802F482:
	ldr r2, _0802F4CC  @ =gUnknown_030004A0
	ldr r1, _0802F4D0  @ =gUnknown_03000450
	ldrh r0, [r1, #34]
	add r0, r0, #1
	strh r0, [r1, #34]
	strh r0, [r2, #48]
	strh r0, [r2, #36]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #119
	bgt _0802F49A
	b _0802F676
_0802F49A:
	ldr r0, _0802F4D4  @ =0x00000509
	bl sub_0800D67C
	ldr r3, _0802F4D8  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
_0802F4BC:
	ldr r1, _0802F4DC  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _0802F676
	.byte 0x00
	.byte 0x00
_0802F4C8:
	.4byte gUnknown_03000948
_0802F4CC:
	.4byte gUnknown_030004A0
_0802F4D0:
	.4byte gUnknown_03000450
_0802F4D4:
	.4byte 0x00000509
_0802F4D8:
	.4byte gUnknown_02000010
_0802F4DC:
	.4byte gUnknown_02016D60
_0802F4E0:
	ldr r0, _0802F518  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0802F4EE
	b _0802F676
_0802F4EE:
	ldr r2, _0802F51C  @ =gUnknown_030004A0
	ldr r1, _0802F520  @ =gUnknown_03000450
	ldrh r0, [r1, #34]
	add r0, r0, #1
	strh r0, [r1, #34]
	strh r0, [r2, #48]
	strh r0, [r2, #36]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #191
	bgt _0802F506
	b _0802F676
_0802F506:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #30
	strh r0, [r4, #4]
	mov r0, #1
	mov r1, #0
	b _0802F55E
	.byte 0x00
	.byte 0x00
_0802F518:
	.4byte gUnknown_03000948
_0802F51C:
	.4byte gUnknown_030004A0
_0802F520:
	.4byte gUnknown_03000450
_0802F524:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F532
	b _0802F676
_0802F532:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #30
	strh r0, [r4, #4]
	mov r0, #0
	mov r1, #1
	b _0802F55E
_0802F542:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F550
	b _0802F676
_0802F550:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #180
	strh r0, [r4, #4]
	mov r0, #2
	mov r1, #2
_0802F55E:
	mov r2, #120
	bl sub_0802F9F8
	b _0802F676
_0802F566:
	ldrh r0, [r4, #4]
	cmp r0, #60
	bne _0802F570
	bl sub_0800D644
_0802F570:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F57E
	b _0802F676
_0802F57E:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #60
	strh r0, [r4, #4]
	ldr r1, _0802F590  @ =gUnknown_03006A30
	mov r0, #10
	strb r0, [r1, #12]
	b _0802F676
_0802F590:
	.4byte gUnknown_03006A30
_0802F594:
	ldrh r0, [r4, #4]
	cmp r0, #30
	bne _0802F5A4
	ldr r0, _0802F5C4  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r0, r0, #42
	mov r1, #0
	strb r1, [r0]
_0802F5A4:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F676
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #30
	strh r0, [r4, #4]
	ldr r1, _0802F5C8  @ =0x0000050A
	mov r0, #0
	bl sub_0802FA3C
	b _0802F676
_0802F5C4:
	.4byte gUnknown_03006A30
_0802F5C8:
	.4byte 0x0000050A
_0802F5CC:
	ldr r1, _0802F5D8  @ =0x0000050B
	mov r0, #1
	bl sub_0802F304
	b _0802F676
	.byte 0x00
	.byte 0x00
_0802F5D8:
	.4byte 0x0000050B
_0802F5DC:
	ldr r1, _0802F5E8  @ =0x0000050C
	mov r0, #2
	bl sub_0802F304
	b _0802F676
	.byte 0x00
	.byte 0x00
_0802F5E8:
	.4byte 0x0000050C
_0802F5EC:
	ldr r1, _0802F5F8  @ =0x0000050D
	mov r0, #0
	bl sub_0802F304
	b _0802F676
	.byte 0x00
	.byte 0x00
_0802F5F8:
	.4byte 0x0000050D
_0802F5FC:
	ldr r0, _0802F644  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802F676
	bl sub_0800D644
	ldr r4, _0802F648  @ =gUnknown_02016D60
	mov r0, #255
	strb r0, [r4, #15]
	ldr r1, _0802F64C  @ =gUnknown_03006A30
	mov r0, #11
	strb r0, [r1, #12]
	mov r0, #0
	mov r1, #3
	mov r2, #60
	bl sub_0802F9F8
	mov r0, #1
	mov r1, #4
	mov r2, #60
	bl sub_0802F9F8
	mov r0, #2
	mov r1, #5
	mov r2, #60
	bl sub_0802F9F8
	ldr r0, _0802F650  @ =0x00000201
	bl sub_0800D24C
_0802F63C:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0802F676
_0802F644:
	.4byte gUnknown_02000010
_0802F648:
	.4byte gUnknown_02016D60
_0802F64C:
	.4byte gUnknown_03006A30
_0802F650:
	.4byte 0x00000201
_0802F654:
	bl sub_0802FA94
	ldr r0, _0802F67C  @ =gUnknown_0202A4F8
	ldr r0, [r0]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0802F676
	ldr r1, _0802F680  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _0802F684  @ =gUnknown_02016D60
	mov r0, #0
	strb r0, [r1]
	mov r0, #120
	strh r0, [r1, #4]
_0802F676:
	pop {r4}
	pop {r0}
	bx r0
_0802F67C:
	.4byte gUnknown_0202A4F8
_0802F680:
	.4byte gUnknown_03000BFC
_0802F684:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_0802F364

	THUMB_FUNC_START sub_0802F688
sub_0802F688: @ 0x0802F688
	push {r4,r5,lr}
	ldr r0, _0802F6C4  @ =gUnknown_0202A4F8
	ldr r1, [r0]
	mov r2, #8
	orr r1, r1, r2
	str r1, [r0]
	mov r4, #0
	ldr r5, _0802F6C8  @ =gUnknown_03006A58
_0802F698:
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r0, r0, #4
	add r0, r0, r5
	ldr r0, [r0]
	lsl r1, r4, #2
	ldr r2, _0802F6CC  @ =gUnknown_0842788C
	add r1, r1, r2
	mov r2, #120
	bl sub_0803D7E8
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #3
	bls _0802F698
	ldr r0, _0802F6D0  @ =0x00000205
	bl sub_0800D24C
	pop {r4,r5}
	pop {r0}
	bx r0
_0802F6C4:
	.4byte gUnknown_0202A4F8
_0802F6C8:
	.4byte gUnknown_03006A58
_0802F6CC:
	.4byte gUnknown_0842788C
_0802F6D0:
	.4byte 0x00000205
	THUMB_FUNC_END sub_0802F688

	THUMB_FUNC_START sub_0802F6D4
sub_0802F6D4: @ 0x0802F6D4
	push {r4,r5,lr}
	ldr r0, _0802F6EC  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r4, r0, #0
	cmp r1, #14
	bls _0802F6E2
	b _0802F9D6
_0802F6E2:
	lsl r0, r1, #2
	ldr r1, _0802F6F0  @ =0x0802F6F4
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802F6EC:
	.4byte gUnknown_02016D60
_0802F6F0:
	.4byte 0x0802F6F4
	.4byte _0802F730
	.4byte _0802F774
	.4byte _0802F798
	.4byte _0802F7C4
	.4byte _0802F7E2
	.4byte _0802F810
	.4byte _0802F848
	.4byte _0802F884
	.4byte _0802F8AC
	.4byte _0802F8B4
	.4byte _0802F8C0
	.4byte _0802F8D0
	.4byte _0802F8E0
	.4byte _0802F924
	.4byte _0802F974
_0802F730:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F73E
	b _0802F9D6
_0802F73E:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #1
	bl sub_08063C5C
	mov r0, #2
	bl sub_08063C5C
	mov r0, #3
	bl sub_08063C5C
	ldr r2, _0802F770  @ =gUnknown_03006A30
	add r0, r2, #0
	add r0, r0, #156
	mov r1, #11
	strb r1, [r0]
	mov r3, #150
	lsl r3, r3, #1
	add r0, r2, r3
	strb r1, [r0]
	add r3, r3, #144
	add r0, r2, r3
	strb r1, [r0]
	b _0802F9D6
_0802F770:
	.4byte gUnknown_03006A30
_0802F774:
	ldr r1, _0802F790  @ =gUnknown_03000520
	ldr r0, _0802F794  @ =0xF877FFFF
	str r0, [r1, #12]
	mov r0, #28
	strb r0, [r1, #7]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #255
	lsl r0, r0, #1
	bl sub_0800D24C
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F790:
	.4byte gUnknown_03000520
_0802F794:
	.4byte 0xF877FFFF
_0802F798:
	ldrb r2, [r4, #12]
	cmp r2, #15
	bhi _0802F7B8
	ldr r0, _0802F7B4  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0802F7AC
	b _0802F9D6
_0802F7AC:
	add r0, r2, #1
	strb r0, [r4, #12]
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F7B4:
	.4byte gUnknown_03000948
_0802F7B8:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #60
	strh r0, [r4, #4]
	b _0802F9D6
_0802F7C4:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F7D2
	b _0802F9D6
_0802F7D2:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #240
	strh r0, [r4, #4]
	bl sub_0802F688
	b _0802F9D6
_0802F7E2:
	ldrh r0, [r4, #4]
	cmp r0, #120
	bne _0802F7F0
	mov r0, #130
	lsl r0, r0, #2
	bl sub_0800D24C
_0802F7F0:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F7FE
	b _0802F9D6
_0802F7FE:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	ldr r0, _0802F80C  @ =0x000001FF
	bl sub_0800D24C
	b _0802F9D6
_0802F80C:
	.4byte 0x000001FF
_0802F810:
	ldrb r2, [r4, #12]
	cmp r2, #0
	beq _0802F830
	ldr r0, _0802F82C  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0802F824
	b _0802F9D6
_0802F824:
	sub r0, r2, #1
	strb r0, [r4, #12]
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F82C:
	.4byte gUnknown_03000948
_0802F830:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #120
	strh r0, [r4, #4]
	ldr r0, _0802F844  @ =0x000001FD
	bl sub_0800D24C
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F844:
	.4byte 0x000001FD
_0802F848:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F856
	b _0802F9D6
_0802F856:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #60
	strh r0, [r4, #4]
	ldr r2, _0802F87C  @ =gUnknown_0202A4F8
	ldr r0, [r2]
	mov r1, #16
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #128
	lsl r0, r0, #2
	bl sub_0800D24C
	ldr r0, _0802F880  @ =0x800B01B0
	bl sub_0800D24C
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F87C:
	.4byte gUnknown_0202A4F8
_0802F880:
	.4byte 0x800B01B0
_0802F884:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0802F892
	b _0802F9D6
_0802F892:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #30
	strh r0, [r4, #4]
	ldr r1, _0802F8A8  @ =0x0000050E
	mov r0, #0
	bl sub_0802FA3C
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F8A8:
	.4byte 0x0000050E
_0802F8AC:
	ldr r1, _0802F8B0  @ =0x0000050F
	b _0802F8D2
_0802F8B0:
	.4byte 0x0000050F
_0802F8B4:
	mov r1, #162
	lsl r1, r1, #3
	mov r0, #2
	bl sub_0802F304
	b _0802F9D6
_0802F8C0:
	ldr r1, _0802F8CC  @ =0x00000511
	mov r0, #0
	bl sub_0802F304
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F8CC:
	.4byte 0x00000511
_0802F8D0:
	ldr r1, _0802F8DC  @ =0x00000512
_0802F8D2:
	mov r0, #1
	bl sub_0802F304
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F8DC:
	.4byte 0x00000512
_0802F8E0:
	ldr r0, _0802F914  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0802F9D6
	bl sub_0800D644
	ldr r1, _0802F918  @ =gUnknown_02016D60
	mov r0, #255
	strb r0, [r1, #15]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #120
	strh r0, [r1, #4]
	ldr r2, _0802F91C  @ =gUnknown_0202A4F8
	ldr r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	str r0, [r2]
	ldr r0, _0802F920  @ =0x80040000
	bl sub_0800D24C
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F914:
	.4byte gUnknown_02000010
_0802F918:
	.4byte gUnknown_02016D60
_0802F91C:
	.4byte gUnknown_0202A4F8
_0802F920:
	.4byte 0x80040000
_0802F924:
	ldr r0, _0802F948  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802F9D6
	ldr r1, _0802F94C  @ =gUnknown_03000450
	ldrh r2, [r1, #34]
	mov r3, #34
	ldrsh r0, [r1, r3]
	cmp r0, #91
	ble _0802F954
	sub r0, r2, #1
	strh r0, [r1, #34]
	ldr r1, _0802F950  @ =gUnknown_030004A0
	strh r0, [r1, #48]
	strh r0, [r1, #36]
	b _0802F9D6
_0802F948:
	.4byte gUnknown_03000948
_0802F94C:
	.4byte gUnknown_03000450
_0802F950:
	.4byte gUnknown_030004A0
_0802F954:
	ldr r0, _0802F96C  @ =0x000001B1
	bl sub_0800D24C
	ldr r1, _0802F970  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #210
	lsl r0, r0, #1
	strh r0, [r1, #4]
	b _0802F9D6
	.byte 0x00
	.byte 0x00
_0802F96C:
	.4byte 0x000001B1
_0802F970:
	.4byte gUnknown_02016D60
_0802F974:
	ldrh r0, [r4, #4]
	cmp r0, #60
	bne _0802F99E
	ldr r0, _0802F9DC  @ =0x00000201
	bl sub_0800D24C
	mov r0, #0
	mov r1, #6
	mov r2, #40
	bl sub_0802F9F8
	mov r0, #1
	mov r1, #7
	mov r2, #40
	bl sub_0802F9F8
	mov r0, #2
	mov r1, #8
	mov r2, #40
	bl sub_0802F9F8
_0802F99E:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	mov r5, #0
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802F9D6
	ldr r1, _0802F9E0  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	ldr r1, _0802F9E4  @ =0x00006739
	mov r0, #0
	bl sub_0800B980
	strb r5, [r4, #9]
	mov r0, #255
	strb r0, [r4, #10]
	ldr r1, _0802F9E8  @ =gUnknown_03005050
	mov r0, #2
	strb r0, [r1]
	ldr r0, _0802F9EC  @ =gUnknown_03000BFC
	strb r5, [r0]
	ldr r2, _0802F9F0  @ =gUnknown_03000BD0
	ldrh r1, [r2]
	ldr r0, _0802F9F4  @ =0x0000FFF7
	and r0, r0, r1
	strh r0, [r2]
_0802F9D6:
	pop {r4,r5}
	pop {r0}
	bx r0
_0802F9DC:
	.4byte 0x00000201
_0802F9E0:
	.4byte gUnknown_03000520
_0802F9E4:
	.4byte 0x00006739
_0802F9E8:
	.4byte gUnknown_03005050
_0802F9EC:
	.4byte gUnknown_03000BFC
_0802F9F0:
	.4byte gUnknown_03000BD0
_0802F9F4:
	.4byte 0x0000FFF7
	THUMB_FUNC_END sub_0802F6D4

	THUMB_FUNC_START sub_0802F9F8
sub_0802F9F8: @ 0x0802F9F8
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r3, _0802FA30  @ =gUnknown_0202A7E0
	lsl r4, r0, #2
	add r4, r4, r0
	lsl r4, r4, #2
	add r3, r3, #12
	add r4, r4, r3
	ldr r0, [r4]
	lsr r1, r1, #22
	ldr r3, _0802FA34  @ =gUnknown_0842789C
	add r1, r1, r3
	bl sub_0803D7E8
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #20]
	ldr r0, _0802FA38  @ =0x00000201
	bl sub_0800D24C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FA30:
	.4byte gUnknown_0202A7E0
_0802FA34:
	.4byte gUnknown_0842789C
_0802FA38:
	.4byte 0x00000201
	THUMB_FUNC_END sub_0802F9F8

	THUMB_FUNC_START sub_0802FA3C
sub_0802FA3C: @ 0x0802FA3C
	push {r4,lr}
	add r4, r0, #0
	add r0, r1, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	bl sub_0800D67C
	ldr r3, _0802FA88  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	ldr r0, _0802FA8C  @ =gUnknown_02016D60
	strb r4, [r0, #15]
	ldr r1, _0802FA90  @ =gUnknown_0202A7E0
	lsl r0, r4, #2
	add r0, r0, r4
	lsl r0, r0, #2
	add r1, r1, #12
	add r0, r0, r1
	ldr r1, [r0]
	mov r0, #3
	strb r0, [r1, #20]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FA88:
	.4byte gUnknown_02000010
_0802FA8C:
	.4byte gUnknown_02016D60
_0802FA90:
	.4byte gUnknown_0202A7E0
	THUMB_FUNC_END sub_0802FA3C

	THUMB_FUNC_START sub_0802FA94
sub_0802FA94: @ 0x0802FA94
	push {r4,lr}
	ldr r0, _0802FAD0  @ =gUnknown_03000450
	ldr r1, [r0]
	add r4, r0, #0
	cmp r1, #0
	beq _0802FAE0
	ldrh r0, [r1, #54]
	sub r0, r0, #80
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r0, #0
	bge _0802FAAE
	mov r1, #0
_0802FAAE:
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #192
	ble _0802FAB8
	mov r1, #192
_0802FAB8:
	ldrh r3, [r4, #34]
	mov r0, #34
	ldrsh r2, [r4, r0]
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r2, r0
	beq _0802FAD8
	add r1, r4, #0
	cmp r2, r0
	bge _0802FAD4
	add r0, r3, #1
	b _0802FAD6
_0802FAD0:
	.4byte gUnknown_03000450
_0802FAD4:
	sub r0, r3, #1
_0802FAD6:
	strh r0, [r1, #34]
_0802FAD8:
	ldr r1, _0802FAE8  @ =gUnknown_030004A0
	ldrh r0, [r4, #34]
	strh r0, [r1, #48]
	strh r0, [r1, #36]
_0802FAE0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FAE8:
	.4byte gUnknown_030004A0
	THUMB_FUNC_END sub_0802FA94

	THUMB_FUNC_START sub_0802FAEC
sub_0802FAEC: @ 0x0802FAEC
	push {lr}
	ldr r2, _0802FB18  @ =gUnknown_02016D60
	ldr r0, _0802FB1C  @ =gUnknown_03000BF0
	ldr r0, [r0]
	mov r1, #15
	and r0, r0, r1
	strb r0, [r2, #8]
	ldr r1, _0802FB20  @ =gUnknown_084278C0
	ldr r0, _0802FB24  @ =gUnknown_03000BFC
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl 0x08137AFC
	bl 0x08000BAC
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FB18:
	.4byte gUnknown_02016D60
_0802FB1C:
	.4byte gUnknown_03000BF0
_0802FB20:
	.4byte gUnknown_084278C0
_0802FB24:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_0802FAEC

	THUMB_FUNC_START sub_0802FB28
sub_0802FB28: @ 0x0802FB28
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #20
	ldr r0, _0802FC20  @ =gUnknown_03000520
	ldrb r7, [r0]
	cmp r7, #0
	bne _0802FC12
	mov r0, #128
	lsl r0, r0, #19
	mov r1, #0
	mov r8, r1
	strh r7, [r0]
	ldr r5, _0802FC24  @ =gUnknown_030004A0
	mov r0, #64
	strh r0, [r5]
	mov r4, #160
	str r4, [sp]
	mov r1, #224
	lsl r1, r1, #19
	ldr r2, _0802FC28  @ =0x01000100
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r6, _0802FC2C  @ =gUnknown_03005E20
	ldr r1, _0802FC30  @ =0x01000200
	mov r9, r1
	add r1, r6, #0
	mov r2, r9
	bl CpuFastSet
	str r7, [sp, #8]
	add r0, sp, #8
	ldr r4, _0802FC34  @ =gUnknown_03006630
	ldr r2, _0802FC38  @ =0x01000040
	add r1, r4, #0
	bl CpuFastSet
	ldr r0, _0802FC3C  @ =gUnknown_0300050C
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0802FC40  @ =gUnknown_03000204
	strb r1, [r0]
	ldr r0, _0802FC44  @ =gUnknown_03000E34
	str r4, [r0]
	ldr r0, _0802FC48  @ =gUnknown_03005E08
	add r4, r4, #128
	str r4, [r0]
	ldr r0, _0802FC4C  @ =gUnknown_03005E04
	str r6, [r0]
	bl sub_0800D6F4
	bl sub_0801239C
	bl sub_080123BC
	str r7, [sp, #12]
	add r0, sp, #12
	ldr r1, _0802FC50  @ =0x0600C000
	ldr r2, _0802FC54  @ =0x01000080
	bl CpuFastSet
	str r7, [sp, #16]
	add r0, sp, #16
	ldr r1, _0802FC58  @ =0x0600D800
	mov r2, r9
	bl CpuFastSet
	mov r0, #5
	bl sub_0800B890
	mov r0, #3
	bl sub_0800BA44
	bl sub_08030054
	ldr r0, _0802FC5C  @ =gUnknown_0200B310
	str r7, [r0]
	ldr r1, _0802FC60  @ =0x00006739
	mov r0, #0
	bl sub_0800B980
	add r1, r5, #0
	add r1, r1, #102
	ldr r0, _0802FC64  @ =0x00003C64
	strh r0, [r1]
	ldr r0, _0802FC68  @ =0x0000FF60
	strh r0, [r5, #12]
	ldr r0, _0802FC6C  @ =0x00001B0C
	strh r0, [r5, #8]
	str r7, [r5, #16]
	strh r7, [r5, #24]
	strh r7, [r5, #22]
	ldr r0, _0802FC70  @ =0x00001309
	strh r0, [r5, #20]
	strh r7, [r5, #34]
	mov r1, #91
	strh r1, [r5, #36]
	strh r7, [r5, #46]
	strh r1, [r5, #48]
	ldr r0, _0802FC74  @ =gUnknown_03000450
	strh r7, [r0, #32]
	strh r1, [r0, #34]
	ldr r0, _0802FC78  @ =gUnknown_0813D804
	bl sub_0804C808
	ldr r2, _0802FC7C  @ =gUnknown_02016D60
	strh r7, [r2, #6]
	ldr r1, _0802FC80  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #4
	strh r0, [r2, #4]
_0802FC12:
	add sp, sp, #20
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0802FC20:
	.4byte gUnknown_03000520
_0802FC24:
	.4byte gUnknown_030004A0
_0802FC28:
	.4byte 0x01000100
_0802FC2C:
	.4byte gUnknown_03005E20
_0802FC30:
	.4byte 0x01000200
_0802FC34:
	.4byte gUnknown_03006630
_0802FC38:
	.4byte 0x01000040
_0802FC3C:
	.4byte gUnknown_0300050C
_0802FC40:
	.4byte gUnknown_03000204
_0802FC44:
	.4byte gUnknown_03000E34
_0802FC48:
	.4byte gUnknown_03005E08
_0802FC4C:
	.4byte gUnknown_03005E04
_0802FC50:
	.4byte 0x0600C000
_0802FC54:
	.4byte 0x01000080
_0802FC58:
	.4byte 0x0600D800
_0802FC5C:
	.4byte gUnknown_0200B310
_0802FC60:
	.4byte 0x00006739
_0802FC64:
	.4byte 0x00003C64
_0802FC68:
	.4byte 0x0000FF60
_0802FC6C:
	.4byte 0x00001B0C
_0802FC70:
	.4byte 0x00001309
_0802FC74:
	.4byte gUnknown_03000450
_0802FC78:
	.4byte gUnknown_0813D804
_0802FC7C:
	.4byte gUnknown_02016D60
_0802FC80:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_0802FB28

	THUMB_FUNC_START sub_0802FC84
sub_0802FC84: @ 0x0802FC84
	push {lr}
	ldr r1, _0802FCB8  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802FCB4
	ldr r1, _0802FCBC  @ =gUnknown_030004A0
	mov r0, #250
	lsl r0, r0, #5
	strh r0, [r1]
	ldr r1, _0802FCC0  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _0802FCC4  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_0802FCB4:
	pop {r0}
	bx r0
_0802FCB8:
	.4byte gUnknown_02016D60
_0802FCBC:
	.4byte gUnknown_030004A0
_0802FCC0:
	.4byte gUnknown_03000520
_0802FCC4:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_0802FC84

	THUMB_FUNC_START sub_0802FCC8
sub_0802FCC8: @ 0x0802FCC8
	bx lr
	THUMB_FUNC_END sub_0802FCC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802FCCC
sub_0802FCCC: @ 0x0802FCCC
	push {r4,r5,lr}
	ldr r5, _0802FD00  @ =gUnknown_03000520
	ldrb r4, [r5]
	cmp r4, #0
	bne _0802FD74
	ldr r0, _0802FD04  @ =gUnknown_03000BD0
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0802FD14
	ldr r1, _0802FD08  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl sub_080367FC
	ldr r0, _0802FD0C  @ =gUnknown_02016D60
	str r4, [r0, #36]
	ldr r0, _0802FD10  @ =0x001FFFF0
	str r0, [r5, #12]
	strb r4, [r5, #7]
	mov r0, #64
	bl sub_0800C1EC
	b _0802FD74
_0802FD00:
	.4byte gUnknown_03000520
_0802FD04:
	.4byte gUnknown_03000BD0
_0802FD08:
	.4byte gUnknown_03000BFC
_0802FD0C:
	.4byte gUnknown_02016D60
_0802FD10:
	.4byte 0x001FFFF0
_0802FD14:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0802FD48
	mov r0, #1
	neg r0, r0
	str r0, [r5, #12]
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _0802FD40  @ =gUnknown_03000BFC
	mov r0, #7
	strb r0, [r1]
	ldr r0, _0802FD44  @ =0x80010000
	bl sub_0800D24C
	mov r0, #66
	bl sub_0800D24C
	b _0802FD74
	.byte 0x00
	.byte 0x00
_0802FD40:
	.4byte gUnknown_03000BFC
_0802FD44:
	.4byte 0x80010000
_0802FD48:
	ldr r0, _0802FD7C  @ =gUnknown_02016D60
	ldrh r1, [r0, #6]
	add r1, r1, #1
	strh r1, [r0, #6]
	lsl r1, r1, #16
	mov r0, #225
	lsl r0, r0, #20
	cmp r1, r0
	bne _0802FD74
	mov r0, #1
	neg r0, r0
	str r0, [r5, #12]
	mov r0, #3
	mov r1, #4
	bl sub_0800C0B0
	ldr r1, _0802FD80  @ =gUnknown_03000BFC
	mov r0, #6
	strb r0, [r1]
	ldr r0, _0802FD84  @ =0x80040000
	bl sub_0800D24C
_0802FD74:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FD7C:
	.4byte gUnknown_02016D60
_0802FD80:
	.4byte gUnknown_03000BFC
_0802FD84:
	.4byte 0x80040000
	THUMB_FUNC_END sub_0802FCCC

	THUMB_FUNC_START sub_0802FD88
sub_0802FD88: @ 0x0802FD88
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r5, #0
	ldr r0, _0802FDC4  @ =gUnknown_03000FC0
	mov r9, r0
	ldr r1, _0802FDC8  @ =gUnknown_03000510
	mov r10, r1
	mov r8, r9
	ldr r0, _0802FDCC  @ =0x0000FFFF
	mov r12, r0
	ldr r7, _0802FDD0  @ =gUnknown_03005E10
	ldr r6, _0802FDD4  @ =gUnknown_03000940
_0802FDA6:
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	add r0, r0, r8
	ldrh r4, [r0, #58]
	cmp r4, r12
	beq _0802FDD8
	lsl r2, r5, #1
	add r3, r2, r7
	add r0, r2, r6
	ldrh r1, [r0]
	add r0, r4, #0
	bic r0, r0, r1
	strh r0, [r3]
	b _0802FDE0
_0802FDC4:
	.4byte gUnknown_03000FC0
_0802FDC8:
	.4byte gUnknown_03000510
_0802FDCC:
	.4byte 0x0000FFFF
_0802FDD0:
	.4byte gUnknown_03005E10
_0802FDD4:
	.4byte gUnknown_03000940
_0802FDD8:
	lsl r2, r5, #1
	add r1, r2, r7
	mov r0, #0
	strh r0, [r1]
_0802FDE0:
	add r0, r2, r6
	strh r4, [r0]
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #3
	bls _0802FDA6
	mov r1, r10
	ldrh r0, [r1]
	mov r1, r9
	strh r0, [r1, #18]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802FD88

	THUMB_FUNC_START sub_0802FE04
sub_0802FE04: @ 0x0802FE04
	push {r4-r6,lr}
	ldr r0, _0802FE38  @ =gUnknown_03000BD0
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _0802FE48
	ldr r1, _0802FE3C  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	bl sub_08036834
	mov r0, #0
	bl sub_0800C1EC
	ldr r1, _0802FE40  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	ldr r1, _0802FE44  @ =gUnknown_02016D60
	mov r0, #0
	strh r0, [r1, #6]
	b _0802FEDC
_0802FE38:
	.4byte gUnknown_03000BD0
_0802FE3C:
	.4byte gUnknown_03000BFC
_0802FE40:
	.4byte gUnknown_03000520
_0802FE44:
	.4byte gUnknown_02016D60
_0802FE48:
	bl sub_080367E4
	mov r1, #64
	and r1, r1, r0
	lsl r1, r1, #24
	lsr r3, r1, #24
	cmp r3, #0
	beq _0802FED0
	ldr r4, _0802FEB8  @ =gUnknown_02016D60
	ldr r0, [r4, #36]
	add r0, r0, #1
	str r0, [r4, #36]
	cmp r0, #120
	bls _0802FEDC
	ldrb r1, [r4, #8]
	mov r0, #128
	orr r0, r0, r1
	strb r0, [r4, #8]
	bl sub_0802FD88
	ldr r6, _0802FEBC  @ =gUnknown_03005E10
	ldrh r1, [r6]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0802FEB2
	ldr r1, _0802FEC0  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r5, [r4]
	bl sub_080367E4
	add r1, r0, #0
	mov r0, #15
	and r0, r0, r1
	bl 0x08000A40
	ldr r1, _0802FEC4  @ =gUnknown_03006C80
	strb r0, [r1]
	bl sub_08036760
	ldr r1, _0802FEC8  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	ldr r0, _0802FECC  @ =0x80040000
	bl sub_0800D24C
_0802FEB2:
	strh r5, [r6]
	b _0802FEDC
	.byte 0x00
	.byte 0x00
_0802FEB8:
	.4byte gUnknown_02016D60
_0802FEBC:
	.4byte gUnknown_03005E10
_0802FEC0:
	.4byte gUnknown_03000BFC
_0802FEC4:
	.4byte gUnknown_03006C80
_0802FEC8:
	.4byte gUnknown_03000520
_0802FECC:
	.4byte 0x80040000
_0802FED0:
	ldr r0, _0802FEE4  @ =gUnknown_02016D60
	ldrb r2, [r0, #8]
	mov r1, #127
	and r1, r1, r2
	strb r1, [r0, #8]
	str r3, [r0, #36]
_0802FEDC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FEE4:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_0802FE04

	THUMB_FUNC_START sub_0802FEE8
sub_0802FEE8: @ 0x0802FEE8
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r0, _0802FF0C  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FFD6
	ldr r1, _0802FF10  @ =gUnknown_03000FC0
	mov r0, #8
	strh r0, [r1, #18]
	ldr r5, _0802FF14  @ =gUnknown_02016D60
	ldrb r4, [r5]
	cmp r4, #1
	beq _0802FF58
	cmp r4, #1
	bgt _0802FF18
	cmp r4, #0
	beq _0802FF1E
	b _0802FFD6
_0802FF0C:
	.4byte gUnknown_03000520
_0802FF10:
	.4byte gUnknown_03000FC0
_0802FF14:
	.4byte gUnknown_02016D60
_0802FF18:
	cmp r4, #2
	beq _0802FF6C
	b _0802FFD6
_0802FF1E:
	ldr r1, _0802FF4C  @ =gUnknown_030004A0
	mov r0, #64
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #19
	strh r4, [r0]
	bl sub_0801239C
	bl sub_080123BC
	str r4, [sp]
	ldr r1, _0802FF50  @ =gUnknown_03006CA8
	ldr r2, _0802FF54  @ =0x05000008
	mov r0, sp
	bl CpuSet
	mov r0, #3
	bl sub_08036704
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _0802FFD6
_0802FF4C:
	.4byte gUnknown_030004A0
_0802FF50:
	.4byte gUnknown_03006CA8
_0802FF54:
	.4byte 0x05000008
_0802FF58:
	ldr r0, [r1, #8]
	cmp r0, #1
	bne _0802FFD6
	mov r0, #2
	strb r0, [r5]
	b _0802FFD6
_0802FF64:
	mov r0, #10
	bl sub_0800B5EC
	b _0802FFD6
_0802FF6C:
	bl sub_0800BED8
	ldr r1, _0802FFE0  @ =gUnknown_03006C80
	add r0, r1, #0
	add r0, r0, #44
	ldrb r0, [r0]
	mov r3, #240
	and r3, r3, r0
	cmp r3, #240
	beq _0802FFD0
	mov r2, #1
	ldrb r0, [r1]
	cmp r2, r0
	bcs _0802FFAC
	add r5, r1, #0
	mov r6, #240
	add r4, r0, #0
_0802FF8E:
	lsl r0, r2, #3
	add r0, r0, r5
	add r0, r0, #44
	ldrb r0, [r0]
	add r1, r6, #0
	and r1, r1, r0
	cmp r1, #240
	beq _0802FFA2
	cmp r1, r3
	bne _0802FF64
_0802FFA2:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r4
	bcc _0802FF8E
_0802FFAC:
	mov r2, #0
	ldr r1, _0802FFE0  @ =gUnknown_03006C80
	ldrb r0, [r1]
	cmp r2, r0
	bcs _0802FFD0
	add r3, r1, #0
	add r1, r0, #0
_0802FFBA:
	lsl r0, r2, #3
	add r0, r0, r3
	add r0, r0, #44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FF64
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r1
	bcc _0802FFBA
_0802FFD0:
	mov r0, #5
	bl sub_0800B5EC
_0802FFD6:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FFE0:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0802FEE8

	THUMB_FUNC_START sub_0802FFE4
sub_0802FFE4: @ 0x0802FFE4
	push {lr}
	ldr r0, _0803000C  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _08030006
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _08030010  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _08030014  @ =gUnknown_020163D0
	strh r1, [r0]
	mov r0, #9
	bl sub_0800B5EC
_08030006:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803000C:
	.4byte gUnknown_03000520
_08030010:
	.4byte 0x00006739
_08030014:
	.4byte gUnknown_020163D0
	THUMB_FUNC_END sub_0802FFE4

	THUMB_FUNC_START sub_08030018
sub_08030018: @ 0x08030018
	push {lr}
	ldr r0, _08030048  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _08030042
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _0803004C  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _08030050  @ =gUnknown_020163D0
	strh r1, [r0]
	bl sub_080123BC
	bl sub_0801239C
	mov r0, #6
	bl sub_0800B5EC
_08030042:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030048:
	.4byte gUnknown_03000520
_0803004C:
	.4byte 0x00006739
_08030050:
	.4byte gUnknown_020163D0
	THUMB_FUNC_END sub_08030018

	THUMB_FUNC_START sub_08030054
sub_08030054: @ 0x08030054
	push {lr}
	ldr r0, _08030064  @ =0x00000402
	ldr r1, _08030068  @ =gUnknown_084278E0
	bl sub_0800F4C4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030064:
	.4byte 0x00000402
_08030068:
	.4byte gUnknown_084278E0
	THUMB_FUNC_END sub_08030054

	THUMB_FUNC_START sub_0803006C
sub_0803006C: @ 0x0803006C
	push {lr}
	ldr r1, _08030084  @ =gUnknown_084278F8
	ldr r0, _08030088  @ =gUnknown_03005050
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030084:
	.4byte gUnknown_084278F8
_08030088:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0803006C

	THUMB_FUNC_START sub_0803008C
sub_0803008C: @ 0x0803008C
	push {r4,r5,lr}
	ldr r5, _0803009C  @ =gUnknown_03000BFC
	ldrb r4, [r5]
	cmp r4, #0
	beq _080300A0
	cmp r4, #1
	beq _080300E0
	b _080300F4
_0803009C:
	.4byte gUnknown_03000BFC
_080300A0:
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _080300D4  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _080300D8  @ =gUnknown_020163D0
	strh r1, [r0]
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0800D6F4
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r1, _080300DC  @ =gUnknown_02016D60
	mov r0, #10
	strh r0, [r1, #4]
	strh r4, [r1, #6]
	mov r0, #4
	bl sub_08036704
	b _080300F4
_080300D4:
	.4byte 0x00006739
_080300D8:
	.4byte gUnknown_020163D0
_080300DC:
	.4byte gUnknown_02016D60
_080300E0:
	bl sub_080367CC
	cmp r0, #1
	bne _080300F4
	ldr r0, _080300FC  @ =gUnknown_03005050
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #0
	strb r0, [r5]
_080300F4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080300FC:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0803008C

	THUMB_FUNC_START sub_08030100
sub_08030100: @ 0x08030100
	push {r4-r6,lr}
	ldr r0, _080301D4  @ =gUnknown_03000520
	ldrb r4, [r0]
	cmp r4, #0
	bne _080301CE
	mov r0, #128
	lsl r0, r0, #19
	mov r6, #0
	strh r4, [r0]
	bl sub_0800BED8
	mov r0, #15
	bl sub_0800B890
	mov r0, #20
	bl sub_0800BA44
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _080301D8  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _080301DC  @ =gUnknown_020163D0
	strh r1, [r0]
	ldr r1, _080301E0  @ =gUnknown_030004A0
	mov r0, #234
	lsl r0, r0, #5
	strh r0, [r1]
	mov r0, #224
	lsl r0, r0, #5
	strh r0, [r1, #8]
	ldr r0, _080301E4  @ =0x00001D01
	strh r0, [r1, #20]
	ldr r0, _080301E8  @ =0x00001E02
	strh r0, [r1, #32]
	ldr r0, _080301EC  @ =0x00001F03
	strh r0, [r1, #44]
	ldr r5, _080301F0  @ =gUnknown_02016D60
	mov r0, #96
	strh r0, [r5, #38]
	neg r0, r0
	strh r0, [r1, #22]
	strh r4, [r1, #10]
	ldr r0, _080301F4  @ =0x0000FFF8
	strh r0, [r1, #46]
	strh r0, [r1, #34]
	strh r4, [r1, #12]
	strh r0, [r1, #48]
	strh r0, [r1, #36]
	strh r0, [r1, #24]
	ldr r2, _080301F8  @ =gUnknown_03000450
	strh r0, [r2, #34]
	strh r0, [r2, #32]
	add r2, r1, #0
	add r2, r2, #102
	mov r0, #253
	lsl r0, r0, #6
	strh r0, [r2]
	add r1, r1, #104
	ldr r0, _080301FC  @ =0x0000070C
	strh r0, [r1]
	mov r0, #0
	mov r1, #1
	bl sub_080599A8
	ldr r1, _08030200  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #106
	strh r0, [r5, #4]
	ldr r1, _08030204  @ =gUnknown_03000948
	mov r0, #1
	strb r0, [r1, #5]
	strb r6, [r5, #8]
	mov r0, #70
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #1
	mov r2, #0
	bl sub_0804C8A8
	bl sub_080397F0
	strb r0, [r5, #10]
	lsl r0, r0, #24
	mov r1, #3
	cmp r0, #0
	beq _080301BA
	mov r1, #4
_080301BA:
	strb r1, [r5, #11]
	ldr r0, _08030208  @ =gUnknown_03006C80
	strb r6, [r0, #3]
	ldr r0, _0803020C  @ =gUnknown_03000830
	strb r6, [r0]
	bl sub_0800D1A0
	ldr r0, _08030210  @ =0x80010000
	bl sub_0800D24C
_080301CE:
	pop {r4-r6}
	pop {r0}
	bx r0
_080301D4:
	.4byte gUnknown_03000520
_080301D8:
	.4byte 0x00006739
_080301DC:
	.4byte gUnknown_020163D0
_080301E0:
	.4byte gUnknown_030004A0
_080301E4:
	.4byte 0x00001D01
_080301E8:
	.4byte 0x00001E02
_080301EC:
	.4byte 0x00001F03
_080301F0:
	.4byte gUnknown_02016D60
_080301F4:
	.4byte 0x0000FFF8
_080301F8:
	.4byte gUnknown_03000450
_080301FC:
	.4byte 0x0000070C
_08030200:
	.4byte gUnknown_03005050
_08030204:
	.4byte gUnknown_03000948
_08030208:
	.4byte gUnknown_03006C80
_0803020C:
	.4byte gUnknown_03000830
_08030210:
	.4byte 0x80010000
	THUMB_FUNC_END sub_08030100

	THUMB_FUNC_START sub_08030214
sub_08030214: @ 0x08030214
	push {r4,lr}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _08030248  @ =0x06014000
	ldr r3, _0803024C  @ =gUnknown_08427910
	lsl r1, r4, #3
	add r1, r1, r3
	ldr r1, [r1]
	lsl r2, r4, #1
	add r2, r2, #1
	lsl r2, r2, #2
	add r2, r2, r3
	ldrh r2, [r2]
	bl 0x080009F4
	ldr r0, _08030250  @ =0x80020000
	bl sub_0800D24C
	cmp r4, #4
	bhi _0803030A
	lsl r0, r4, #2
	ldr r1, _08030254  @ =0x08030258
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_08030248:
	.4byte 0x06014000
_0803024C:
	.4byte gUnknown_08427910
_08030250:
	.4byte 0x80020000
_08030254:
	.4byte 0x08030258
	.4byte _0803026C
	.4byte _0803028A
	.4byte _080302B4
	.4byte _080302D2
	.4byte _080302FA
_0803026C:
	mov r0, #70
	mov r1, #8
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #9
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #220
	lsl r0, r0, #1
	bl sub_0800D24C
	b _0803030A
_0803028A:
	mov r0, #70
	mov r1, #10
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #14
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #19
	add r2, r4, #0
	bl sub_0804C8A8
	ldr r0, _080302B0  @ =0x000001B5
	bl sub_0800D24C
	b _0803030A
_080302B0:
	.4byte 0x000001B5
_080302B4:
	mov r0, #70
	mov r1, #12
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #16
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #218
	lsl r0, r0, #1
	bl sub_0800D24C
	b _0803030A
_080302D2:
	mov r0, #70
	mov r1, #13
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #15
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #18
	add r2, r4, #0
	bl sub_0804C8A8
	mov r0, #219
	lsl r0, r0, #1
	bl sub_0800D24C
	b _0803030A
_080302FA:
	mov r0, #70
	mov r1, #17
	add r2, r4, #0
	bl sub_0804C8A8
	ldr r0, _08030310  @ =0x000001B7
	bl sub_0800D24C
_0803030A:
	pop {r4}
	pop {r0}
	bx r0
_08030310:
	.4byte 0x000001B7
	THUMB_FUNC_END sub_08030214

	THUMB_FUNC_START sub_08030314
sub_08030314: @ 0x08030314
	push {r4,lr}
	ldr r4, _0803036C  @ =gUnknown_02016D60
	ldrb r0, [r4, #8]
	bl sub_08030214
	ldrb r2, [r4, #8]
	mov r0, #70
	mov r1, #6
	bl sub_0804C8A8
	ldr r4, _08030370  @ =gUnknown_03000414
	ldrb r2, [r4]
	mov r0, #70
	mov r1, #7
	bl sub_0804C8A8
	ldr r1, _08030374  @ =gUnknown_03000450
	str r0, [r1]
	mov r0, #5
	bl sub_08036704
	ldr r1, _08030378  @ =gUnknown_03005050
	mov r0, #4
	strb r0, [r1]
	ldr r1, _0803037C  @ =gUnknown_03000BFC
	mov r0, #0
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08030362
	mov r0, #70
	mov r1, #5
	mov r2, #0
	bl sub_0804C8A8
	mov r1, #120
	strh r1, [r0, #50]
	mov r1, #80
	strh r1, [r0, #54]
_08030362:
	bl sub_08030724
	pop {r4}
	pop {r0}
	bx r0
_0803036C:
	.4byte gUnknown_02016D60
_08030370:
	.4byte gUnknown_03000414
_08030374:
	.4byte gUnknown_03000450
_08030378:
	.4byte gUnknown_03005050
_0803037C:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_08030314

	THUMB_FUNC_START sub_08030380
sub_08030380: @ 0x08030380
	push {r4,lr}
	ldr r4, _080303F0  @ =gUnknown_02016D60
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08030408
	bl sub_08059A44
	ldrb r0, [r4, #10]
	cmp r0, #0
	beq _08030404
	ldr r2, _080303F4  @ =gUnknown_030004A0
	ldrh r0, [r2]
	mov r3, #132
	lsl r3, r3, #7
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	add r1, r2, #0
	add r1, r1, #96
	ldr r0, _080303F8  @ =0x00003D3F
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #63
	strh r0, [r1]
	sub r1, r1, #8
	mov r0, #120
	strh r0, [r1]
	add r1, r1, #4
	mov r0, #160
	strh r0, [r1]
	mov r0, #70
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	ldr r1, _080303FC  @ =gUnknown_03000450
	str r0, [r1]
	mov r0, #70
	mov r1, #3
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #70
	mov r1, #4
	mov r2, #0
	bl sub_0804C8A8
	ldr r1, _08030400  @ =gUnknown_03005050
	mov r0, #3
	strb r0, [r1]
	mov r0, #60
	strh r0, [r4, #4]
	b _08030408
_080303F0:
	.4byte gUnknown_02016D60
_080303F4:
	.4byte gUnknown_030004A0
_080303F8:
	.4byte 0x00003D3F
_080303FC:
	.4byte gUnknown_03000450
_08030400:
	.4byte gUnknown_03005050
_08030404:
	bl sub_08030314
_08030408:
	bl 0x08137AFC
	bl 0x08000BAC
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030380

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030418
sub_08030418: @ 0x08030418
	push {r4,r5,lr}
	ldr r4, _0803042C  @ =gUnknown_03000BFC
	ldrb r0, [r4]
	cmp r0, #1
	beq _0803049C
	cmp r0, #1
	bgt _08030430
	cmp r0, #0
	beq _08030436
	b _080304DE
_0803042C:
	.4byte gUnknown_03000BFC
_08030430:
	cmp r0, #2
	beq _080304CC
	b _080304DE
_08030436:
	ldr r1, _08030490  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _080304DE
	mov r2, #0
	ldr r0, _08030494  @ =gUnknown_03006C80
	ldrb r3, [r0]
	add r4, r0, #0
	cmp r2, r3
	bcs _08030478
	ldr r0, [r4, #40]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08030478
	add r1, r3, #0
	add r5, r4, #0
	add r5, r5, #40
	mov r3, #8
_08030462:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r1
	bcs _08030478
	lsl r0, r2, #3
	add r0, r0, r5
	ldr r0, [r0]
	and r0, r0, r3
	cmp r0, #0
	bne _08030462
_08030478:
	ldrb r4, [r4]
	cmp r2, r4
	beq _08030484
	mov r0, #32
	bl sub_0800D24C
_08030484:
	ldr r1, _08030498  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080304DE
	.byte 0x00
	.byte 0x00
_08030490:
	.4byte gUnknown_02016D60
_08030494:
	.4byte gUnknown_03006C80
_08030498:
	.4byte gUnknown_03000BFC
_0803049C:
	ldr r3, _080304B0  @ =gUnknown_02016D60
	ldrh r1, [r3, #38]
	mov r2, #38
	ldrsh r0, [r3, r2]
	cmp r0, #0
	ble _080304B4
	sub r0, r1, #4
	strh r0, [r3, #38]
	b _080304CC
	.byte 0x00
	.byte 0x00
_080304B0:
	.4byte gUnknown_02016D60
_080304B4:
	mov r0, #0
	strh r0, [r3, #38]
	ldr r2, _080304F0  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _080304F4  @ =0x0000BFFF
	and r0, r0, r1
	strh r0, [r2]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #30
	strh r0, [r3, #4]
_080304CC:
	ldr r1, _080304F8  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _080304DE
	bl sub_08030314
_080304DE:
	bl sub_08030654
	bl 0x08137AFC
	bl 0x08000BAC
	pop {r4,r5}
	pop {r0}
	bx r0
_080304F0:
	.4byte gUnknown_030004A0
_080304F4:
	.4byte 0x0000BFFF
_080304F8:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08030418

	THUMB_FUNC_START sub_080304FC
sub_080304FC: @ 0x080304FC
	push {lr}
	bl sub_08037554
	cmp r0, #0
	beq _080305AC
	bl sub_08037750
	bl 0x0800099C
	ldr r0, _0803052C  @ =gUnknown_03005E10
	ldrh r1, [r0]
	mov r0, #96
	and r0, r0, r1
	cmp r0, #0
	beq _08030538
	ldr r1, _08030530  @ =gUnknown_02016D60
	ldrb r0, [r1, #8]
	add r2, r1, #0
	ldrb r3, [r1, #11]
	cmp r0, r3
	beq _08030534
	add r0, r0, #1
	b _08030556
	.byte 0x00
	.byte 0x00
_0803052C:
	.4byte gUnknown_03005E10
_08030530:
	.4byte gUnknown_02016D60
_08030534:
	mov r0, #0
	b _08030556
_08030538:
	mov r0, #144
	and r0, r0, r1
	cmp r0, #0
	beq _08030566
	ldr r1, _08030550  @ =gUnknown_02016D60
	ldrb r0, [r1, #8]
	add r2, r1, #0
	cmp r0, #0
	bne _08030554
	ldrb r0, [r2, #11]
	b _08030556
	.byte 0x00
	.byte 0x00
_08030550:
	.4byte gUnknown_02016D60
_08030554:
	sub r0, r0, #1
_08030556:
	strb r0, [r1, #8]
	ldrb r0, [r2, #8]
	bl sub_08030214
	mov r0, #61
	bl sub_0800D24C
	b _08030598
_08030566:
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08030598
	ldr r0, _080305B0  @ =0x80010000
	bl sub_0800D24C
	mov r0, #62
	bl sub_0800D24C
	mov r0, #77
	bl sub_0800D24C
	ldr r0, _080305B4  @ =gUnknown_03000450
	ldr r0, [r0]
	mov r1, #0
	bl sub_080599A8
	ldr r1, _080305B8  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #5
	bl sub_08036704
_08030598:
	bl sub_08030728
	bl sub_08030654
	bl 0x08137AFC
	bl 0x08000BAC
	bl sub_08037574
_080305AC:
	pop {r0}
	bx r0
_080305B0:
	.4byte 0x80010000
_080305B4:
	.4byte gUnknown_03000450
_080305B8:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_080304FC

	THUMB_FUNC_START sub_080305BC
sub_080305BC: @ 0x080305BC
	push {r4-r6,lr}
	bl sub_08037554
	cmp r0, #0
	beq _0803064E
	bl sub_08037750
	bl sub_08059A2C
	cmp r0, #0
	beq _0803063E
	bl sub_0800BED8
	mov r6, #160
	lsl r6, r6, #19
	mov r0, #0
	strh r0, [r6]
	ldr r5, _08030628  @ =gUnknown_020163D0
	mov r4, #0
	strh r4, [r5]
	bl sub_080123BC
	bl sub_0801239C
	bl sub_08036760
	bl sub_08059A44
	strh r4, [r6]
	strh r4, [r5]
	ldr r4, _0803062C  @ =gUnknown_03006C80
	ldr r1, _08030630  @ =gUnknown_08427938
	ldr r2, _08030634  @ =gUnknown_02016D60
	ldrb r0, [r2, #8]
	add r0, r0, r1
	ldrb r1, [r0]
	strb r1, [r4, #1]
	mov r3, #0
	ldrb r0, [r2, #8]
	cmp r0, #0
	bne _08030610
	mov r3, #1
_08030610:
	strb r3, [r4, #2]
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #2
	bne _08030638
	ldrb r0, [r2, #10]
	cmp r0, #1
	bls _08030638
	mov r0, #3
	bl sub_0800B5EC
	b _0803063E
_08030628:
	.4byte gUnknown_020163D0
_0803062C:
	.4byte gUnknown_03006C80
_08030630:
	.4byte gUnknown_08427938
_08030634:
	.4byte gUnknown_02016D60
_08030638:
	mov r0, #2
	bl sub_0800B5EC
_0803063E:
	bl sub_08030654
	bl 0x08137AFC
	bl 0x08000BAC
	bl sub_08037574
_0803064E:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080305BC

	THUMB_FUNC_START sub_08030654
sub_08030654: @ 0x08030654
	push {r4,r5,lr}
	ldr r0, _08030698  @ =gUnknown_03000450
	ldr r1, [r0]
	add r4, r0, #0
	cmp r1, #0
	beq _08030718
	add r5, r1, #0
	ldrh r0, [r5, #50]
	sub r0, r0, #112
	lsl r0, r0, #16
	lsr r2, r0, #16
	asr r0, r0, #16
	mov r1, #8
	neg r1, r1
	cmp r0, r1
	bge _08030676
	ldr r2, _0803069C  @ =0x0000FFF8
_08030676:
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r0, #24
	ble _08030680
	mov r2, #24
_08030680:
	ldrh r3, [r4, #32]
	mov r0, #32
	ldrsh r1, [r4, r0]
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r1, r0
	beq _080306A4
	add r2, r4, #0
	cmp r1, r0
	bge _080306A0
	add r0, r3, #1
	b _080306A2
_08030698:
	.4byte gUnknown_03000450
_0803069C:
	.4byte 0x0000FFF8
_080306A0:
	sub r0, r3, #1
_080306A2:
	strh r0, [r2, #32]
_080306A4:
	ldr r3, _080306F4  @ =gUnknown_030004A0
	ldrh r1, [r4, #32]
	strh r1, [r3, #46]
	ldr r2, _080306F8  @ =0x0000FFFF
	add r0, r2, #0
	and r0, r0, r1
	strh r0, [r3, #34]
	and r0, r0, r2
	ldr r1, _080306FC  @ =gUnknown_02016D60
	ldrh r1, [r1, #38]
	sub r0, r0, r1
	strh r0, [r3, #22]
	ldrh r0, [r5, #54]
	sub r0, r0, #72
	lsl r0, r0, #16
	lsr r2, r0, #16
	asr r0, r0, #16
	mov r1, #8
	neg r1, r1
	add r5, r3, #0
	cmp r0, r1
	bge _080306D2
	ldr r2, _08030700  @ =0x0000FFF8
_080306D2:
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r0, #24
	ble _080306DC
	mov r2, #24
_080306DC:
	ldrh r3, [r4, #34]
	mov r0, #34
	ldrsh r1, [r4, r0]
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r1, r0
	beq _08030708
	add r2, r4, #0
	cmp r1, r0
	bge _08030704
	add r0, r3, #1
	b _08030706
_080306F4:
	.4byte gUnknown_030004A0
_080306F8:
	.4byte 0x0000FFFF
_080306FC:
	.4byte gUnknown_02016D60
_08030700:
	.4byte 0x0000FFF8
_08030704:
	sub r0, r3, #1
_08030706:
	strh r0, [r2, #34]
_08030708:
	ldrh r0, [r4, #34]
	strh r0, [r5, #48]
	ldr r2, _08030720  @ =0x0000FFFF
	add r1, r2, #0
	and r1, r1, r0
	strh r1, [r5, #36]
	and r1, r1, r2
	strh r1, [r5, #24]
_08030718:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030720:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08030654

	THUMB_FUNC_START sub_08030724
sub_08030724: @ 0x08030724
	bx lr
	THUMB_FUNC_END sub_08030724

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030728
sub_08030728: @ 0x08030728
	bx lr
	THUMB_FUNC_END sub_08030728

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803072C
sub_0803072C: @ 0x0803072C
	ldr r1, _08030740  @ =gUnknown_03006D10
	mov r0, #6
	strb r0, [r1]
	ldr r0, _08030744  @ =gUnknown_03005050
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08030748  @ =gUnknown_03000BFC
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_08030740:
	.4byte gUnknown_03006D10
_08030744:
	.4byte gUnknown_03005050
_08030748:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_0803072C

	THUMB_FUNC_START sub_0803074C
sub_0803074C: @ 0x0803074C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r1, _0803089C  @ =gUnknown_08427948
	ldr r0, _080308A0  @ =gUnknown_03005050
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _080308A4  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #31
	and r0, r0, r1
	cmp r0, #0
	bne _08030776
	ldr r1, _080308A8  @ =gUnknown_030004A0
	ldrh r0, [r1, #34]
	sub r0, r0, #1
	strh r0, [r1, #34]
_08030776:
	ldr r1, _080308AC  @ =gUnknown_02016D60
	ldrb r2, [r1, #16]
	sub r2, r2, #1
	strb r2, [r1, #16]
	ldrb r0, [r1, #17]
	sub r0, r0, #1
	strb r0, [r1, #17]
	ldrb r0, [r1, #18]
	sub r0, r0, #1
	strb r0, [r1, #18]
	ldrb r0, [r1, #19]
	sub r0, r0, #1
	strb r0, [r1, #19]
	lsl r2, r2, #24
	add r5, r1, #0
	cmp r2, #0
	bne _080307A4
	mov r0, #48
	strb r0, [r5, #16]
	ldr r1, _080308A8  @ =gUnknown_030004A0
	ldrh r0, [r1, #46]
	sub r0, r0, #1
	strh r0, [r1, #46]
_080307A4:
	ldrb r0, [r5, #17]
	ldr r6, _080308B0  @ =gUnknown_03000BE0
	cmp r0, #0
	bne _080307B6
	mov r0, #24
	strb r0, [r5, #17]
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
_080307B6:
	ldrb r0, [r5, #18]
	cmp r0, #0
	bne _080307C6
	mov r0, #12
	strb r0, [r5, #18]
	ldrh r0, [r6, #8]
	sub r0, r0, #1
	strh r0, [r6, #8]
_080307C6:
	ldrb r0, [r5, #19]
	cmp r0, #0
	bne _080307D6
	mov r0, #7
	strb r0, [r5, #19]
	ldrh r0, [r6, #12]
	sub r0, r0, #1
	strh r0, [r6, #12]
_080307D6:
	ldr r2, _080308B4  @ =gUnknown_03000204
	ldrb r1, [r2]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #6
	ldr r1, _080308B8  @ =gUnknown_0202A0F0
	add r3, r0, r1
	mov r4, #0
	add r7, r6, #0
	ldr r0, _080308BC  @ =gUnknown_03000BC0
	mov r8, r0
	add r1, r1, #2
	mov r12, r1
	ldrh r0, [r6, #6]
	cmp r4, r0
	bcs _0803080A
	ldr r1, _080308A8  @ =gUnknown_030004A0
_080307F8:
	ldrh r0, [r1, #46]
	strh r0, [r3]
	add r3, r3, #2
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldrh r0, [r7, #6]
	cmp r4, r0
	bcc _080307F8
_0803080A:
	ldrh r0, [r6, #10]
	cmp r4, r0
	bcs _08030824
	add r1, r6, #0
_08030812:
	ldrh r0, [r1, #4]
	strh r0, [r3]
	add r3, r3, #2
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldrh r0, [r1, #10]
	cmp r4, r0
	bcc _08030812
_08030824:
	ldrh r0, [r6, #14]
	cmp r4, r0
	bcs _0803083E
	add r1, r6, #0
_0803082C:
	ldrh r0, [r1, #8]
	strh r0, [r3]
	add r3, r3, #2
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldrh r0, [r1, #14]
	cmp r4, r0
	bcc _0803082C
_0803083E:
	cmp r4, #159
	bhi _08030854
	ldr r1, _080308B0  @ =gUnknown_03000BE0
_08030844:
	ldrh r0, [r1, #12]
	strh r0, [r3]
	add r3, r3, #2
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #159
	bls _08030844
_08030854:
	ldrb r0, [r2]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #6
	add r1, r1, r12
	mov r0, r8
	str r1, [r0, #4]
	ldrb r0, [r5, #20]
	cmp r0, #0
	bne _08030886
	ldr r3, _080308A8  @ =gUnknown_030004A0
	ldrh r0, [r5, #32]
	mov r2, #88
	sub r0, r2, r0
	strh r0, [r3, #10]
	ldrh r0, [r5, #34]
	mov r1, #56
	sub r0, r1, r0
	strh r0, [r3, #12]
	ldrh r0, [r5, #36]
	sub r2, r2, r0
	strh r2, [r3, #22]
	ldrh r0, [r5, #38]
	sub r1, r1, r0
	strh r1, [r3, #24]
_08030886:
	bl 0x08137AFC
	bl 0x08000BAC
	bl 0x0800099C
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0803089C:
	.4byte gUnknown_08427948
_080308A0:
	.4byte gUnknown_03005050
_080308A4:
	.4byte gUnknown_03000948
_080308A8:
	.4byte gUnknown_030004A0
_080308AC:
	.4byte gUnknown_02016D60
_080308B0:
	.4byte gUnknown_03000BE0
_080308B4:
	.4byte gUnknown_03000204
_080308B8:
	.4byte gUnknown_0202A0F0
_080308BC:
	.4byte gUnknown_03000BC0
	THUMB_FUNC_END sub_0803074C

	THUMB_FUNC_START sub_080308C0
sub_080308C0: @ 0x080308C0
	push {lr}
	ldr r0, _080308D0  @ =gUnknown_02016D60
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _080308DC
	ldr r1, _080308D4  @ =gUnknown_03000520
	ldr r0, _080308D8  @ =0x0F0007E0
	b _080308E0
_080308D0:
	.4byte gUnknown_02016D60
_080308D4:
	.4byte gUnknown_03000520
_080308D8:
	.4byte 0x0F0007E0
_080308DC:
	ldr r1, _080308F0  @ =gUnknown_03000520
	ldr r0, _080308F4  @ =0xF000F100
_080308E0:
	str r0, [r1, #12]
	mov r0, #0
	strb r0, [r1, #7]
	mov r0, #64
	bl sub_0800C1EC
	pop {r0}
	bx r0
_080308F0:
	.4byte gUnknown_03000520
_080308F4:
	.4byte 0xF000F100
	THUMB_FUNC_END sub_080308C0

	THUMB_FUNC_START sub_080308F8
sub_080308F8: @ 0x080308F8
	push {r4-r7,lr}
	ldr r7, _080309FC  @ =gUnknown_03000520
	ldrb r0, [r7]
	cmp r0, #0
	bne _080309F4
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _08030A00  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _08030A04  @ =gUnknown_020163D0
	mov r6, #0
	strh r1, [r0]
	bl sub_080123BC
	bl sub_0801239C
	bl sub_0800C4E8
	mov r4, #192
	lsl r4, r4, #18
	ldrb r0, [r4, #4]
	bl sub_08011418
	ldrb r0, [r4, #4]
	lsl r0, r0, #6
	ldr r5, _08030A08  @ =gUnknown_0200B250
	add r0, r0, r5
	bl sub_080681D0
	ldrb r0, [r4, #4]
	lsl r0, r0, #6
	add r0, r0, r5
	add r0, r0, #37
	ldrb r0, [r0]
	bl sub_0800B85C
	mov r0, #22
	bl sub_0800B890
	mov r0, #28
	bl sub_0800BA44
	ldr r1, _08030A0C  @ =gUnknown_030004A0
	mov r0, #250
	lsl r0, r0, #5
	strh r0, [r1]
	mov r0, #210
	lsl r0, r0, #5
	strh r0, [r1, #8]
	ldr r0, _08030A10  @ =0x00001B41
	strh r0, [r1, #20]
	ldr r0, _08030A14  @ =0x00005C46
	strh r0, [r1, #32]
	ldr r0, _08030A18  @ =0x00005E47
	strh r0, [r1, #44]
	ldr r4, _08030A1C  @ =gUnknown_02016D60
	mov r0, #64
	strh r0, [r4, #32]
	mov r5, #24
	mov r0, #24
	strh r0, [r4, #34]
	mov r0, #176
	strh r0, [r4, #36]
	mov r0, #136
	strh r0, [r4, #38]
	add r2, r1, #0
	add r2, r2, #102
	ldr r0, _08030A20  @ =0x00003F42
	strh r0, [r2]
	add r1, r1, #104
	ldr r0, _08030A24  @ =0x00000C04
	strh r0, [r1]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	str r0, [r4, #8]
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl sub_0804C8A8
	str r0, [r4, #12]
	ldr r0, _08030A28  @ =gUnknown_0813D838
	bl sub_0804C808
	ldr r1, _08030A2C  @ =gUnknown_03000BC0
	mov r2, #1
	strb r2, [r1]
	ldr r0, _08030A30  @ =0x0400001C
	str r0, [r1, #8]
	ldr r0, _08030A34  @ =0xA2600001
	str r0, [r1, #12]
	ldr r1, _08030A38  @ =gUnknown_03000BE0
	strb r2, [r1]
	mov r0, #48
	strb r0, [r4, #16]
	strb r5, [r4, #17]
	mov r0, #12
	strb r0, [r4, #18]
	mov r0, #7
	strb r0, [r4, #19]
	mov r0, #80
	strh r0, [r1, #6]
	mov r0, #112
	strh r0, [r1, #10]
	mov r0, #128
	strh r0, [r1, #14]
	strb r6, [r4, #2]
	mov r0, #14
	strh r0, [r4, #4]
	strb r6, [r4, #20]
	sub r0, r0, #15
	str r0, [r7, #12]
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _08030A3C  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_080309F4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080309FC:
	.4byte gUnknown_03000520
_08030A00:
	.4byte 0x00006739
_08030A04:
	.4byte gUnknown_020163D0
_08030A08:
	.4byte gUnknown_0200B250
_08030A0C:
	.4byte gUnknown_030004A0
_08030A10:
	.4byte 0x00001B41
_08030A14:
	.4byte 0x00005C46
_08030A18:
	.4byte 0x00005E47
_08030A1C:
	.4byte gUnknown_02016D60
_08030A20:
	.4byte 0x00003F42
_08030A24:
	.4byte 0x00000C04
_08030A28:
	.4byte gUnknown_0813D838
_08030A2C:
	.4byte gUnknown_03000BC0
_08030A30:
	.4byte 0x0400001C
_08030A34:
	.4byte 0xA2600001
_08030A38:
	.4byte gUnknown_03000BE0
_08030A3C:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_080308F8

	THUMB_FUNC_START sub_08030A40
sub_08030A40: @ 0x08030A40
	push {lr}
	ldr r3, _08030A50  @ =gUnknown_03000BFC
	ldrb r0, [r3]
	cmp r0, #0
	beq _08030A54
	cmp r0, #1
	beq _08030A80
	b _08030AD4
_08030A50:
	.4byte gUnknown_03000BFC
_08030A54:
	ldr r1, _08030A7C  @ =gUnknown_02016D60
	ldrh r0, [r1, #32]
	add r0, r0, #8
	strh r0, [r1, #32]
	ldrh r0, [r1, #36]
	sub r0, r0, #8
	strh r0, [r1, #36]
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08030AD4
	mov r0, #7
	strh r0, [r1, #4]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	b _08030AD4
	.byte 0x00
	.byte 0x00
_08030A7C:
	.4byte gUnknown_02016D60
_08030A80:
	ldr r2, _08030AD8  @ =gUnknown_02016D60
	ldrh r0, [r2, #32]
	sub r0, r0, #8
	strh r0, [r2, #32]
	ldrh r0, [r2, #34]
	add r0, r0, #8
	strh r0, [r2, #34]
	ldrh r0, [r2, #36]
	add r0, r0, #8
	strh r0, [r2, #36]
	ldrh r0, [r2, #38]
	sub r0, r0, #8
	strh r0, [r2, #38]
	ldrh r0, [r2, #4]
	sub r0, r0, #1
	strh r0, [r2, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08030AD4
	ldr r1, _08030ADC  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #3
	strb r0, [r1]
	mov r0, #0
	strb r0, [r3]
	mov r1, #104
	strh r1, [r2, #32]
	mov r0, #72
	strh r0, [r2, #34]
	mov r0, #136
	strh r0, [r2, #36]
	strh r1, [r2, #38]
	ldr r0, _08030AE0  @ =0x0000020A
	bl sub_0800D24C
	ldr r0, _08030AE4  @ =0x800B0190
	bl sub_0800D24C
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
_08030AD4:
	pop {r0}
	bx r0
_08030AD8:
	.4byte gUnknown_02016D60
_08030ADC:
	.4byte gUnknown_03005050
_08030AE0:
	.4byte 0x0000020A
_08030AE4:
	.4byte 0x800B0190
	THUMB_FUNC_END sub_08030A40

	THUMB_FUNC_START sub_08030AE8
sub_08030AE8: @ 0x08030AE8
	push {r4,r5,lr}
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldr r3, _08030B04  @ =gUnknown_03000BFC
	ldrb r0, [r3]
	add r4, r3, #0
	cmp r0, #1
	beq _08030B1E
	cmp r0, #1
	bgt _08030B08
	cmp r0, #0
	beq _08030B12
	b _08030C54
	.byte 0x00
	.byte 0x00
_08030B04:
	.4byte gUnknown_03000BFC
_08030B08:
	cmp r0, #2
	beq _08030B4C
	cmp r0, #3
	beq _08030B84
	b _08030C54
_08030B12:
	ldr r1, _08030B48  @ =gUnknown_02016D60
	mov r0, #4
	strh r0, [r1, #4]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
_08030B1E:
	ldr r1, _08030B48  @ =gUnknown_02016D60
	ldrh r0, [r1, #32]
	add r0, r0, r2
	strh r0, [r1, #32]
	ldrh r0, [r1, #36]
	sub r0, r0, r2
	strh r0, [r1, #36]
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _08030B3A
	b _08030C54
_08030B3A:
	mov r0, #4
	strh r0, [r1, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _08030C54
	.byte 0x00
	.byte 0x00
_08030B48:
	.4byte gUnknown_02016D60
_08030B4C:
	ldr r1, _08030B80  @ =gUnknown_02016D60
	ldrh r0, [r1, #32]
	sub r0, r0, r2
	strh r0, [r1, #32]
	ldrh r0, [r1, #34]
	add r0, r0, r2
	strh r0, [r1, #34]
	ldrh r0, [r1, #36]
	add r0, r0, r2
	strh r0, [r1, #36]
	ldrh r0, [r1, #38]
	sub r0, r0, r2
	strh r0, [r1, #38]
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08030C54
	mov r0, #4
	strh r0, [r1, #4]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	b _08030C54
	.byte 0x00
	.byte 0x00
_08030B80:
	.4byte gUnknown_02016D60
_08030B84:
	ldr r5, _08030BF4  @ =gUnknown_02016D60
	ldrh r0, [r5, #32]
	add r0, r0, r2
	mov r4, #0
	strh r0, [r5, #32]
	ldrh r0, [r5, #36]
	sub r0, r0, r2
	strh r0, [r5, #36]
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08030C54
	ldr r0, _08030BF8  @ =gUnknown_03005050
	mov r1, #4
	strb r1, [r0]
	strb r4, [r3]
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _08030C10
	ldr r2, _08030BFC  @ =gUnknown_0200B310
	ldr r0, [r2]
	ldr r1, _08030C00  @ =0xFFFFF100
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _08030C04  @ =gUnknown_030004A0
	mov r0, #208
	lsl r0, r0, #5
	strh r0, [r1, #8]
	ldr r0, _08030C08  @ =0x00001B01
	strh r0, [r1, #20]
	add r1, r1, #102
	ldr r0, _08030C0C  @ =0x00003F42
	strh r0, [r1]
	ldr r4, [r5, #12]
	ldrb r2, [r4, #29]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r4, #29]
	ldrb r2, [r4, #31]
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r4, #31]
	ldr r4, [r5, #8]
	ldrb r2, [r4, #29]
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r4, #29]
	ldrb r0, [r4, #31]
	and r1, r1, r0
	orr r1, r1, r2
	b _08030C52
_08030BF4:
	.4byte gUnknown_02016D60
_08030BF8:
	.4byte gUnknown_03005050
_08030BFC:
	.4byte gUnknown_0200B310
_08030C00:
	.4byte 0xFFFFF100
_08030C04:
	.4byte gUnknown_030004A0
_08030C08:
	.4byte 0x00001B01
_08030C0C:
	.4byte 0x00003F42
_08030C10:
	ldr r2, _08030C5C  @ =gUnknown_0200B310
	ldr r0, [r2]
	ldr r1, _08030C60  @ =0xFFFF07E0
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _08030C64  @ =gUnknown_030004A0
	ldr r0, _08030C68  @ =0x00001A01
	strh r0, [r1, #8]
	add r0, r0, #255
	strh r0, [r1, #20]
	add r1, r1, #102
	ldr r0, _08030C6C  @ =0x00003F41
	strh r0, [r1]
	ldr r4, [r5, #12]
	ldrb r2, [r4, #29]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r3, #64
	orr r0, r0, r3
	strb r0, [r4, #29]
	ldrb r2, [r4, #31]
	add r0, r1, #0
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r4, #31]
	ldr r4, [r5, #8]
	ldrb r2, [r4, #29]
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r4, #29]
	ldrb r0, [r4, #31]
	and r1, r1, r0
_08030C52:
	strb r1, [r4, #31]
_08030C54:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030C5C:
	.4byte gUnknown_0200B310
_08030C60:
	.4byte 0xFFFF07E0
_08030C64:
	.4byte gUnknown_030004A0
_08030C68:
	.4byte 0x00001A01
_08030C6C:
	.4byte 0x00003F41
	THUMB_FUNC_END sub_08030AE8

	THUMB_FUNC_START sub_08030C70
sub_08030C70: @ 0x08030C70
	push {lr}
	mov r0, #8
	bl sub_08030AE8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030C70

	THUMB_FUNC_START sub_08030C7C
sub_08030C7C: @ 0x08030C7C
	push {lr}
	mov r0, #8
	neg r0, r0
	bl sub_08030AE8
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030C7C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030C8C
sub_08030C8C: @ 0x08030C8C
	push {lr}
	ldr r0, _08030CB8  @ =gUnknown_03000BD0
	ldrh r1, [r0]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #0
	beq _08030CC4
	ldr r3, _08030CBC  @ =gUnknown_03005050
	ldr r2, _08030CC0  @ =gUnknown_02016D60
	ldrb r1, [r2, #2]
	mov r0, #3
	cmp r1, #0
	bne _08030CA8
	mov r0, #2
_08030CA8:
	strb r0, [r3]
	mov r0, #1
	eor r0, r0, r1
	strb r0, [r2, #2]
	mov r0, #66
	bl sub_0800D24C
	b _08030D22
_08030CB8:
	.4byte gUnknown_03000BD0
_08030CBC:
	.4byte gUnknown_03005050
_08030CC0:
	.4byte gUnknown_02016D60
_08030CC4:
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08030D22
	ldr r1, _08030CF4  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _08030CF8  @ =gUnknown_02016D60
	mov r0, #120
	strh r0, [r1, #32]
	strh r0, [r1, #36]
	mov r0, #80
	strh r0, [r1, #34]
	strh r0, [r1, #38]
	mov r0, #8
	strh r0, [r1, #4]
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08030D04
	ldr r1, _08030CFC  @ =gUnknown_03000520
	ldr r0, _08030D00  @ =0xF000F000
	str r0, [r1, #12]
	b _08030D0E
_08030CF4:
	.4byte gUnknown_03005050
_08030CF8:
	.4byte gUnknown_02016D60
_08030CFC:
	.4byte gUnknown_03000520
_08030D00:
	.4byte 0xF000F000
_08030D04:
	ldr r1, _08030D28  @ =gUnknown_03000520
	ldr r0, _08030D2C  @ =0x0F000F00
	str r0, [r1, #12]
	bl sub_0800C4E8
_08030D0E:
	mov r0, #2
	mov r1, #16
	bl sub_0800C0B0
	mov r0, #62
	bl sub_0800D24C
	ldr r0, _08030D30  @ =0x80040002
	bl sub_0800D24C
_08030D22:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030D28:
	.4byte gUnknown_03000520
_08030D2C:
	.4byte 0x0F000F00
_08030D30:
	.4byte 0x80040002
	THUMB_FUNC_END sub_08030C8C

	THUMB_FUNC_START sub_08030D34
sub_08030D34: @ 0x08030D34
	push {r4,r5,lr}
	ldr r5, _08030D48  @ =gUnknown_03000BFC
	ldrb r0, [r5]
	cmp r0, #1
	beq _08030D74
	cmp r0, #1
	bgt _08030D4C
	cmp r0, #0
	beq _08030D52
	b _08030E04
_08030D48:
	.4byte gUnknown_03000BFC
_08030D4C:
	cmp r0, #2
	beq _08030DA8
	b _08030E04
_08030D52:
	ldr r1, _08030D70  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08030E04
	mov r0, #8
	strh r0, [r1, #4]
	mov r0, #2
	mov r1, #16
	bl sub_0800C0B0
	b _08030D96
	.byte 0x00
	.byte 0x00
_08030D70:
	.4byte gUnknown_02016D60
_08030D74:
	ldr r1, _08030DA0  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08030E04
	ldr r4, _08030DA4  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r4, #12]
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	mov r0, #31
	strb r0, [r4, #7]
_08030D96:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _08030E04
	.byte 0x00
	.byte 0x00
_08030DA0:
	.4byte gUnknown_02016D60
_08030DA4:
	.4byte gUnknown_03000520
_08030DA8:
	ldr r0, _08030DC8  @ =gUnknown_03000520
	ldrb r4, [r0]
	cmp r4, #0
	bne _08030E04
	ldr r0, _08030DCC  @ =gUnknown_02016D60
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08030DD8
	ldr r0, _08030DD0  @ =gUnknown_03000BE0
	strb r4, [r0]
	ldr r0, _08030DD4  @ =gUnknown_03000BC0
	strb r4, [r0]
	mov r0, #13
	bl sub_0800B5EC
	b _08030E04
_08030DC8:
	.4byte gUnknown_03000520
_08030DCC:
	.4byte gUnknown_02016D60
_08030DD0:
	.4byte gUnknown_03000BE0
_08030DD4:
	.4byte gUnknown_03000BC0
_08030DD8:
	ldr r0, _08030DF8  @ =gUnknown_03000834
	ldr r0, [r0]
	mov r1, #15
	and r0, r0, r1
	bl 0x08000A40
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08030E00
	ldr r1, _08030DFC  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r4, [r5]
	b _08030E04
_08030DF8:
	.4byte gUnknown_03000834
_08030DFC:
	.4byte gUnknown_03005050
_08030E00:
	bl sub_08030E0C
_08030E04:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030D34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030E0C
sub_08030E0C: @ 0x08030E0C
	push {lr}
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _08030E40  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _08030E44  @ =gUnknown_020163D0
	mov r2, #0
	strh r1, [r0]
	ldr r0, _08030E48  @ =gUnknown_03000BE0
	strb r2, [r0]
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0800D6F4
	bl sub_0800D744
	mov r0, #9
	bl sub_0800B5EC
	pop {r0}
	bx r0
_08030E40:
	.4byte 0x00006739
_08030E44:
	.4byte gUnknown_020163D0
_08030E48:
	.4byte gUnknown_03000BE0
	THUMB_FUNC_END sub_08030E0C

	THUMB_FUNC_START sub_08030E4C
sub_08030E4C: @ 0x08030E4C
	push {lr}
	ldr r0, _08030E68  @ =0x00000403
	ldr r1, _08030E6C  @ =gUnknown_08427964
	bl sub_0800F4C4
	ldr r0, _08030E70  @ =gUnknown_0202D110
	mov r2, #128
	lsl r2, r2, #4
	add r1, r0, r2
	mov r2, #96
	bl CpuFastSet
	pop {r0}
	bx r0
_08030E68:
	.4byte 0x00000403
_08030E6C:
	.4byte gUnknown_08427964
_08030E70:
	.4byte gUnknown_0202D110
	THUMB_FUNC_END sub_08030E4C

	THUMB_FUNC_START sub_08030E74
sub_08030E74: @ 0x08030E74
	push {lr}
	ldr r1, _08030E8C  @ =gUnknown_0842797C
	ldr r0, _08030E90  @ =gUnknown_03000BFC
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030E8C:
	.4byte gUnknown_0842797C
_08030E90:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_08030E74

	THUMB_FUNC_START sub_08030E94
sub_08030E94: @ 0x08030E94
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r0, _08030F38  @ =gUnknown_03000520
	ldrb r5, [r0]
	cmp r5, #0
	bne _08030F30
	mov r0, #19
	bl sub_0800B890
	mov r0, #1
	bl sub_0800BA44
	ldr r2, _08030F3C  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _08030F40  @ =0x0000FDFF
	and r0, r0, r1
	mov r4, #0
	strh r0, [r2]
	mov r0, #76
	strh r0, [r2, #8]
	strh r5, [r2, #10]
	strh r5, [r2, #12]
	ldr r1, _08030F44  @ =gUnknown_0202D110
	str r1, [r2, #16]
	add r2, r2, #102
	strh r5, [r2]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _08030F48  @ =0x01000400
	bl CpuSet
	ldr r0, _08030F4C  @ =gUnknown_03000414
	strb r4, [r0]
	ldr r0, _08030F50  @ =gUnknown_03000420
	strb r4, [r0]
	strb r4, [r0, #3]
	mov r0, #2
	mov r1, #23
	mov r2, #0
	bl sub_0804C8A8
	ldr r6, _08030F54  @ =gUnknown_02016D60
	mov r5, #1
	mov r0, #1
	strb r0, [r6, #20]
	bl sub_08030E4C
	ldr r0, _08030F58  @ =0x00000404
	bl sub_0800D67C
	ldr r2, _08030F5C  @ =gUnknown_02000010
	ldrb r3, [r2, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r3
	orr r0, r0, r5
	strb r0, [r2, #3]
	ldrb r0, [r2, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r2, #4]
	ldrb r0, [r2, #2]
	mov r1, #48
	orr r0, r0, r1
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r2, #2]
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _08030F60  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r4, [r6]
_08030F30:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_08030F38:
	.4byte gUnknown_03000520
_08030F3C:
	.4byte gUnknown_030004A0
_08030F40:
	.4byte 0x0000FDFF
_08030F44:
	.4byte gUnknown_0202D110
_08030F48:
	.4byte 0x01000400
_08030F4C:
	.4byte gUnknown_03000414
_08030F50:
	.4byte gUnknown_03000420
_08030F54:
	.4byte gUnknown_02016D60
_08030F58:
	.4byte 0x00000404
_08030F5C:
	.4byte gUnknown_02000010
_08030F60:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_08030E94

	THUMB_FUNC_START sub_08030F64
sub_08030F64: @ 0x08030F64
	push {r4,r5,lr}
	ldr r5, _08030F7C  @ =gUnknown_03000520
	ldrb r0, [r5]
	cmp r0, #0
	bne _08030FD2
	ldr r4, _08030F80  @ =gUnknown_02016D60
	ldrb r1, [r4]
	cmp r1, #0
	beq _08030F84
	cmp r1, #1
	beq _08030FA0
	b _08030FD2
_08030F7C:
	.4byte gUnknown_03000520
_08030F80:
	.4byte gUnknown_02016D60
_08030F84:
	strb r1, [r5, #7]
	ldr r0, _08030F9C  @ =0x007FFFF0
	str r0, [r5, #12]
	strh r1, [r4, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	bl sub_0800C1EC
	b _08030FD2
	.byte 0x00
	.byte 0x00
_08030F9C:
	.4byte 0x007FFFF0
_08030FA0:
	ldr r0, _08030FD8  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _08030FD2
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	lsl r0, r0, #4
	bl sub_0800C1EC
	ldrh r0, [r4, #4]
	cmp r0, #6
	bls _08030FD2
	mov r0, #1
	neg r0, r0
	str r0, [r5, #12]
	ldr r1, _08030FDC  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	strb r0, [r4]
_08030FD2:
	pop {r4,r5}
	pop {r0}
	bx r0
_08030FD8:
	.4byte gUnknown_03000948
_08030FDC:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_08030F64

	THUMB_FUNC_START sub_08030FE0
sub_08030FE0: @ 0x08030FE0
	push {r4,lr}
	ldr r1, _08030FFC  @ =gUnknown_03005E10
	ldr r0, _08031000  @ =gUnknown_03000BD0
	ldrh r3, [r0]
	strh r3, [r1]
	ldr r4, _08031004  @ =gUnknown_02016D60
	ldrb r2, [r4]
	cmp r2, #1
	beq _0803102C
	cmp r2, #1
	bgt _08031008
	cmp r2, #0
	beq _08031012
	b _080310AA
_08030FFC:
	.4byte gUnknown_03005E10
_08031000:
	.4byte gUnknown_03000BD0
_08031004:
	.4byte gUnknown_02016D60
_08031008:
	cmp r2, #2
	beq _08031084
	cmp r2, #3
	beq _08031098
	b _080310AA
_08031012:
	ldr r0, _08031028  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _080310AA
	mov r0, #1
	strb r0, [r4]
	strh r2, [r4, #4]
	b _080310AA
	.byte 0x00
	.byte 0x00
_08031028:
	.4byte gUnknown_02000010
_0803102C:
	ldrh r0, [r4, #4]
	cmp r0, #29
	bls _0803106C
	mov r0, #9
	and r0, r0, r3
	cmp r0, #0
	beq _08031048
	mov r0, #2
	strb r0, [r4]
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	b _080310AA
_08031048:
	mov r0, #2
	and r0, r0, r3
	cmp r0, #0
	beq _080310AA
	mov r0, #3
	strb r0, [r4]
	mov r1, #8
	bl sub_0800C0B0
	ldr r0, _08031068  @ =0x80010000
	bl sub_0800D24C
	mov r0, #66
	bl sub_0800D24C
	b _080310AA
_08031068:
	.4byte 0x80010000
_0803106C:
	add r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #15
	bne _080310AA
	mov r0, #2
	mov r1, #24
	mov r2, #0
	bl sub_0804C8A8
	b _080310AA
_08031084:
	ldr r0, _08031094  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _080310AA
	bl sub_08030E0C
	b _080310AA
	.byte 0x00
	.byte 0x00
_08031094:
	.4byte gUnknown_03000520
_08031098:
	ldr r0, _080310B0  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _080310AA
	bl sub_08030E0C
	mov r0, #6
	bl sub_0800B5EC
_080310AA:
	pop {r4}
	pop {r0}
	bx r0
_080310B0:
	.4byte gUnknown_03000520
	THUMB_FUNC_END sub_08030FE0

	THUMB_FUNC_START sub_080310B4
sub_080310B4: @ 0x080310B4
	push {lr}
	ldr r1, _080310D4  @ =gUnknown_08427988
	ldr r0, _080310D8  @ =gUnknown_03005050
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl 0x08137AFC
	bl 0x08000BAC
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080310D4:
	.4byte gUnknown_08427988
_080310D8:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_080310B4

	THUMB_FUNC_START sub_080310DC
sub_080310DC: @ 0x080310DC
	push {r4-r6,lr}
	sub sp, sp, #4
	bl sub_0800BED8
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0803A2E8
	mov r0, sp
	mov r6, #0
	strh r6, [r0]
	ldr r5, _0803116C  @ =gUnknown_02016D60
	ldr r2, _08031170  @ =0x01000014
	add r1, r5, #0
	bl CpuSet
	mov r0, #35
	bl sub_0800B890
	mov r0, #12
	bl sub_0800BA44
	ldr r4, _08031174  @ =gUnknown_030004A0
	mov r1, #0
	mov r0, #242
	lsl r0, r0, #5
	strh r0, [r4, #8]
	sub r0, r0, #255
	strh r0, [r4, #20]
	sub r0, r0, #255
	strh r0, [r4, #32]
	strh r1, [r4, #36]
	strh r1, [r4, #34]
	strh r1, [r4, #24]
	strh r1, [r4, #22]
	strh r1, [r4, #12]
	strh r1, [r4, #10]
	ldr r0, _08031178  @ =gUnknown_03000450
	strh r1, [r0, #34]
	strh r1, [r0, #32]
	ldr r0, _0803117C  @ =gUnknown_0813D878
	bl sub_0804C808
	strb r6, [r5, #2]
	bl sub_080397F0
	strb r0, [r5, #3]
	strb r6, [r5, #8]
	mov r0, #2
	strb r0, [r5, #10]
	ldrh r0, [r4]
	mov r2, #184
	lsl r2, r2, #5
	add r1, r2, #0
	orr r0, r0, r1
	strh r0, [r4]
	mov r0, #0
	mov r1, #1
	bl sub_080599A8
	ldr r1, _08031180  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08031184  @ =gUnknown_03000BFC
	strb r6, [r0]
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_0803116C:
	.4byte gUnknown_02016D60
_08031170:
	.4byte 0x01000014
_08031174:
	.4byte gUnknown_030004A0
_08031178:
	.4byte gUnknown_03000450
_0803117C:
	.4byte gUnknown_0813D878
_08031180:
	.4byte gUnknown_03005050
_08031184:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_080310DC

	THUMB_FUNC_START sub_08031188
sub_08031188: @ 0x08031188
	ldr r1, _08031198  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _0803119C  @ =gUnknown_03000BFC
	mov r0, #0
	strb r0, [r1]
	bx lr
_08031198:
	.4byte gUnknown_03005050
_0803119C:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_08031188

	THUMB_FUNC_START sub_080311A0
sub_080311A0: @ 0x080311A0
	add r2, r0, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r0, _080311BC  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r0, #3
	beq _080311C0
	cmp r0, #3
	ble _080311B6
	cmp r0, #4
	beq _080311C6
_080311B6:
	lsl r0, r1, #2
	b _080311CA
	.byte 0x00
	.byte 0x00
_080311BC:
	.4byte gUnknown_03006C80
_080311C0:
	lsl r0, r1, #2
	add r0, r0, #8
	b _080311CA
_080311C6:
	lsl r0, r1, #2
	add r0, r0, #20
_080311CA:
	add r0, r2, r0
	bx lr
	THUMB_FUNC_END sub_080311A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080311D0
sub_080311D0: @ 0x080311D0
	push {r4-r7,lr}
	ldr r2, _080311E4  @ =gUnknown_03000BFC
	ldrb r0, [r2]
	cmp r0, #1
	beq _0803129C
	cmp r0, #1
	bgt _080311E8
	cmp r0, #0
	beq _080311EE
	b _08031318
_080311E4:
	.4byte gUnknown_03000BFC
_080311E8:
	cmp r0, #2
	beq _080312D0
	b _08031318
_080311EE:
	mov r5, #0
	ldr r0, _0803128C  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r5, r0
	bcs _0803127C
	mov r7, #0
	mov r6, #63
_080311FC:
	ldr r0, _08031290  @ =gUnknown_084279A4
	add r1, r5, #0
	bl sub_080311A0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_08063C5C
	add r2, r0, #0
	ldrb r1, [r2, #28]
	mov r3, #4
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #2
	orr r1, r1, r0
	strb r1, [r2, #28]
	ldrh r0, [r4]
	strh r0, [r2, #50]
	ldrh r0, [r4, #2]
	strh r0, [r2, #54]
	add r0, r2, #0
	add r0, r0, #42
	strb r7, [r0]
	ldrb r1, [r2, #29]
	add r0, r6, #0
	and r0, r0, r1
	strb r0, [r2, #29]
	ldrb r1, [r2, #31]
	add r0, r6, #0
	and r0, r0, r1
	strb r0, [r2, #31]
	add r1, r2, #0
	add r1, r1, #46
	mov r0, #3
	strb r0, [r1]
	add r3, r2, #0
	add r3, r3, #94
	ldrb r1, [r3]
	mov r4, #13
	neg r4, r4
	add r0, r4, #0
	and r1, r1, r0
	mov r0, #4
	orr r1, r1, r0
	strb r1, [r3]
	lsl r0, r5, #5
	sub r0, r0, #128
	add r1, r2, #0
	add r1, r1, #32
	strb r0, [r1]
	ldrb r1, [r2, #28]
	add r0, r6, #0
	and r0, r0, r1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2, #28]
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r0, _0803128C  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r5, r0
	bcc _080311FC
_0803127C:
	ldr r1, _08031294  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _08031298  @ =gUnknown_02016D60
	mov r0, #64
	strh r0, [r1, #4]
	b _08031318
_0803128C:
	.4byte gUnknown_03006C80
_08031290:
	.4byte gUnknown_084279A4
_08031294:
	.4byte gUnknown_03000BFC
_08031298:
	.4byte gUnknown_02016D60
_0803129C:
	mov r5, #0
	ldr r0, _080312C8  @ =gUnknown_03006C80
	ldrb r1, [r0]
	cmp r5, r1
	bcs _080312BE
	add r4, r0, #0
_080312A8:
	add r0, r5, #0
	mov r1, #48
	mov r2, #0
	bl sub_08063D28
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldrb r3, [r4]
	cmp r5, r3
	bcc _080312A8
_080312BE:
	ldr r1, _080312CC  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _08031318
_080312C8:
	.4byte gUnknown_03006C80
_080312CC:
	.4byte gUnknown_03000BFC
_080312D0:
	ldr r1, _080312F8  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08031318
	mov r0, #0
	strb r0, [r2]
	ldrb r1, [r1, #3]
	cmp r1, #2
	beq _08031300
	cmp r1, #2
	ble _080312F0
	cmp r1, #3
	beq _08031314
_080312F0:
	ldr r1, _080312FC  @ =gUnknown_03005050
	mov r0, #5
	strb r0, [r1]
	b _08031318
_080312F8:
	.4byte gUnknown_02016D60
_080312FC:
	.4byte gUnknown_03005050
_08031300:
	mov r0, #5
	bl sub_08036704
	ldr r1, _08031310  @ =gUnknown_03005050
	mov r0, #4
	strb r0, [r1]
	b _08031318
	.byte 0x00
	.byte 0x00
_08031310:
	.4byte gUnknown_03005050
_08031314:
	ldr r0, _08031320  @ =gUnknown_03005050
	strb r1, [r0]
_08031318:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031320:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_080311D0

	THUMB_FUNC_START sub_08031324
sub_08031324: @ 0x08031324
	push {r4,lr}
	ldr r4, _08031338  @ =gUnknown_03000BFC
	ldrb r0, [r4]
	cmp r0, #1
	beq _08031354
	cmp r0, #1
	bgt _0803133C
	cmp r0, #0
	beq _08031342
	b _080313CA
_08031338:
	.4byte gUnknown_03000BFC
_0803133C:
	cmp r0, #2
	beq _0803137C
	b _080313CA
_08031342:
	ldr r1, _08031350  @ =gUnknown_02016D60
	mov r0, #30
	strh r0, [r1, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _080313CA
_08031350:
	.4byte gUnknown_02016D60
_08031354:
	ldr r1, _08031378  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _080313CA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #5
	bl sub_08036704
	mov r0, #124
	bl sub_0800D24C
	b _080313CA
	.byte 0x00
	.byte 0x00
_08031378:
	.4byte gUnknown_02016D60
_0803137C:
	bl sub_08037554
	cmp r0, #0
	beq _080313CA
	bl sub_08037750
	ldr r0, _080313D0  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803139C
	ldr r1, _080313D4  @ =gUnknown_030004A0
	ldrh r0, [r1, #24]
	add r0, r0, #1
	strh r0, [r1, #24]
_0803139C:
	ldr r0, _080313D8  @ =gUnknown_03005E10
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	ldr r1, _080313D4  @ =gUnknown_030004A0
	cmp r0, #0
	beq _080313AE
	mov r0, #96
	strh r0, [r1, #24]
_080313AE:
	ldrh r0, [r1, #24]
	cmp r0, #96
	bls _080313C6
	ldr r0, _080313DC  @ =gUnknown_03005050
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #0
	strb r0, [r4]
	mov r0, #125
	bl sub_0800D24C
_080313C6:
	bl sub_08037574
_080313CA:
	pop {r4}
	pop {r0}
	bx r0
_080313D0:
	.4byte gUnknown_03000948
_080313D4:
	.4byte gUnknown_030004A0
_080313D8:
	.4byte gUnknown_03005E10
_080313DC:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_08031324

	THUMB_FUNC_START sub_080313E0
sub_080313E0: @ 0x080313E0
	push {lr}
	ldr r0, _08031404  @ =gUnknown_03005E10
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08031414
	ldr r1, _08031408  @ =gUnknown_03005050
	mov r0, #5
	strb r0, [r1]
	ldr r1, _0803140C  @ =gUnknown_03000BFC
	mov r0, #0
	strb r0, [r1]
	ldr r1, _08031410  @ =gUnknown_02016D60
	mov r0, #1
	strb r0, [r1, #8]
	b _0803143C
	.byte 0x00
	.byte 0x00
_08031404:
	.4byte gUnknown_03005E10
_08031408:
	.4byte gUnknown_03005050
_0803140C:
	.4byte gUnknown_03000BFC
_08031410:
	.4byte gUnknown_02016D60
_08031414:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803143C
	ldr r1, _08031440  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	bl sub_08059A44
	mov r0, #62
	bl sub_0800D24C
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _08031444  @ =gUnknown_02016D60
	mov r0, #60
	strh r0, [r1, #4]
_0803143C:
	pop {r0}
	bx r0
_08031440:
	.4byte gUnknown_03000BFC
_08031444:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_080313E0

	THUMB_FUNC_START sub_08031448
sub_08031448: @ 0x08031448
	push {lr}
	ldr r1, _0803145C  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	cmp r0, #1
	beq _080314CE
	cmp r0, #1
	bgt _08031460
	cmp r0, #0
	beq _08031466
	b _08031580
_0803145C:
	.4byte gUnknown_03000BFC
_08031460:
	cmp r0, #2
	beq _0803154C
	b _08031580
_08031466:
	mov r0, #1
	strb r0, [r1]
	ldr r0, _080314A8  @ =gUnknown_02016D60
	ldrb r0, [r0, #3]
	cmp r0, #3
	bne _0803147C
	ldr r2, _080314AC  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _080314B0  @ =0x0000FDFF
	and r0, r0, r1
	strh r0, [r2]
_0803147C:
	mov r0, #49
	mov r1, #3
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #49
	mov r1, #3
	mov r2, #2
	bl sub_0804C8A8
	mov r0, #49
	mov r1, #3
	mov r2, #1
	bl sub_0804C8A8
	ldr r0, _080314B4  @ =gUnknown_03000414
	ldrb r0, [r0]
	cmp r0, #0
	beq _080314B8
	mov r0, #49
	mov r1, #14
	b _080314C6
_080314A8:
	.4byte gUnknown_02016D60
_080314AC:
	.4byte gUnknown_030004A0
_080314B0:
	.4byte 0x0000FDFF
_080314B4:
	.4byte gUnknown_03000414
_080314B8:
	mov r0, #49
	mov r1, #12
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #49
	mov r1, #13
_080314C6:
	mov r2, #0
	bl sub_0804C8A8
	b _08031580
_080314CE:
	bl sub_08037554
	cmp r0, #0
	beq _08031580
	bl sub_08037750
	ldr r3, _080314F8  @ =gUnknown_02016D60
	ldrb r1, [r3, #3]
	cmp r1, #1
	bls _08031542
	ldr r0, _080314FC  @ =gUnknown_03005E10
	ldrh r2, [r0]
	mov r0, #32
	and r0, r0, r2
	cmp r0, #0
	beq _0803150E
	add r2, r3, #0
	cmp r1, #2
	bne _08031500
	ldrb r0, [r3, #2]
	b _0803151E
_080314F8:
	.4byte gUnknown_02016D60
_080314FC:
	.4byte gUnknown_03005E10
_08031500:
	ldrb r0, [r3, #2]
	cmp r0, #1
	bhi _0803150A
	add r1, r0, #1
	b _08031532
_0803150A:
	mov r1, #0
	b _08031532
_0803150E:
	mov r0, #16
	and r0, r0, r2
	cmp r0, #0
	beq _0803153C
	add r2, r3, #0
	cmp r1, #2
	bne _08031526
	ldrb r0, [r2, #2]
_0803151E:
	mov r1, #0
	cmp r0, #0
	bne _08031532
	b _08031530
_08031526:
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08031530
	sub r1, r0, #1
	b _08031532
_08031530:
	mov r1, #2
_08031532:
	strb r1, [r2, #2]
	mov r0, #61
	bl sub_0800D24C
	b _08031546
_0803153C:
	bl sub_080313E0
	b _08031546
_08031542:
	bl sub_080313E0
_08031546:
	bl sub_08037574
	b _08031580
_0803154C:
	bl sub_08037554
	cmp r0, #0
	beq _08031580
	bl sub_08037750
	ldr r1, _08031578  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803157C
	bl sub_0800BED8
	bl sub_08036760
	mov r0, #5
	bl sub_0800B5EC
	b _08031580
	.byte 0x00
	.byte 0x00
_08031578:
	.4byte gUnknown_02016D60
_0803157C:
	bl sub_08037574
_08031580:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08031448

	THUMB_FUNC_START sub_08031584
sub_08031584: @ 0x08031584
	push {r4-r6,lr}
	bl sub_08037554
	cmp r0, #0
	bne _08031590
	b _0803177E
_08031590:
	bl sub_08037750
	mov r0, #9
	bl sub_080378F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _080315B8
	ldr r1, _080315D0  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bhi _080315B8
	mov r0, #4
	strb r0, [r1]
	ldr r1, _080315D4  @ =gUnknown_02016D60
	mov r0, #1
	strh r0, [r1, #4]
_080315B8:
	ldr r0, _080315D0  @ =gUnknown_03000BFC
	ldrb r1, [r0]
	add r3, r0, #0
	cmp r1, #7
	bls _080315C4
	b _0803177A
_080315C4:
	lsl r0, r1, #2
	ldr r1, _080315D8  @ =0x080315DC
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_080315D0:
	.4byte gUnknown_03000BFC
_080315D4:
	.4byte gUnknown_02016D60
_080315D8:
	.4byte 0x080315DC
	.4byte _080315FC
	.4byte _0803161C
	.4byte _0803169C
	.4byte _080316BC
	.4byte _080316EC
	.4byte _08031724
	.4byte _08031744
	.4byte _0803175C
_080315FC:
	mov r0, #62
	bl sub_0800D24C
	ldr r1, _08031614  @ =gUnknown_02016D60
	mov r0, #30
	strh r0, [r1, #4]
	ldr r1, _08031618  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _0803177A
	.byte 0x00
	.byte 0x00
_08031614:
	.4byte gUnknown_02016D60
_08031618:
	.4byte gUnknown_03000BFC
_0803161C:
	ldr r1, _08031690  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0803162C
	b _0803177A
_0803162C:
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #15
	bl sub_0800D24C
	mov r2, #0
	ldr r3, _08031694  @ =gUnknown_03006C80
	ldrb r0, [r3]
	cmp r2, r0
	bcs _08031666
	ldr r6, _08031698  @ =gUnknown_03006A30
	mov r5, #4
	mov r4, #255
_08031648:
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #4
	add r0, r0, r6
	strb r5, [r0, #12]
	add r0, r0, #56
	ldrb r1, [r0]
	orr r1, r1, r4
	strb r1, [r0]
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	ldrb r0, [r3]
	cmp r2, r0
	bcc _08031648
_08031666:
	ldr r4, _08031690  @ =gUnknown_02016D60
	mov r0, #32
	strb r0, [r4, #9]
	mov r0, #49
	mov r1, #11
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #49
	mov r1, #11
	mov r2, #1
	bl sub_0804C8A8
	mov r0, #49
	mov r1, #11
	mov r2, #2
	bl sub_0804C8A8
	mov r0, #180
	strh r0, [r4, #4]
	b _0803177A
_08031690:
	.4byte gUnknown_02016D60
_08031694:
	.4byte gUnknown_03006C80
_08031698:
	.4byte gUnknown_03006A30
_0803169C:
	ldr r1, _080316B8  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803177A
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #4
	strb r0, [r1, #10]
	b _0803177A
	.byte 0x00
	.byte 0x00
_080316B8:
	.4byte gUnknown_02016D60
_080316BC:
	ldr r1, _080316E8  @ =gUnknown_02016D60
	ldrb r0, [r1, #9]
	sub r0, r0, #1
	strb r0, [r1, #9]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #23
	bhi _080316D0
	mov r0, #8
	strb r0, [r1, #10]
_080316D0:
	ldrb r0, [r1, #9]
	cmp r0, #7
	bhi _0803177A
	mov r0, #12
	strb r0, [r1, #10]
	mov r0, #120
	strh r0, [r1, #4]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	b _0803177A
	.byte 0x00
	.byte 0x00
_080316E8:
	.4byte gUnknown_02016D60
_080316EC:
	ldr r4, _08031720  @ =gUnknown_02016D60
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803177A
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #35
	bl sub_0800B890
	ldrb r1, [r4, #2]
	add r1, r1, #5
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #49
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #2
	strb r0, [r4, #8]
	mov r0, #40
	strh r0, [r4, #4]
	b _0803177A
_08031720:
	.4byte gUnknown_02016D60
_08031724:
	ldr r1, _08031740  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803177A
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #3
	strb r0, [r1, #8]
	b _0803177A
	.byte 0x00
	.byte 0x00
_08031740:
	.4byte gUnknown_02016D60
_08031744:
	ldr r1, _08031758  @ =gUnknown_02016D60
	ldrb r0, [r1, #8]
	cmp r0, #4
	bne _0803177A
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	mov r0, #60
	strh r0, [r1, #4]
	b _0803177A
_08031758:
	.4byte gUnknown_02016D60
_0803175C:
	ldr r2, _08031784  @ =gUnknown_02016D60
	ldrh r0, [r2, #4]
	sub r0, r0, #1
	strh r0, [r2, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803177A
	ldr r1, _08031788  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	strb r0, [r3]
	mov r0, #5
	strb r0, [r2, #8]
_0803177A:
	bl sub_08037574
_0803177E:
	pop {r4-r6}
	pop {r0}
	bx r0
_08031784:
	.4byte gUnknown_02016D60
_08031788:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_08031584

	THUMB_FUNC_START sub_0803178C
sub_0803178C: @ 0x0803178C
	push {lr}
	bl sub_08037554
	cmp r0, #0
	beq _080317F0
	bl sub_08037750
	bl sub_08059A2C
	cmp r0, #0
	beq _080317EC
	bl sub_08059A44
	bl sub_0800BED8
	mov r1, #160
	lsl r1, r1, #19
	mov r0, #0
	strh r0, [r1]
	ldr r1, _080317DC  @ =gUnknown_020163D0
	mov r0, #0
	strh r0, [r1]
	bl sub_080123BC
	bl sub_0801239C
	bl sub_08036760
	ldr r2, _080317E0  @ =gUnknown_03006C80
	ldr r1, _080317E4  @ =gUnknown_084279C8
	ldr r0, _080317E8  @ =gUnknown_02016D60
	ldrb r0, [r0, #2]
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #3]
	mov r0, #2
	bl sub_0800B5EC
	b _080317F0
	.byte 0x00
	.byte 0x00
_080317DC:
	.4byte gUnknown_020163D0
_080317E0:
	.4byte gUnknown_03006C80
_080317E4:
	.4byte gUnknown_084279C8
_080317E8:
	.4byte gUnknown_02016D60
_080317EC:
	bl sub_08037574
_080317F0:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803178C

	THUMB_FUNC_START sub_080317F4
sub_080317F4: @ 0x080317F4
	push {r4,lr}
	ldr r4, _0803180C  @ =gUnknown_03005050
	ldrb r0, [r4]
	add r1, r4, #0
	cmp r0, #3
	bgt _08031810
	cmp r0, #1
	bge _08031828
	cmp r0, #0
	beq _08031814
	b _08031862
	.byte 0x00
	.byte 0x00
_0803180C:
	.4byte gUnknown_03005050
_08031810:
	cmp r0, #4
	bne _08031862
_08031814:
	ldr r0, _08031824  @ =gUnknown_084279F0
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	b _08031862
_08031824:
	.4byte gUnknown_084279F0
_08031828:
	bl sub_08037554
	cmp r0, #0
	beq _08031862
	bl sub_08037750
	ldr r1, _08031874  @ =gUnknown_084279F0
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _08031878  @ =gUnknown_03006C70
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_08015D9C
	bl sub_08015C64
	bl 0x08008ED8
	bl sub_0802BFC4
	bl 0x08000BAC
	bl sub_08037574
_08031862:
	ldr r2, _0803187C  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _08031880  @ =0x0000F7FF
	and r0, r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031874:
	.4byte gUnknown_084279F0
_08031878:
	.4byte gUnknown_03006C70
_0803187C:
	.4byte gUnknown_030004A0
_08031880:
	.4byte 0x0000F7FF
	THUMB_FUNC_END sub_080317F4

	THUMB_FUNC_START sub_08031884
sub_08031884: @ 0x08031884
	push {r4-r7,lr}
	ldr r0, _0803193C  @ =gUnknown_084279CC
	mov r1, #0
	bl sub_080311A0
	add r4, r0, #0
	mov r5, #0
	ldr r0, _08031940  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r5, r0
	bcs _08031926
	mov r7, #0
	mov r6, #63
_0803189E:
	add r0, r5, #0
	bl sub_08063C5C
	add r2, r0, #0
	ldrh r0, [r4]
	strh r0, [r2, #50]
	add r4, r4, #2
	mov r0, #180
	lsl r0, r0, #1
	strh r0, [r2, #54]
	ldrb r1, [r2, #28]
	mov r3, #4
	neg r3, r3
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r2, #28]
	add r0, r2, #0
	add r0, r0, #42
	strb r7, [r0]
	ldrb r1, [r2, #31]
	add r0, r6, #0
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #31]
	ldrb r1, [r2, #29]
	add r0, r6, #0
	and r0, r0, r1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2, #29]
	add r1, r2, #0
	add r1, r1, #46
	mov r0, #3
	strb r0, [r1]
	add r2, r2, #94
	ldrb r1, [r2]
	sub r3, r3, #9
	add r0, r3, #0
	and r1, r1, r0
	mov r0, #4
	orr r1, r1, r0
	strb r1, [r2]
	ldr r1, _08031944  @ =gUnknown_03006A30
	lsl r0, r5, #3
	add r0, r0, r5
	lsl r0, r0, #4
	add r0, r0, r1
	mov r1, #2
	strb r1, [r0, #12]
	ldrh r2, [r4]
	add r1, r0, #0
	add r1, r1, #56
	strb r2, [r1]
	ldrh r1, [r4]
	lsr r1, r1, #8
	add r0, r0, #57
	strb r1, [r0]
	add r4, r4, #2
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	ldr r0, _08031940  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r5, r0
	bcc _0803189E
_08031926:
	mov r0, #13
	mov r1, #11
	mov r2, #0
	bl sub_0804C8A8
	ldr r1, _08031948  @ =gUnknown_03000450
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803193C:
	.4byte gUnknown_084279CC
_08031940:
	.4byte gUnknown_03006C80
_08031944:
	.4byte gUnknown_03006A30
_08031948:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08031884

	THUMB_FUNC_START sub_0803194C
sub_0803194C: @ 0x0803194C
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r0, _08031A4C  @ =gUnknown_03000520
	ldrb r4, [r0]
	cmp r4, #0
	bne _08031A42
	ldr r0, _08031A50  @ =gUnknown_03000830
	strb r4, [r0]
	ldr r0, _08031A54  @ =0x80010000
	bl sub_0800D24C
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	strh r4, [r0]
	ldr r0, _08031A58  @ =gUnknown_020163D0
	strh r4, [r0]
	mov r0, #5
	bl sub_08036704
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0802C278
	bl sub_0802BF60
	mov r2, #8
	add r7, sp, #4
	ldr r4, _08031A5C  @ =gUnknown_0202A3F0
	mov r3, #255
_0803198E:
	lsl r1, r2, #2
	add r1, r1, r4
	ldrb r0, [r1]
	orr r0, r0, r3
	strb r0, [r1]
	ldrb r0, [r1, #1]
	orr r0, r0, r3
	strb r0, [r1, #1]
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #33
	bls _0803198E
	bl sub_080144A0
	bl sub_0800D744
	bl sub_0800D6F4
	mov r0, #2
	bl sub_0800B890
	mov r0, #16
	bl sub_0800BA44
	ldr r1, _08031A60  @ =gUnknown_08427A04
	ldr r0, _08031A64  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	add r0, r0, r1
	ldrb r0, [r0]
	bl sub_0800BA44
	mov r0, #1
	bl sub_0800BA44
	mov r0, sp
	mov r5, #0
	strh r5, [r0]
	ldr r6, _08031A68  @ =gUnknown_0202D110
	ldr r2, _08031A6C  @ =0x01000800
	add r1, r6, #0
	bl CpuSet
	mov r4, #0
	str r4, [sp, #4]
	ldr r1, _08031A70  @ =0x0600F800
	ldr r2, _08031A74  @ =0x01000200
	add r0, r7, #0
	bl CpuFastSet
	bl sub_08031884
	bl sub_08012EB4
	ldr r1, _08031A78  @ =gUnknown_03000450
	mov r0, #32
	strh r0, [r1, #32]
	strh r0, [r1, #36]
	ldr r0, _08031A7C  @ =gUnknown_03000420
	strb r5, [r0]
	strb r5, [r0, #3]
	ldr r1, _08031A80  @ =gUnknown_030004A0
	str r6, [r1, #16]
	ldr r0, _08031A84  @ =gUnknown_08142374
	ldrh r0, [r0, #36]
	strh r0, [r1, #8]
	mov r0, #64
	strh r0, [r1]
	add r1, r1, #102
	strh r4, [r1]
	ldr r0, _08031A88  @ =gUnknown_03000F44
	str r4, [r0]
	mov r0, #0
	mov r1, #0
	bl sub_0800B980
	ldr r1, _08031A8C  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08031A90  @ =gUnknown_03000BFC
	strb r5, [r0]
	ldr r0, _08031A94  @ =gUnknown_0201F000
	str r4, [r0]
	ldr r1, _08031A98  @ =gUnknown_02016D60
	mov r0, #30
	strh r0, [r1, #4]
	ldr r0, _08031A9C  @ =0x800B0193
	bl sub_0800D24C
_08031A42:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031A4C:
	.4byte gUnknown_03000520
_08031A50:
	.4byte gUnknown_03000830
_08031A54:
	.4byte 0x80010000
_08031A58:
	.4byte gUnknown_020163D0
_08031A5C:
	.4byte gUnknown_0202A3F0
_08031A60:
	.4byte gUnknown_08427A04
_08031A64:
	.4byte gUnknown_03006C80
_08031A68:
	.4byte gUnknown_0202D110
_08031A6C:
	.4byte 0x01000800
_08031A70:
	.4byte 0x0600F800
_08031A74:
	.4byte 0x01000200
_08031A78:
	.4byte gUnknown_03000450
_08031A7C:
	.4byte gUnknown_03000420
_08031A80:
	.4byte gUnknown_030004A0
_08031A84:
	.4byte gUnknown_08142374
_08031A88:
	.4byte gUnknown_03000F44
_08031A8C:
	.4byte gUnknown_03005050
_08031A90:
	.4byte gUnknown_03000BFC
_08031A94:
	.4byte gUnknown_0201F000
_08031A98:
	.4byte gUnknown_02016D60
_08031A9C:
	.4byte 0x800B0193
	THUMB_FUNC_END sub_0803194C

	THUMB_FUNC_START sub_08031AA0
sub_08031AA0: @ 0x08031AA0
	push {r4,r5,lr}
	ldr r5, _08031AB0  @ =gUnknown_03000BFC
	ldrb r0, [r5]
	cmp r0, #0
	beq _08031AB4
	cmp r0, #1
	beq _08031AFC
	b _08031B38
_08031AB0:
	.4byte gUnknown_03000BFC
_08031AB4:
	ldr r1, _08031AF0  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08031B38
	ldr r4, _08031AF4  @ =gUnknown_030004A0
	add r1, r4, #0
	add r1, r1, #102
	mov r0, #253
	lsl r0, r0, #6
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08031AF8  @ =0x0000070C
	strh r0, [r1]
	mov r0, #0
	mov r1, #1
	bl sub_080599A8
	ldrh r0, [r4]
	mov r2, #184
	lsl r2, r2, #5
	add r1, r2, #0
	orr r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _08031B38
_08031AF0:
	.4byte gUnknown_02016D60
_08031AF4:
	.4byte gUnknown_030004A0
_08031AF8:
	.4byte 0x0000070C
_08031AFC:
	bl sub_08059A2C
	cmp r0, #0
	beq _08031B38
	ldr r0, _08031B40  @ =gUnknown_03005050
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #0
	strb r0, [r5]
	mov r1, #0
	ldr r2, _08031B44  @ =gUnknown_03006C80
	ldrb r0, [r2]
	cmp r1, r0
	bcs _08031B34
	ldr r4, _08031B48  @ =gUnknown_03006A30
	mov r3, #3
_08031B1E:
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r4
	strb r3, [r0, #12]
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldrb r0, [r2]
	cmp r1, r0
	bcc _08031B1E
_08031B34:
	bl sub_08059A44
_08031B38:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031B40:
	.4byte gUnknown_03005050
_08031B44:
	.4byte gUnknown_03006C80
_08031B48:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08031AA0

	THUMB_FUNC_START sub_08031B4C
sub_08031B4C: @ 0x08031B4C
	push {r4,r5,lr}
	mov r2, #0
	ldr r0, _08031B74  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r2, r0
	bcs _08031B86
	ldr r4, _08031B78  @ =gUnknown_03000940
	mov r5, #128
	lsl r5, r5, #3
	add r3, r0, #0
_08031B60:
	lsl r0, r2, #1
	add r0, r0, r4
	ldrh r1, [r0]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08031B7C
	mov r0, #1
	b _08031B88
	.byte 0x00
	.byte 0x00
_08031B74:
	.4byte gUnknown_03006C80
_08031B78:
	.4byte gUnknown_03000940
_08031B7C:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r3
	bcc _08031B60
_08031B86:
	mov r0, #0
_08031B88:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08031B4C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031B90
sub_08031B90: @ 0x08031B90
	ldr r0, _08031BA0  @ =gUnknown_03006C80
	ldr r1, [r0, #8]
	ldr r0, _08031BA4  @ =0x000003E7
	cmp r1, r0
	bhi _08031BA8
	mov r0, #0
	b _08031BCA
	.byte 0x00
	.byte 0x00
_08031BA0:
	.4byte gUnknown_03006C80
_08031BA4:
	.4byte 0x000003E7
_08031BA8:
	ldr r0, _08031BB4  @ =0x00000BB7
	cmp r1, r0
	bhi _08031BB8
	mov r0, #1
	b _08031BCA
	.byte 0x00
	.byte 0x00
_08031BB4:
	.4byte 0x00000BB7
_08031BB8:
	ldr r0, _08031BC4  @ =0x00001387
	cmp r1, r0
	bls _08031BC8
	mov r0, #3
	b _08031BCA
	.byte 0x00
	.byte 0x00
_08031BC4:
	.4byte 0x00001387
_08031BC8:
	mov r0, #2
_08031BCA:
	bx lr
	THUMB_FUNC_END sub_08031B90

	THUMB_FUNC_START sub_08031BCC
sub_08031BCC: @ 0x08031BCC
	push {lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	bl sub_0800D67C
	ldr r3, _08031BFC  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	bl sub_08031F08
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031BFC:
	.4byte gUnknown_02000010
	THUMB_FUNC_END sub_08031BCC

	THUMB_FUNC_START sub_08031C00
sub_08031C00: @ 0x08031C00
	push {r4,r5,lr}
	ldr r0, _08031C18  @ =gUnknown_03000BFC
	ldrb r1, [r0]
	add r3, r0, #0
	cmp r1, #7
	bls _08031C0E
	b _08031EF8
_08031C0E:
	lsl r0, r1, #2
	ldr r1, _08031C1C  @ =0x08031C20
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08031C18:
	.4byte gUnknown_03000BFC
_08031C1C:
	.4byte 0x08031C20
	.4byte _08031C40
	.4byte _08031C70
	.4byte _08031CD4
	.4byte _08031CEC
	.4byte _08031CD4
	.4byte _08031DC4
	.4byte _08031E38
	.4byte _08031E68
_08031C40:
	ldr r0, _08031C64  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	ldrb r0, [r0, #20]
	cmp r0, #2
	beq _08031C4C
	b _08031EF8
_08031C4C:
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	ldr r1, _08031C68  @ =gUnknown_02016D60
	mov r0, #90
	strh r0, [r1, #4]
	ldr r2, _08031C6C  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #16
	orr r0, r0, r1
	str r0, [r2]
	b _08031EF8
_08031C64:
	.4byte gUnknown_03006A30
_08031C68:
	.4byte gUnknown_02016D60
_08031C6C:
	.4byte gUnknown_0201F000
_08031C70:
	ldr r0, _08031CC0  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #32
	and r0, r0, r1
	cmp r0, #0
	bne _08031C7E
	b _08031EF8
_08031C7E:
	ldr r1, _08031CC4  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _08031C8E
	b _08031EF8
_08031C8E:
	ldr r1, _08031CC8  @ =gUnknown_08427A08
	ldr r4, _08031CCC  @ =gUnknown_03006C80
	ldrb r0, [r4, #1]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	bl sub_0800D67C
	ldr r3, _08031CD0  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	ldr r0, [r4, #8]
	str r0, [r3, #8]
	b _08031E1A
_08031CC0:
	.4byte gUnknown_0201F000
_08031CC4:
	.4byte gUnknown_02016D60
_08031CC8:
	.4byte gUnknown_08427A08
_08031CCC:
	.4byte gUnknown_03006C80
_08031CD0:
	.4byte gUnknown_02000010
_08031CD4:
	ldr r0, _08031CE8  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	beq _08031CE2
	b _08031EF8
_08031CE2:
	bl sub_0800D644
	b _08031E1A
_08031CE8:
	.4byte gUnknown_02000010
_08031CEC:
	bl sub_08031B4C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08031CF8
	b _08031EF8
_08031CF8:
	bl sub_08031B90
	lsl r0, r0, #24
	cmp r0, #0
	bne _08031D10
	ldr r0, _08031D0C  @ =0x00000805
	bl sub_08031BCC
	b _08031EF8
	.byte 0x00
	.byte 0x00
_08031D0C:
	.4byte 0x00000805
_08031D10:
	ldr r4, _08031D24  @ =gUnknown_03006C80
	ldrb r0, [r4, #6]
	cmp r0, #2
	beq _08031D5C
	cmp r0, #2
	ble _08031D28
	cmp r0, #3
	beq _08031D6A
	b _08031D80
	.byte 0x00
	.byte 0x00
_08031D24:
	.4byte gUnknown_03006C80
_08031D28:
	cmp r0, #0
	blt _08031D80
	bl sub_080397F0
	cmp r0, #0
	ble _08031D80
	mov r1, #0
	ldrb r0, [r4]
	cmp r1, r0
	bcs _08031D80
	add r4, r4, #40
	mov r3, #8
	add r2, r0, #0
_08031D42:
	lsl r0, r1, #3
	add r0, r0, r4
	ldr r0, [r0]
	and r0, r0, r3
	cmp r0, #0
	bne _08031D50
	b _08031EB8
_08031D50:
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, r2
	bcc _08031D42
	b _08031D80
_08031D5C:
	bl sub_08031B90
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08031D80
	b _08031D76
_08031D6A:
	bl sub_08031B90
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bhi _08031D80
_08031D76:
	mov r0, #129
	lsl r0, r0, #4
	bl sub_08031BCC
	b _08031EF8
_08031D80:
	ldr r0, _08031DB8  @ =gUnknown_03006C80
	ldrb r0, [r0, #6]
	bl sub_080398F8
	bl sub_080399CC
	ldr r1, _08031DBC  @ =0x00000805
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	bl sub_0800D67C
	ldr r3, _08031DC0  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	b _08031E1A
	.byte 0x00
	.byte 0x00
_08031DB8:
	.4byte gUnknown_03006C80
_08031DBC:
	.4byte 0x00000805
_08031DC0:
	.4byte gUnknown_02000010
_08031DC4:
	bl sub_08031B4C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08031DD0
	b _08031EF8
_08031DD0:
	ldr r2, _08031E24  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #64
	orr r0, r0, r1
	str r0, [r2]
	mov r1, #128
	and r0, r0, r1
	cmp r0, #0
	bne _08031DE4
	b _08031EF8
_08031DE4:
	ldr r0, _08031E28  @ =0x00000216
	bl sub_0800D24C
	mov r0, #15
	bl sub_0800D24C
	mov r1, #0
	ldr r2, _08031E2C  @ =gUnknown_03006C80
	ldrb r0, [r2]
	cmp r1, r0
	bcs _08031E1A
	ldr r5, _08031E30  @ =gUnknown_03006A30
	mov r4, #4
	mov r3, #120
_08031E00:
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r5
	strb r4, [r0, #12]
	add r0, r0, #56
	strb r3, [r0]
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldrb r0, [r2]
	cmp r1, r0
	bcc _08031E00
_08031E1A:
	ldr r1, _08031E34  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _08031EF8
_08031E24:
	.4byte gUnknown_0201F000
_08031E28:
	.4byte 0x00000216
_08031E2C:
	.4byte gUnknown_03006C80
_08031E30:
	.4byte gUnknown_03006A30
_08031E34:
	.4byte gUnknown_03000BFC
_08031E38:
	ldr r0, _08031E5C  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	ldrb r0, [r0, #20]
	cmp r0, #2
	bne _08031EF8
	ldr r2, _08031E60  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #1
	orr r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	ldr r1, _08031E64  @ =gUnknown_02016D60
	mov r0, #60
	strh r0, [r1, #4]
	b _08031EF8
_08031E5C:
	.4byte gUnknown_03006A30
_08031E60:
	.4byte gUnknown_0201F000
_08031E64:
	.4byte gUnknown_02016D60
_08031E68:
	ldr r1, _08031E88  @ =gUnknown_02016D60
	ldrh r0, [r1, #4]
	sub r0, r0, #1
	strh r0, [r1, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08031EF8
	ldr r0, _08031E8C  @ =gUnknown_03006C80
	ldrb r0, [r0, #6]
	cmp r0, #2
	beq _08031EA8
	cmp r0, #2
	bgt _08031E90
	cmp r0, #1
	beq _08031E96
	b _08031ED2
_08031E88:
	.4byte gUnknown_02016D60
_08031E8C:
	.4byte gUnknown_03006C80
_08031E90:
	cmp r0, #3
	beq _08031EC4
	b _08031ED2
_08031E96:
	bl sub_080397F0
	ldr r1, _08031EA4  @ =0x0000080A
	cmp r0, #0
	bgt _08031ED0
	b _08031ECE
	.byte 0x00
	.byte 0x00
_08031EA4:
	.4byte 0x0000080A
_08031EA8:
	bl sub_080397F0
	ldr r1, _08031EB4  @ =0x0000080D
	cmp r0, #1
	bgt _08031ED0
	b _08031ECE
_08031EB4:
	.4byte 0x0000080D
_08031EB8:
	ldr r0, _08031EC0  @ =0x0000080B
	bl sub_08031BCC
	b _08031EF8
_08031EC0:
	.4byte 0x0000080B
_08031EC4:
	bl sub_080397F0
	ldr r1, _08031F00  @ =0x0000080F
	cmp r0, #2
	bgt _08031ED0
_08031ECE:
	sub r1, r1, #1
_08031ED0:
	add r2, r1, #0
_08031ED2:
	add r0, r2, #0
	bl sub_0800D67C
	ldr r3, _08031F04  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	bl sub_08031F08
_08031EF8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031F00:
	.4byte 0x0000080F
_08031F04:
	.4byte gUnknown_02000010
	THUMB_FUNC_END sub_08031C00

	THUMB_FUNC_START sub_08031F08
sub_08031F08: @ 0x08031F08
	ldr r1, _08031F18  @ =gUnknown_03005050
	mov r0, #3
	strb r0, [r1]
	ldr r1, _08031F1C  @ =gUnknown_03000BFC
	mov r0, #0
	strb r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08031F18:
	.4byte gUnknown_03005050
_08031F1C:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_08031F08

	THUMB_FUNC_START sub_08031F20
sub_08031F20: @ 0x08031F20
	push {r4,lr}
	ldr r4, _08031F30  @ =gUnknown_03000BFC
	ldrb r0, [r4]
	cmp r0, #0
	beq _08031F34
	cmp r0, #1
	beq _08031F50
	b _08031F6E
_08031F30:
	.4byte gUnknown_03000BFC
_08031F34:
	ldr r0, _08031F4C  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _08031F6E
	bl sub_0800D644
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _08031F6E
_08031F4C:
	.4byte gUnknown_02000010
_08031F50:
	bl sub_08031B4C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08031F6E
	ldr r0, _08031F74  @ =gUnknown_03005050
	mov r1, #4
	strb r1, [r0]
	mov r0, #3
	mov r1, #2
	bl sub_0800C0B0
	ldr r0, _08031F78  @ =0x00000212
	bl sub_0800D24C
_08031F6E:
	pop {r4}
	pop {r0}
	bx r0
_08031F74:
	.4byte gUnknown_03005050
_08031F78:
	.4byte 0x00000212
	THUMB_FUNC_END sub_08031F20

	THUMB_FUNC_START sub_08031F7C
sub_08031F7C: @ 0x08031F7C
	push {lr}
	ldr r0, _08031FB4  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _08031FAE
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _08031FB8  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _08031FBC  @ =gUnknown_020163D0
	strh r1, [r0]
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0800D6F4
	bl sub_0800D744
	mov r0, #7
	bl sub_0800B5EC
_08031FAE:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031FB4:
	.4byte gUnknown_03000520
_08031FB8:
	.4byte 0x00006739
_08031FBC:
	.4byte gUnknown_020163D0
	THUMB_FUNC_END sub_08031F7C

	THUMB_FUNC_START sub_08031FC0
sub_08031FC0: @ 0x08031FC0
	push {lr}
	mov r0, #11
	bl sub_0800B5EC
	ldr r1, _08031FD4  @ =gUnknown_03005050
	mov r0, #2
	strb r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031FD4:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_08031FC0

	THUMB_FUNC_START sub_08031FD8
sub_08031FD8: @ 0x08031FD8
	push {lr}
	ldr r1, _08031FF0  @ =gUnknown_08427A10
	ldr r0, _08031FF4  @ =gUnknown_03005050
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031FF0:
	.4byte gUnknown_08427A10
_08031FF4:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_08031FD8

	THUMB_FUNC_START sub_08031FF8
sub_08031FF8: @ 0x08031FF8
	push {r4-r6,lr}
	sub sp, sp, #24
	ldr r0, _080320E4  @ =gUnknown_03000520
	ldrb r6, [r0]
	cmp r6, #0
	bne _080320DC
	mov r0, #160
	lsl r0, r0, #19
	mov r5, #0
	strh r6, [r0]
	ldr r0, _080320E8  @ =gUnknown_020163D0
	strh r6, [r0]
	ldr r0, _080320EC  @ =0x80010000
	bl sub_0800D24C
	mov r4, #160
	str r4, [sp]
	mov r1, #224
	lsl r1, r1, #19
	ldr r2, _080320F0  @ =0x01000100
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _080320F4  @ =gUnknown_03005E20
	ldr r2, _080320F8  @ =0x01000200
	bl CpuFastSet
	str r6, [sp, #8]
	add r0, sp, #8
	ldr r1, _080320FC  @ =gUnknown_03006630
	ldr r2, _08032100  @ =0x01000040
	bl CpuFastSet
	ldr r0, _08032104  @ =gUnknown_03000420
	strb r5, [r0]
	str r6, [sp, #12]
	add r0, sp, #12
	ldr r1, _08032108  @ =gUnknown_0202D110
	ldr r2, _0803210C  @ =0x01000400
	bl CpuFastSet
	bl sub_0802C934
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0802BF60
	bl sub_0802C278
	bl sub_0800D6F4
	bl sub_0804CCBC
	str r6, [sp, #16]
	add r0, sp, #16
	ldr r1, _08032110  @ =gUnknown_03006A30
	ldr r2, _08032114  @ =0x05000090
	bl CpuSet
	add r0, sp, #20
	strh r6, [r0]
	ldr r1, _08032118  @ =gUnknown_02016D60
	ldr r2, _0803211C  @ =0x01000014
	bl CpuSet
	mov r0, #8
	bl sub_0800BA44
	ldr r0, _08032120  @ =gUnknown_0201F000
	str r6, [r0]
	mov r0, #93
	mov r1, #1
	mov r2, #0
	bl sub_0804CCE4
	ldr r2, _08032124  @ =gUnknown_0202A7E0
	ldr r0, [r2, #12]
	mov r4, #252
	lsl r4, r4, #1
	strh r4, [r0, #50]
	ldr r1, [r2, #12]
	mov r0, #220
	lsl r0, r0, #1
	strh r0, [r1, #54]
	ldr r1, _08032128  @ =gUnknown_03000450
	ldr r0, [r2, #12]
	str r0, [r1]
	mov r0, #6
	strb r0, [r2, #4]
	bl sub_08032138
	mov r0, #105
	mov r1, #4
	mov r2, #0
	bl sub_0804C8A8
	strh r4, [r0, #50]
	strh r4, [r0, #54]
	ldr r1, _0803212C  @ =gUnknown_03005050
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08032130  @ =gUnknown_03000BFC
	strb r5, [r0]
	bl 0x08137AFC
	ldr r0, _08032134  @ =gUnknown_0200B310
	str r6, [r0]
	mov r0, #5
	bl sub_08036704
_080320DC:
	add sp, sp, #24
	pop {r4-r6}
	pop {r0}
	bx r0
_080320E4:
	.4byte gUnknown_03000520
_080320E8:
	.4byte gUnknown_020163D0
_080320EC:
	.4byte 0x80010000
_080320F0:
	.4byte 0x01000100
_080320F4:
	.4byte gUnknown_03005E20
_080320F8:
	.4byte 0x01000200
_080320FC:
	.4byte gUnknown_03006630
_08032100:
	.4byte 0x01000040
_08032104:
	.4byte gUnknown_03000420
_08032108:
	.4byte gUnknown_0202D110
_0803210C:
	.4byte 0x01000400
_08032110:
	.4byte gUnknown_03006A30
_08032114:
	.4byte 0x05000090
_08032118:
	.4byte gUnknown_02016D60
_0803211C:
	.4byte 0x01000014
_08032120:
	.4byte gUnknown_0201F000
_08032124:
	.4byte gUnknown_0202A7E0
_08032128:
	.4byte gUnknown_03000450
_0803212C:
	.4byte gUnknown_03005050
_08032130:
	.4byte gUnknown_03000BFC
_08032134:
	.4byte gUnknown_0200B310
	THUMB_FUNC_END sub_08031FF8

	THUMB_FUNC_START sub_08032138
sub_08032138: @ 0x08032138
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r4, #0
	ldr r0, _080321CC  @ =gUnknown_03006C80
	ldrb r1, [r0]
	cmp r4, r1
	bcs _080321C2
	mov r7, #4
	neg r7, r7
	add r6, r0, #0
	mov r3, #0
	mov r8, r3
	mov r5, #3
_08032154:
	add r0, r4, #0
	bl sub_08063C5C
	add r2, r0, #0
	ldrb r1, [r2, #28]
	add r0, r7, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	lsl r1, r4, #4
	mov r0, #252
	lsl r0, r0, #1
	add r1, r1, r0
	ldrb r0, [r6]
	sub r0, r0, #1
	lsl r0, r0, #3
	sub r1, r1, r0
	strh r1, [r2, #50]
	mov r0, #236
	lsl r0, r0, #1
	strh r0, [r2, #54]
	add r0, r2, #0
	add r0, r0, #42
	mov r1, r8
	strb r1, [r0]
	ldrb r1, [r2, #31]
	mov r0, #63
	and r0, r0, r1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2, #31]
	add r1, r2, #0
	add r1, r1, #46
	mov r0, #3
	strb r0, [r1]
	add r2, r2, #94
	ldrb r0, [r2]
	mov r3, #13
	neg r3, r3
	add r1, r3, #0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	sub r1, r5, r4
	and r1, r1, r5
	and r0, r0, r7
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldrb r0, [r6]
	cmp r4, r0
	bcc _08032154
_080321C2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080321CC:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_08032138

	THUMB_FUNC_START sub_080321D0
sub_080321D0: @ 0x080321D0
	push {r4,lr}
	bl sub_08037554
	cmp r0, #0
	beq _08032210
	bl sub_08037750
	ldr r1, _08032218  @ =gUnknown_08427A1C
	ldr r4, _0803221C  @ =gUnknown_03000BFC
	ldrb r0, [r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl 0x08137AFC
	ldrb r0, [r4]
	cmp r0, #1
	bhi _08032204
	bl sub_08015D9C
	bl sub_08015C64
	bl 0x08008ED8
_08032204:
	bl sub_0802BFC4
	bl 0x08000BAC
	bl sub_08037574
_08032210:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08032218:
	.4byte gUnknown_08427A1C
_0803221C:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_080321D0

	THUMB_FUNC_START sub_08032220
sub_08032220: @ 0x08032220
	push {r4,r5,lr}
	mov r2, #0
	ldr r0, _08032248  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r2, r0
	bcs _0803225A
	ldr r4, _0803224C  @ =gUnknown_03000940
	mov r5, #128
	lsl r5, r5, #3
	add r3, r0, #0
_08032234:
	lsl r0, r2, #1
	add r0, r0, r4
	ldrh r1, [r0]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08032250
	mov r0, #1
	b _0803225C
	.byte 0x00
	.byte 0x00
_08032248:
	.4byte gUnknown_03006C80
_0803224C:
	.4byte gUnknown_03000940
_08032250:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r3
	bcc _08032234
_0803225A:
	mov r0, #0
_0803225C:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08032220

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08032264
sub_08032264: @ 0x08032264
	push {r4-r6,lr}
	ldr r0, _0803227C  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r6, r0, #0
	cmp r1, #16
	bls _08032272
	b _0803252E
_08032272:
	lsl r0, r1, #2
	ldr r1, _08032280  @ =0x08032284
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0803227C:
	.4byte gUnknown_02016D60
_08032280:
	.4byte 0x08032284
	.4byte _080322C8
	.4byte _080322DC
	.4byte _08032300
	.4byte _0803231C
	.4byte _08032344
	.4byte _08032364
	.4byte _080323DC
	.4byte _08032380
	.4byte _080323BC
	.4byte _0803245C
	.4byte _080323DC
	.4byte _080323FA
	.4byte _08032440
	.4byte _0803245C
	.4byte _08032478
	.4byte _080324C0
	.4byte _0803250C
_080322C8:
	ldr r0, _080322D8  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080322D6
	b _0803252E
_080322D6:
	b _0803236E
_080322D8:
	.4byte gUnknown_0201F000
_080322DC:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _080322EA
	b _0803252E
_080322EA:
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	mov r0, #120
	strh r0, [r6, #4]
	ldr r2, _080322FC  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #2
	b _0803252A
_080322FC:
	.4byte gUnknown_0201F000
_08032300:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0803230E
	b _0803252E
_0803230E:
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	ldr r0, _08032318  @ =0x00000A02
	b _08032396
_08032318:
	.4byte 0x00000A02
_0803231C:
	ldr r0, _08032338  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	beq _0803232A
	b _0803252E
_0803232A:
	ldr r0, _0803233C  @ =0x800B01B9
	bl sub_0800D24C
	bl sub_0800D644
	ldr r1, _08032340  @ =gUnknown_02016D60
	b _0803246C
_08032338:
	.4byte gUnknown_02000010
_0803233C:
	.4byte 0x800B01B9
_08032340:
	.4byte gUnknown_02016D60
_08032344:
	bl sub_08032220
	lsl r0, r0, #24
	cmp r0, #0
	beq _08032350
	b _0803252E
_08032350:
	ldr r1, _0803235C  @ =gUnknown_0202A7E0
	mov r0, #7
	strb r0, [r1, #4]
	ldr r1, _08032360  @ =gUnknown_02016D60
	b _0803246C
	.byte 0x00
	.byte 0x00
_0803235C:
	.4byte gUnknown_0202A7E0
_08032360:
	.4byte gUnknown_02016D60
_08032364:
	ldr r0, _0803237C  @ =gUnknown_0202A7E0
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0803236E
	b _0803252E
_0803236E:
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	mov r0, #30
	strh r0, [r6, #4]
	b _0803252E
	.byte 0x00
	.byte 0x00
_0803237C:
	.4byte gUnknown_0202A7E0
_08032380:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _0803238E
	b _0803252E
_0803238E:
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	ldr r0, _080323B4  @ =0x00000A03
_08032396:
	bl sub_0800D67C
	ldr r3, _080323B8  @ =gUnknown_02000010
	ldrb r1, [r3, #3]
	mov r2, #32
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r2, r2, r0
	strb r2, [r3, #4]
	b _0803252E
_080323B4:
	.4byte 0x00000A03
_080323B8:
	.4byte gUnknown_02000010
_080323BC:
	ldr r0, _080323D4  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	beq _080323CA
	b _0803252E
_080323CA:
	bl sub_0800D644
	ldr r1, _080323D8  @ =gUnknown_02016D60
	b _0803246C
	.byte 0x00
	.byte 0x00
_080323D4:
	.4byte gUnknown_02000010
_080323D8:
	.4byte gUnknown_02016D60
_080323DC:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _080323EA
	b _0803252E
_080323EA:
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	mov r0, #60
	strh r0, [r6, #4]
	bl sub_08032868
	b _0803252E
_080323FA:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _08032408
	b _0803252E
_08032408:
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	ldr r0, _08032434  @ =0x00000A04
	bl sub_0800D67C
	ldr r3, _08032438  @ =gUnknown_02000010
	ldrb r1, [r3, #3]
	mov r2, #32
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r2, r2, r0
	strb r2, [r3, #4]
	ldr r0, _0803243C  @ =gUnknown_03006C80
	ldrb r0, [r0]
	str r0, [r3, #8]
	b _0803252E
_08032434:
	.4byte 0x00000A04
_08032438:
	.4byte gUnknown_02000010
_0803243C:
	.4byte gUnknown_03006C80
_08032440:
	ldr r0, _08032454  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _0803252E
	bl sub_0800D644
	ldr r1, _08032458  @ =gUnknown_02016D60
	b _0803246C
_08032454:
	.4byte gUnknown_02000010
_08032458:
	.4byte gUnknown_02016D60
_0803245C:
	bl sub_08032220
	lsl r0, r0, #24
	cmp r0, #0
	bne _0803252E
	ldr r1, _08032474  @ =gUnknown_02016D60
	mov r0, #60
	strh r0, [r1, #4]
_0803246C:
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _0803252E
_08032474:
	.4byte gUnknown_02016D60
_08032478:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803252E
	mov r0, #104
	mov r1, #3
	mov r2, #0
	bl sub_0804C8A8
	mov r5, #252
	lsl r5, r5, #1
	strh r5, [r0, #50]
	mov r4, #247
	lsl r4, r4, #1
	strh r4, [r0, #54]
	mov r0, #104
	mov r1, #3
	mov r2, #4
	bl sub_0804C8A8
	strh r5, [r0, #50]
	strh r4, [r0, #54]
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	mov r0, #60
	strh r0, [r6, #4]
	ldr r0, _080324BC  @ =0x80040000
	bl sub_0800D24C
	b _0803252E
	.byte 0x00
	.byte 0x00
_080324BC:
	.4byte 0x80040000
_080324C0:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803252E
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	mov r0, #120
	strh r0, [r6, #4]
	bl sub_08032868
	mov r1, #0
	ldr r2, _08032504  @ =gUnknown_03006C80
	ldrb r0, [r2]
	cmp r1, r0
	bcs _0803252E
	ldr r4, _08032508  @ =gUnknown_03006A58
	mov r3, #4
_080324E8:
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r4
	ldr r0, [r0]
	add r0, r0, #42
	strb r3, [r0]
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldrb r0, [r2]
	cmp r1, r0
	bcc _080324E8
	b _0803252E
_08032504:
	.4byte gUnknown_03006C80
_08032508:
	.4byte gUnknown_03006A58
_0803250C:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803252E
	ldr r1, _08032534  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	strb r0, [r6]
	ldr r2, _08032538  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #4
_0803252A:
	orr r0, r0, r1
	str r0, [r2]
_0803252E:
	pop {r4-r6}
	pop {r0}
	bx r0
_08032534:
	.4byte gUnknown_03000BFC
_08032538:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08032264

	THUMB_FUNC_START sub_0803253C
sub_0803253C: @ 0x0803253C
	push {r4,r5,lr}
	ldr r0, _08032554  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r5, r0, #0
	cmp r1, #10
	bls _0803254A
	b _080327A4
_0803254A:
	lsl r0, r1, #2
	ldr r1, _08032558  @ =0x0803255C
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08032554:
	.4byte gUnknown_02016D60
_08032558:
	.4byte 0x0803255C
	.4byte _08032588
	.4byte _080325B4
	.4byte _080325D0
	.4byte _08032618
	.4byte _08032638
	.4byte _08032674
	.4byte _0803269C
	.4byte _080326D8
	.4byte _080326FC
	.4byte _08032724
	.4byte _08032774
_08032588:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	mov r2, #0
	mov r0, #60
	strh r0, [r5, #4]
	ldr r1, _080325AC  @ =gUnknown_03000520
	ldr r0, _080325B0  @ =0x8877FFFF
	str r0, [r1, #12]
	mov r0, #28
	strb r0, [r1, #7]
	strb r2, [r5, #12]
	mov r0, #255
	lsl r0, r0, #1
	bl sub_0800D24C
	b _080327A4
	.byte 0x00
	.byte 0x00
_080325AC:
	.4byte gUnknown_03000520
_080325B0:
	.4byte 0x8877FFFF
_080325B4:
	ldrb r2, [r5, #12]
	cmp r2, #15
	bhi _0803265C
	ldr r0, _080325CC  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _08032666
	add r0, r2, #1
	strb r0, [r5, #12]
	b _08032666
_080325CC:
	.4byte gUnknown_03000948
_080325D0:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _080325DE
	b _080327A4
_080325DE:
	mov r1, #0
	ldr r2, _0803260C  @ =gUnknown_03006C80
	ldrb r0, [r2]
	cmp r1, r0
	bcs _08032602
	ldr r4, _08032610  @ =gUnknown_03006A30
	mov r3, #12
_080325EC:
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r4
	strb r3, [r0, #12]
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldrb r0, [r2]
	cmp r1, r0
	bcc _080325EC
_08032602:
	ldr r0, _08032614  @ =0x00000205
	bl sub_0800D24C
	b _080326E8
	.byte 0x00
	.byte 0x00
_0803260C:
	.4byte gUnknown_03006C80
_08032610:
	.4byte gUnknown_03006A30
_08032614:
	.4byte 0x00000205
_08032618:
	ldr r0, _08032630  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	bne _08032626
	b _080327A4
_08032626:
	ldr r0, _08032634  @ =0x000001FF
	bl sub_0800D24C
	b _080326E8
	.byte 0x00
	.byte 0x00
_08032630:
	.4byte gUnknown_0201F000
_08032634:
	.4byte 0x000001FF
_08032638:
	ldrb r2, [r5, #12]
	cmp r2, #0
	beq _08032654
	ldr r0, _08032650  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #7
	and r0, r0, r1
	cmp r0, #0
	bne _08032666
	sub r0, r2, #1
	strb r0, [r5, #12]
	b _08032666
_08032650:
	.4byte gUnknown_03000948
_08032654:
	ldr r1, _08032670  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
_0803265C:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	mov r0, #60
	strh r0, [r5, #4]
_08032666:
	ldrb r0, [r5, #12]
	lsl r0, r0, #4
	bl sub_0800C1EC
	b _080327A4
_08032670:
	.4byte gUnknown_03000520
_08032674:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _08032682
	b _080327A4
_08032682:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	mov r0, #60
	strh r0, [r5, #4]
	ldr r0, _08032698  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r0, r0, #42
	mov r1, #0
	strb r1, [r0]
	b _080327A4
_08032698:
	.4byte gUnknown_03006A30
_0803269C:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _080326AA
	b _080327A4
_080326AA:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldr r0, _080326D0  @ =0x00000A05
	bl sub_0800D67C
	ldr r3, _080326D4  @ =gUnknown_02000010
	ldrb r1, [r3, #3]
	mov r2, #32
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r2, r2, r0
	strb r2, [r3, #4]
	b _080327A4
_080326D0:
	.4byte 0x00000A05
_080326D4:
	.4byte gUnknown_02000010
_080326D8:
	ldr r0, _080326F4  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _080327A4
	bl sub_0800D644
_080326E8:
	ldr r1, _080326F8  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080327A4
	.byte 0x00
	.byte 0x00
_080326F4:
	.4byte gUnknown_02000010
_080326F8:
	.4byte gUnknown_02016D60
_080326FC:
	bl sub_08032220
	lsl r0, r0, #24
	cmp r0, #0
	bne _080327A4
	ldr r1, _0803271C  @ =gUnknown_02016D60
	mov r0, #180
	strh r0, [r1, #4]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08032720  @ =0x800B0190
	bl sub_0800D24C
	b _080327A4
	.byte 0x00
	.byte 0x00
_0803271C:
	.4byte gUnknown_02016D60
_08032720:
	.4byte 0x800B0190
_08032724:
	ldrh r0, [r5, #4]
	cmp r0, #90
	bne _08032738
	ldr r0, _08032734  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r0, r0, #42
	mov r1, #2
	b _08032744
_08032734:
	.4byte gUnknown_03006A30
_08032738:
	cmp r0, #82
	bne _08032746
	ldr r0, _0803276C  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r0, r0, #42
	mov r1, #4
_08032744:
	strb r1, [r0]
_08032746:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _080327A4
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	mov r0, #70
	strh r0, [r5, #4]
	ldr r1, _08032770  @ =gUnknown_03000520
	sub r0, r0, #71
	str r0, [r1, #12]
	mov r0, #1
	mov r1, #4
	bl sub_0800C0B0
	b _080327A4
_0803276C:
	.4byte gUnknown_03006A30
_08032770:
	.4byte gUnknown_03000520
_08032774:
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	bne _080327A4
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	strh r4, [r0]
	ldr r0, _080327AC  @ =gUnknown_020163D0
	strh r4, [r0]
	bl sub_0801239C
	bl sub_080123BC
	ldr r1, _080327B0  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	strb r0, [r5]
_080327A4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080327AC:
	.4byte gUnknown_020163D0
_080327B0:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_0803253C

	THUMB_FUNC_START sub_080327B4
sub_080327B4: @ 0x080327B4
	push {r4,lr}
	ldr r4, _080327C8  @ =gUnknown_02016D60
	ldrb r0, [r4]
	cmp r0, #1
	beq _08032814
	cmp r0, #1
	bgt _080327CC
	cmp r0, #0
	beq _080327D2
	b _0803285E
_080327C8:
	.4byte gUnknown_02016D60
_080327CC:
	cmp r0, #2
	beq _08032834
	b _0803285E
_080327D2:
	mov r0, #13
	bl sub_0800B890
	mov r0, #6
	bl sub_0800BA44
	mov r0, #40
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #40
	mov r1, #3
	mov r2, #0
	bl sub_0804C8A8
	ldr r2, _08032810  @ =gUnknown_030004A0
	ldrh r1, [r2]
	mov r3, #128
	lsl r3, r3, #5
	add r0, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #240
	strh r0, [r4, #4]
	mov r0, #0
	b _0803282C
	.byte 0x00
	.byte 0x00
_08032810:
	.4byte gUnknown_030004A0
_08032814:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803285E
	mov r0, #60
	strh r0, [r4, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #1
_0803282C:
	mov r1, #4
	bl sub_0800C0B0
	b _0803285E
_08032834:
	ldrh r0, [r4, #4]
	sub r0, r0, #1
	strh r0, [r4, #4]
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	bne _0803285E
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	strh r4, [r0]
	ldr r0, _08032864  @ =gUnknown_020163D0
	strh r4, [r0]
	bl sub_0801239C
	bl sub_080123BC
	mov r0, #12
	bl sub_0800B5EC
_0803285E:
	pop {r4}
	pop {r0}
	bx r0
_08032864:
	.4byte gUnknown_020163D0
	THUMB_FUNC_END sub_080327B4

	THUMB_FUNC_START sub_08032868
sub_08032868: @ 0x08032868
	push {lr}
	mov r0, #90
	mov r1, #1
	mov r2, #50
	bl sub_0804C8A8
	mov r1, #1
	strb r1, [r0, #23]
	mov r1, #252
	lsl r1, r1, #1
	strh r1, [r0, #50]
	sub r1, r1, #88
	strh r1, [r0, #54]
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08032868

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08032888
sub_08032888: @ 0x08032888
	push {r4,lr}
	ldr r1, _080328E0  @ =gUnknown_08427A28
	ldr r0, _080328E4  @ =gUnknown_03000BFC
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, _080328E8  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	bne _080328DA
	ldr r0, _080328EC  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r4, #3
	add r0, r4, #0
	and r0, r0, r1
	cmp r0, #0
	bne _080328DA
	ldr r0, _080328F0  @ =gUnknown_03000520
	ldrb r0, [r0]
	cmp r0, #0
	bne _080328DA
	bl 0x0800099C
	add r1, r0, #0
	ldr r2, _080328F4  @ =0x03000030
	and r1, r1, r4
	lsl r1, r1, #5
	mov r0, #150
	lsl r0, r0, #6
	add r1, r1, r0
	ldr r0, [r2]
	add r0, r0, r1
	mov r1, #15
	mov r2, #1
	bl sub_0800B8D4
_080328DA:
	pop {r4}
	pop {r0}
	bx r0
_080328E0:
	.4byte gUnknown_08427A28
_080328E4:
	.4byte gUnknown_03000BFC
_080328E8:
	.4byte gUnknown_0201F000
_080328EC:
	.4byte gUnknown_03000948
_080328F0:
	.4byte gUnknown_03000520
_080328F4:
	.4byte 0x03000030
	THUMB_FUNC_END sub_08032888

	THUMB_FUNC_START sub_080328F8
sub_080328F8: @ 0x080328F8
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r0, _08032A2C  @ =gUnknown_03000520
	ldrb r7, [r0]
	cmp r7, #0
	beq _08032906
	b _08032A24
_08032906:
	ldr r0, _08032A30  @ =gUnknown_03000830
	strb r7, [r0]
	ldr r0, _08032A34  @ =0x80040000
	bl sub_0800D24C
	bl sub_0800BED8
	bl sub_080123BC
	bl sub_0801239C
	bl sub_0802BF60
	bl sub_0802C278
	ldr r0, _08032A38  @ =gUnknown_0202A4F8
	str r7, [r0]
	bl sub_0800D6F4
	bl sub_0804CCBC
	mov r0, sp
	mov r6, #0
	strh r7, [r0]
	ldr r1, _08032A3C  @ =gUnknown_02016D60
	ldr r2, _08032A40  @ =0x01000014
	bl CpuSet
	mov r0, sp
	add r0, r0, #2
	strh r7, [r0]
	ldr r1, _08032A44  @ =gUnknown_03006A30
	ldr r2, _08032A48  @ =0x01000120
	bl CpuSet
	mov r0, #23
	bl sub_0800B890
	mov r0, #2
	bl sub_0800BA44
	ldr r2, _08032A4C  @ =gUnknown_030004A0
	ldr r0, _08032A50  @ =0x00009E4A
	strh r0, [r2, #32]
	ldr r0, _08032A54  @ =0x00009C43
	strh r0, [r2, #44]
	add r1, r2, #0
	add r1, r1, #102
	ldr r0, _08032A58  @ =0x00003C66
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08032A5C  @ =0x00000808
	strh r0, [r1]
	ldr r0, _08032A60  @ =gUnknown_03000450
	strh r7, [r0, #34]
	strh r7, [r0, #32]
	strh r7, [r2, #48]
	strh r7, [r2, #46]
	strh r7, [r2, #36]
	strh r7, [r2, #34]
	mov r0, #90
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r2, r0, #0
	mov r0, #120
	strh r0, [r2, #50]
	mov r0, #224
	strh r0, [r2, #54]
	mov r0, #90
	mov r1, #3
	mov r2, #0
	bl sub_0804C8A8
	ldr r4, _08032A64  @ =gUnknown_0202A7E0
	str r0, [r4, #32]
	mov r0, #90
	mov r1, #3
	mov r2, #1
	bl sub_0804C8A8
	str r0, [r4, #52]
	mov r0, #90
	mov r1, #3
	mov r2, #2
	bl sub_0804C8A8
	str r0, [r4, #72]
	mov r0, #0
	bl sub_08063C5C
	add r2, r0, #0
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	mov r0, #104
	strh r0, [r2, #50]
	mov r5, #128
	lsl r5, r5, #1
	strh r5, [r2, #54]
	add r0, r2, #0
	add r0, r0, #42
	strb r6, [r0]
	ldrb r1, [r2, #31]
	mov r0, #63
	and r0, r0, r1
	mov r1, #128
	orr r0, r0, r1
	strb r0, [r2, #31]
	add r1, r2, #0
	add r1, r1, #46
	mov r0, #3
	strb r0, [r1]
	add r2, r2, #94
	ldrb r1, [r2]
	sub r0, r0, #16
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, #93
	mov r1, #0
	mov r2, #0
	bl sub_0804CCE4
	ldr r2, [r4, #12]
	mov r0, #136
	strh r0, [r2, #50]
	strh r5, [r2, #54]
	ldr r0, _08032A68  @ =gUnknown_0200B310
	str r7, [r0]
	ldr r1, _08032A6C  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #4
	bl sub_08036704
_08032A24:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_08032A2C:
	.4byte gUnknown_03000520
_08032A30:
	.4byte gUnknown_03000830
_08032A34:
	.4byte 0x80040000
_08032A38:
	.4byte gUnknown_0202A4F8
_08032A3C:
	.4byte gUnknown_02016D60
_08032A40:
	.4byte 0x01000014
_08032A44:
	.4byte gUnknown_03006A30
_08032A48:
	.4byte 0x01000120
_08032A4C:
	.4byte gUnknown_030004A0
_08032A50:
	.4byte 0x00009E4A
_08032A54:
	.4byte 0x00009C43
_08032A58:
	.4byte 0x00003C66
_08032A5C:
	.4byte 0x00000808
_08032A60:
	.4byte gUnknown_03000450
_08032A64:
	.4byte gUnknown_0202A7E0
_08032A68:
	.4byte gUnknown_0200B310
_08032A6C:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_080328F8

	THUMB_FUNC_START sub_08032A70
sub_08032A70: @ 0x08032A70
	push {lr}
	bl sub_080367CC
	cmp r0, #1
	bne _08032AA6
	ldr r1, _08032AAC  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #5
	bl sub_08036704
	ldr r1, _08032AB0  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	mov r0, #0
	mov r1, #4
	bl sub_0800C0B0
	ldr r2, _08032AB4  @ =gUnknown_030004A0
	ldrh r1, [r2]
	mov r3, #224
	lsl r3, r3, #5
	add r0, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
_08032AA6:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08032AAC:
	.4byte gUnknown_03000BFC
_08032AB0:
	.4byte gUnknown_03000520
_08032AB4:
	.4byte gUnknown_030004A0
	THUMB_FUNC_END sub_08032A70

	THUMB_FUNC_START sub_08032AB8
sub_08032AB8: @ 0x08032AB8
	push {lr}
	bl sub_08037554
	cmp r0, #0
	beq _08032B02
	bl sub_08037750
	ldr r1, _08032B08  @ =gUnknown_08427A38
	ldr r0, _08032B0C  @ =gUnknown_02016D60
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl 0x08137AFC
	bl 0x08000BAC
	bl sub_0802BFC4
	mov r0, #8
	bl sub_0803781C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08032AFE
	ldr r1, _08032B10  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _08032B14  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
_08032AFE:
	bl sub_08037574
_08032B02:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08032B08:
	.4byte gUnknown_08427A38
_08032B0C:
	.4byte gUnknown_02016D60
_08032B10:
	.4byte gUnknown_03000BFC
_08032B14:
	.4byte gUnknown_03000520
	THUMB_FUNC_END sub_08032AB8

	THUMB_FUNC_START sub_08032B18
sub_08032B18: @ 0x08032B18
	push {r4,lr}
	ldr r0, _08032B50  @ =gUnknown_03000520
	ldrb r3, [r0]
	cmp r3, #0
	bne _08032B72
	ldr r0, _08032B54  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08032B72
	ldr r0, _08032B58  @ =gUnknown_0202A7E0
	ldr r0, [r0, #12]
	add r0, r0, #42
	strb r3, [r0]
	ldr r1, _08032B5C  @ =gUnknown_03000450
	ldrh r2, [r1, #34]
	mov r4, #34
	ldrsh r0, [r1, r4]
	cmp r0, #122
	bgt _08032B64
	add r0, r2, #1
	strh r0, [r1, #34]
	ldr r1, _08032B60  @ =gUnknown_030004A0
	strh r0, [r1, #48]
	strh r0, [r1, #36]
	b _08032B72
	.byte 0x00
	.byte 0x00
_08032B50:
	.4byte gUnknown_03000520
_08032B54:
	.4byte gUnknown_03000948
_08032B58:
	.4byte gUnknown_0202A7E0
_08032B5C:
	.4byte gUnknown_03000450
_08032B60:
	.4byte gUnknown_030004A0
_08032B64:
	ldr r0, _08032B78  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	strb r3, [r0, #1]
	mov r1, #90
	strh r1, [r0, #4]
_08032B72:
	pop {r4}
	pop {r0}
	bx r0
_08032B78:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08032B18

	THUMB_FUNC_START sub_08032B7C
sub_08032B7C: @ 0x08032B7C
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r0, _08032B98  @ =gUnknown_02016D60
	ldrb r1, [r0, #1]
	add r6, r0, #0
	cmp r1, #8
	bls _08032B8C
	b _08032D6A
_08032B8C:
	lsl r0, r1, #2
	ldr r1, _08032B9C  @ =0x08032BA0
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_08032B98:
	.4byte gUnknown_02016D60
_08032B9C:
	.4byte 0x08032BA0
	.4byte _08032BC4
	.4byte _08032BEC
	.4byte _08032C14
	.4byte _08032C4C
	.4byte _08032C80
	.4byte _08032C9C
	.4byte _08032CD8
	.4byte _08032D04
	.4byte _08032D1E
_08032BC4:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _08032BD2
	b _08032D6A
_08032BD2:
	ldrb r0, [r6, #1]
	add r0, r0, #1
	strb r0, [r6, #1]
	mov r0, #12
	strh r0, [r6, #4]
	ldr r0, _08032BE8  @ =gUnknown_0202A7E0
	ldr r0, [r0, #12]
	add r0, r0, #42
	mov r1, #6
	strb r1, [r0]
	b _08032D6A
_08032BE8:
	.4byte gUnknown_0202A7E0
_08032BEC:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _08032BFA
	b _08032D6A
_08032BFA:
	ldrb r0, [r6, #1]
	add r0, r0, #1
	strb r0, [r6, #1]
	mov r0, #120
	strh r0, [r6, #4]
	ldr r0, _08032C10  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r0, r0, #42
	mov r1, #2
	strb r1, [r0]
	b _08032D6A
_08032C10:
	.4byte gUnknown_03006A30
_08032C14:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _08032C22
	b _08032D6A
_08032C22:
	ldrb r0, [r6, #1]
	add r0, r0, #1
	strb r0, [r6, #1]
	mov r0, #30
	strh r0, [r6, #4]
	ldr r2, _08032C48  @ =gUnknown_0202A7E0
	mov r0, #2
	strb r0, [r2, #4]
	mov r3, #128
	strb r3, [r2, #5]
	mov r0, #16
	strb r0, [r2, #6]
	ldr r0, [r2, #12]
	add r0, r0, #42
	mov r1, #4
	strb r1, [r0]
	ldr r0, [r2, #12]
	str r3, [r0, #12]
	b _08032D6A
_08032C48:
	.4byte gUnknown_0202A7E0
_08032C4C:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	beq _08032C5A
	b _08032D6A
_08032C5A:
	ldrb r0, [r6, #1]
	add r0, r0, #1
	strb r0, [r6, #1]
	mov r0, #180
	strh r0, [r6, #4]
	ldr r0, _08032C7C  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r0, r0, #42
	mov r1, #4
	strb r1, [r0]
	mov r0, #0
	mov r1, #64
	mov r2, #0
	bl sub_08063D28
	b _08032D6A
	.byte 0x00
	.byte 0x00
_08032C7C:
	.4byte gUnknown_03006A30
_08032C80:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08032D6A
	ldrb r0, [r6, #1]
	add r0, r0, #1
	strb r0, [r6, #1]
	mov r0, #40
	strh r0, [r6, #4]
	bl sub_08032D88
	b _08032D6A
_08032C9C:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08032D6A
	ldrb r0, [r6, #1]
	add r0, r0, #1
	strb r0, [r6, #1]
	mov r0, #40
	strh r0, [r6, #4]
	ldr r1, _08032CCC  @ =gUnknown_03000520
	ldr r0, _08032CD0  @ =0xFFEFFFFF
	str r0, [r1, #12]
	mov r0, #1
	mov r1, #2
	bl sub_0800C0B0
	ldr r2, _08032CD4  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #16
	orr r0, r0, r1
	str r0, [r2]
	b _08032D6A
_08032CCC:
	.4byte gUnknown_03000520
_08032CD0:
	.4byte 0xFFEFFFFF
_08032CD4:
	.4byte gUnknown_0201F000
_08032CD8:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08032D6A
	ldrb r0, [r6, #1]
	add r0, r0, #1
	strb r0, [r6, #1]
	mov r0, #120
	strh r0, [r6, #4]
	mov r0, #90
	mov r1, #5
	mov r2, #0
	bl sub_0804C8A8
	ldr r0, _08032D00  @ =0x800B01A0
	bl sub_0800D24C
	b _08032D6A
_08032D00:
	.4byte 0x800B01A0
_08032D04:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	strh r0, [r6, #4]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08032D6A
	ldrb r0, [r6, #1]
	add r0, r0, #1
	strb r0, [r6, #1]
	mov r0, #150
	lsl r0, r0, #1
	strh r0, [r6, #4]
	b _08032D6A
_08032D1E:
	ldrh r0, [r6, #4]
	sub r0, r0, #1
	mov r7, #0
	strh r0, [r6, #4]
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _08032D6A
	str r5, [sp]
	ldr r4, _08032D74  @ =gUnknown_020163D0
	ldr r2, _08032D78  @ =0x010000A0
	mov r0, sp
	add r1, r4, #0
	bl CpuFastSet
	str r5, [sp, #4]
	add r0, sp, #4
	mov r1, #168
	lsl r1, r1, #2
	add r4, r4, r1
	ldr r2, _08032D7C  @ =0x01000058
	add r1, r4, #0
	bl CpuFastSet
	ldr r1, _08032D80  @ =gUnknown_03000520
	mov r0, #1
	neg r0, r0
	str r0, [r1, #12]
	mov r0, #1
	mov r1, #2
	bl sub_0800C0B0
	ldr r1, _08032D84  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r7, [r6, #1]
	strb r7, [r6]
_08032D6A:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08032D74:
	.4byte gUnknown_020163D0
_08032D78:
	.4byte 0x010000A0
_08032D7C:
	.4byte 0x01000058
_08032D80:
	.4byte gUnknown_03000520
_08032D84:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_08032B7C

	THUMB_FUNC_START sub_08032D88
sub_08032D88: @ 0x08032D88
	push {r4-r6,lr}
	ldr r5, _08032DC8  @ =gUnknown_0202A7E0
	ldr r0, [r5, #32]
	ldr r4, _08032DCC  @ =gUnknown_08427A40
	add r1, r4, #0
	mov r2, #120
	bl sub_0803D7E8
	ldr r0, [r5, #32]
	mov r6, #1
	strb r6, [r0, #20]
	ldr r0, [r5, #52]
	add r1, r4, #4
	mov r2, #120
	bl sub_0803D7E8
	ldr r0, [r5, #52]
	strb r6, [r0, #20]
	ldr r0, [r5, #72]
	add r4, r4, #8
	add r1, r4, #0
	mov r2, #120
	bl sub_0803D7E8
	ldr r0, [r5, #72]
	strb r6, [r0, #20]
	ldr r0, _08032DD0  @ =0x00000201
	bl sub_0800D24C
	pop {r4-r6}
	pop {r0}
	bx r0
_08032DC8:
	.4byte gUnknown_0202A7E0
_08032DCC:
	.4byte gUnknown_08427A40
_08032DD0:
	.4byte 0x00000201
	THUMB_FUNC_END sub_08032D88

	THUMB_FUNC_START sub_08032DD4
sub_08032DD4: @ 0x08032DD4
	push {r4,lr}
	ldr r0, _08032E00  @ =gUnknown_03000520
	ldrb r4, [r0]
	cmp r4, #0
	bne _08032DFA
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	strh r4, [r0]
	ldr r0, _08032E04  @ =gUnknown_020163D0
	strh r4, [r0]
	bl sub_0801239C
	bl sub_080123BC
	mov r0, #7
	bl sub_0800B5EC
_08032DFA:
	pop {r4}
	pop {r0}
	bx r0
_08032E00:
	.4byte gUnknown_03000520
_08032E04:
	.4byte gUnknown_020163D0
	THUMB_FUNC_END sub_08032DD4

	THUMB_FUNC_START sub_08032E08
sub_08032E08: @ 0x08032E08
	push {lr}
	ldr r1, _08032E20  @ =gUnknown_08427A4C
	ldr r0, _08032E24  @ =gUnknown_03005050
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08032E20:
	.4byte gUnknown_08427A4C
_08032E24:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_08032E08

	THUMB_FUNC_START sub_08032E28
sub_08032E28: @ 0x08032E28
	push {r4,r5,lr}
	ldr r0, _08032EBC  @ =gUnknown_03000520
	ldrb r5, [r0]
	cmp r5, #0
	bne _08032EB4
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	mov r4, #0
	strh r5, [r0]
	ldr r0, _08032EC0  @ =gUnknown_020163D0
	strh r5, [r0]
	bl sub_080123BC
	bl sub_0801239C
	bl sub_0803A320
	bl sub_080152E0
	bl sub_0802BF60
	bl sub_0802C278
	bl sub_080137DC
	bl sub_0800BEC4
	bl sub_0800D6F4
	bl sub_0800D744
	ldr r0, _08032EC4  @ =0x03000040
	mov r1, #224
	lsl r1, r1, #1
	bl sub_0800B850
	bl sub_0803E518
	ldr r1, _08032EC8  @ =gUnknown_03006A30
	mov r2, #230
	lsl r2, r2, #1
	add r0, r1, r2
	strb r4, [r0]
	mov r3, #158
	lsl r3, r3, #1
	add r0, r1, r3
	strb r4, [r0]
	add r0, r1, #0
	add r0, r0, #172
	strb r4, [r0]
	strb r4, [r1, #28]
	ldr r0, _08032ECC  @ =gUnknown_03000F44
	str r5, [r0]
	ldr r0, _08032ED0  @ =gUnknown_03000208
	strh r5, [r0]
	ldr r0, _08032ED4  @ =gUnknown_03000E20
	strb r4, [r0, #18]
	ldr r2, _08032ED8  @ =gUnknown_030004A0
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #5
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _08032EDC  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_08032EB4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08032EBC:
	.4byte gUnknown_03000520
_08032EC0:
	.4byte gUnknown_020163D0
_08032EC4:
	.4byte 0x03000040
_08032EC8:
	.4byte gUnknown_03006A30
_08032ECC:
	.4byte gUnknown_03000F44
_08032ED0:
	.4byte gUnknown_03000208
_08032ED4:
	.4byte gUnknown_03000E20
_08032ED8:
	.4byte gUnknown_030004A0
_08032EDC:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_08032E28

	THUMB_FUNC_START sub_08032EE0
sub_08032EE0: @ 0x08032EE0
	push {r4,lr}
	ldr r4, _08032EF0  @ =gUnknown_03000BFC
	ldrb r0, [r4]
	cmp r0, #0
	beq _08032EF4
	cmp r0, #1
	beq _08032F02
	b _08032F36
_08032EF0:
	.4byte gUnknown_03000BFC
_08032EF4:
	mov r0, #4
	bl sub_08036704
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _08032F36
_08032F02:
	bl sub_080367CC
	cmp r0, #1
	bne _08032F36
	ldr r1, _08032F3C  @ =gUnknown_03000490
	ldr r0, _08032F40  @ =gUnknown_03000F40
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08032F44  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	strb r0, [r4]
	bl sub_0801239C
	bl sub_080123BC
	ldr r2, _08032F48  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _08032F4C  @ =0x0000EFFF
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #5
	bl sub_08036704
_08032F36:
	pop {r4}
	pop {r0}
	bx r0
_08032F3C:
	.4byte gUnknown_03000490
_08032F40:
	.4byte gUnknown_03000F40
_08032F44:
	.4byte gUnknown_03005050
_08032F48:
	.4byte gUnknown_030004A0
_08032F4C:
	.4byte 0x0000EFFF
	THUMB_FUNC_END sub_08032EE0

	THUMB_FUNC_START sub_08032F50
sub_08032F50: @ 0x08032F50
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r1, _08033020  @ =gUnknown_03006C80
	mov r5, #0
	mov r0, #2
	strb r0, [r1, #7]
	strb r0, [r1, #1]
	mov r6, #1
	strb r6, [r1, #5]
	ldr r1, _08033024  @ =gUnknown_03000F40
	ldr r0, _08033028  @ =gUnknown_03000490
	ldr r0, [r0]
	str r0, [r1]
	bl sub_080144A0
	bl sub_08012F20
	bl sub_08013804
	bl sub_0802C800
	bl sub_0803A544
	str r5, [sp]
	ldr r1, _0803302C  @ =gUnknown_0202D110
	ldr r2, _08033030  @ =0x01000400
	mov r0, sp
	bl CpuFastSet
	mov r0, #2
	bl sub_0800B890
	ldr r0, _08033034  @ =gUnknown_0202A8C0
	ldrb r0, [r0]
	mov r1, #41
	cmp r0, #0
	bne _08032F9C
	mov r1, #8
_08032F9C:
	add r0, r1, #0
	bl sub_0800B890
	mov r0, #9
	bl sub_0800BA44
	bl sub_0803364C
	ldr r1, _08033038  @ =gUnknown_03000510
	ldr r0, _0803303C  @ =gUnknown_03000BD0
	mov r4, #0
	strh r5, [r0]
	strh r5, [r1]
	ldr r0, _08033040  @ =gUnknown_03000940
	strh r5, [r0, #6]
	strh r5, [r0, #4]
	strh r5, [r0, #2]
	strh r5, [r0]
	ldr r0, _08033044  @ =gUnknown_03005E10
	strh r5, [r0, #6]
	strh r5, [r0, #4]
	strh r5, [r0, #2]
	strh r5, [r0]
	ldr r1, _08033048  @ =gUnknown_03000E20
	mov r0, #30
	strh r0, [r1, #2]
	strh r5, [r1]
	ldr r0, _0803304C  @ =gUnknown_03000830
	strb r4, [r0]
	ldr r0, _08033050  @ =gUnknown_03000C00
	strb r6, [r0]
	ldr r0, _08033054  @ =gUnknown_03006D14
	strh r6, [r0]
	ldr r0, _08033058  @ =gUnknown_02016D60
	strb r4, [r0, #2]
	mov r0, #0
	mov r1, #0
	bl sub_0800B980
	ldr r2, _0803305C  @ =gUnknown_030004A0
	ldrh r0, [r2]
	mov r3, #186
	lsl r3, r3, #5
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _08033060  @ =0x00001F04
	strh r0, [r2, #8]
	add r2, r2, #104
	mov r0, #16
	strh r0, [r2]
	ldr r1, _08033064  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08033068  @ =gUnknown_03000BFC
	strb r4, [r0]
	mov r0, #0
	mov r1, #8
	bl sub_0800C0B0
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033020:
	.4byte gUnknown_03006C80
_08033024:
	.4byte gUnknown_03000F40
_08033028:
	.4byte gUnknown_03000490
_0803302C:
	.4byte gUnknown_0202D110
_08033030:
	.4byte 0x01000400
_08033034:
	.4byte gUnknown_0202A8C0
_08033038:
	.4byte gUnknown_03000510
_0803303C:
	.4byte gUnknown_03000BD0
_08033040:
	.4byte gUnknown_03000940
_08033044:
	.4byte gUnknown_03005E10
_08033048:
	.4byte gUnknown_03000E20
_0803304C:
	.4byte gUnknown_03000830
_08033050:
	.4byte gUnknown_03000C00
_08033054:
	.4byte gUnknown_03006D14
_08033058:
	.4byte gUnknown_02016D60
_0803305C:
	.4byte gUnknown_030004A0
_08033060:
	.4byte 0x00001F04
_08033064:
	.4byte gUnknown_03005050
_08033068:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_08032F50

	THUMB_FUNC_START sub_0803306C
sub_0803306C: @ 0x0803306C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	bl sub_08037554
	cmp r0, #0
	beq _08033138
	mov r2, #0
	ldr r0, _08033148  @ =gUnknown_03000510
	mov r9, r0
	ldr r0, _0803314C  @ =gUnknown_03000BD0
	mov r12, r0
	ldr r0, _08033150  @ =gUnknown_03000494
	mov r8, r0
	ldr r0, _08033154  @ =gUnknown_03000414
	mov r10, r0
	ldr r7, _08033158  @ =gUnknown_03000E20
	ldr r5, _0803315C  @ =gUnknown_03000940
	ldr r4, _08033160  @ =gUnknown_03005E10
	mov r3, #0
_08033098:
	lsl r0, r2, #1
	add r1, r0, r5
	add r0, r0, r4
	strh r3, [r0]
	strh r3, [r1]
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #3
	bls _08033098
	mov r6, #0
	mov r2, r12
	strh r6, [r2]
	mov r0, r9
	strh r6, [r0]
	mov r2, r8
	ldr r1, [r2]
	mov r0, #15
	and r1, r1, r0
	lsl r1, r1, #1
	mov r2, r10
	ldrb r0, [r2]
	lsl r0, r0, #5
	add r1, r1, r0
	ldr r0, _08033164  @ =gUnknown_0200B1D0
	add r1, r1, r0
	mov r0, #0
	strh r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldrh r0, [r7, #2]
	sub r0, r0, #1
	strh r0, [r7, #2]
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _08033118
	ldr r4, _08033168  @ =gUnknown_03006C80
	ldr r3, _0803316C  @ =gUnknown_03000C00
	ldr r2, _08033170  @ =gUnknown_03006D14
	ldr r1, _08033174  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r0, r0, #36
	strb r6, [r0]
	strb r6, [r1, #16]
	strh r5, [r2]
	strb r6, [r3]
	str r5, [r4, #28]
	strh r5, [r7]
	bl sub_0800D6F4
	bl sub_0800D744
	ldr r0, _08033178  @ =gUnknown_02016D60
	mov r1, #40
	bl sub_0800B850
	ldr r1, _0803317C  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08033180  @ =gUnknown_03000BFC
	strb r6, [r0]
_08033118:
	ldr r0, _08033184  @ =gUnknown_03006C70
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_08015D9C
	bl sub_08015C64
	bl 0x08008ED8
	bl 0x08000BAC
	bl sub_0802BFC4
	bl sub_08037574
_08033138:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033148:
	.4byte gUnknown_03000510
_0803314C:
	.4byte gUnknown_03000BD0
_08033150:
	.4byte gUnknown_03000494
_08033154:
	.4byte gUnknown_03000414
_08033158:
	.4byte gUnknown_03000E20
_0803315C:
	.4byte gUnknown_03000940
_08033160:
	.4byte gUnknown_03005E10
_08033164:
	.4byte gUnknown_0200B1D0
_08033168:
	.4byte gUnknown_03006C80
_0803316C:
	.4byte gUnknown_03000C00
_08033170:
	.4byte gUnknown_03006D14
_08033174:
	.4byte gUnknown_03000FC0
_08033178:
	.4byte gUnknown_02016D60
_0803317C:
	.4byte gUnknown_03005050
_08033180:
	.4byte gUnknown_03000BFC
_08033184:
	.4byte gUnknown_03006C70
	THUMB_FUNC_END sub_0803306C

	THUMB_FUNC_START sub_08033188
sub_08033188: @ 0x08033188
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	bl sub_08037554
	add r1, r0, #0
	cmp r1, #0
	bne _0803319E
	b _08033346
_0803319E:
	bl sub_08037750
	mov r5, #0
	mov r3, #0
	ldr r0, _08033274  @ =gUnknown_03006C80
	ldrb r1, [r0]
	cmp r5, r1
	bcs _080331F6
	ldr r7, _08033278  @ =gUnknown_03006A58
	mov r9, r7
	mov r4, #0
	ldr r1, _0803327C  @ =gUnknown_02016D60
	mov r8, r1
	ldr r7, _08033280  @ =gUnknown_03000940
	mov r12, r7
	mov r10, r0
	ldr r6, _08033284  @ =gUnknown_03005E10
_080331C0:
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #4
	add r0, r0, r9
	ldr r0, [r0]
	add r0, r0, #69
	mov r1, #40
	strb r1, [r0]
	lsl r1, r3, #1
	add r2, r1, r6
	ldrh r0, [r2]
	orr r5, r5, r0
	mov r7, r8
	ldrb r0, [r7, #1]
	cmp r0, #1
	bls _080331E8
	mov r7, r12
	add r0, r1, r7
	strh r4, [r2]
	strh r4, [r0]
_080331E8:
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	mov r0, r10
	ldrb r0, [r0]
	cmp r3, r0
	bcc _080331C0
_080331F6:
	ldr r1, _08033288  @ =gUnknown_03000E20
	ldrh r0, [r1]
	add r0, r0, #1
	mov r7, #0
	strh r0, [r1]
	ldr r0, _0803328C  @ =gUnknown_03006C70
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_08015D9C
	bl 0x08008ED8
	bl sub_0803F284
	bl sub_08000434
	bl 0x08000BAC
	bl sub_0802BFC4
	ldr r0, _08033290  @ =gUnknown_03000420
	strb r7, [r0, #2]
	add r0, r5, #0
	bl sub_08033398
	ldr r5, _0803327C  @ =gUnknown_02016D60
	ldrb r0, [r5, #1]
	cmp r0, #2
	bls _080332F8
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080332C0
	ldr r2, _08033294  @ =gUnknown_030004A0
	add r6, r2, #0
	add r6, r6, #102
	ldr r0, _08033298  @ =0x00003E50
	strh r0, [r6]
	ldr r0, _0803329C  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080332F8
	add r4, r2, #0
	add r4, r4, #104
	ldrh r3, [r4]
	mov r0, #128
	lsl r0, r0, #5
	cmp r3, r0
	beq _080332A0
	mov r1, #255
	and r1, r1, r3
	sub r1, r1, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r0, #16
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r4]
	b _080332F8
	.byte 0x00
	.byte 0x00
_08033274:
	.4byte gUnknown_03006C80
_08033278:
	.4byte gUnknown_03006A58
_0803327C:
	.4byte gUnknown_02016D60
_08033280:
	.4byte gUnknown_03000940
_08033284:
	.4byte gUnknown_03005E10
_08033288:
	.4byte gUnknown_03000E20
_0803328C:
	.4byte gUnknown_03006C70
_08033290:
	.4byte gUnknown_03000420
_08033294:
	.4byte gUnknown_030004A0
_08033298:
	.4byte 0x00003E50
_0803329C:
	.4byte gUnknown_03000948
_080332A0:
	ldrh r1, [r2]
	ldr r0, _080332B8  @ =0x0000EFFF
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #16
	strh r0, [r4]
	ldr r0, _080332BC  @ =0x00003E56
	strh r0, [r6]
	mov r0, #1
	strb r0, [r5, #2]
	b _080332F8
	.byte 0x00
	.byte 0x00
_080332B8:
	.4byte 0x0000EFFF
_080332BC:
	.4byte 0x00003E56
_080332C0:
	ldr r2, _08033324  @ =gUnknown_030004A0
	ldrh r1, [r2]
	ldr r0, _08033328  @ =0x0000EFFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r0, _0803332C  @ =gUnknown_03000948
	ldrh r1, [r0]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080332F8
	add r3, r2, #0
	add r3, r3, #104
	ldrh r2, [r3]
	mov r0, #128
	lsl r0, r0, #5
	cmp r2, r0
	beq _080332F8
	mov r1, #255
	and r1, r1, r2
	sub r1, r1, #1
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r0, #16
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r0, r0, r1
	strh r0, [r3]
_080332F8:
	ldr r0, _08033330  @ =gUnknown_02016D60
	ldrb r0, [r0]
	cmp r0, #3
	bne _08033340
	ldr r1, _08033334  @ =gUnknown_03006C80
	ldr r0, [r1, #28]
	add r0, r0, #1
	str r0, [r1, #28]
	cmp r0, #60
	bls _08033340
	ldr r1, _08033338  @ =gUnknown_03005050
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _0803333C  @ =gUnknown_03000BFC
	mov r0, #0
	strb r0, [r1]
	mov r0, #1
	mov r1, #2
	bl sub_0800C0B0
	b _08033350
_08033324:
	.4byte gUnknown_030004A0
_08033328:
	.4byte 0x0000EFFF
_0803332C:
	.4byte gUnknown_03000948
_08033330:
	.4byte gUnknown_02016D60
_08033334:
	.4byte gUnknown_03006C80
_08033338:
	.4byte gUnknown_03005050
_0803333C:
	.4byte gUnknown_03000BFC
_08033340:
	bl sub_08037574
	b _08033350
_08033346:
	ldr r0, _08033360  @ =gUnknown_03005E10
	strh r1, [r0, #6]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	strh r1, [r0]
_08033350:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033360:
	.4byte gUnknown_03005E10
	THUMB_FUNC_END sub_08033188

	THUMB_FUNC_START sub_08033364
sub_08033364: @ 0x08033364
	push {r4,lr}
	ldr r0, _08033390  @ =gUnknown_03000520
	ldrb r4, [r0]
	cmp r4, #0
	bne _08033388
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	strh r4, [r0]
	ldr r0, _08033394  @ =gUnknown_020163D0
	strh r4, [r0]
	bl sub_0801239C
	bl sub_080123BC
	bl sub_08031FC0
_08033388:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033390:
	.4byte gUnknown_03000520
_08033394:
	.4byte gUnknown_020163D0
	THUMB_FUNC_END sub_08033364

	THUMB_FUNC_START sub_08033398
sub_08033398: @ 0x08033398
	push {lr}
	mov r1, #8
	and r1, r1, r0
	ldr r2, _080333C8  @ =gUnknown_02016D60
	cmp r1, #0
	beq _080333B6
	mov r1, #6
	ldrsh r0, [r2, r1]
	mov r1, #128
	cmp r0, #128
	bne _080333B4
	mov r0, #128
	lsl r0, r0, #3
	add r1, r0, #0
_080333B4:
	strh r1, [r2, #6]
_080333B6:
	ldr r0, _080333CC  @ =gUnknown_08427A7C
	ldrb r1, [r2]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	pop {r0}
	bx r0
_080333C8:
	.4byte gUnknown_02016D60
_080333CC:
	.4byte gUnknown_08427A7C
	THUMB_FUNC_END sub_08033398

	THUMB_FUNC_START sub_080333D0
sub_080333D0: @ 0x080333D0
	push {r4-r7,lr}
	sub sp, sp, #4
	bl sub_0800EEA8
	ldr r7, _080333E8  @ =gUnknown_02016D60
	str r0, [r7, #8]
	cmp r0, #0
	bne _080333EC
	mov r0, #3
	strb r0, [r7]
	b _08033446
	.byte 0x00
	.byte 0x00
_080333E8:
	.4byte gUnknown_02016D60
_080333EC:
	mov r5, #0
	str r5, [sp]
	ldr r4, _08033450  @ =gUnknown_0202DA10
	ldr r2, _08033454  @ =0x01000040
	mov r0, sp
	add r1, r4, #0
	bl CpuFastSet
	str r4, [r7, #12]
	add r4, r4, #128
	str r4, [r7, #16]
	str r5, [r7, #20]
	mov r6, #1
	str r6, [r7, #24]
	str r5, [r7, #28]
	ldr r0, _08033458  @ =gUnknown_08427A64
	ldr r2, _0803345C  @ =0x04000006
	add r1, r4, #0
	bl CpuSet
	ldr r0, [r7, #12]
	mov r1, #129
	lsl r1, r1, #3
	bl sub_0800ED7C
	ldr r1, [r7, #8]
	ldr r0, [r7, #16]
	ldrb r0, [r0, #23]
	strb r0, [r1, #2]
	ldr r1, [r7, #8]
	ldr r0, [r7, #16]
	ldr r0, [r0, #8]
	str r0, [r1, #8]
	ldr r1, [r7, #8]
	ldr r0, [r7, #16]
	ldrb r0, [r0, #22]
	strb r0, [r1, #4]
	ldr r1, _08033460  @ =gUnknown_030004A0
	strh r5, [r1, #10]
	mov r0, #64
	strh r0, [r1, #12]
	strb r6, [r7]
	strh r5, [r7, #4]
	mov r0, #128
	strh r0, [r7, #6]
_08033446:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033450:
	.4byte gUnknown_0202DA10
_08033454:
	.4byte 0x01000040
_08033458:
	.4byte gUnknown_08427A64
_0803345C:
	.4byte 0x04000006
_08033460:
	.4byte gUnknown_030004A0
	THUMB_FUNC_END sub_080333D0

	THUMB_FUNC_START sub_08033464
sub_08033464: @ 0x08033464
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r1, _080334A4  @ =gUnknown_02016D60
	ldrh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r0, r2
	strh r0, [r1, #4]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #255
	bgt _08033480
	b _080335E0
_08033480:
	add r6, r1, #0
	ldr r3, _080334A8  @ =gUnknown_030004A0
	mov r8, r3
_08033486:
	ldr r4, _080334AC  @ =0xFFFFFF00
	add r0, r4, #0
	ldrh r1, [r6, #4]
	add r0, r0, r1
	strh r0, [r6, #4]
	mov r2, r8
	ldrh r0, [r2, #12]
	mov r1, #7
	and r1, r1, r0
	cmp r1, #0
	beq _080334B0
	cmp r1, #4
	bne _080334A2
	b _08033598
_080334A2:
	b _080335CE
_080334A4:
	.4byte gUnknown_02016D60
_080334A8:
	.4byte gUnknown_030004A0
_080334AC:
	.4byte 0xFFFFFF00
_080334B0:
	str r1, [sp]
	mov r3, r8
	ldrh r1, [r3, #12]
	add r1, r1, #208
	mov r0, #248
	and r1, r1, r0
	lsl r1, r1, #3
	ldr r0, _08033500  @ =gUnknown_0202D110
	add r1, r1, r0
	mov r0, sp
	ldr r2, _08033504  @ =0x01000020
	bl CpuFastSet
	ldr r0, [r6, #24]
	sub r0, r0, #1
	str r0, [r6, #24]
	cmp r0, #0
	bne _08033574
	ldr r0, [r6, #20]
	cmp r0, #0
	bne _08033566
	ldr r4, _08033508  @ =gUnknown_02016D60
	mov r7, #1
_080334DE:
	ldr r0, [r4, #16]
	ldr r1, [r4, #12]
	ldr r2, [r4, #8]
	bl sub_0800F68C
	add r5, r0, #0
	lsl r0, r5, #16
	lsr r0, r0, #16
	cmp r0, #2
	beq _0803350C
	cmp r0, #7
	beq _0803352A
	cmp r5, #10
	bne _08033548
	str r7, [r4, #24]
	b _0803354C
	.byte 0x00
	.byte 0x00
_08033500:
	.4byte gUnknown_0202D110
_08033504:
	.4byte 0x01000020
_08033508:
	.4byte gUnknown_02016D60
_0803350C:
	ldr r1, [r4, #28]
	cmp r1, #0
	bne _08033514
	strb r7, [r4, #1]
_08033514:
	cmp r1, #4
	bne _0803351A
	strb r0, [r4, #1]
_0803351A:
	bl sub_0803361C
	ldr r1, [r4, #16]
	ldr r0, [r1]
	add r0, r0, #64
	str r0, [r1]
	str r7, [r4, #24]
	b _0803354C
_0803352A:
	ldr r2, [r4, #16]
	ldrh r1, [r2, #16]
	ldr r3, _08033544  @ =0x00000FFF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, [r4, #12]
	ldrb r0, [r0, #4]
	sub r0, r0, #1
	lsl r0, r0, #12
	orr r1, r1, r0
	strh r1, [r2, #16]
	b _0803354C
	.byte 0x00
	.byte 0x00
_08033544:
	.4byte 0x00000FFF
_08033548:
	mov r0, #2
	str r0, [r4, #24]
_0803354C:
	ldr r0, [r4, #24]
	cmp r0, #0
	beq _080334DE
	lsl r0, r5, #16
	cmp r0, #0
	bne _08033574
	mov r0, #3
	strb r0, [r6, #1]
	mov r0, #8
	str r0, [r6, #24]
	mov r0, #1
	str r0, [r6, #20]
	b _08033574
_08033566:
	ldr r0, [r6, #8]
	bl sub_0800EEE0
	mov r0, #2
	strb r0, [r6]
	mov r0, #180
	strh r0, [r6, #4]
_08033574:
	ldr r2, [r6, #16]
	ldr r0, [r2]
	ldr r1, _08033590  @ =gUnknown_0202D910
	cmp r0, r1
	bcc _080335CE
	ldr r4, _08033594  @ =0xFFFFF800
	add r0, r0, r4
	str r0, [r2]
	add r0, r1, #0
	add r1, r1, r4
	mov r2, #64
	bl CpuFastSet
	b _080335CE
_08033590:
	.4byte gUnknown_0202D910
_08033594:
	.4byte 0xFFFFF800
_08033598:
	ldr r3, [r6, #16]
	ldr r4, _080335EC  @ =gUnknown_08427A64
	ldr r2, [r4, #4]
	mov r0, #226
	lsl r0, r0, #6
	add r1, r2, r0
	ldr r0, [r3, #4]
	cmp r0, r1
	bls _080335C4
	str r2, [r3, #4]
	ldr r3, [r6, #16]
	ldrh r2, [r4, #16]
	ldr r1, _080335F0  @ =0x000003FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r0, [r3, #16]
	mov r4, #240
	lsl r4, r4, #8
	add r1, r4, #0
	and r0, r0, r1
	orr r2, r2, r0
	strh r2, [r3, #16]
_080335C4:
	ldr r0, _080335F4  @ =gUnknown_0202D110
	mov r1, r8
	str r0, [r1, #16]
	mov r0, #1
	strh r0, [r1, #14]
_080335CE:
	mov r2, r8
	ldrh r0, [r2, #12]
	add r0, r0, #1
	strh r0, [r2, #12]
	mov r3, #4
	ldrsh r0, [r6, r3]
	cmp r0, #255
	ble _080335E0
	b _08033486
_080335E0:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080335EC:
	.4byte gUnknown_08427A64
_080335F0:
	.4byte 0x000003FF
_080335F4:
	.4byte gUnknown_0202D110
	THUMB_FUNC_END sub_08033464

	THUMB_FUNC_START sub_080335F8
sub_080335F8: @ 0x080335F8
	ldr r2, _08033610  @ =gUnknown_02016D60
	ldrh r0, [r2, #4]
	sub r0, r0, #1
	strh r0, [r2, #4]
	lsl r0, r0, #16
	ldr r1, _08033614  @ =0xFFFF0000
	cmp r0, r1
	bne _0803360C
	mov r0, #3
	strb r0, [r2]
_0803360C:
	bx lr
	.byte 0x00
	.byte 0x00
_08033610:
	.4byte gUnknown_02016D60
_08033614:
	.4byte 0xFFFF0000
	THUMB_FUNC_END sub_080335F8

	THUMB_FUNC_START sub_08033618
sub_08033618: @ 0x08033618
	bx lr
	THUMB_FUNC_END sub_08033618

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803361C
sub_0803361C: @ 0x0803361C
	push {r4,lr}
	ldr r4, _08033644  @ =gUnknown_02016D60
	ldr r0, [r4, #28]
	cmp r0, #6
	bhi _0803363E
	lsl r0, r0, #6
	ldr r1, _08033648  @ =gUnknown_0202DF10
	add r0, r0, r1
	ldr r1, [r4, #16]
	ldr r1, [r1]
	sub r1, r1, #30
	mov r2, #16
	bl CpuFastSet
	ldr r0, [r4, #28]
	add r0, r0, #1
	str r0, [r4, #28]
_0803363E:
	pop {r4}
	pop {r0}
	bx r0
_08033644:
	.4byte gUnknown_02016D60
_08033648:
	.4byte gUnknown_0202DF10
	THUMB_FUNC_END sub_0803361C

	THUMB_FUNC_START sub_0803364C
sub_0803364C: @ 0x0803364C
	push {r4,r5,lr}
	ldr r4, _08033678  @ =gUnknown_0202DA50
	mov r0, #152
	lsl r0, r0, #3
	add r5, r4, r0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0803367C
	mov r0, #192
	lsl r0, r0, #1
	add r4, r4, r0
	sub r0, r0, #128
	add r5, r5, r0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0803367C
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033678:
	.4byte gUnknown_0202DA50
	THUMB_FUNC_END sub_0803364C

	THUMB_FUNC_START sub_0803367C
sub_0803367C: @ 0x0803367C
	push {r4,r5,lr}
	add r2, r0, #0
	mov r3, #128
	ldr r0, _080336A4  @ =0x00001FFF
	add r5, r0, #0
	ldr r0, _080336A8  @ =0xFFFFE000
	add r4, r0, #0
_0803368A:
	ldrh r0, [r2]
	add r2, r2, #2
	add r0, r0, #128
	and r0, r0, r5
	add r0, r0, r4
	strh r0, [r1]
	add r1, r1, #2
	sub r3, r3, #1
	cmp r3, #0
	bne _0803368A
	pop {r4,r5}
	pop {r0}
	bx r0
_080336A4:
	.4byte 0x00001FFF
_080336A8:
	.4byte 0xFFFFE000
	THUMB_FUNC_END sub_0803367C

	THUMB_FUNC_START sub_080336AC
sub_080336AC: @ 0x080336AC
	push {lr}
	add r2, r0, #0
	ldrb r0, [r2, #10]
	cmp r0, #0
	bne _080336CC
	ldr r0, _080336C8  @ =gUnknown_0813D8A8
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
	b _080336DC
_080336C8:
	.4byte gUnknown_0813D8A8
_080336CC:
	ldr r0, _080336E0  @ =gUnknown_0813D8B0
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
_080336DC:
	pop {r0}
	bx r0
_080336E0:
	.4byte gUnknown_0813D8B0
	THUMB_FUNC_END sub_080336AC

	THUMB_FUNC_START sub_080336E4
sub_080336E4: @ 0x080336E4
	mov r1, #1
	strb r1, [r0, #20]
	mov r1, #60
	strb r1, [r0, #23]
	bx lr
	THUMB_FUNC_END sub_080336E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080336F0
sub_080336F0: @ 0x080336F0
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08033722
	mov r0, #16
	strb r0, [r4, #23]
	ldrb r2, [r4, #24]
	mov r0, #80
	mov r1, #1
	bl sub_0804C8A8
	ldrb r0, [r4, #24]
	add r0, r0, #1
	strb r0, [r4, #24]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #7
	bls _08033722
	add r0, r4, #0
	bl sub_08012540
_08033722:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080336F0

	THUMB_FUNC_START sub_08033728
sub_08033728: @ 0x08033728
	push {lr}
	mov r1, #1
	strb r1, [r0, #20]
	ldrb r2, [r0, #28]
	sub r1, r1, #5
	and r1, r1, r2
	mov r2, #2
	orr r1, r1, r2
	strb r1, [r0, #28]
	ldr r2, _08033758  @ =gUnknown_0813D8BC
	ldrb r1, [r0, #11]
	add r1, r1, r2
	ldrb r1, [r1]
	strh r1, [r0, #50]
	mov r1, #40
	strh r1, [r0, #54]
	ldr r1, _0803375C  @ =0x0000FFC0
	strh r1, [r0, #58]
	ldrb r1, [r0, #11]
	bl 0x08003870
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033758:
	.4byte gUnknown_0813D8BC
_0803375C:
	.4byte 0x0000FFC0
	THUMB_FUNC_END sub_08033728

	THUMB_FUNC_START sub_08033760
sub_08033760: @ 0x08033760
	push {r4,lr}
	add r4, r0, #0
	mov r1, #176
	lsl r1, r1, #5
	bl 0x08003F1C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08033776
	mov r0, #2
	strb r0, [r4, #20]
_08033776:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033760

	THUMB_FUNC_START sub_0803377C
sub_0803377C: @ 0x0803377C
	bx lr
	THUMB_FUNC_END sub_0803377C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08033780
sub_08033780: @ 0x08033780
	push {lr}
	ldr r2, _08033794  @ =gUnknown_0813D900
	ldrb r1, [r0, #10]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08033794:
	.4byte gUnknown_0813D900
	THUMB_FUNC_END sub_08033780

	THUMB_FUNC_START sub_08033798
sub_08033798: @ 0x08033798
	push {lr}
	ldr r2, _080337AC  @ =gUnknown_0813D92C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080337AC:
	.4byte gUnknown_0813D92C
	THUMB_FUNC_END sub_08033798

	THUMB_FUNC_START sub_080337B0
sub_080337B0: @ 0x080337B0
	push {r4,lr}
	add r4, r0, #0
	bl sub_08034238
	ldr r3, _08033808  @ =gUnknown_0202E110
	add r1, r3, #0
	add r1, r1, #48
	mov r0, #255
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #1
	neg r0, r0
	strb r0, [r1]
	add r0, r3, #0
	add r0, r0, #50
	mov r2, #0
	strb r2, [r0]
	add r1, r1, #3
	mov r0, #1
	neg r0, r0
	strb r0, [r1]
	add r1, r1, #1
	strb r0, [r1]
	add r0, r3, #0
	add r0, r0, #54
	strb r2, [r0]
	strb r2, [r4, #23]
	add r4, r4, #124
	mov r0, #145
	lsl r0, r0, #1
	strh r0, [r4]
	ldr r0, _0803380C  @ =gUnknown_0201F000
	str r2, [r0]
	ldr r1, _08033810  @ =gUnknown_0813D944
	ldr r0, _08033814  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	bl sub_0800B890
	pop {r4}
	pop {r0}
	bx r0
_08033808:
	.4byte gUnknown_0202E110
_0803380C:
	.4byte gUnknown_0201F000
_08033810:
	.4byte gUnknown_0813D944
_08033814:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_080337B0

	THUMB_FUNC_START sub_08033818
sub_08033818: @ 0x08033818
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r0, _08033850  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080338B6
	add r1, r4, #0
	add r1, r1, #124
	ldrh r0, [r1]
	cmp r0, #0
	beq _08033836
	sub r0, r0, #1
	strh r0, [r1]
_08033836:
	ldrh r1, [r1]
	cmp r1, #170
	beq _0803387E
	cmp r1, #170
	bgt _0803385A
	cmp r1, #130
	beq _0803387E
	cmp r1, #130
	bgt _08033854
	cmp r1, #0
	beq _08033878
	b _080338B6
	.byte 0x00
	.byte 0x00
_08033850:
	.4byte gUnknown_0201F000
_08033854:
	cmp r1, #150
	beq _0803387E
	b _080338B6
_0803385A:
	mov r0, #130
	lsl r0, r0, #1
	cmp r1, r0
	beq _080338B6
	cmp r1, r0
	bgt _0803386C
	cmp r1, #210
	beq _0803387E
	b _080338B6
_0803386C:
	ldr r0, _08033874  @ =0x00000121
	cmp r1, r0
	beq _0803387E
	b _080338B6
_08033874:
	.4byte 0x00000121
_08033878:
	mov r0, #2
	strb r0, [r4, #20]
	b _080338B6
_0803387E:
	mov r0, #88
	mov r1, #6
	mov r2, #0
	bl sub_0804C8A8
	add r5, r0, #0
	cmp r5, #0
	beq _080338B6
	ldr r3, _080338BC  @ =gUnknown_0813D94C
	ldrb r1, [r4, #23]
	lsl r0, r1, #1
	add r0, r0, r3
	mov r6, #0
	ldrsh r2, [r0, r6]
	lsl r2, r2, #16
	add r1, r1, #1
	lsl r1, r1, #1
	add r1, r1, r3
	mov r0, #0
	ldrsh r3, [r1, r0]
	lsl r3, r3, #16
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0803D4A4
	ldrb r0, [r4, #23]
	add r0, r0, #2
	strb r0, [r4, #23]
_080338B6:
	pop {r4-r6}
	pop {r0}
	bx r0
_080338BC:
	.4byte gUnknown_0813D94C
	THUMB_FUNC_END sub_08033818

	THUMB_FUNC_START sub_080338C0
sub_080338C0: @ 0x080338C0
	push {r4,lr}
	add r4, r0, #0
	mov r0, #88
	mov r1, #7
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _080338E4
	mov r3, #128
	lsl r3, r3, #12
	add r0, r4, #0
	mov r2, #0
	bl sub_0803D4A4
	mov r0, #3
	strb r0, [r4, #20]
_080338E4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080338C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080338EC
sub_080338EC: @ 0x080338EC
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _0803393C  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08033936
	mov r0, #88
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08033936
	add r0, r4, #0
	bl sub_0803D3D0
	mov r0, #2
	mov r1, #4
	bl sub_0800C0B0
	mov r0, #134
	lsl r0, r0, #2
	bl sub_0800D24C
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #60
	strb r0, [r4, #23]
	ldrb r1, [r4, #28]
	sub r0, r0, #64
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
_08033936:
	pop {r4}
	pop {r0}
	bx r0
_0803393C:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_080338EC

	THUMB_FUNC_START sub_08033940
sub_08033940: @ 0x08033940
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	add r5, r0, #0
	cmp r5, #0
	beq _08033956
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _0803397A
_08033956:
	mov r0, #88
	mov r1, #1
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _0803397A
	ldr r3, _08033980  @ =0xFFEC0000
	add r0, r4, #0
	mov r2, #0
	bl sub_0803D4A4
	mov r0, #5
	strb r0, [r4, #20]
	mov r0, #120
	strb r0, [r4, #23]
	strb r5, [r4, #24]
_0803397A:
	pop {r4,r5}
	pop {r0}
	bx r0
_08033980:
	.4byte 0xFFEC0000
	THUMB_FUNC_END sub_08033940

	THUMB_FUNC_START sub_08033984
sub_08033984: @ 0x08033984
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #23]
	cmp r0, #0
	beq _08033994
	sub r0, r0, #1
	strb r0, [r5, #23]
	b _080339BC
_08033994:
	ldrb r0, [r5, #24]
	cmp r0, #0
	bne _080339BC
	mov r0, #88
	mov r1, #9
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _080339BC
	ldr r3, _080339C8  @ =0xFFB40000
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0803D4A4
	str r5, [r4, #84]
	mov r0, #1
	strb r0, [r5, #24]
_080339BC:
	add r0, r5, #0
	bl 0x08003828
	pop {r4,r5}
	pop {r0}
	bx r0
_080339C8:
	.4byte 0xFFB40000
	THUMB_FUNC_END sub_08033984

	THUMB_FUNC_START sub_080339CC
sub_080339CC: @ 0x080339CC
	push {lr}
	ldr r2, _080339E0  @ =gUnknown_0813D960
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080339E0:
	.4byte gUnknown_0813D960
	THUMB_FUNC_END sub_080339CC

	THUMB_FUNC_START sub_080339E4
sub_080339E4: @ 0x080339E4
	push {r4,r5,lr}
	add r4, r0, #0
	bl sub_08034238
	add r3, r4, #0
	add r3, r3, #94
	ldrb r2, [r3]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3]
	ldrb r0, [r4, #28]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4, #28]
	ldrb r1, [r4, #29]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r4, #29]
	ldr r0, _08033A50  @ =gUnknown_030059A0
	ldr r1, [r0]
	add r2, r1, #0
	add r2, r2, #102
	mov r5, #0
	mov r0, #244
	lsl r0, r0, #4
	strh r0, [r2]
	add r1, r1, #104
	ldr r0, _08033A54  @ =0x00000809
	strh r0, [r1]
	add r0, r4, #0
	bl 0x08003B94
	mov r1, #128
	lsl r1, r1, #3
	str r1, [r4, #12]
	ldr r0, _08033A58  @ =gUnknown_03000488
	strh r1, [r0]
	mov r1, #128
	lsl r1, r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	pop {r4,r5}
	pop {r0}
	bx r0
_08033A50:
	.4byte gUnknown_030059A0
_08033A54:
	.4byte 0x00000809
_08033A58:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_080339E4

	THUMB_FUNC_START sub_08033A5C
sub_08033A5C: @ 0x08033A5C
	push {r4,lr}
	add r3, r0, #0
	ldr r0, [r3, #12]
	add r2, r0, #0
	sub r2, r2, #32
	str r2, [r3, #12]
	mov r4, #128
	lsl r4, r4, #1
	cmp r2, r4
	bne _08033A8C
	mov r0, #2
	strb r0, [r3, #20]
	add r0, r3, #0
	bl 0x08003BCC
	ldr r2, _08033A88  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	str r0, [r2]
	b _08033A9C
	.byte 0x00
	.byte 0x00
_08033A88:
	.4byte gUnknown_0201F000
_08033A8C:
	ldr r0, _08033AA4  @ =gUnknown_03000488
	mov r1, #0
	strh r2, [r0]
	strh r4, [r0, #2]
	strh r1, [r0, #4]
	add r1, r3, #0
	bl sub_0803D770
_08033A9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033AA4:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08033A5C

	THUMB_FUNC_START sub_08033AA8
sub_08033AA8: @ 0x08033AA8
	bx lr
	THUMB_FUNC_END sub_08033AA8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08033AAC
sub_08033AAC: @ 0x08033AAC
	push {lr}
	ldr r2, _08033AC0  @ =gUnknown_0813D96C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08033AC0:
	.4byte gUnknown_0813D96C
	THUMB_FUNC_END sub_08033AAC

	THUMB_FUNC_START sub_08033AC4
sub_08033AC4: @ 0x08033AC4
	push {r4,lr}
	add r4, r0, #0
	bl sub_08034238
	ldrb r1, [r4, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r4, r4, #94
	ldrb r0, [r4]
	and r2, r2, r0
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033AC4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08033AEC
sub_08033AEC: @ 0x08033AEC
	push {lr}
	bl 0x08003828
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033AEC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08033AF8
sub_08033AF8: @ 0x08033AF8
	push {lr}
	ldr r2, _08033B0C  @ =gUnknown_0813D974
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08033B0C:
	.4byte gUnknown_0813D974
	THUMB_FUNC_END sub_08033AF8

	THUMB_FUNC_START sub_08033B10
sub_08033B10: @ 0x08033B10
	push {r4,r5,lr}
	add r5, r0, #0
	mov r0, #88
	mov r1, #4
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _08033B46
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	str r5, [r4, #84]
	add r0, r5, #0
	bl sub_08034238
	ldrb r1, [r5, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r5, #28]
	mov r0, #0
	strb r0, [r5, #24]
_08033B46:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033B10

	THUMB_FUNC_START sub_08033B4C
sub_08033B4C: @ 0x08033B4C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r0, [r4, #56]
	ldr r1, _08033B78  @ =0xFFFF8000
	add r0, r0, r1
	str r0, [r4, #56]
	mov r0, #58
	ldrsh r1, [r4, r0]
	mov r0, #20
	neg r0, r0
	cmp r1, r0
	bne _08033B7C
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #133
	lsl r0, r0, #2
	bl sub_0800D24C
	b _08033BAA
	.byte 0x00
	.byte 0x00
_08033B78:
	.4byte 0xFFFF8000
_08033B7C:
	mov r0, #10
	neg r0, r0
	cmp r1, r0
	bne _08033BAA
	ldrb r0, [r4, #24]
	cmp r0, #0
	bne _08033BAA
	mov r0, #88
	mov r1, #5
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08033BAA
	mov r3, #128
	lsl r3, r3, #11
	add r0, r4, #0
	mov r2, #0
	bl sub_0803D4A4
	mov r0, #1
	strb r0, [r4, #24]
_08033BAA:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033B4C

	THUMB_FUNC_START sub_08033BB0
sub_08033BB0: @ 0x08033BB0
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_08034248
	ldr r0, _08033BD8  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08033BD0
	add r0, r4, #0
	bl sub_08012540
_08033BD0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033BD8:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08033BB0

	THUMB_FUNC_START sub_08033BDC
sub_08033BDC: @ 0x08033BDC
	push {lr}
	ldr r2, _08033BF0  @ =gUnknown_0813D980
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08033BF0:
	.4byte gUnknown_0813D980
	THUMB_FUNC_END sub_08033BDC

	THUMB_FUNC_START sub_08033BF4
sub_08033BF4: @ 0x08033BF4
	push {r4,lr}
	add r4, r0, #0
	bl sub_08034238
	add r3, r4, #0
	add r3, r3, #94
	ldrb r2, [r3]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r3]
	ldrb r0, [r4, #28]
	and r1, r1, r0
	mov r0, #1
	orr r1, r1, r0
	strb r1, [r4, #28]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033BF4

	THUMB_FUNC_START sub_08033C1C
sub_08033C1C: @ 0x08033C1C
	push {r4-r6,lr}
	add r6, r0, #0
	ldr r0, [r6, #84]
	add r1, r6, #0
	bl sub_0803D3D0
	mov r0, #58
	ldrsh r1, [r6, r0]
	mov r0, #20
	neg r0, r0
	cmp r1, r0
	bne _08033C6E
	mov r5, #0
	mov r4, #2
	strb r4, [r6, #20]
	mov r0, #90
	strb r0, [r6, #23]
	add r0, r6, #0
	bl 0x08003B94
	ldrb r2, [r6, #29]
	lsl r1, r2, #30
	lsr r1, r1, #30
	orr r1, r1, r4
	mov r0, #4
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r6, #29]
	mov r0, #128
	lsl r0, r0, #17
	str r0, [r6, #12]
	ldr r0, _08033C74  @ =gUnknown_03000488
	mov r1, #128
	lsl r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	add r1, r6, #0
	bl sub_0803D770
_08033C6E:
	pop {r4-r6}
	pop {r0}
	bx r0
_08033C74:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08033C1C

	THUMB_FUNC_START sub_08033C78
sub_08033C78: @ 0x08033C78
	push {lr}
	add r3, r0, #0
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08033CA4
	ldr r2, _08033CA0  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #1
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #3
	strb r0, [r3, #20]
	add r0, r3, #0
	bl 0x08003BCC
	b _08033CC2
	.byte 0x00
	.byte 0x00
_08033CA0:
	.4byte gUnknown_0201F000
_08033CA4:
	ldr r1, [r3, #12]
	ldr r0, _08033CC8  @ =0xFFFE8000
	add r1, r1, r0
	str r1, [r3, #12]
	ldr r0, _08033CCC  @ =gUnknown_03000488
	mov r2, #128
	lsl r2, r2, #1
	strh r2, [r0]
	asr r1, r1, #16
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	add r1, r3, #0
	bl sub_0803D770
_08033CC2:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033CC8:
	.4byte 0xFFFE8000
_08033CCC:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08033C78

	THUMB_FUNC_START sub_08033CD0
sub_08033CD0: @ 0x08033CD0
	push {lr}
	ldr r2, _08033CE4  @ =gUnknown_0813D990
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08033CE4:
	.4byte gUnknown_0813D990
	THUMB_FUNC_END sub_08033CD0

	THUMB_FUNC_START sub_08033CE8
sub_08033CE8: @ 0x08033CE8
	push {r4,lr}
	add r4, r0, #0
	bl sub_08034238
	ldrb r2, [r4, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r4, #28]
	mov r0, #0
	strh r0, [r4, #58]
	add r4, r4, #94
	ldrb r0, [r4]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4]
	ldr r0, _08033D1C  @ =0x00000213
	bl sub_0800D24C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033D1C:
	.4byte 0x00000213
	THUMB_FUNC_END sub_08033CE8

	THUMB_FUNC_START sub_08033D20
sub_08033D20: @ 0x08033D20
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08033D3C
	add r0, r4, #0
	bl sub_08012540
_08033D3C:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033D20

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08033D44
sub_08033D44: @ 0x08033D44
	push {lr}
	ldr r2, _08033D58  @ =gUnknown_0813D998
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08033D58:
	.4byte gUnknown_0813D998
	THUMB_FUNC_END sub_08033D44

	THUMB_FUNC_START sub_08033D5C
sub_08033D5C: @ 0x08033D5C
	push {r4,lr}
	add r4, r0, #0
	bl sub_08034238
	ldrb r1, [r4, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	add r4, r4, #94
	ldrb r0, [r4]
	and r2, r2, r0
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033D5C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08033D84
sub_08033D84: @ 0x08033D84
	push {lr}
	add r2, r0, #0
	ldr r0, _08033D9C  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08033DA0
	add r0, r2, #0
	bl sub_08012540
	b _08033DA6
_08033D9C:
	.4byte gUnknown_0201F000
_08033DA0:
	add r0, r2, #0
	bl 0x08003828
_08033DA6:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033D84

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08033DAC
sub_08033DAC: @ 0x08033DAC
	push {lr}
	ldr r2, _08033DC0  @ =gUnknown_0813D9A0
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08033DC0:
	.4byte gUnknown_0813D9A0
	THUMB_FUNC_END sub_08033DAC

	THUMB_FUNC_START sub_08033DC4
sub_08033DC4: @ 0x08033DC4
	push {r4,lr}
	add r4, r0, #0
	bl sub_08034238
	mov r0, #120
	strb r0, [r4, #23]
	ldrb r2, [r4, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r4, #28]
	add r4, r4, #94
	ldrb r0, [r4]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4]
	ldr r0, _08033DF8  @ =0x00000212
	bl sub_0800D24C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033DF8:
	.4byte 0x00000212
	THUMB_FUNC_END sub_08033DC4

	THUMB_FUNC_START sub_08033DFC
sub_08033DFC: @ 0x08033DFC
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08033E10
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _08033E3A
_08033E10:
	mov r0, #88
	mov r1, #3
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08033E3A
	ldr r3, _08033E40  @ =0xFFF80000
	add r0, r4, #0
	mov r2, #0
	bl sub_0803D4A4
	ldr r2, _08033E44  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #2
	orr r0, r0, r1
	str r0, [r2]
	add r0, r4, #0
	bl sub_08012540
_08033E3A:
	pop {r4}
	pop {r0}
	bx r0
_08033E40:
	.4byte 0xFFF80000
_08033E44:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08033DFC

	THUMB_FUNC_START sub_08033E48
sub_08033E48: @ 0x08033E48
	push {lr}
	ldr r2, _08033E5C  @ =gUnknown_0813D9A8
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08033E5C:
	.4byte gUnknown_0813D9A8
	THUMB_FUNC_END sub_08033E48

	THUMB_FUNC_START sub_08033E60
sub_08033E60: @ 0x08033E60
	push {r4,lr}
	add r4, r0, #0
	bl sub_08034238
	ldrb r2, [r4, #28]
	mov r1, #4
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r4, #28]
	add r4, r4, #94
	ldrb r0, [r4]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033E60

	THUMB_FUNC_START sub_08033E88
sub_08033E88: @ 0x08033E88
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08033EA4
	add r0, r4, #0
	bl sub_08012540
_08033EA4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033E88

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08033EAC
sub_08033EAC: @ 0x08033EAC
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #11]
	cmp r0, #0
	bne _08033ECC
	ldr r0, _08033EC8  @ =gUnknown_0813D9B0
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	b _08033EE2
_08033EC8:
	.4byte gUnknown_0813D9B0
_08033ECC:
	ldr r0, _08033EE8  @ =gUnknown_0813D9C0
	ldrb r1, [r4, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	bl 0x08003828
_08033EE2:
	pop {r4}
	pop {r0}
	bx r0
_08033EE8:
	.4byte gUnknown_0813D9C0
	THUMB_FUNC_END sub_08033EAC

	THUMB_FUNC_START sub_08033EEC
sub_08033EEC: @ 0x08033EEC
	push {r4,lr}
	add r4, r0, #0
	bl sub_08034238
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r1, r1, r0
	strb r1, [r4, #29]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, #128
	str r0, [r4, #12]
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #16
	strb r0, [r1]
	bl sub_080399CC
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bne _08033F40
	ldr r0, _08033F58  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	add r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
_08033F40:
	ldr r1, _08033F5C  @ =gUnknown_0813D9D4
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r4, #30]
	pop {r4}
	pop {r0}
	bx r0
_08033F58:
	.4byte gUnknown_03006C80
_08033F5C:
	.4byte gUnknown_0813D9D4
	THUMB_FUNC_END sub_08033EEC

	THUMB_FUNC_START sub_08033F60
sub_08033F60: @ 0x08033F60
	push {r4-r7,lr}
	add r6, r0, #0
	ldr r0, _08033FF8  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08033FF0
	ldrb r0, [r6, #11]
	cmp r0, #0
	bne _08033F86
	ldrb r0, [r6, #22]
	cmp r0, #0
	bne _08033F86
	mov r0, #1
	strb r0, [r6, #22]
	ldr r0, _08033FFC  @ =0x00000215
	bl sub_0800D24C
_08033F86:
	add r0, r6, #0
	bl 0x08003828
	add r0, r6, #0
	bl sub_0803CC20
	ldr r0, [r6, #84]
	mov r1, #54
	ldrsh r0, [r0, r1]
	add r0, r0, #24
	mov r2, #54
	ldrsh r1, [r6, r2]
	cmp r0, r1
	bne _08033FF0
	mov r5, #0
	ldr r0, _08034000  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r5, r0
	bcs _08033FE0
	ldr r7, _08034004  @ =gUnknown_03006A58
_08033FAE:
	mov r0, #88
	mov r1, #9
	mov r2, #1
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _08033FD2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0803D3D0
	lsl r0, r5, #3
	add r0, r0, r5
	lsl r0, r0, #4
	add r0, r0, r7
	ldr r0, [r0]
	str r0, [r4, #88]
_08033FD2:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	ldr r0, _08034000  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r5, r0
	bcc _08033FAE
_08033FE0:
	mov r0, #2
	strb r0, [r6, #20]
	mov r0, #90
	strb r0, [r6, #23]
	ldrb r1, [r6, #28]
	sub r0, r0, #94
	and r0, r0, r1
	strb r0, [r6, #28]
_08033FF0:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033FF8:
	.4byte gUnknown_0201F000
_08033FFC:
	.4byte 0x00000215
_08034000:
	.4byte gUnknown_03006C80
_08034004:
	.4byte gUnknown_03006A58
	THUMB_FUNC_END sub_08033F60

	THUMB_FUNC_START sub_08034008
sub_08034008: @ 0x08034008
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08034028
	mov r0, #3
	strb r0, [r1, #20]
	mov r0, #60
	strb r0, [r1, #23]
	ldr r2, _0803402C  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #4
	orr r0, r0, r1
	str r0, [r2]
_08034028:
	bx lr
	.byte 0x00
	.byte 0x00
_0803402C:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08034008

	THUMB_FUNC_START sub_08034030
sub_08034030: @ 0x08034030
	push {lr}
	add r3, r0, #0
	ldrb r0, [r3, #23]
	sub r0, r0, #1
	strb r0, [r3, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08034050
	ldr r0, _08034054  @ =gUnknown_0201F000
	ldr r1, [r0]
	mov r2, #8
	orr r1, r1, r2
	str r1, [r0]
	add r0, r3, #0
	bl sub_08012540
_08034050:
	pop {r0}
	bx r0
_08034054:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08034030

	THUMB_FUNC_START sub_08034058
sub_08034058: @ 0x08034058
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r3, [r4, #88]
	mov r0, #50
	ldrsh r1, [r3, r0]
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _0803407E
	mov r5, #54
	ldrsh r0, [r3, r5]
	sub r0, r0, #32
	mov r2, #54
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0803407E
	mov r0, #2
	strb r0, [r4, #20]
	b _080340A2
_0803407E:
	mov r5, #50
	ldrsh r0, [r4, r5]
	mov r2, #54
	ldrsh r1, [r4, r2]
	mov r5, #50
	ldrsh r2, [r3, r5]
	ldrh r3, [r3, #54]
	sub r3, r3, #32
	lsl r3, r3, #16
	asr r3, r3, #16
	bl 0x08003F54
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	add r0, r4, #0
	bl sub_0803CC20
_080340A2:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034058

	THUMB_FUNC_START sub_080340A8
sub_080340A8: @ 0x080340A8
	add r2, r0, #0
	ldr r0, _080340C8  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080340C6
	mov r0, #3
	strb r0, [r2, #20]
	mov r0, #20
	strb r0, [r2, #23]
	add r1, r2, #0
	add r1, r1, #43
	mov r0, #16
	strb r0, [r1]
_080340C6:
	bx lr
_080340C8:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_080340A8

	THUMB_FUNC_START sub_080340CC
sub_080340CC: @ 0x080340CC
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #23]
	cmp r0, #0
	beq _080340E2
	sub r0, r0, #1
	strb r0, [r5, #23]
	add r0, r5, #0
	bl sub_0803CC20
	b _08034114
_080340E2:
	ldr r0, _0803411C  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08034114
	mov r0, #89
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _08034114
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0803D3D0
	ldr r0, [r4, #52]
	add r0, r0, #1
	str r0, [r4, #52]
	mov r0, #4
	strb r0, [r5, #20]
	mov r0, #60
	strb r0, [r5, #23]
_08034114:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803411C:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_080340CC

	THUMB_FUNC_START sub_08034120
sub_08034120: @ 0x08034120
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08034136
	add r0, r1, #0
	bl sub_08012540
_08034136:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034120

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803413C
sub_0803413C: @ 0x0803413C
	push {lr}
	ldr r2, _08034150  @ =gUnknown_08427A8C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034150:
	.4byte gUnknown_08427A8C
	THUMB_FUNC_END sub_0803413C

	THUMB_FUNC_START sub_08034154
sub_08034154: @ 0x08034154
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r1, [r4, #31]
	mov r2, #63
	add r0, r2, #0
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r2, r2, r0
	strb r2, [r4, #29]
	ldrh r1, [r4, #50]
	add r0, r4, #0
	add r0, r0, #96
	strh r1, [r0]
	ldrh r0, [r4, #54]
	add r1, r4, #0
	add r1, r1, #98
	strh r0, [r1]
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #32
	str r0, [r4, #12]
	add r0, r4, #0
	bl sub_08034238
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034154

	THUMB_FUNC_START sub_080341A8
sub_080341A8: @ 0x080341A8
	push {r4,r5,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #96
	ldrh r0, [r2]
	ldrh r1, [r4, #50]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #12
	bhi _080341DA
	add r0, r4, #0
	add r0, r0, #98
	ldrh r0, [r0]
	ldrh r1, [r4, #54]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #12
	bls _08034210
_080341DA:
	mov r1, #50
	ldrsh r0, [r4, r1]
	mov r3, #54
	ldrsh r1, [r4, r3]
	mov r5, #0
	ldrsh r2, [r2, r5]
	add r3, r4, #0
	add r3, r3, #98
	mov r5, #0
	ldrsh r3, [r3, r5]
	bl 0x08003F54
	add r5, r4, #0
	add r5, r5, #43
	strb r0, [r5]
	bl 0x0800099C
	ldr r2, _08034230  @ =gUnknown_08427A94
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	ldrb r1, [r5]
	add r0, r0, r1
	mov r1, #31
	and r0, r0, r1
	strb r0, [r5]
_08034210:
	ldr r1, _08034234  @ =gUnknown_0813E4CC
	ldrb r0, [r4, #23]
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r1
	mov r3, #0
	ldrsh r0, [r0, r3]
	asr r0, r0, #6
	sub r0, r0, #8
	strh r0, [r4, #58]
	ldrb r0, [r4, #23]
	add r0, r0, #1
	strb r0, [r4, #23]
	pop {r4,r5}
	pop {r0}
	bx r0
_08034230:
	.4byte gUnknown_08427A94
_08034234:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_080341A8

	THUMB_FUNC_START sub_08034238
sub_08034238: @ 0x08034238
	push {lr}
	mov r1, #1
	strb r1, [r0, #20]
	mov r1, #0
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034238

	THUMB_FUNC_START sub_08034248
sub_08034248: @ 0x08034248
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08034256
	sub r0, r0, #1
	b _0803426E
_08034256:
	mov r0, #88
	mov r1, #8
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08034270
	add r0, r4, #0
	bl sub_0803D3D0
	mov r0, #48
_0803426E:
	strb r0, [r4, #23]
_08034270:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034248

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034278
sub_08034278: @ 0x08034278
	push {lr}
	ldr r2, _0803428C  @ =gUnknown_0813DADC
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0803428C:
	.4byte gUnknown_0813DADC
	THUMB_FUNC_END sub_08034278

	THUMB_FUNC_START sub_08034290
sub_08034290: @ 0x08034290
	push {r4,lr}
	add r4, r0, #0
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r1, r1, r0
	strb r1, [r4, #29]
	bl sub_080399CC
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bne _080342D6
	ldr r0, _08034300  @ =gUnknown_03006C80
	ldrb r0, [r0, #1]
	add r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
_080342D6:
	ldr r1, _08034304  @ =gUnknown_0813DAE4
	lsl r0, r0, #1
	add r0, r0, r1
	ldrb r0, [r0]
	bl sub_0802C2DC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #15
	and r1, r1, r0
	lsl r0, r0, #4
	orr r0, r0, r1
	strb r0, [r4, #30]
	ldr r0, _08034300  @ =gUnknown_03006C80
	ldrb r1, [r0, #1]
	add r0, r4, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_08034300:
	.4byte gUnknown_03006C80
_08034304:
	.4byte gUnknown_0813DAE4
	THUMB_FUNC_END sub_08034290

	THUMB_FUNC_START sub_08034308
sub_08034308: @ 0x08034308
	push {lr}
	add r3, r0, #0
	ldr r2, _08034328  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	str r0, [r2]
	add r1, r1, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08034324
	add r0, r3, #0
	bl sub_08012540
_08034324:
	pop {r0}
	bx r0
_08034328:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08034308

	THUMB_FUNC_START sub_0803432C
sub_0803432C: @ 0x0803432C
	push {lr}
	ldr r2, _08034340  @ =gUnknown_08427A98
	ldrb r1, [r0, #10]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034340:
	.4byte gUnknown_08427A98
	THUMB_FUNC_END sub_0803432C

	THUMB_FUNC_START sub_08034344
sub_08034344: @ 0x08034344
	push {lr}
	ldr r2, _08034358  @ =gUnknown_08427AB0
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034358:
	.4byte gUnknown_08427AB0
	THUMB_FUNC_END sub_08034344

	THUMB_FUNC_START sub_0803435C
sub_0803435C: @ 0x0803435C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	mov r3, #0
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #128
	orr r0, r0, r2
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r1, r1, r0
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r4, #29]
	ldrb r1, [r4, #11]
	add r1, r1, #13
	mov r0, #15
	and r1, r1, r0
	ldrb r2, [r4, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #30]
	ldr r1, _080343E0  @ =gUnknown_08427AC0
	ldrb r0, [r4, #11]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #50]
	strh r3, [r4, #54]
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #32
	str r0, [r4, #12]
	ldrb r1, [r4, #11]
	lsl r1, r1, #2
	ldr r0, _080343E4  @ =gUnknown_08427AC6
	add r1, r1, r0
	add r0, r4, #0
	mov r2, #120
	bl sub_0803D7E8
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_080343E0:
	.4byte gUnknown_08427AC0
_080343E4:
	.4byte gUnknown_08427AC6
	THUMB_FUNC_END sub_0803435C

	THUMB_FUNC_START sub_080343E8
sub_080343E8: @ 0x080343E8
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0803D8AC
	cmp r0, #0
	beq _0803440E
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrh r1, [r4, #50]
	add r0, r4, #0
	add r0, r0, #96
	strh r1, [r0]
	ldrh r1, [r4, #54]
	add r0, r0, #2
	strh r1, [r0]
_0803440E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080343E8

	THUMB_FUNC_START sub_08034414
sub_08034414: @ 0x08034414
	push {r4,r5,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #96
	ldrh r0, [r2]
	ldrh r1, [r4, #50]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #12
	bhi _08034446
	add r0, r4, #0
	add r0, r0, #98
	ldrh r0, [r0]
	ldrh r1, [r4, #54]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #12
	bls _0803447C
_08034446:
	mov r1, #50
	ldrsh r0, [r4, r1]
	mov r3, #54
	ldrsh r1, [r4, r3]
	mov r5, #0
	ldrsh r2, [r2, r5]
	add r3, r4, #0
	add r3, r3, #98
	mov r5, #0
	ldrsh r3, [r3, r5]
	bl 0x08003F54
	add r5, r4, #0
	add r5, r5, #43
	strb r0, [r5]
	bl 0x0800099C
	ldr r2, _0803449C  @ =gUnknown_08427AD2
	mov r1, #3
	and r1, r1, r0
	add r1, r1, r2
	ldrb r0, [r1]
	ldrb r1, [r5]
	add r0, r0, r1
	mov r1, #31
	and r0, r0, r1
	strb r0, [r5]
_0803447C:
	ldr r1, _080344A0  @ =gUnknown_0813E4CC
	ldrb r0, [r4, #23]
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r1
	mov r3, #0
	ldrsh r0, [r0, r3]
	asr r0, r0, #6
	strh r0, [r4, #58]
	ldrb r0, [r4, #23]
	add r0, r0, #1
	strb r0, [r4, #23]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803449C:
	.4byte gUnknown_08427AD2
_080344A0:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_08034414

	THUMB_FUNC_START sub_080344A4
sub_080344A4: @ 0x080344A4
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl 0x08003828
	ldr r1, _080344E0  @ =gUnknown_0813E4CC
	ldrb r0, [r4, #23]
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	asr r0, r0, #6
	strh r0, [r4, #58]
	ldrb r0, [r4, #23]
	add r0, r0, #16
	strb r0, [r4, #23]
	ldr r0, _080344E4  @ =gUnknown_02016D60
	ldrb r0, [r0, #15]
	ldrb r1, [r4, #11]
	cmp r0, r1
	beq _080344D8
	mov r0, #2
	strb r0, [r4, #20]
_080344D8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080344E0:
	.4byte gUnknown_0813E4CC
_080344E4:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_080344A4

	THUMB_FUNC_START sub_080344E8
sub_080344E8: @ 0x080344E8
	push {lr}
	add r3, r0, #0
	ldrb r0, [r3, #20]
	cmp r0, #0
	beq _080344F8
	cmp r0, #1
	beq _08034536
	b _08034548
_080344F8:
	mov r0, #1
	mov r2, #1
	strb r0, [r3, #20]
	ldrb r1, [r3, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r3, #28]
	ldrb r2, [r3, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r3, #31]
	ldrb r0, [r3, #29]
	and r1, r1, r0
	strb r1, [r3, #29]
	ldrb r0, [r3, #23]
	cmp r0, #0
	beq _0803452C
	ldr r0, _08034528  @ =0x0000021E
	bl sub_0800D24C
	b _08034548
	.byte 0x00
	.byte 0x00
_08034528:
	.4byte 0x0000021E
_0803452C:
	mov r0, #251
	lsl r0, r0, #1
	bl sub_0800D24C
	b _08034548
_08034536:
	ldrb r0, [r3, #11]
	sub r0, r0, #1
	strb r0, [r3, #11]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08034548
	add r0, r3, #0
	bl sub_08012540
_08034548:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080344E8

	THUMB_FUNC_START sub_0803454C
sub_0803454C: @ 0x0803454C
	push {lr}
	add r3, r0, #0
	ldrb r1, [r3, #20]
	cmp r1, #1
	beq _08034590
	cmp r1, #1
	bgt _08034560
	cmp r1, #0
	beq _08034566
	b _080345C4
_08034560:
	cmp r1, #2
	beq _080345B4
	b _080345C4
_08034566:
	mov r0, #1
	mov r2, #1
	strb r0, [r3, #20]
	ldrb r1, [r3, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r3, #28]
	ldrb r2, [r3, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #128
	orr r0, r0, r2
	strb r0, [r3, #31]
	ldrb r0, [r3, #29]
	and r1, r1, r0
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r3, #29]
	b _080345C4
_08034590:
	ldr r0, _080345AC  @ =gUnknown_0202A4F8
	ldr r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	beq _080345C4
	mov r0, #2
	strb r0, [r3, #20]
	add r0, r3, #0
	add r0, r0, #33
	strb r1, [r0]
	ldr r0, _080345B0  @ =0x000001F5
	bl sub_0800D24C
	b _080345C4
_080345AC:
	.4byte gUnknown_0202A4F8
_080345B0:
	.4byte 0x000001F5
_080345B4:
	ldr r0, _080345C8  @ =gUnknown_0202A4F8
	ldr r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	beq _080345C4
	add r0, r3, #0
	bl sub_08012540
_080345C4:
	pop {r0}
	bx r0
_080345C8:
	.4byte gUnknown_0202A4F8
	THUMB_FUNC_END sub_0803454C

	THUMB_FUNC_START sub_080345CC
sub_080345CC: @ 0x080345CC
	push {lr}
	ldr r2, _080345E0  @ =gUnknown_08427AD8
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080345E0:
	.4byte gUnknown_08427AD8
	THUMB_FUNC_END sub_080345CC

	THUMB_FUNC_START sub_080345E4
sub_080345E4: @ 0x080345E4
	push {r4,lr}
	add r4, r0, #0
	mov r0, #2
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #6
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #128
	orr r0, r0, r2
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r1, r1, r0
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r4, #29]
	ldrb r1, [r4, #11]
	add r1, r1, #13
	mov r0, #15
	and r1, r1, r0
	ldrb r2, [r4, #30]
	mov r0, #16
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #30]
	ldr r2, _08034670  @ =gUnknown_08427AE4
	ldrb r0, [r4, #11]
	lsl r0, r0, #2
	add r0, r0, r2
	ldrh r1, [r0]
	strh r1, [r4, #50]
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, r0, #96
	strh r1, [r0]
	ldrb r0, [r4, #11]
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r1, [r0]
	strh r1, [r4, #54]
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, r1, #98
	strh r0, [r1]
	bl 0x0800099C
	mov r1, #31
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	mov r0, #32
	str r0, [r4, #12]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08034670:
	.4byte gUnknown_08427AE4
	THUMB_FUNC_END sub_080345E4

	THUMB_FUNC_START sub_08034674
sub_08034674: @ 0x08034674
	bx lr
	THUMB_FUNC_END sub_08034674

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034678
sub_08034678: @ 0x08034678
	push {lr}
	ldr r2, _0803468C  @ =gUnknown_08427AF0
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0803468C:
	.4byte gUnknown_08427AF0
	THUMB_FUNC_END sub_08034678

	THUMB_FUNC_START sub_08034690
sub_08034690: @ 0x08034690
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	mov r5, #0
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r4, #31]
	ldrb r0, [r4, #29]
	and r1, r1, r0
	strb r1, [r4, #29]
	mov r0, #120
	strh r0, [r4, #50]
	mov r0, #192
	strh r0, [r4, #54]
	add r0, r4, #0
	bl 0x08003B94
	add r1, r4, #0
	add r1, r1, #112
	mov r0, #128
	lsl r0, r0, #1
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #114
	mov r2, #128
	lsl r2, r2, #4
	strh r2, [r0]
	ldr r0, _080346F4  @ =gUnknown_03000488
	ldrh r1, [r1]
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r5, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080346F4:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08034690

	THUMB_FUNC_START sub_080346F8
sub_080346F8: @ 0x080346F8
	push {r4,lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #114
	ldrh r2, [r1]
	mov r0, #128
	lsl r0, r0, #1
	cmp r2, r0
	bls _08034722
	sub r2, r2, #32
	mov r3, #0
	strh r2, [r1]
	ldr r0, _08034728  @ =gUnknown_03000488
	sub r1, r1, #2
	ldrh r1, [r1]
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r3, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
_08034722:
	pop {r4}
	pop {r0}
	bx r0
_08034728:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_080346F8

	THUMB_FUNC_START sub_0803472C
sub_0803472C: @ 0x0803472C
	push {r4-r6,lr}
	add r5, r0, #0
	ldrb r0, [r5, #20]
	cmp r0, #0
	bne _08034744
	mov r0, #1
	strb r0, [r5, #20]
	ldrb r0, [r5, #10]
	bl sub_08013D20
	str r0, [r5, #96]
	b _0803477C
_08034744:
	ldr r1, _08034784  @ =gUnknown_0201F000
	add r6, r5, #0
	add r6, r6, #82
	ldrb r2, [r6]
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r5, #96]
	and r0, r0, r1
	cmp r0, r1
	bne _0803477C
	ldrb r1, [r5, #11]
	add r0, r2, #0
	bl sub_08012F84
	ldr r4, _08034788  @ =gUnknown_0201EFF8
	ldrb r3, [r6]
	lsl r2, r3, #2
	add r1, r2, r4
	ldrb r1, [r1]
	add r4, r4, #2
	add r2, r2, r4
	ldrb r2, [r2]
	bl sub_08013C8C
	add r0, r5, #0
	bl sub_08012540
_0803477C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08034784:
	.4byte gUnknown_0201F000
_08034788:
	.4byte gUnknown_0201EFF8
	THUMB_FUNC_END sub_0803472C

	THUMB_FUNC_START sub_0803478C
sub_0803478C: @ 0x0803478C
	push {lr}
	ldr r2, _080347A0  @ =gUnknown_08427AF8
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080347A0:
	.4byte gUnknown_08427AF8
	THUMB_FUNC_END sub_0803478C

	THUMB_FUNC_START sub_080347A4
sub_080347A4: @ 0x080347A4
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r0, [r4, #10]
	bl sub_08013D20
	str r0, [r4, #96]
	ldrb r0, [r4, #11]
	bl sub_08013D20
	str r0, [r4, #100]
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r2, _080347F0  @ =gUnknown_03000450
	ldrh r0, [r2, #24]
	sub r1, r1, r0
	asr r1, r1, #4
	mov r3, #54
	ldrsh r0, [r4, r3]
	ldrh r2, [r2, #26]
	sub r0, r0, r2
	asr r0, r0, #4
	lsl r0, r0, #6
	orr r1, r1, r0
	str r1, [r4, #104]
	ldrb r0, [r4, #10]
	cmp r0, #255
	bne _080347EA
	add r0, r4, #0
	bl sub_080347F4
	mov r0, #2
	strb r0, [r4, #20]
_080347EA:
	pop {r4}
	pop {r0}
	bx r0
_080347F0:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_080347A4

	THUMB_FUNC_START sub_080347F4
sub_080347F4: @ 0x080347F4
	push {r4,lr}
	add r4, r0, #0
	bl 0x080036F8
	lsl r0, r0, #24
	cmp r0, #0
	beq _08034808
	add r0, r4, #0
	bl sub_0804C9C8
_08034808:
	mov r0, #155
	lsl r0, r0, #1
	ldr r1, [r4, #104]
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r2, r4, #0
	add r2, r2, #80
	ldrh r2, [r2]
	bl sub_080144F0
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080347F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034824
sub_08034824: @ 0x08034824
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _0803485C  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r4, #96]
	and r0, r0, r1
	cmp r0, r1
	bne _08034854
	add r0, r4, #0
	bl sub_080347F4
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r0, [r4, #11]
	cmp r0, #255
	bne _08034854
	add r0, r4, #0
	bl sub_08012540
_08034854:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803485C:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08034824

	THUMB_FUNC_START sub_08034860
sub_08034860: @ 0x08034860
	push {r4,lr}
	add r4, r0, #0
	ldr r1, _080348A4  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r4, #100]
	and r0, r0, r1
	cmp r0, r1
	bne _0803489C
	add r0, r4, #0
	bl 0x080036F8
	lsl r0, r0, #24
	cmp r0, #0
	beq _0803488A
	add r0, r4, #0
	bl sub_0804C9C8
_0803488A:
	ldr r0, [r4, #104]
	add r1, r4, #0
	add r1, r1, #80
	ldrh r1, [r1]
	bl sub_0801478C
	add r0, r4, #0
	bl sub_08012540
_0803489C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080348A4:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08034860

	THUMB_FUNC_START sub_080348A8
sub_080348A8: @ 0x080348A8
	push {r4,lr}
	add r4, r0, #0
	bl sub_080348D0
	ldr r1, _080348CC  @ =gUnknown_0813DB10
	ldrb r0, [r4, #20]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r4, #0
	bl _call_via_r1
	add r0, r4, #0
	bl sub_080348F0
	pop {r4}
	pop {r0}
	bx r0
_080348CC:
	.4byte gUnknown_0813DB10
	THUMB_FUNC_END sub_080348A8

	THUMB_FUNC_START sub_080348D0
sub_080348D0: @ 0x080348D0
	add r1, r0, #0
	ldr r2, [r1, #96]
	ldrb r0, [r1, #20]
	cmp r0, #0
	beq _080348EC
	ldrb r3, [r2, #4]
	cmp r3, #0
	beq _080348EC
	mov r0, #0
	strb r3, [r1, #20]
	strb r0, [r1, #21]
	strb r0, [r2, #4]
	mov r0, #1
	strb r0, [r2, #2]
_080348EC:
	bx lr
	THUMB_FUNC_END sub_080348D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080348F0
sub_080348F0: @ 0x080348F0
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #96]
	ldrb r1, [r0]
	cmp r1, #7
	bhi _0803490A
	add r0, r2, #0
	add r0, r0, #42
	ldrb r0, [r0]
	lsr r0, r0, #1
	add r0, r1, r0
	lsl r0, r0, #24
	lsr r1, r0, #24
_0803490A:
	add r0, r2, #0
	add r0, r0, #35
	ldrb r0, [r0]
	cmp r0, r1
	beq _0803491A
	add r0, r2, #0
	bl 0x08003870
_0803491A:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080348F0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034920
sub_08034920: @ 0x08034920
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r2, [r4, #29]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #128
	orr r0, r0, r2
	strb r0, [r4, #29]
	ldrb r0, [r4, #31]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4, #31]
	add r1, r4, #0
	add r1, r1, #46
	mov r0, #3
	strb r0, [r1]
	add r0, r0, #253
	str r0, [r4, #12]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2]
	add r1, r4, #0
	add r1, r1, #42
	mov r0, #4
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl sub_0804CE00
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034920

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034984
sub_08034984: @ 0x08034984
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r5, [r4, #21]
	cmp r5, #0
	bne _080349A0
	mov r1, #0
	bl sub_0804CE00
	ldrb r0, [r4, #21]
	add r0, r0, #1
	strb r0, [r4, #21]
	ldr r0, [r4, #96]
	strb r5, [r0, #2]
	b _080349D0
_080349A0:
	add r0, r4, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080349D0
	add r0, r4, #0
	add r0, r0, #35
	ldrb r1, [r0]
	add r0, r4, #0
	bl 0x08003870
	bl 0x0800099C
	mov r1, #240
	and r0, r0, r1
	add r0, r0, #1
	add r1, r4, #0
	add r1, r1, #40
	strb r0, [r1]
_080349D0:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034984

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080349D8
sub_080349D8: @ 0x080349D8
	push {lr}
	ldr r2, _080349EC  @ =gUnknown_08427B04
	ldrb r1, [r0, #21]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080349EC:
	.4byte gUnknown_08427B04
	THUMB_FUNC_END sub_080349D8

	THUMB_FUNC_START sub_080349F0
sub_080349F0: @ 0x080349F0
	push {lr}
	ldrb r1, [r0, #21]
	add r1, r1, #1
	strb r1, [r0, #21]
	ldr r2, [r0, #96]
	ldrb r1, [r2, #5]
	strb r1, [r0, #23]
	ldrb r1, [r2, #6]
	add r2, r0, #0
	add r2, r2, #43
	strb r1, [r2]
	ldr r2, [r0, #96]
	mov r1, #2
	strb r1, [r2, #2]
	mov r1, #4
	bl sub_0804CE00
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080349F0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034A18
sub_08034A18: @ 0x08034A18
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	add r0, r4, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08034A38
	ldr r1, [r4, #96]
	mov r0, #1
	strb r0, [r1, #4]
_08034A38:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034A18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034A40
sub_08034A40: @ 0x08034A40
	bx lr
	THUMB_FUNC_END sub_08034A40

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034A44
sub_08034A44: @ 0x08034A44
	bx lr
	THUMB_FUNC_END sub_08034A44

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034A48
sub_08034A48: @ 0x08034A48
	push {lr}
	ldr r2, _08034A5C  @ =gUnknown_08427B0C
	ldrb r1, [r0, #21]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034A5C:
	.4byte gUnknown_08427B0C
	THUMB_FUNC_END sub_08034A48

	THUMB_FUNC_START sub_08034A60
sub_08034A60: @ 0x08034A60
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #21]
	add r0, r0, #1
	strb r0, [r4, #21]
	ldr r0, _08034AC4  @ =0x0000FF60
	strh r0, [r4, #58]
	mov r0, #60
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #8
	bl sub_0804CE00
	mov r0, #35
	bl sub_0802C2DC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #15
	and r0, r0, r1
	ldrb r2, [r4, #30]
	mov r1, #16
	neg r1, r1
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r4, #30]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #12
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, #104
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	str r4, [r0, #84]
	mov r0, #104
	mov r1, #2
	mov r2, #4
	bl sub_0804C8A8
	str r4, [r0, #84]
	ldr r0, _08034AC8  @ =0x00000215
	bl sub_0800D24C
	pop {r4}
	pop {r0}
	bx r0
_08034AC4:
	.4byte 0x0000FF60
_08034AC8:
	.4byte 0x00000215
	THUMB_FUNC_END sub_08034A60

	THUMB_FUNC_START sub_08034ACC
sub_08034ACC: @ 0x08034ACC
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08034AEA
	ldrb r0, [r1, #21]
	add r0, r0, #1
	strb r0, [r1, #21]
	mov r0, #0
	mov r1, #2
	bl sub_0800C0B0
_08034AEA:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034ACC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034AF0
sub_08034AF0: @ 0x08034AF0
	push {r4,lr}
	add r4, r0, #0
	mov r1, #58
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08034B0E
	ldr r0, [r4, #56]
	mov r1, #128
	lsl r1, r1, #7
	add r0, r0, r1
	str r0, [r4, #56]
	add r0, r4, #0
	bl 0x08003828
	b _08034B54
_08034B0E:
	ldr r2, _08034B5C  @ =gUnknown_0201F000
	ldr r0, [r2]
	mov r1, #1
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #16
	bl sub_0802C2DC
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #15
	and r0, r0, r1
	ldrb r2, [r4, #30]
	mov r1, #16
	neg r1, r1
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r4, #30]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r1, [r2]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #21]
	add r0, r0, #1
	strb r0, [r4, #21]
	ldr r0, _08034B60  @ =0x00000216
	bl sub_0800D24C
	add r0, r4, #0
	mov r1, #10
	bl sub_0804CE00
_08034B54:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08034B5C:
	.4byte gUnknown_0201F000
_08034B60:
	.4byte 0x00000216
	THUMB_FUNC_END sub_08034AF0

	THUMB_FUNC_START sub_08034B64
sub_08034B64: @ 0x08034B64
	push {lr}
	bl 0x08003828
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034B64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034B70
sub_08034B70: @ 0x08034B70
	push {lr}
	ldr r2, _08034B84  @ =gUnknown_08427B1C
	ldrb r1, [r0, #21]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034B84:
	.4byte gUnknown_08427B1C
	THUMB_FUNC_END sub_08034B70

	THUMB_FUNC_START sub_08034B88
sub_08034B88: @ 0x08034B88
	push {lr}
	ldrb r1, [r0, #21]
	add r1, r1, #1
	strb r1, [r0, #21]
	mov r1, #9
	bl sub_0804CE00
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034B88

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034B9C
sub_08034B9C: @ 0x08034B9C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r1, [r4, #96]
	mov r0, #2
	strb r0, [r1, #2]
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08034BCE
	ldr r1, [r4, #96]
	mov r0, #1
	strb r0, [r1, #4]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r1, [r2]
	sub r0, r0, #14
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2]
_08034BCE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034B9C

	THUMB_FUNC_START sub_08034BD4
sub_08034BD4: @ 0x08034BD4
	push {lr}
	ldr r2, _08034BE8  @ =gUnknown_08427B24
	ldrb r1, [r0, #21]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034BE8:
	.4byte gUnknown_08427B24
	THUMB_FUNC_END sub_08034BD4

	THUMB_FUNC_START sub_08034BEC
sub_08034BEC: @ 0x08034BEC
	push {lr}
	ldrb r1, [r0, #21]
	add r1, r1, #1
	strb r1, [r0, #21]
	mov r1, #192
	lsl r1, r1, #9
	str r1, [r0, #16]
	ldr r2, [r0, #96]
	mov r1, #2
	strb r1, [r2, #2]
	mov r1, #4
	bl sub_0804CE00
	mov r0, #90
	mov r1, #1
	mov r2, #30
	bl sub_0804C8A8
	mov r1, #144
	strh r1, [r0, #50]
	mov r1, #224
	strh r1, [r0, #54]
	ldr r0, _08034C24  @ =0x000001F7
	bl sub_0800D24C
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08034C24:
	.4byte 0x000001F7
	THUMB_FUNC_END sub_08034BEC

	THUMB_FUNC_START sub_08034C28
sub_08034C28: @ 0x08034C28
	push {r4,lr}
	add r4, r0, #0
	mov r1, #144
	lsl r1, r1, #6
	bl 0x08003594
	cmp r0, #0
	bne _08034C3E
	ldr r1, [r4, #96]
	mov r0, #1
	strb r0, [r1, #4]
_08034C3E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034C28

	THUMB_FUNC_START sub_08034C44
sub_08034C44: @ 0x08034C44
	push {lr}
	ldr r2, _08034C58  @ =gUnknown_0813DCA8
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034C58:
	.4byte gUnknown_0813DCA8
	THUMB_FUNC_END sub_08034C44

	THUMB_FUNC_START sub_08034C5C
sub_08034C5C: @ 0x08034C5C
	push {r4,r5,lr}
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4, #20]
	add r0, r4, #0
	add r0, r0, #80
	ldrh r0, [r0]
	bl sub_08015DC0
	mov r1, #50
	ldrsh r2, [r4, r1]
	ldr r3, _08034C9C  @ =gUnknown_03000450
	ldrh r1, [r3, #24]
	sub r2, r2, r1
	asr r2, r2, #4
	mov r5, #54
	ldrsh r1, [r4, r5]
	ldrh r3, [r3, #26]
	sub r1, r1, r3
	asr r1, r1, #4
	lsl r1, r1, #6
	orr r2, r2, r1
	lsl r2, r2, #1
	add r2, r2, #4
	add r0, r0, r2
	str r0, [r4, #124]
	ldrh r0, [r0]
	add r4, r4, #120
	strh r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
_08034C9C:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08034C5C

	THUMB_FUNC_START sub_08034CA0
sub_08034CA0: @ 0x08034CA0
	push {r4,lr}
	add r4, r0, #0
	add r0, r0, #120
	ldr r1, [r4, #124]
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08034CCC
	ldrb r1, [r4, #10]
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08034CC6
	add r0, r4, #0
	bl sub_0803D3D0
_08034CC6:
	add r0, r4, #0
	bl sub_08012540
_08034CCC:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034CA0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034CD4
sub_08034CD4: @ 0x08034CD4
	push {lr}
	ldr r2, _08034CE8  @ =gUnknown_08427B2C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034CE8:
	.4byte gUnknown_08427B2C
	THUMB_FUNC_END sub_08034CD4

	THUMB_FUNC_START sub_08034CEC
sub_08034CEC: @ 0x08034CEC
	push {lr}
	ldrb r1, [r0, #20]
	add r1, r1, #1
	strb r1, [r0, #20]
	ldrb r2, [r0, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r2
	mov r2, #1
	orr r1, r1, r2
	strb r1, [r0, #28]
	add r1, r0, #0
	add r1, r1, #35
	ldrb r1, [r1]
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034CEC

	THUMB_FUNC_START sub_08034D10
sub_08034D10: @ 0x08034D10
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #10]
	cmp r0, #0
	bne _08034D20
	add r0, r4, #0
	bl 0x08003828
_08034D20:
	ldrb r0, [r4, #11]
	cmp r0, #0
	beq _08034D38
	ldrb r2, [r4, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
_08034D38:
	ldrb r1, [r4, #23]
	mov r2, #128
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08034D6E
	cmp r1, #0
	beq _08034D5A
	sub r0, r1, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08034D6E
	add r0, r4, #0
	bl sub_08012540
	b _08034D6E
_08034D5A:
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08034D6E
	add r0, r4, #0
	bl sub_08012540
_08034D6E:
	ldr r1, [r4, #88]
	cmp r1, #0
	beq _08034D80
	ldr r0, [r1, #48]
	str r0, [r4, #48]
	ldr r0, [r1, #52]
	str r0, [r4, #52]
	ldr r0, [r1, #56]
	str r0, [r4, #56]
_08034D80:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034D10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08034D88
sub_08034D88: @ 0x08034D88
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	ldrb r0, [r5, #20]
	cmp r0, #0
	beq _08034E54
	ldrb r0, [r5, #24]
	sub r0, r0, #1
	strb r0, [r5, #24]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #255
	bne _08034E7A
	mov r6, #0
	ldr r0, _08034DF0  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r6, r0
	bcs _08034E38
	ldr r0, _08034DF4  @ =gUnknown_03006A58
	mov r8, r0
	mov r7, #31
_08034DB4:
	mov r0, #12
	bl sub_08012494
	add r4, r0, #0
	cmp r4, #0
	beq _08034E2A
	lsl r0, r6, #3
	add r0, r0, r6
	lsl r0, r0, #4
	add r0, r0, r8
	ldr r1, [r0]
	ldrh r1, [r1, #50]
	strh r1, [r4, #50]
	ldr r0, [r0]
	ldrh r0, [r0, #54]
	strh r0, [r4, #54]
	bl 0x0800099C
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08034DF8
	bl 0x0800099C
	and r0, r0, r7
	ldrh r1, [r4, #50]
	add r0, r0, r1
	strh r0, [r4, #50]
	b _08034E04
	.byte 0x00
	.byte 0x00
_08034DF0:
	.4byte gUnknown_03006C80
_08034DF4:
	.4byte gUnknown_03006A58
_08034DF8:
	bl 0x0800099C
	and r0, r0, r7
	ldrh r1, [r4, #50]
	sub r1, r1, r0
	strh r1, [r4, #50]
_08034E04:
	bl 0x0800099C
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08034E1E
	bl 0x0800099C
	and r0, r0, r7
	ldrh r1, [r4, #50]
	add r0, r0, r1
	strh r0, [r4, #50]
	b _08034E2A
_08034E1E:
	bl 0x0800099C
	and r0, r0, r7
	ldrh r1, [r4, #50]
	sub r1, r1, r0
	strh r1, [r4, #50]
_08034E2A:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r0, _08034E50  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r6, r0
	bcc _08034DB4
_08034E38:
	mov r0, #30
	strb r0, [r5, #24]
	ldrb r0, [r5, #23]
	sub r0, r0, #1
	strb r0, [r5, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08034E7A
	add r0, r5, #0
	bl sub_08012540
	b _08034E7A
_08034E50:
	.4byte gUnknown_03006C80
_08034E54:
	add r0, r0, #1
	strb r0, [r5, #20]
	mov r4, #1
	strb r4, [r5, #23]
	mov r0, #30
	strb r0, [r5, #24]
	ldrb r0, [r5, #10]
	cmp r0, #0
	bne _08034E7A
	mov r0, #2
	strb r0, [r5, #23]
	bl 0x0800099C
	and r0, r0, r4
	cmp r0, #0
	beq _08034E7A
	ldrb r0, [r5, #23]
	add r0, r0, #1
	strb r0, [r5, #23]
_08034E7A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034D88

	THUMB_FUNC_START sub_08034E84
sub_08034E84: @ 0x08034E84
	push {lr}
	ldr r2, _08034E98  @ =gUnknown_08427B34
	ldrb r1, [r0, #10]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034E98:
	.4byte gUnknown_08427B34
	THUMB_FUNC_END sub_08034E84

	THUMB_FUNC_START sub_08034E9C
sub_08034E9C: @ 0x08034E9C
	push {lr}
	ldr r2, _08034EB0  @ =gUnknown_08427B3C
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034EB0:
	.4byte gUnknown_08427B3C
	THUMB_FUNC_END sub_08034E9C

	THUMB_FUNC_START sub_08034EB4
sub_08034EB4: @ 0x08034EB4
	push {lr}
	ldrb r1, [r0, #20]
	add r1, r1, #1
	strb r1, [r0, #20]
	ldrb r2, [r0, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r2
	mov r2, #2
	orr r1, r1, r2
	strb r1, [r0, #28]
	ldrb r3, [r0, #31]
	mov r2, #63
	add r1, r2, #0
	and r1, r1, r3
	strb r1, [r0, #31]
	ldrb r3, [r0, #29]
	add r1, r2, #0
	and r1, r1, r3
	strb r1, [r0, #29]
	add r3, r0, #0
	add r3, r3, #32
	mov r1, #96
	strb r1, [r3]
	ldrb r1, [r0, #28]
	and r2, r2, r1
	mov r1, #64
	orr r2, r2, r1
	strb r2, [r0, #28]
	mov r1, #154
	strb r1, [r0, #27]
	mov r1, #0
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034EB4

	THUMB_FUNC_START sub_08034EFC
sub_08034EFC: @ 0x08034EFC
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	cmp r1, #2
	bne _08034F30
	mov r0, #0
	strb r0, [r2]
	ldr r1, _08034F28  @ =gUnknown_02016D60
	mov r0, #1
	strb r0, [r1, #13]
	mov r0, #129
	lsl r0, r0, #2
	bl sub_0800D24C
	ldr r0, _08034F2C  @ =0x00000202
	bl sub_0800D24C
	b _08034F56
_08034F28:
	.4byte gUnknown_02016D60
_08034F2C:
	.4byte 0x00000202
_08034F30:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08034F56
	ldr r1, _08034F5C  @ =gUnknown_02016D60
	mov r0, #2
	strb r0, [r1, #13]
	mov r0, #98
	mov r1, #1
	mov r2, #0
	bl sub_0804C8A8
	mov r1, #120
	strh r1, [r0, #50]
	mov r1, #40
	strh r1, [r0, #54]
	add r0, r4, #0
	bl sub_08012540
_08034F56:
	pop {r4}
	pop {r0}
	bx r0
_08034F5C:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_08034EFC

	THUMB_FUNC_START sub_08034F60
sub_08034F60: @ 0x08034F60
	push {lr}
	ldr r2, _08034F74  @ =gUnknown_08427B44
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08034F74:
	.4byte gUnknown_08427B44
	THUMB_FUNC_END sub_08034F60

	THUMB_FUNC_START sub_08034F78
sub_08034F78: @ 0x08034F78
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldrb r2, [r4, #31]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r4, #31]
	ldrb r2, [r4, #29]
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r4, #29]
	add r2, r4, #0
	add r2, r2, #32
	mov r0, #96
	strb r0, [r2]
	ldrb r0, [r4, #28]
	and r1, r1, r0
	mov r0, #64
	orr r1, r1, r0
	strb r1, [r4, #28]
	mov r0, #155
	strb r0, [r4, #27]
	ldr r0, _08034FD4  @ =0x06012C00
	ldr r1, _08034FD8  @ =0x03000030
	ldr r1, [r1]
	ldr r2, _08034FDC  @ =0x000EB8CC
	add r1, r1, r2
	bl 0x080009F0
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
_08034FD4:
	.4byte 0x06012C00
_08034FD8:
	.4byte 0x03000030
_08034FDC:
	.4byte 0x000EB8CC
	THUMB_FUNC_END sub_08034F78

	THUMB_FUNC_START sub_08034FE0
sub_08034FE0: @ 0x08034FE0
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r0, _08034FFC  @ =gUnknown_02016D60
	ldrb r0, [r0, #14]
	cmp r0, #4
	bhi _080350B0
	lsl r0, r0, #2
	ldr r1, _08035000  @ =0x08035004
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_08034FFC:
	.4byte gUnknown_02016D60
_08035000:
	.4byte 0x08035004
	.4byte _080350B0
	.4byte _08035018
	.4byte _0803504C
	.4byte _0803505C
	.4byte _0803508C
_08035018:
	ldr r0, _08035044  @ =gUnknown_03000450
	str r4, [r0]
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #16
	strb r0, [r1]
	mov r0, #128
	str r0, [r4, #12]
	add r0, r4, #0
	bl sub_0803CC20
	mov r1, #54
	ldrsh r0, [r4, r1]
	cmp r0, #160
	ble _080350B0
	ldr r0, _08035048  @ =gUnknown_02016D60
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #14]
	b _080350B0
_08035044:
	.4byte gUnknown_03000450
_08035048:
	.4byte gUnknown_02016D60
_0803504C:
	add r0, r4, #0
	add r0, r0, #41
	ldrb r0, [r0]
	cmp r0, #1
	bne _080350B0
	add r0, r4, #0
	mov r1, #2
	b _0803507C
_0803505C:
	add r0, r4, #0
	add r0, r0, #41
	ldrb r1, [r0]
	cmp r1, #1
	bne _08035070
	add r0, r4, #0
	mov r1, #3
	bl 0x08003870
	b _080350B0
_08035070:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _080350B0
	add r0, r4, #0
	mov r1, #1
_0803507C:
	bl 0x08003870
	ldr r1, _08035088  @ =gUnknown_02016D60
	mov r0, #0
	strb r0, [r1, #14]
	b _080350B0
_08035088:
	.4byte gUnknown_02016D60
_0803508C:
	add r0, r4, #0
	bl 0x08003828
	add r1, r4, #0
	add r1, r1, #96
	mov r0, #192
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #16
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #4
	strb r0, [r1]
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	mov r0, #128
	strb r0, [r4, #23]
_080350B0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08034FE0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080350B8
sub_080350B8: @ 0x080350B8
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	add r0, r0, #97
	ldrb r1, [r0]
	ldr r3, _08035108  @ =gUnknown_0813E4CC
	add r2, r4, #0
	add r2, r2, #96
	ldrb r0, [r2]
	add r0, r0, #64
	lsl r0, r0, #1
	add r0, r0, r3
	mov r5, #0
	ldrsh r0, [r0, r5]
	mul r0, r1, r0
	asr r0, r0, #8
	add r0, r0, #120
	strh r0, [r4, #50]
	add r0, r4, #0
	add r0, r0, #98
	ldrb r1, [r0]
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	mov r2, #0
	ldrsh r0, [r0, r2]
	mul r0, r1, r0
	asr r0, r0, #8
	add r0, r0, #156
	strh r0, [r4, #54]
	ldrb r0, [r4, #21]
	cmp r0, #5
	bhi _080351D6
	lsl r0, r0, #2
	ldr r1, _0803510C  @ =0x08035110
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08035108:
	.4byte gUnknown_0813E4CC
_0803510C:
	.4byte 0x08035110
	.4byte _08035128
	.4byte _08035142
	.4byte _08035164
	.4byte _08035164
	.4byte _08035164
	.4byte _08035198
_08035128:
	add r0, r4, #0
	add r0, r0, #96
	ldrb r1, [r0]
	sub r1, r1, #2
	strb r1, [r0]
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080351D6
	mov r0, #64
	b _0803515A
_08035142:
	add r0, r4, #0
	add r0, r0, #96
	ldrb r1, [r0]
	sub r1, r1, #4
	strb r1, [r0]
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080351D6
	mov r0, #32
_0803515A:
	strb r0, [r4, #23]
	ldrb r0, [r4, #21]
	add r0, r0, #1
	strb r0, [r4, #21]
	b _080351D6
_08035164:
	add r0, r4, #0
	add r0, r0, #96
	ldrb r1, [r0]
	sub r1, r1, #8
	strb r1, [r0]
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _080351D6
	mov r0, #32
	strb r0, [r4, #23]
	ldrb r0, [r4, #21]
	add r0, r0, #1
	strb r0, [r4, #21]
	add r1, r4, #0
	add r1, r1, #97
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r1, r1, #1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _080351D6
_08035198:
	add r0, r4, #0
	add r0, r0, #96
	ldrb r1, [r0]
	sub r1, r1, #8
	strb r1, [r0]
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _080351D6
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	strb r1, [r4, #21]
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #23
	strb r0, [r1]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [r4, #12]
	ldr r0, _080351DC  @ =0x000001FB
	bl sub_0800D24C
	mov r0, #0
	mov r1, #8
	mov r2, #0
	bl sub_08063D28
_080351D6:
	pop {r4,r5}
	pop {r0}
	bx r0
_080351DC:
	.4byte 0x000001FB
	THUMB_FUNC_END sub_080350B8

	THUMB_FUNC_START sub_080351E0
sub_080351E0: @ 0x080351E0
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	add r0, r4, #0
	bl sub_0803CC20
	mov r0, #50
	ldrsh r1, [r4, r0]
	mov r0, #64
	neg r0, r0
	cmp r1, r0
	bge _0803521C
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldr r0, _08035224  @ =gUnknown_03006A30
	ldr r0, [r0, #40]
	add r0, r0, #42
	mov r1, #6
	strb r1, [r0]
	mov r0, #0
	mov r1, #16
	mov r2, #0
	bl sub_08063D28
	ldr r1, _08035228  @ =gUnknown_02016D60
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_0803521C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035224:
	.4byte gUnknown_03006A30
_08035228:
	.4byte gUnknown_02016D60
	THUMB_FUNC_END sub_080351E0

	THUMB_FUNC_START sub_0803522C
sub_0803522C: @ 0x0803522C
	push {r4,r5,lr}
	sub sp, sp, #4
	add r5, r0, #0
	bl 0x08003828
	ldr r4, _08035250  @ =gUnknown_02016D60
	ldrb r0, [r4, #14]
	cmp r0, #4
	bls _080352FA
	ldrb r0, [r5, #21]
	cmp r0, #1
	beq _0803527C
	cmp r0, #1
	bgt _08035254
	cmp r0, #0
	beq _0803525A
	b _080352FA
	.byte 0x00
	.byte 0x00
_08035250:
	.4byte gUnknown_02016D60
_08035254:
	cmp r0, #2
	beq _080352E4
	b _080352FA
_0803525A:
	mov r1, sp
	ldr r0, _08035274  @ =gUnknown_03006A30
	ldr r2, [r0, #40]
	ldrh r0, [r2, #50]
	strh r0, [r1]
	ldrh r0, [r2, #54]
	strh r0, [r1, #2]
	add r0, r5, #0
	mov r2, #30
	bl sub_0803D7E8
	ldr r0, _08035278  @ =0x000001FB
	b _080352C8
_08035274:
	.4byte gUnknown_03006A30
_08035278:
	.4byte 0x000001FB
_0803527C:
	add r0, r5, #0
	bl sub_0803D8AC
	cmp r0, #0
	beq _080352FA
	mov r1, sp
	mov r0, #150
	lsl r0, r0, #1
	strh r0, [r1]
	ldr r4, _080352D4  @ =gUnknown_03006A30
	ldr r0, [r4, #40]
	ldrh r0, [r0, #54]
	sub r0, r0, #32
	strh r0, [r1, #2]
	add r0, r5, #0
	mov r2, #30
	bl sub_0803D7E8
	mov r0, #9
	strb r0, [r4, #12]
	ldr r0, _080352D8  @ =0x00000507
	bl sub_0800D67C
	ldr r3, _080352DC  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #14
	orr r1, r1, r0
	strb r1, [r3, #4]
	ldr r0, _080352E0  @ =0x00000202
_080352C8:
	bl sub_0800D24C
	ldrb r0, [r5, #21]
	add r0, r0, #1
	strb r0, [r5, #21]
	b _080352FA
_080352D4:
	.4byte gUnknown_03006A30
_080352D8:
	.4byte 0x00000507
_080352DC:
	.4byte gUnknown_02000010
_080352E0:
	.4byte 0x00000202
_080352E4:
	add r0, r5, #0
	bl sub_0803D8AC
	cmp r0, #0
	beq _080352FA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl sub_08012540
_080352FA:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803522C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08035304
sub_08035304: @ 0x08035304
	bx lr
	THUMB_FUNC_END sub_08035304

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08035308
sub_08035308: @ 0x08035308
	push {lr}
	ldr r2, _0803531C  @ =gUnknown_08427B58
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0803531C:
	.4byte gUnknown_08427B58
	THUMB_FUNC_END sub_08035308

	THUMB_FUNC_START sub_08035320
sub_08035320: @ 0x08035320
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r0, [r4, #10]
	bl sub_08013D20
	str r0, [r4, #96]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035320

	THUMB_FUNC_START sub_08035338
sub_08035338: @ 0x08035338
	push {r4,lr}
	add r3, r0, #0
	ldr r1, _0803536C  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r4, r0, r1
	ldr r2, [r4]
	ldr r1, [r3, #96]
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, r1
	bne _08035366
	ldr r0, _08035370  @ =gUnknown_08137B10
	ldrb r1, [r3, #11]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	bic r2, r2, r0
	str r2, [r4]
	add r0, r3, #0
	bl sub_08012540
_08035366:
	pop {r4}
	pop {r0}
	bx r0
_0803536C:
	.4byte gUnknown_0201F000
_08035370:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_08035338

	THUMB_FUNC_START sub_08035374
sub_08035374: @ 0x08035374
	push {lr}
	ldr r2, _08035388  @ =gUnknown_08427B60
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08035388:
	.4byte gUnknown_08427B60
	THUMB_FUNC_END sub_08035374

	THUMB_FUNC_START sub_0803538C
sub_0803538C: @ 0x0803538C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	ldrb r0, [r4, #10]
	bl sub_08013D20
	str r0, [r4, #96]
	add r0, r4, #0
	add r0, r0, #82
	ldrb r0, [r0]
	ldrb r1, [r4, #23]
	bl sub_08012F84
	str r0, [r4, #100]
	ldrh r0, [r4, #50]
	strb r0, [r4, #24]
	ldrh r0, [r4, #54]
	strb r0, [r4, #22]
	ldrb r0, [r4, #11]
	lsr r0, r0, #5
	add r1, r4, #0
	add r1, r1, #104
	strb r0, [r1]
	ldrb r1, [r4, #11]
	mov r0, #31
	and r0, r0, r1
	strb r0, [r4, #11]
	ldrh r0, [r4, #50]
	lsl r0, r0, #16
	asr r0, r0, #24
	mov r1, #1
	and r0, r0, r1
	add r1, r4, #0
	add r1, r1, #106
	strh r0, [r1]
	mov r3, #128
	lsl r3, r3, #8
	add r2, r3, #0
	cmp r0, #0
	bne _080353E6
	mov r0, #128
	lsl r0, r0, #7
	add r2, r0, #0
_080353E6:
	strh r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803538C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080353F0
sub_080353F0: @ 0x080353F0
	add r2, r0, #0
	ldr r1, _08035414  @ =gUnknown_0201F000
	add r0, r0, #82
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #96]
	and r0, r0, r1
	cmp r0, r1
	bne _08035410
	ldrb r0, [r2, #20]
	add r0, r0, #1
	strb r0, [r2, #20]
	ldrb r0, [r2, #24]
	strb r0, [r2, #23]
_08035410:
	bx lr
	.byte 0x00
	.byte 0x00
_08035414:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_080353F0

	THUMB_FUNC_START sub_08035418
sub_08035418: @ 0x08035418
	push {r4-r7,lr}
	add r6, r0, #0
	ldr r7, [r6, #100]
	ldrb r0, [r7]
	cmp r0, #255
	bne _08035450
	ldr r0, _08035448  @ =gUnknown_0201F000
	add r1, r6, #0
	add r1, r1, #82
	ldrb r2, [r1]
	lsl r2, r2, #2
	add r2, r2, r0
	ldr r1, _0803544C  @ =gUnknown_08137B10
	ldrb r0, [r6, #11]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	orr r1, r1, r0
	str r1, [r2]
	add r0, r6, #0
	bl sub_08012540
	b _0803549A
_08035448:
	.4byte gUnknown_0201F000
_0803544C:
	.4byte gUnknown_08137B10
_08035450:
	ldrb r0, [r6, #23]
	sub r0, r0, #1
	strb r0, [r6, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0803549A
	ldrb r0, [r6, #24]
	strb r0, [r6, #23]
	ldrb r2, [r7]
	lsl r2, r2, #4
	mov r5, #8
	orr r2, r2, r5
	ldr r4, _080354A0  @ =gUnknown_0201EFF8
	add r0, r6, #0
	add r0, r0, #82
	ldrb r3, [r0]
	lsl r3, r3, #2
	add r0, r3, r4
	ldrh r1, [r0]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrb r0, [r7, #1]
	lsl r0, r0, #4
	orr r0, r0, r5
	add r4, r4, #2
	add r3, r3, r4
	ldrh r2, [r3]
	add r2, r2, r0
	lsl r2, r2, #16
	lsr r2, r2, #16
	add r0, r6, #0
	bl sub_080354A4
	ldr r0, [r6, #100]
	add r0, r0, #2
	str r0, [r6, #100]
_0803549A:
	pop {r4-r7}
	pop {r0}
	bx r0
_080354A0:
	.4byte gUnknown_0201EFF8
	THUMB_FUNC_END sub_08035418

	THUMB_FUNC_START sub_080354A4
sub_080354A4: @ 0x080354A4
	push {r4-r6,lr}
	add r4, r0, #0
	lsl r1, r1, #16
	lsr r6, r1, #16
	lsl r2, r2, #16
	lsr r5, r2, #16
	ldr r1, _080354E8  @ =gUnknown_08427B6C
	add r0, r0, #104
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r1, [r0]
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	add r2, r0, #0
	cmp r2, #0
	beq _080354E2
	strh r6, [r2, #50]
	strh r5, [r2, #54]
	ldrb r0, [r4, #22]
	strb r0, [r2, #23]
	add r0, r4, #0
	add r0, r0, #106
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, r0, #80
	strh r1, [r0]
	add r0, r2, #0
	bl sub_0804C9C8
_080354E2:
	pop {r4-r6}
	pop {r0}
	bx r0
_080354E8:
	.4byte gUnknown_08427B6C
	THUMB_FUNC_END sub_080354A4

	THUMB_FUNC_START sub_080354EC
sub_080354EC: @ 0x080354EC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	ldr r0, [r4, #84]
	ldrb r0, [r0, #10]
	cmp r0, #4
	bls _08035500
	mov r0, #1
	strb r0, [r4, #24]
_08035500:
	ldr r0, [r4, #84]
	ldrb r2, [r0, #10]
	cmp r2, #0
	beq _0803553E
	ldrb r1, [r4, #24]
	cmp r1, #0
	bne _0803553E
	ldrb r0, [r4, #10]
	cmp r0, r2
	beq _08035516
	str r1, [r4, #100]
_08035516:
	ldr r0, [r4, #100]
	cmp r0, #0
	beq _08035520
	sub r0, r0, #1
	b _08035536
_08035520:
	ldr r1, _080355B4  @ =gUnknown_0813DDF0
	ldr r0, [r4, #84]
	ldrb r0, [r0, #10]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	bl sub_0800D6A4
	mov r0, #225
	lsl r0, r0, #3
_08035536:
	str r0, [r4, #100]
	ldr r0, [r4, #84]
	ldrb r0, [r0, #10]
	strb r0, [r4, #10]
_0803553E:
	mov r6, #0
	ldr r0, _080355B8  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r6, r0
	bcs _080355AA
	ldr r7, _080355BC  @ =gUnknown_03006A30
	ldr r0, _080355C0  @ =0x000002AA
	mov r8, r0
_0803554E:
	lsl r0, r6, #3
	add r0, r0, r6
	lsl r2, r0, #4
	add r0, r7, #0
	add r0, r0, #40
	add r5, r2, r0
	ldr r1, [r5]
	mov r3, #50
	ldrsh r0, [r1, r3]
	cmp r0, r8
	ble _0803559C
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803559C
	add r4, r2, r7
	ldrh r1, [r4, #54]
	mov r2, #136
	lsl r2, r2, #4
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0803559C
	mov r0, #85
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _0803559C
	ldr r0, [r5]
	str r0, [r1, #88]
	mov r0, #128
	lsl r0, r0, #4
	strh r0, [r4, #54]
	mov r0, #13
	strb r0, [r4, #12]
_0803559C:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r0, _080355B8  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r6, r0
	bcc _0803554E
_080355AA:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080355B4:
	.4byte gUnknown_0813DDF0
_080355B8:
	.4byte gUnknown_03006C80
_080355BC:
	.4byte gUnknown_03006A30
_080355C0:
	.4byte 0x000002AA
	THUMB_FUNC_END sub_080354EC

	THUMB_FUNC_START sub_080355C4
sub_080355C4: @ 0x080355C4
	push {lr}
	ldr r2, _080355D8  @ =gUnknown_0813DDF8
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080355D8:
	.4byte gUnknown_0813DDF8
	THUMB_FUNC_END sub_080355C4

	THUMB_FUNC_START sub_080355DC
sub_080355DC: @ 0x080355DC
	push {r4,lr}
	mov r4, #1
	mov r1, #1
	strb r1, [r0, #20]
	ldrb r3, [r0, #28]
	mov r2, #4
	neg r2, r2
	add r1, r2, #0
	and r1, r1, r3
	orr r1, r1, r4
	strb r1, [r0, #28]
	add r3, r0, #0
	add r3, r3, #94
	ldrb r1, [r3]
	and r2, r2, r1
	strb r2, [r3]
	ldrb r1, [r0, #29]
	mov r2, #192
	orr r1, r1, r2
	strb r1, [r0, #29]
	ldrb r1, [r0, #10]
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080355DC

	THUMB_FUNC_START sub_08035610
sub_08035610: @ 0x08035610
	push {lr}
	bl 0x08003828
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035610

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803561C
sub_0803561C: @ 0x0803561C
	push {lr}
	ldr r2, _08035630  @ =gUnknown_0813DE10
	ldrb r1, [r0, #10]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08035630:
	.4byte gUnknown_0813DE10
	THUMB_FUNC_END sub_0803561C

	THUMB_FUNC_START sub_08035634
sub_08035634: @ 0x08035634
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _08035678
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	ldrb r2, [r4, #29]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #64
	orr r0, r0, r2
	strb r0, [r4, #29]
	ldrb r0, [r4, #31]
	and r1, r1, r0
	orr r1, r1, r2
	strb r1, [r4, #31]
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	mov r1, #3
	orr r0, r0, r1
	strb r0, [r2]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
_08035678:
	add r0, r4, #0
	bl 0x08003828
	add r2, r4, #0
	add r2, r2, #41
	ldrb r1, [r2]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080356A2
	mov r0, #0
	strb r0, [r2]
	ldrb r0, [r4, #23]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r4, #23]
	cmp r0, #0
	beq _080356A2
	ldr r0, _080356BC  @ =0x0000021D
	bl sub_0800D24C
_080356A2:
	ldr r0, _080356C0  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080356B4
	add r0, r4, #0
	bl sub_08012540
_080356B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080356BC:
	.4byte 0x0000021D
_080356C0:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08035634

	THUMB_FUNC_START sub_080356C4
sub_080356C4: @ 0x080356C4
	push {lr}
	ldr r2, _080356D8  @ =gUnknown_0813DE20
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_080356D8:
	.4byte gUnknown_0813DE20
	THUMB_FUNC_END sub_080356C4

	THUMB_FUNC_START sub_080356DC
sub_080356DC: @ 0x080356DC
	push {lr}
	mov r3, #1
	mov r1, #1
	strb r1, [r0, #20]
	ldrb r1, [r0, #11]
	strb r1, [r0, #24]
	mov r1, #160
	lsl r1, r1, #2
	str r1, [r0, #12]
	ldrb r2, [r0, #28]
	mov r1, #4
	neg r1, r1
	and r1, r1, r2
	orr r1, r1, r3
	strb r1, [r0, #28]
	add r3, r0, #0
	add r3, r3, #94
	ldrb r1, [r3]
	mov r2, #3
	orr r1, r1, r2
	strb r1, [r3]
	mov r1, #3
	bl 0x08003870
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080356DC

	THUMB_FUNC_START sub_08035710
sub_08035710: @ 0x08035710
	push {r4,r5,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r0, _08035744  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r5, #2
	and r0, r0, r5
	cmp r0, #0
	beq _0803573E
	add r0, r4, #0
	bl sub_0803CC20
	mov r1, #54
	ldrsh r0, [r4, r1]
	mov r1, #130
	lsl r1, r1, #1
	cmp r0, r1
	bgt _0803573E
	strh r1, [r4, #54]
	strb r5, [r4, #20]
	mov r0, #30
	strb r0, [r4, #23]
_0803573E:
	pop {r4,r5}
	pop {r0}
	bx r0
_08035744:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08035710

	THUMB_FUNC_START sub_08035748
sub_08035748: @ 0x08035748
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0803579E
	mov r0, #3
	strb r0, [r4, #20]
	ldr r1, _08035784  @ =gUnknown_0201F000
	mov r0, #4
	str r0, [r1]
	mov r1, #50
	ldrsh r0, [r4, r1]
	mov r2, #252
	lsl r2, r2, #1
	cmp r0, r2
	ble _0803578C
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #24
	strb r0, [r1]
	mov r1, #50
	ldrsh r0, [r4, r1]
	ldr r1, _08035788  @ =0xFFFFFE08
	add r0, r0, r1
	b _0803579A
_08035784:
	.4byte gUnknown_0201F000
_08035788:
	.4byte 0xFFFFFE08
_0803578C:
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #8
	strb r0, [r1]
	mov r1, #50
	ldrsh r0, [r4, r1]
	sub r0, r2, r0
_0803579A:
	lsl r0, r0, #1
	str r0, [r4, #12]
_0803579E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035748

	THUMB_FUNC_START sub_080357A4
sub_080357A4: @ 0x080357A4
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r0, [r4, #12]
	cmp r0, #0
	beq _080357B8
	add r0, r4, #0
	bl sub_0803CC20
_080357B8:
	ldr r0, _080357D0  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _080357CA
	add r0, r4, #0
	bl sub_08012540
_080357CA:
	pop {r4}
	pop {r0}
	bx r0
_080357D0:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_080357A4

	THUMB_FUNC_START sub_080357D4
sub_080357D4: @ 0x080357D4
	push {r4,lr}
	add r4, r0, #0
	ldrb r3, [r4, #20]
	cmp r3, #1
	beq _08035844
	cmp r3, #1
	bgt _080357E8
	cmp r3, #0
	beq _080357EE
	b _0803588E
_080357E8:
	cmp r3, #2
	beq _08035868
	b _0803588E
_080357EE:
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	ldrb r0, [r4, #11]
	cmp r0, #0
	bne _0803580E
	ldrb r1, [r4, #29]
	mov r0, #63
	and r0, r0, r1
	strb r0, [r4, #29]
	b _08035832
_0803580E:
	ldrb r0, [r4, #29]
	mov r1, #192
	orr r0, r0, r1
	mov r1, #13
	neg r1, r1
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r4, #29]
	ldr r1, _0803583C  @ =gUnknown_030004A0
	add r2, r1, #0
	add r2, r2, #102
	mov r0, #244
	lsl r0, r0, #4
	strh r0, [r2]
	add r1, r1, #104
	ldr r0, _08035840  @ =0x00000809
	strh r0, [r1]
_08035832:
	ldrb r1, [r4, #11]
	add r0, r4, #0
	bl 0x08003870
	b _0803588E
_0803583C:
	.4byte gUnknown_030004A0
_08035840:
	.4byte 0x00000809
_08035844:
	ldr r0, _08035864  @ =gUnknown_0201F000
	ldr r0, [r0]
	and r0, r0, r3
	cmp r0, #0
	beq _0803588E
	ldrb r0, [r4, #11]
	cmp r0, #0
	bne _0803585C
	mov r0, #135
	lsl r0, r0, #2
	bl sub_0800D24C
_0803585C:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	b _0803588E
_08035864:
	.4byte gUnknown_0201F000
_08035868:
	ldr r0, _080358A8  @ =gUnknown_03000948
	ldrh r0, [r0]
	lsr r0, r0, #2
	mov r1, #1
	bic r1, r1, r0
	ldrb r2, [r4, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
	ldr r0, _080358AC  @ =gUnknown_0201F000
	ldr r0, [r0]
	and r0, r0, r3
	cmp r0, #0
	beq _0803588E
	add r0, r4, #0
	bl sub_08012540
_0803588E:
	ldr r1, [r4, #84]
	ldr r0, [r1, #48]
	str r0, [r4, #48]
	ldr r0, [r1, #52]
	str r0, [r4, #52]
	ldr r0, [r1, #56]
	str r0, [r4, #56]
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
_080358A8:
	.4byte gUnknown_03000948
_080358AC:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_080357D4

	THUMB_FUNC_START sub_080358B0
sub_080358B0: @ 0x080358B0
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r1, [r4, #20]
	cmp r1, #0
	bne _080358F8
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	strb r1, [r4, #23]
	ldrb r1, [r4, #28]
	mov r5, #4
	neg r5, r5
	add r0, r5, #0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	ldrb r0, [r4, #29]
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r4, #29]
	ldrb r0, [r4, #11]
	mov r3, #2
	cmp r0, #0
	bne _080358E2
	mov r3, #3
_080358E2:
	add r2, r4, #0
	add r2, r2, #94
	ldrb r0, [r2]
	add r1, r5, #0
	and r1, r1, r0
	orr r1, r1, r3
	strb r1, [r2]
	ldrb r1, [r4, #11]
	add r0, r4, #0
	bl 0x08003870
_080358F8:
	add r0, r4, #0
	bl 0x08003828
	ldrb r2, [r4, #11]
	cmp r2, #0
	bne _08035926
	add r1, r4, #0
	add r1, r1, #41
	ldrb r0, [r1]
	cmp r0, #1
	bne _08035926
	strb r2, [r1]
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0803591C
	ldr r0, _08035940  @ =0x0000021D
	bl sub_0800D24C
_0803591C:
	ldrb r0, [r4, #23]
	add r0, r0, #1
	mov r1, #3
	and r0, r0, r1
	strb r0, [r4, #23]
_08035926:
	ldr r0, _08035944  @ =gUnknown_0201F000
	ldr r0, [r0]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08035938
	add r0, r4, #0
	bl sub_08012540
_08035938:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035940:
	.4byte 0x0000021D
_08035944:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_080358B0

	THUMB_FUNC_START sub_08035948
sub_08035948: @ 0x08035948
	push {lr}
	ldr r2, _0803595C  @ =gUnknown_0813DEDC
	ldrb r1, [r0, #10]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0803595C:
	.4byte gUnknown_0813DEDC
	THUMB_FUNC_END sub_08035948

	THUMB_FUNC_START sub_08035960
sub_08035960: @ 0x08035960
	push {lr}
	ldr r2, _08035978  @ =gUnknown_0813DEF0
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	bl sub_0803DF84
	pop {r0}
	bx r0
_08035978:
	.4byte gUnknown_0813DEF0
	THUMB_FUNC_END sub_08035960

	THUMB_FUNC_START sub_0803597C
sub_0803597C: @ 0x0803597C
	push {r4,lr}
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4, #20]
	mov r0, #192
	lsl r0, r0, #1
	str r0, [r4, #12]
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #16
	strb r0, [r1]
	mov r0, #252
	lsl r0, r0, #1
	strh r0, [r4, #50]
	sub r0, r0, #176
	strh r0, [r4, #54]
	ldr r0, _080359B4  @ =gUnknown_03000450
	str r4, [r0]
	add r0, r4, #0
	mov r1, #0
	bl 0x08003870
	add r0, r4, #0
	bl sub_080361C0
	pop {r4}
	pop {r0}
	bx r0
_080359B4:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_0803597C

	THUMB_FUNC_START sub_080359B8
sub_080359B8: @ 0x080359B8
	push {lr}
	mov r1, #2
	strb r1, [r0, #20]
	ldr r1, [r0, #84]
	bl sub_0803D3D0
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080359B8

	THUMB_FUNC_START sub_080359C8
sub_080359C8: @ 0x080359C8
	push {r4,lr}
	add r4, r0, #0
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r2, _08035A00  @ =gUnknown_03000450
	mov r3, #32
	ldrsh r0, [r2, r3]
	add r0, r0, #120
	cmp r1, r0
	bne _080359FA
	mov r0, #54
	ldrsh r1, [r4, r0]
	mov r3, #34
	ldrsh r0, [r2, r3]
	add r0, r0, #80
	cmp r1, r0
	bne _080359FA
	mov r0, #2
	mov r1, #2
	bl sub_0800C0B0
	mov r0, #3
	strb r0, [r4, #20]
	mov r0, #248
	strb r0, [r4, #23]
_080359FA:
	pop {r4}
	pop {r0}
	bx r0
_08035A00:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_080359C8

	THUMB_FUNC_START sub_08035A04
sub_08035A04: @ 0x08035A04
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08035A12
	sub r0, r0, #1
	b _08035A2C
_08035A12:
	add r0, r4, #0
	bl sub_0803CC20
	mov r0, #54
	ldrsh r1, [r4, r0]
	ldr r0, _08035A34  @ =0x000001A7
	cmp r1, r0
	ble _08035A2E
	add r0, r0, #1
	strh r0, [r4, #54]
	mov r0, #4
	strb r0, [r4, #20]
	mov r0, #30
_08035A2C:
	strb r0, [r4, #23]
_08035A2E:
	pop {r4}
	pop {r0}
	bx r0
_08035A34:
	.4byte 0x000001A7
	THUMB_FUNC_END sub_08035A04

	THUMB_FUNC_START sub_08035A38
sub_08035A38: @ 0x08035A38
	push {r4,lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08035A78
	mov r0, #5
	strb r0, [r1, #20]
	mov r0, #60
	strb r0, [r1, #23]
	mov r1, #0
	ldr r2, _08035A80  @ =gUnknown_03006C80
	ldrb r0, [r2]
	cmp r1, r0
	bcs _08035A78
	ldr r4, _08035A84  @ =gUnknown_03006A58
	mov r3, #4
_08035A5E:
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r4
	ldr r0, [r0]
	add r0, r0, #42
	strb r3, [r0]
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r1, r0, #24
	ldrb r0, [r2]
	cmp r1, r0
	bcc _08035A5E
_08035A78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035A80:
	.4byte gUnknown_03006C80
_08035A84:
	.4byte gUnknown_03006A58
	THUMB_FUNC_END sub_08035A38

	THUMB_FUNC_START sub_08035A88
sub_08035A88: @ 0x08035A88
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08035AE2
	mov r0, #6
	strb r0, [r4, #20]
	mov r0, #16
	strb r0, [r4, #23]
	mov r3, #0
	ldr r5, _08035AEC  @ =gUnknown_03006C80
	ldrb r0, [r5]
	cmp r3, r0
	bcs _08035AE2
	ldr r1, _08035AF0  @ =gUnknown_03006A30
	mov r8, r1
	ldr r0, _08035AF4  @ =0x000001AD
	mov r12, r0
	mov r7, #15
	mov r6, #1
_08035ABA:
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #4
	add r0, r0, r8
	strb r7, [r0, #12]
	mov r1, r12
	strh r1, [r0, #8]
	ldrb r1, [r4, #23]
	add r1, r1, #150
	add r2, r0, #0
	add r2, r2, #56
	strb r1, [r2]
	add r0, r0, #57
	strb r6, [r0]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldrb r0, [r5]
	cmp r3, r0
	bcc _08035ABA
_08035AE2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08035AEC:
	.4byte gUnknown_03006C80
_08035AF0:
	.4byte gUnknown_03006A30
_08035AF4:
	.4byte 0x000001AD
	THUMB_FUNC_END sub_08035A88

	THUMB_FUNC_START sub_08035AF8
sub_08035AF8: @ 0x08035AF8
	push {r4,r5,lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _08035B54
	mov r0, #7
	strb r0, [r1, #20]
	mov r0, #150
	strb r0, [r1, #23]
	ldr r0, _08035B5C  @ =gUnknown_0201F000
	str r2, [r0]
	mov r4, #0
	ldr r0, _08035B60  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r4, r0
	bcs _08035B54
	ldr r5, _08035B64  @ =gUnknown_03006A58
_08035B22:
	mov r0, #104
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08035B46
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r0, r0, #4
	add r0, r0, r5
	ldr r0, [r0]
	mov r2, #160
	lsl r2, r2, #12
	ldr r3, _08035B68  @ =0xFFF00000
	bl sub_0803D4A4
_08035B46:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _08035B60  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r4, r0
	bcc _08035B22
_08035B54:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035B5C:
	.4byte gUnknown_0201F000
_08035B60:
	.4byte gUnknown_03006C80
_08035B64:
	.4byte gUnknown_03006A58
_08035B68:
	.4byte 0xFFF00000
	THUMB_FUNC_END sub_08035AF8

	THUMB_FUNC_START sub_08035B6C
sub_08035B6C: @ 0x08035B6C
	push {r4,r5,lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08035BD0
	mov r0, #8
	strb r0, [r1, #20]
	mov r0, #60
	strb r0, [r1, #23]
	ldr r1, _08035BD8  @ =gUnknown_0201F000
	mov r0, #1
	str r0, [r1]
	mov r4, #0
	ldr r0, _08035BDC  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r4, r0
	bcs _08035BC8
	ldr r5, _08035BE0  @ =gUnknown_03006A58
_08035B96:
	mov r0, #104
	mov r1, #1
	add r2, r4, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08035BBA
	lsl r0, r4, #3
	add r0, r0, r4
	lsl r0, r0, #4
	add r0, r0, r5
	ldr r0, [r0]
	mov r2, #160
	lsl r2, r2, #12
	ldr r3, _08035BE4  @ =0xFFF00000
	bl sub_0803D4A4
_08035BBA:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _08035BDC  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r4, r0
	bcc _08035B96
_08035BC8:
	mov r0, #135
	lsl r0, r0, #2
	bl sub_0800D24C
_08035BD0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035BD8:
	.4byte gUnknown_0201F000
_08035BDC:
	.4byte gUnknown_03006C80
_08035BE0:
	.4byte gUnknown_03006A58
_08035BE4:
	.4byte 0xFFF00000
	THUMB_FUNC_END sub_08035B6C

	THUMB_FUNC_START sub_08035BE8
sub_08035BE8: @ 0x08035BE8
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _08035C08
	mov r0, #9
	strb r0, [r1, #20]
	add r0, r1, #0
	add r0, r0, #43
	strb r2, [r0]
	ldr r1, _08035C0C  @ =gUnknown_0201F000
	mov r0, #2
	str r0, [r1]
_08035C08:
	bx lr
	.byte 0x00
	.byte 0x00
_08035C0C:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08035BE8

	THUMB_FUNC_START sub_08035C10
sub_08035C10: @ 0x08035C10
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803CC20
	mov r1, #54
	ldrsh r0, [r4, r1]
	mov r1, #140
	lsl r1, r1, #1
	cmp r0, r1
	bgt _08035C2E
	strh r1, [r4, #54]
	mov r0, #10
	strb r0, [r4, #20]
	mov r0, #100
	strb r0, [r4, #23]
_08035C2E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035C10

	THUMB_FUNC_START sub_08035C34
sub_08035C34: @ 0x08035C34
	push {lr}
	add r2, r0, #0
	ldr r3, _08035C80  @ =gUnknown_0201F000
	ldr r0, [r3]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08035C8C
	ldrb r0, [r2, #23]
	cmp r0, #0
	bne _08035C88
	mov r0, #11
	strb r0, [r2, #20]
	mov r0, #120
	strb r0, [r2, #23]
	ldrb r1, [r2, #29]
	mov r0, #63
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #29]
	ldrb r1, [r2, #28]
	mov r0, #4
	neg r0, r0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2, #28]
	mov r0, #8
	str r0, [r3]
	ldr r0, _08035C84  @ =0x0000020A
	bl sub_0800D24C
	mov r0, #2
	mov r1, #4
	bl sub_0800C0B0
	b _08035C8C
_08035C80:
	.4byte gUnknown_0201F000
_08035C84:
	.4byte 0x0000020A
_08035C88:
	sub r0, r0, #1
	strb r0, [r2, #23]
_08035C8C:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035C34

	THUMB_FUNC_START sub_08035C90
sub_08035C90: @ 0x08035C90
	push {r4-r6,lr}
	add r5, r0, #0
	bl 0x08003828
	ldrb r0, [r5, #23]
	cmp r0, #0
	beq _08035CF8
	sub r0, r0, #1
	strb r0, [r5, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08035D80
	strb r0, [r5, #21]
	mov r0, #160
	lsl r0, r0, #4
	bl sub_0800D67C
	ldr r3, _08035CF0  @ =gUnknown_02000010
	ldrb r2, [r3, #3]
	mov r1, #32
	neg r1, r1
	add r0, r1, #0
	and r0, r0, r2
	mov r2, #1
	orr r0, r0, r2
	strb r0, [r3, #3]
	ldrb r0, [r3, #4]
	and r1, r1, r0
	mov r0, #7
	orr r1, r1, r0
	strb r1, [r3, #4]
	mov r0, #104
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	beq _08035D80
	ldr r3, _08035CF4  @ =0xFFDC0000
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0803D4A4
	b _08035D80
	.byte 0x00
	.byte 0x00
_08035CF0:
	.4byte gUnknown_02000010
_08035CF4:
	.4byte 0xFFDC0000
_08035CF8:
	ldrb r0, [r5, #21]
	cmp r0, #0
	bne _08035D18
	ldr r0, _08035D14  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r0, #127
	and r0, r0, r1
	cmp r0, #6
	bne _08035D80
	bl sub_0800D644
	mov r0, #1
	strb r0, [r5, #21]
	b _08035D80
_08035D14:
	.4byte gUnknown_02000010
_08035D18:
	mov r2, #0
	ldr r0, _08035D58  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r2, r0
	bcs _08035D42
	ldr r4, _08035D5C  @ =gUnknown_03000940
	mov r6, #128
	lsl r6, r6, #3
	add r3, r0, #0
_08035D2A:
	lsl r0, r2, #1
	add r0, r0, r4
	ldrh r1, [r0]
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	bne _08035D80
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r3
	bcc _08035D2A
_08035D42:
	mov r0, #105
	mov r1, #1
	mov r2, #0
	bl sub_0804C8A8
	add r4, r0, #0
	cmp r4, #0
	bne _08035D60
	mov r0, #1
	strb r0, [r5, #23]
	b _08035D80
_08035D58:
	.4byte gUnknown_03006C80
_08035D5C:
	.4byte gUnknown_03000940
_08035D60:
	mov r3, #192
	lsl r3, r3, #14
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0803D4A4
	str r4, [r5, #88]
	ldr r0, [r5, #84]
	bl sub_08012540
	mov r0, #176
	bl sub_0800D24C
	mov r0, #12
	strb r0, [r5, #20]
_08035D80:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035C90

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08035D88
sub_08035D88: @ 0x08035D88
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldr r0, [r4, #88]
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	bne _08035DB4
	mov r0, #13
	strb r0, [r4, #20]
	mov r0, #8
	strb r0, [r4, #23]
	ldr r0, _08035DBC  @ =0x0000021F
	bl sub_0800D24C
	ldr r1, _08035DC0  @ =gUnknown_03000520
	mov r0, #22
	strb r0, [r1, #7]
	add r0, r0, #234
	bl sub_0800C1EC
_08035DB4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035DBC:
	.4byte 0x0000021F
_08035DC0:
	.4byte gUnknown_03000520
	THUMB_FUNC_END sub_08035D88

	THUMB_FUNC_START sub_08035DC4
sub_08035DC4: @ 0x08035DC4
	push {lr}
	add r1, r0, #0
	ldrb r0, [r1, #23]
	sub r0, r0, #1
	strb r0, [r1, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bne _08035DF0
	ldr r0, _08035DE8  @ =gUnknown_08143FFC
	mov r1, #1
	bl sub_0801484C
	ldr r1, _08035DEC  @ =gUnknown_0200B310
	mov r0, #0
	str r0, [r1]
	b _08035E04
	.byte 0x00
	.byte 0x00
_08035DE8:
	.4byte gUnknown_08143FFC
_08035DEC:
	.4byte gUnknown_0200B310
_08035DF0:
	cmp r0, #0
	bne _08035E04
	mov r0, #14
	strb r0, [r1, #20]
	mov r0, #124
	strb r0, [r1, #23]
	mov r0, #2
	mov r1, #4
	bl sub_0800C0B0
_08035E04:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035DC4

	THUMB_FUNC_START sub_08035E08
sub_08035E08: @ 0x08035E08
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08035E38
	mov r0, #15
	strb r0, [r4, #20]
	mov r0, #90
	strb r0, [r4, #23]
	mov r0, #128
	lsl r0, r0, #3
	str r0, [r4, #12]
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #16
	strb r0, [r1]
	ldr r1, _08035E40  @ =gUnknown_0201F000
	mov r0, #1
	str r0, [r1]
_08035E38:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035E40:
	.4byte gUnknown_0201F000
	THUMB_FUNC_END sub_08035E08

	THUMB_FUNC_START sub_08035E44
sub_08035E44: @ 0x08035E44
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _08035E58
	sub r0, r0, #1
	strb r0, [r4, #23]
	b _08035E7E
_08035E58:
	add r0, r4, #0
	bl sub_0803CC20
	mov r0, #54
	ldrsh r1, [r4, r0]
	ldr r0, _08035E84  @ =0x000001F5
	cmp r1, r0
	ble _08035E7E
	add r0, r0, #3
	strh r0, [r4, #54]
	mov r0, #16
	strb r0, [r4, #20]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
	ldr r0, _08035E88  @ =0x00000217
	bl sub_0800D24C
_08035E7E:
	pop {r4}
	pop {r0}
	bx r0
_08035E84:
	.4byte 0x000001F5
_08035E88:
	.4byte 0x00000217
	THUMB_FUNC_END sub_08035E44

	THUMB_FUNC_START sub_08035E8C
sub_08035E8C: @ 0x08035E8C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	mov r0, #17
	strb r0, [r4, #20]
	mov r0, #120
	strb r0, [r4, #23]
	add r0, r4, #0
	mov r1, #2
	bl 0x08003870
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035E8C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08035EAC
sub_08035EAC: @ 0x08035EAC
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08035ECE
	mov r0, #1
	mov r1, #8
	bl sub_0800C0B0
	mov r0, #11
	bl sub_0800B5EC
_08035ECE:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035EAC

	THUMB_FUNC_START sub_08035ED4
sub_08035ED4: @ 0x08035ED4
	push {lr}
	ldr r2, _08035EE8  @ =gUnknown_0813DF38
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_08035EE8:
	.4byte gUnknown_0813DF38
	THUMB_FUNC_END sub_08035ED4

	THUMB_FUNC_START sub_08035EEC
sub_08035EEC: @ 0x08035EEC
	push {r4-r6,lr}
	add r6, r0, #0
	mov r0, #105
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08035F62
	str r6, [r1, #84]
	add r0, r6, #0
	bl sub_0803D3D0
	mov r5, #0
	mov r2, #1
	mov r0, #1
	strb r0, [r6, #20]
	mov r0, #8
	strb r0, [r6, #23]
	ldrb r1, [r6, #28]
	mov r4, #4
	neg r4, r4
	add r0, r4, #0
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r6, #28]
	add r1, r6, #0
	add r1, r1, #69
	mov r0, #255
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0
	bl 0x08003870
	add r0, r6, #0
	bl 0x08003B94
	ldrb r2, [r6, #29]
	lsl r0, r2, #30
	lsr r0, r0, #30
	mov r1, #2
	orr r0, r0, r1
	and r4, r4, r2
	orr r4, r4, r0
	strb r4, [r6, #29]
	add r0, r6, #0
	add r0, r0, #124
	add r1, r1, #254
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	ldr r0, _08035F68  @ =gUnknown_03000488
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	add r1, r6, #0
	bl sub_0803D770
_08035F62:
	pop {r4-r6}
	pop {r0}
	bx r0
_08035F68:
	.4byte gUnknown_03000488
	THUMB_FUNC_END sub_08035EEC

	THUMB_FUNC_START sub_08035F6C
sub_08035F6C: @ 0x08035F6C
	push {r4,lr}
	add r4, r0, #0
	bl 0x08003828
	ldrb r0, [r4, #23]
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08035FAC
	mov r0, #2
	strb r0, [r4, #20]
	mov r0, #240
	strb r0, [r4, #23]
	add r1, r4, #0
	add r1, r1, #120
	mov r0, #120
	strh r0, [r1]
	mov r0, #105
	mov r1, #3
	mov r2, #0
	bl sub_0804C8A8
	add r1, r0, #0
	cmp r1, #0
	beq _08035FAC
	ldrb r0, [r4, #23]
	strb r0, [r1, #23]
	str r4, [r1, #84]
	add r0, r4, #0
	bl sub_0803D3D0
_08035FAC:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035F6C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08035FB4
sub_08035FB4: @ 0x08035FB4
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	add r3, r0, #0
	cmp r3, #0
	beq _08036028
	sub r0, r0, #1
	strb r0, [r4, #23]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08035FD6
	mov r0, #177
	bl sub_0800D24C
	mov r0, #129
	bl sub_0800D24C
_08035FD6:
	ldrb r3, [r4, #23]
	mov r0, #1
	and r0, r0, r3
	add r1, r3, #0
	cmp r0, #0
	beq _08035FF8
	ldr r2, _08036020  @ =gUnknown_0813DF44
	lsr r0, r1, #1
	mov r1, #1
	and r0, r0, r1
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrh r1, [r4, #54]
	add r0, r0, r1
	strh r0, [r4, #54]
_08035FF8:
	mov r0, #15
	and r0, r0, r3
	add r2, r4, #0
	add r2, r2, #126
	cmp r0, #0
	bne _0803600A
	ldrh r0, [r2]
	sub r0, r0, #1
	strh r0, [r2]
_0803600A:
	ldr r0, _08036024  @ =gUnknown_03000488
	add r1, r4, #0
	add r1, r1, #124
	ldrh r1, [r1]
	strh r1, [r0]
	ldrh r1, [r2]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _08036076
	.byte 0x00
	.byte 0x00
_08036020:
	.4byte gUnknown_0813DF44
_08036024:
	.4byte gUnknown_03000488
_08036028:
	add r1, r4, #0
	add r1, r1, #120
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #0
	beq _08036088
	cmp r0, #29
	bhi _08036050
	ldrb r2, [r4, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #28]
_08036050:
	ldr r0, [r4, #52]
	ldr r1, _08036080  @ =0xFFFFE667
	add r0, r0, r1
	str r0, [r4, #52]
	add r2, r4, #0
	add r2, r2, #126
	ldrh r0, [r2]
	sub r0, r0, #1
	strh r0, [r2]
	add r0, r4, #0
	add r0, r0, #124
	ldrh r1, [r0]
	add r1, r1, #8
	strh r1, [r0]
	ldr r0, _08036084  @ =gUnknown_03000488
	strh r1, [r0]
	ldrh r1, [r2]
	strh r1, [r0, #2]
	strh r3, [r0, #4]
_08036076:
	add r1, r4, #0
	bl sub_0803D770
	b _08036094
	.byte 0x00
	.byte 0x00
_08036080:
	.4byte 0xFFFFE667
_08036084:
	.4byte gUnknown_03000488
_08036088:
	add r0, r4, #0
	bl 0x08003BCC
	add r0, r4, #0
	bl sub_08012540
_08036094:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08035FB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803609C
sub_0803609C: @ 0x0803609C
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _080360C4
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	add r0, r4, #0
	mov r1, #1
	bl 0x08003870
	add r0, r4, #0
	bl 0x08003B94
_080360C4:
	ldr r1, [r4, #84]
	add r0, r1, #0
	add r0, r0, #69
	ldrb r0, [r0]
	cmp r0, #0
	beq _080360FC
	add r0, r1, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #1
	bl sub_0803D4A4
	ldr r0, _080360F8  @ =gUnknown_03000488
	ldr r1, [r4, #84]
	add r1, r1, #124
	ldrh r1, [r1]
	mov r2, #0
	strh r1, [r0]
	mov r1, #128
	lsl r1, r1, #1
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	b _08036108
_080360F8:
	.4byte gUnknown_03000488
_080360FC:
	add r0, r4, #0
	bl 0x08003BCC
	add r0, r4, #0
	bl sub_08012540
_08036108:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803609C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08036110
sub_08036110: @ 0x08036110
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #20]
	cmp r0, #0
	bne _08036158
	mov r4, #1
	mov r0, #1
	strb r0, [r5, #20]
	ldrb r1, [r5, #28]
	mov r2, #4
	neg r2, r2
	add r0, r2, #0
	and r0, r0, r1
	orr r0, r0, r4
	strb r0, [r5, #28]
	ldrb r3, [r5, #29]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r3
	mov r3, #128
	orr r0, r0, r3
	strb r0, [r5, #29]
	ldrb r0, [r5, #31]
	and r1, r1, r0
	orr r1, r1, r3
	strb r1, [r5, #31]
	add r1, r5, #0
	add r1, r1, #94
	ldrb r0, [r1]
	and r2, r2, r0
	orr r2, r2, r4
	strb r2, [r1]
	add r0, r5, #0
	mov r1, #2
	bl 0x08003870
_08036158:
	add r0, r5, #0
	bl 0x08003828
	ldrb r0, [r5, #23]
	sub r0, r0, #1
	strb r0, [r5, #23]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	bne _08036174
	add r0, r5, #0
	bl sub_08012540
	b _0803618A
_08036174:
	cmp r0, #14
	bhi _0803618A
	ldrb r2, [r5, #28]
	lsl r1, r2, #30
	lsr r1, r1, #30
	mov r0, #1
	eor r1, r1, r0
	sub r0, r0, #5
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r5, #28]
_0803618A:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08036110

	THUMB_FUNC_START sub_08036190
sub_08036190: @ 0x08036190
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #20]
	cmp r0, #0
	bne _080361B2
	mov r2, #1
	mov r0, #1
	strb r0, [r4, #20]
	ldrb r1, [r4, #28]
	sub r0, r0, #5
	and r0, r0, r1
	orr r0, r0, r2
	strb r0, [r4, #28]
	add r0, r4, #0
	mov r1, #3
	bl 0x08003870
_080361B2:
	add r0, r4, #0
	bl 0x08003828
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08036190

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080361C0
sub_080361C0: @ 0x080361C0
	push {r4,r5,lr}
	ldr r0, _080361D4  @ =gUnknown_03006C80
	ldrb r0, [r0]
	cmp r0, #2
	beq _08036208
	cmp r0, #2
	bgt _080361D8
	cmp r0, #1
	beq _080361E2
	b _080362F8
_080361D4:
	.4byte gUnknown_03006C80
_080361D8:
	cmp r0, #3
	beq _08036238
	cmp r0, #4
	beq _08036288
	b _080362F8
_080361E2:
	ldr r2, _08036204  @ =gUnknown_03006A30
	ldr r1, [r2, #40]
	mov r4, #0
	mov r3, #0
	mov r0, #252
	lsl r0, r0, #1
	strh r0, [r1, #50]
	ldr r1, [r2, #40]
	sub r0, r0, #48
	strh r0, [r1, #54]
	ldr r0, [r2, #40]
	strh r3, [r0, #58]
	ldr r0, [r2, #40]
	add r0, r0, #42
	strb r4, [r0]
	b _080362F8
	.byte 0x00
	.byte 0x00
_08036204:
	.4byte gUnknown_03006A30
_08036208:
	ldr r1, _08036230  @ =gUnknown_03006A30
	ldr r2, [r1, #40]
	mov r5, #0
	mov r4, #0
	mov r0, #243
	lsl r0, r0, #1
	strh r0, [r2, #50]
	ldr r0, [r1, #40]
	mov r3, #228
	lsl r3, r3, #1
	strh r3, [r0, #54]
	ldr r0, [r1, #40]
	strh r4, [r0, #58]
	ldr r0, [r1, #40]
	add r0, r0, #42
	strb r5, [r0]
	add r1, r1, #184
	ldr r2, [r1]
	ldr r0, _08036234  @ =0x0000020A
	b _080362E8
_08036230:
	.4byte gUnknown_03006A30
_08036234:
	.4byte 0x0000020A
_08036238:
	ldr r0, _08036284  @ =gUnknown_03006A30
	mov r12, r0
	ldr r1, [r0, #40]
	mov r5, #0
	mov r4, #0
	mov r0, #234
	lsl r0, r0, #1
	strh r0, [r1, #50]
	mov r1, r12
	ldr r0, [r1, #40]
	mov r3, #228
	lsl r3, r3, #1
	strh r3, [r0, #54]
	ldr r0, [r1, #40]
	strh r4, [r0, #58]
	ldr r0, [r1, #40]
	add r0, r0, #42
	strb r5, [r0]
	add r1, r1, #184
	ldr r2, [r1]
	mov r0, #252
	lsl r0, r0, #1
	strh r0, [r2, #50]
	ldr r0, [r1]
	strh r3, [r0, #54]
	ldr r0, [r1]
	strh r4, [r0, #58]
	ldr r0, [r1]
	add r0, r0, #42
	strb r5, [r0]
	mov r1, #164
	lsl r1, r1, #1
	add r1, r1, r12
	ldr r2, [r1]
	mov r0, #135
	lsl r0, r0, #2
	b _080362E8
	.byte 0x00
	.byte 0x00
_08036284:
	.4byte gUnknown_03006A30
_08036288:
	ldr r0, _08036300  @ =gUnknown_03006A30
	mov r12, r0
	ldr r1, [r0, #40]
	mov r5, #0
	mov r4, #0
	mov r0, #225
	lsl r0, r0, #1
	strh r0, [r1, #50]
	mov r1, r12
	ldr r0, [r1, #40]
	mov r3, #228
	lsl r3, r3, #1
	strh r3, [r0, #54]
	ldr r0, [r1, #40]
	strh r4, [r0, #58]
	ldr r0, [r1, #40]
	add r0, r0, #42
	strb r5, [r0]
	add r1, r1, #184
	ldr r2, [r1]
	mov r0, #243
	lsl r0, r0, #1
	strh r0, [r2, #50]
	ldr r0, [r1]
	strh r3, [r0, #54]
	ldr r0, [r1]
	strh r4, [r0, #58]
	ldr r0, [r1]
	add r0, r0, #42
	strb r5, [r0]
	mov r1, #164
	lsl r1, r1, #1
	add r1, r1, r12
	ldr r2, [r1]
	ldr r0, _08036304  @ =0x0000020A
	strh r0, [r2, #50]
	ldr r0, [r1]
	strh r3, [r0, #54]
	ldr r0, [r1]
	strh r4, [r0, #58]
	ldr r0, [r1]
	add r0, r0, #42
	strb r5, [r0]
	mov r1, #236
	lsl r1, r1, #1
	add r1, r1, r12
	ldr r2, [r1]
	ldr r0, _08036308  @ =0x0000022E
_080362E8:
	strh r0, [r2, #50]
	ldr r0, [r1]
	strh r3, [r0, #54]
	ldr r0, [r1]
	strh r4, [r0, #58]
	ldr r0, [r1]
	add r0, r0, #42
	strb r5, [r0]
_080362F8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08036300:
	.4byte gUnknown_03006A30
_08036304:
	.4byte 0x0000020A
_08036308:
	.4byte 0x0000022E
	THUMB_FUNC_END sub_080361C0

	THUMB_FUNC_START sub_0803630C
sub_0803630C: @ 0x0803630C
	push {lr}
	add r2, r0, #0
	ldr r0, _0803632C  @ =gUnknown_02016D60
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08036328
	ldr r0, _08036330  @ =gUnknown_0813DFB4
	ldrb r1, [r2, #20]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r1, [r1]
	add r0, r2, #0
	bl _call_via_r1
_08036328:
	pop {r0}
	bx r0
_0803632C:
	.4byte gUnknown_02016D60
_08036330:
	.4byte gUnknown_0813DFB4
	THUMB_FUNC_END sub_0803630C

	THUMB_FUNC_START sub_08036334
sub_08036334: @ 0x08036334
	mov r1, #1
	strb r1, [r0, #20]
	mov r1, #252
	lsl r1, r1, #1
	strh r1, [r0, #50]
	strh r1, [r0, #54]
	add r2, r0, #0
	add r2, r2, #114
	mov r1, #240
	strh r1, [r2]
	ldr r1, _08036350  @ =gUnknown_03000450
	str r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08036350:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08036334

	THUMB_FUNC_START sub_08036354
sub_08036354: @ 0x08036354
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _08036390  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r0, #15
	and r0, r0, r1
	cmp r0, #0
	bne _0803636A
	add r0, r4, #0
	bl sub_080363D8
_0803636A:
	add r1, r4, #0
	add r1, r1, #114
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0803638A
	mov r0, #180
	lsl r0, r0, #2
	strh r0, [r1]
	mov r0, #2
	strb r0, [r4, #20]
	add r0, r4, #0
	bl sub_08036424
_0803638A:
	pop {r4}
	pop {r0}
	bx r0
_08036390:
	.4byte gUnknown_03000E20
	THUMB_FUNC_END sub_08036354

	THUMB_FUNC_START sub_08036394
sub_08036394: @ 0x08036394
	push {r4,lr}
	add r4, r0, #0
	bl sub_0803644C
	add r2, r4, #0
	add r2, r2, #114
	ldrh r0, [r2]
	cmp r0, #0
	beq _080363AA
	sub r0, r0, #1
	strh r0, [r2]
_080363AA:
	ldr r0, [r4, #116]
	ldrh r1, [r0]
	ldr r0, _080363C4  @ =0x0000FFFF
	cmp r1, r0
	bne _080363D0
	ldrh r0, [r2]
	cmp r0, #0
	beq _080363C8
	add r0, r4, #0
	bl sub_08036424
	b _080363D0
	.byte 0x00
	.byte 0x00
_080363C4:
	.4byte 0x0000FFFF
_080363C8:
	mov r0, #1
	strb r0, [r4, #20]
	mov r0, #240
	strh r0, [r2]
_080363D0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08036394

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080363D8
sub_080363D8: @ 0x080363D8
	push {r4,lr}
	mov r0, #49
	bl sub_08012468
	add r4, r0, #0
	cmp r4, #0
	beq _08036418
	bl sub_080364EC
	strb r0, [r4, #10]
	bl 0x0800099C
	mov r1, #62
	and r0, r0, r1
	ldr r2, _08036420  @ =gUnknown_0813DFC0
	lsl r1, r0, #1
	add r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r4, #50]
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #54]
	add r1, r4, #0
	add r1, r1, #43
	mov r0, #255
	strb r0, [r1]
	add r1, r1, #37
	mov r0, #128
	lsl r0, r0, #7
	strh r0, [r1]
_08036418:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08036420:
	.4byte gUnknown_0813DFC0
	THUMB_FUNC_END sub_080363D8

	THUMB_FUNC_START sub_08036424
sub_08036424: @ 0x08036424
	push {r4,r5,lr}
	add r5, r0, #0
	bl 0x0800099C
	ldr r4, _08036448  @ =gUnknown_08147900
	mov r1, #7
	bl __umodsi3
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r5, #116]
	add r0, r5, #0
	bl sub_0803644C
	pop {r4,r5}
	pop {r0}
	bx r0
_08036448:
	.4byte gUnknown_08147900
	THUMB_FUNC_END sub_08036424

	THUMB_FUNC_START sub_0803644C
sub_0803644C: @ 0x0803644C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	add r3, r6, #0
	add r3, r3, #112
	ldrh r0, [r3]
	cmp r0, #0
	beq _08036464
	sub r0, r0, #1
	strh r0, [r3]
	b _080364DC
_08036464:
	ldr r2, [r6, #116]
	ldrh r1, [r2]
	ldr r4, _08036484  @ =0x0000FFFF
	cmp r1, r4
	beq _080364DC
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803648C
	ldr r0, _08036488  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r3]
	add r7, r2, #2
	b _080364DA
	.byte 0x00
	.byte 0x00
_08036484:
	.4byte 0x0000FFFF
_08036488:
	.4byte 0x00007FFF
_0803648C:
	ldr r0, _080364E8  @ =gUnknown_0814774C
	ldrh r1, [r2]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r5, [r1]
	ldrh r0, [r5]
	add r7, r2, #2
	cmp r0, r4
	beq _080364DA
	mov r8, r4
_080364A0:
	mov r0, #49
	bl sub_08012468
	add r4, r0, #0
	cmp r4, #0
	beq _080364D2
	ldrh r0, [r5]
	lsr r0, r0, #8
	strb r0, [r4, #10]
	ldrh r0, [r5]
	add r1, r4, #0
	add r1, r1, #43
	strb r0, [r1]
	ldrh r0, [r5, #2]
	strb r0, [r4, #11]
	ldrh r0, [r5, #4]
	strh r0, [r4, #50]
	ldrh r0, [r5, #6]
	strh r0, [r4, #54]
	ldrb r0, [r4, #10]
	cmp r0, #3
	bls _080364D2
	bl sub_080364EC
	strb r0, [r4, #10]
_080364D2:
	add r5, r5, #8
	ldrh r0, [r5]
	cmp r0, r8
	bne _080364A0
_080364DA:
	str r7, [r6, #116]
_080364DC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080364E8:
	.4byte gUnknown_0814774C
	THUMB_FUNC_END sub_0803644C

	THUMB_FUNC_START sub_080364EC
sub_080364EC: @ 0x080364EC
	push {r4,lr}
	ldr r4, _08036504  @ =gUnknown_0813E040
	bl 0x0800099C
	mov r1, #15
	and r1, r1, r0
	add r1, r1, r4
	ldrb r0, [r1]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08036504:
	.4byte gUnknown_0813E040
	THUMB_FUNC_END sub_080364EC

	THUMB_FUNC_START sub_08036508
sub_08036508: @ 0x08036508
	push {lr}
	ldr r2, _0803651C  @ =gUnknown_08427B74
	ldrb r1, [r0, #20]
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
_0803651C:
	.4byte gUnknown_08427B74
	THUMB_FUNC_END sub_08036508

	THUMB_FUNC_START sub_08036520
sub_08036520: @ 0x08036520
	push {r4,r5,lr}
	add r5, r0, #0
	ldrb r0, [r5, #20]
	add r0, r0, #1
	mov r4, #0
	strb r0, [r5, #20]
	ldrb r1, [r5, #28]
	mov r3, #4
	neg r3, r3
	add r0, r3, #0
	and r0, r0, r1
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r5, #28]
	ldrb r2, [r5, #29]
	mov r1, #63
	add r0, r1, #0
	and r0, r0, r2
	strb r0, [r5, #29]
	ldrb r0, [r5, #31]
	and r1, r1, r0
	strb r1, [r5, #31]
	strb r3, [r5, #23]
	add r0, r5, #0
	bl 0x08003B94
	ldr r0, _08036584  @ =gUnknown_03000488
	mov r1, #128
	lsl r1, r1, #2
	strh r1, [r0, #2]
	strh r1, [r0]
	strh r4, [r0, #4]
	add r1, r5, #0
	bl sub_0803D770
	mov r0, #16
	strh r0, [r5, #58]
	ldrb r0, [r5, #10]
	cmp r0, #0
	bne _08036588
	add r0, r5, #0
	mov r1, #0
	mov r2, #3
	bl 0x08003840
	mov r0, #25
	bl sub_0800D24C
	b _08036590
	.byte 0x00
	.byte 0x00
_08036584:
	.4byte gUnknown_03000488
_08036588:
	add r0, r5, #0
	mov r1, #0
	bl 0x08003870
_08036590:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08036520

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08036598
sub_08036598: @ 0x08036598
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #10]
	cmp r0, #0
	bne _080365AC
	add r0, r4, #0
	mov r1, #3
	bl 0x080037EC
	b _080365B2
_080365AC:
	add r0, r4, #0
	bl 0x08003828
_080365B2:
	ldrb r0, [r4, #23]
	cmp r0, #0
	beq _080365E0
	ldr r0, _080365DC  @ =gUnknown_03000488
	ldrb r1, [r4, #23]
	mov r3, #128
	lsl r3, r3, #1
	add r2, r3, #0
	add r1, r1, r2
	mov r2, #0
	strh r1, [r0, #2]
	strh r1, [r0]
	strh r2, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	ldrb r0, [r4, #23]
	lsr r1, r0, #4
	strh r1, [r4, #58]
	sub r0, r0, #4
	b _080365E8
_080365DC:
	.4byte gUnknown_03000488
_080365E0:
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	mov r0, #180
_080365E8:
	strb r0, [r4, #23]
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08036598

	THUMB_FUNC_START sub_080365F0
sub_080365F0: @ 0x080365F0
	push {r4,lr}
	add r4, r0, #0
	ldrb r0, [r4, #23]
	cmp r0, #0
	bne _0803660C
	ldrb r0, [r4, #20]
	add r0, r0, #1
	strb r0, [r4, #20]
	bl sub_0802C8E4
	mov r0, #173
	bl sub_0800D24C
	b _08036610
_0803660C:
	sub r0, r0, #1
	strb r0, [r4, #23]
_08036610:
	ldrb r0, [r4, #10]
	cmp r0, #0
	bne _08036620
	add r0, r4, #0
	mov r1, #3
	bl 0x080037EC
	b _08036626
_08036620:
	add r0, r4, #0
	bl 0x08003828
_08036626:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080365F0

	THUMB_FUNC_START sub_0803662C
sub_0803662C: @ 0x0803662C
	push {r4,r5,lr}
	add r4, r0, #0
	ldrb r0, [r4, #10]
	cmp r0, #0
	bne _08036640
	add r0, r4, #0
	mov r1, #3
	bl 0x080037EC
	b _08036646
_08036640:
	add r0, r4, #0
	bl 0x08003828
_08036646:
	ldrb r0, [r4, #23]
	cmp r0, #251
	bhi _08036678
	add r0, r0, #4
	mov r3, #0
	strb r0, [r4, #23]
	ldr r0, _08036674  @ =gUnknown_03000488
	ldrb r1, [r4, #23]
	mov r5, #128
	lsl r5, r5, #1
	add r2, r5, #0
	add r1, r1, r2
	strh r1, [r0, #2]
	strh r1, [r0]
	strh r3, [r0, #4]
	add r1, r4, #0
	bl sub_0803D770
	ldrb r0, [r4, #23]
	lsr r0, r0, #4
	strh r0, [r4, #58]
	b _08036684
	.byte 0x00
	.byte 0x00
_08036674:
	.4byte gUnknown_03000488
_08036678:
	add r0, r4, #0
	bl 0x08003BCC
	add r0, r4, #0
	bl sub_08012540
_08036684:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803662C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803668C
sub_0803668C: @ 0x0803668C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r0, r7, #0
	mov r1, #0
	strh r1, [r0]
	add r0, r7, #0
	ldr r1, _080366C0  @ =gUnknown_03000FC0
	ldr r2, _080366C4  @ =0x01000044
	bl CpuSet
	mov r0, #0
	bl sub_08036770
	bl sub_0800C41C
	ldr r0, _080366C8  @ =gUnknown_03000BF0
	ldr r1, _080366CC  @ =gUnknown_03000834
	mov r2, #0
	str r2, [r1]
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_080366C0:
	.4byte gUnknown_03000FC0
_080366C4:
	.4byte 0x01000044
_080366C8:
	.4byte gUnknown_03000BF0
_080366CC:
	.4byte gUnknown_03000834
	THUMB_FUNC_END sub_0803668C

	THUMB_FUNC_START sub_080366D0
sub_080366D0: @ 0x080366D0
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strb r0, [r1]
	add r0, r7, #0
	ldrb r1, [r0]
	add r0, r1, #0
	bl sub_08036704
	bl sub_0800C4E8
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080366D0

	THUMB_FUNC_START sub_080366F0
sub_080366F0: @ 0x080366F0
	push {r7,lr}
	mov r7, sp
	mov r0, #0
	bl sub_08036704
	bl sub_0800C4FC
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080366F0

	THUMB_FUNC_START sub_08036704
sub_08036704: @ 0x08036704
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strb r0, [r1]
	ldr r0, _0803675C  @ =gUnknown_03000FC0
	add r1, r7, #0
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, _0803675C  @ =gUnknown_03000FC0
	ldrb r1, [r0, #1]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _0803675C  @ =gUnknown_03000FC0
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, _0803675C  @ =gUnknown_03000FC0
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, _0803675C  @ =gUnknown_03000FC0
	ldrh r1, [r0, #12]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #12]
	ldr r0, _0803675C  @ =gUnknown_03000FC0
	ldrb r1, [r0, #14]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #14]
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_0803675C:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_08036704

	THUMB_FUNC_START sub_08036760
sub_08036760: @ 0x08036760
	push {r7,lr}
	mov r7, sp
	mov r0, #0
	bl sub_08036770
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08036760

	THUMB_FUNC_START sub_08036770
sub_08036770: @ 0x08036770
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _080367B0  @ =gUnknown_03000FC0
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _080367B0  @ =gUnknown_03000FC0
	ldrb r1, [r0, #1]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _080367B0  @ =gUnknown_03000FC0
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, _080367B0  @ =gUnknown_03000FC0
	ldr r1, [r7]
	str r1, [r0, #8]
	ldr r0, _080367B0  @ =gUnknown_03000FC0
	ldrh r1, [r0, #12]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #12]
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_080367B0:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_08036770

	THUMB_FUNC_START sub_080367B4
sub_080367B4: @ 0x080367B4
	push {r7,lr}
	mov r7, sp
	ldr r0, _080367C0  @ =gUnknown_03000FC0
	ldr r1, [r0, #4]
	add r0, r1, #0
	b _080367C4
_080367C0:
	.4byte gUnknown_03000FC0
_080367C4:
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080367B4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080367CC
sub_080367CC: @ 0x080367CC
	push {r7,lr}
	mov r7, sp
	ldr r0, _080367D8  @ =gUnknown_03000FC0
	ldr r1, [r0, #8]
	add r0, r1, #0
	b _080367DC
_080367D8:
	.4byte gUnknown_03000FC0
_080367DC:
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080367CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080367E4
sub_080367E4: @ 0x080367E4
	push {r7,lr}
	mov r7, sp
	ldr r0, _080367F0  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	add r0, r1, #0
	b _080367F4
_080367F0:
	.4byte gUnknown_03000FC0
_080367F4:
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080367E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080367FC
sub_080367FC: @ 0x080367FC
	push {r7,lr}
	mov r7, sp
	bl sub_0800C41C
	mov r0, #2
	bl sub_080366D0
	ldr r0, _08036830  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #3]
	ldr r0, _08036830  @ =gUnknown_03000FC0
	ldrb r1, [r0, #14]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #14]
	pop {r7}
	pop {r0}
	bx r0
_08036830:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_080367FC

	THUMB_FUNC_START sub_08036834
sub_08036834: @ 0x08036834
	push {r7,lr}
	mov r7, sp
	bl sub_0800C41C
	mov r0, #0
	bl sub_080366D0
	ldr r0, _08036860  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #3]
	ldr r0, _08036860  @ =gUnknown_03000FC0
	ldrb r1, [r0, #14]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #14]
	pop {r7}
	pop {r0}
	bx r0
_08036860:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_08036834

	THUMB_FUNC_START sub_08036864
sub_08036864: @ 0x08036864
	push {r4,r7,lr}
	mov r7, sp
	ldr r0, _08036890  @ =gUnknown_03000834
	ldr r1, _08036890  @ =gUnknown_03000834
	ldr r2, _08036894  @ =gUnknown_03000BF0
	ldr r1, [r1]
	ldr r2, [r2]
	orr r1, r1, r2
	str r1, [r0]
	ldr r0, _08036898  @ =gUnknown_08427B84
	ldr r1, _0803689C  @ =gUnknown_03000FC0
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r4, [r0]
	bl _call_via_r4
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08036890:
	.4byte gUnknown_03000834
_08036894:
	.4byte gUnknown_03000BF0
_08036898:
	.4byte gUnknown_08427B84
_0803689C:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_08036864

	THUMB_FUNC_START sub_080368A0
sub_080368A0: @ 0x080368A0
	push {r7,lr}
	mov r7, sp
	ldr r1, _080368BC  @ =gUnknown_03000FD0
	add r0, r1, #0
	bl sub_0800C658
	ldr r1, _080368BC  @ =gUnknown_03000FD0
	add r0, r1, #0
	mov r1, #20
	bl sub_0800B850
	pop {r7}
	pop {r0}
	bx r0
_080368BC:
	.4byte gUnknown_03000FD0
	THUMB_FUNC_END sub_080368A0

	THUMB_FUNC_START sub_080368C0
sub_080368C0: @ 0x080368C0
	push {r7,lr}
	mov r7, sp
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080368C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080368CC
sub_080368CC: @ 0x080368CC
	push {r7,lr}
	mov r7, sp
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080368CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080368D8
sub_080368D8: @ 0x080368D8
	push {r7,lr}
	mov r7, sp
	ldr r0, _08036918  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #5
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	bne _0803691C
	ldr r0, _08036918  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #8
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0803691C
	ldr r0, _08036918  @ =gUnknown_03000BF0
	ldr r1, [r0]
	lsr r0, r1, #8
	mov r1, #15
	and r0, r0, r1
	ldr r1, _08036918  @ =gUnknown_03000BF0
	ldr r2, [r1]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	cmp r0, r1
	bne _0803691C
	b _0803693C
	.byte 0x00
	.byte 0x00
_08036918:
	.4byte gUnknown_03000BF0
_0803691C:
	bl sub_0800C4FC
	bl sub_0800C41C
	ldr r0, _08036944  @ =gUnknown_03000FC0
	ldrb r1, [r0, #1]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08036944  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #3]
_0803693C:
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08036944:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_080368D8

	THUMB_FUNC_START sub_08036948
sub_08036948: @ 0x08036948
	push {r7,lr}
	mov r7, sp
	ldr r0, _080369AC  @ =gUnknown_03000BF0
	ldr r1, [r0]
	lsr r0, r1, #8
	mov r1, #15
	and r0, r0, r1
	ldr r1, _080369B0  @ =gUnknown_03000FC0
	ldrb r2, [r1, #3]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r0, r1
	beq _080369A6
	ldr r0, _080369B0  @ =gUnknown_03000FC0
	ldrb r1, [r0, #1]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _080369B0  @ =gUnknown_03000FC0
	ldrb r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #2]
	ldr r0, _080369B0  @ =gUnknown_03000FC0
	ldr r1, _080369B0  @ =gUnknown_03000FC0
	ldrb r2, [r1, #3]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #3]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #3]
_080369A6:
	pop {r7}
	pop {r0}
	bx r0
_080369AC:
	.4byte gUnknown_03000BF0
_080369B0:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_08036948

	THUMB_FUNC_START sub_080369B4
sub_080369B4: @ 0x080369B4
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	ldr r0, _080369F0  @ =gUnknown_03000FC0
	ldrb r1, [r0, #16]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #32
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #16]
	ldr r0, _080369F0  @ =gUnknown_03000FC0
	ldrh r1, [r0, #18]
	ldr r2, _080369F4  @ =0x0000FFFF
	orr r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #18]
	ldr r1, _080369F0  @ =gUnknown_03000FC0
	ldrb r0, [r1, #1]
	cmp r0, #5
	bls _080369E4
	b _08036D9E
_080369E4:
	lsl r1, r0, #2
	ldr r2, _080369F8  @ =0x080369FC
	add r0, r1, r2
	ldr r1, [r0]
	mov pc, r1
	.byte 0x00
	.byte 0x00
_080369F0:
	.4byte gUnknown_03000FC0
_080369F4:
	.4byte 0x0000FFFF
_080369F8:
	.4byte 0x080369FC
	.4byte _08036A14
	.4byte _08036A72
	.4byte _08036AA8
	.4byte _08036B0C
	.4byte _08036B58
	.4byte _08036D94
_08036A14:
	ldr r0, _08036A5C  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #3]
	ldr r0, _08036A60  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #1
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08036A6C
	ldr r0, _08036A64  @ =gUnknown_03000414
	ldr r1, _08036A68  @ =0x04000128
	ldr r2, [r1]
	lsl r1, r2, #26
	lsr r2, r1, #30
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, _08036A5C  @ =gUnknown_03000FC0
	ldr r0, _08036A5C  @ =gUnknown_03000FC0
	ldr r1, _08036A5C  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #1
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
	b _08036A70
	.byte 0x00
	.byte 0x00
_08036A5C:
	.4byte gUnknown_03000FC0
_08036A60:
	.4byte gUnknown_03000BF0
_08036A64:
	.4byte gUnknown_03000414
_08036A68:
	.4byte 0x04000128
_08036A6C:
	bl sub_0800C4E8
_08036A70:
	b _08036D9E
_08036A72:
	ldr r0, _08036AA4  @ =gUnknown_03000FC0
	ldrb r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #20
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #2]
	ldr r1, _08036AA4  @ =gUnknown_03000FC0
	ldr r0, _08036AA4  @ =gUnknown_03000FC0
	ldr r1, _08036AA4  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #1
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
	b _08036D9E
	.byte 0x00
	.byte 0x00
_08036AA4:
	.4byte gUnknown_03000FC0
_08036AA8:
	ldr r1, _08036B08  @ =gUnknown_03000FC0
	ldr r0, _08036B08  @ =gUnknown_03000FC0
	ldr r1, _08036B08  @ =gUnknown_03000FC0
	ldrb r2, [r1, #2]
	sub r1, r2, #1
	ldrb r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #2]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08036B04
	bl sub_0800C4E8
	ldr r0, _08036B08  @ =gUnknown_03000FC0
	ldrb r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #20
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #2]
	ldr r1, _08036B08  @ =gUnknown_03000FC0
	ldr r0, _08036B08  @ =gUnknown_03000FC0
	ldr r1, _08036B08  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #1
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
_08036B04:
	b _08036D9E
	.byte 0x00
	.byte 0x00
_08036B08:
	.4byte gUnknown_03000FC0
_08036B0C:
	ldr r1, _08036B54  @ =gUnknown_03000FC0
	ldr r0, _08036B54  @ =gUnknown_03000FC0
	ldr r1, _08036B54  @ =gUnknown_03000FC0
	ldrb r2, [r1, #2]
	sub r1, r2, #1
	ldrb r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #2]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08036B50
	ldr r1, _08036B54  @ =gUnknown_03000FC0
	ldr r0, _08036B54  @ =gUnknown_03000FC0
	ldr r1, _08036B54  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #1
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
_08036B50:
	b _08036D9E
	.byte 0x00
	.byte 0x00
_08036B54:
	.4byte gUnknown_03000FC0
_08036B58:
	ldr r0, _08036BCC  @ =gUnknown_03000FC0
	ldrb r1, [r0, #16]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #33
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #16]
	ldr r0, _08036BCC  @ =gUnknown_03000FC0
	ldr r1, _08036BD0  @ =gUnknown_03000BF0
	ldr r2, [r1]
	add r1, r2, #0
	mov r2, #15
	and r1, r1, r2
	ldrb r2, [r0, #3]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #3]
	mov r0, #33
	bl sub_08037B5C
	cmp r0, #0
	beq _08036C10
	ldr r0, _08036BCC  @ =gUnknown_03000FC0
	ldrb r1, [r0, #2]
	cmp r1, #20
	bls _08036BF0
	add r0, r7, #0
	ldr r1, _08036BCC  @ =gUnknown_03000FC0
	ldrb r2, [r1, #3]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	add r2, r1, #0
	strh r2, [r0]
	add r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #3
	beq _08036BD4
	add r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #7
	beq _08036BD4
	add r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #15
	beq _08036BD4
	b _08036BE8
	.byte 0x00
	.byte 0x00
_08036BCC:
	.4byte gUnknown_03000FC0
_08036BD0:
	.4byte gUnknown_03000BF0
_08036BD4:
	ldr r0, _08036BEC  @ =gUnknown_03000FC0
	ldrb r1, [r0, #17]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #17]
_08036BE8:
	b _08036C0A
	.byte 0x00
	.byte 0x00
_08036BEC:
	.4byte gUnknown_03000FC0
_08036BF0:
	ldr r1, _08036C0C  @ =gUnknown_03000FC0
	ldr r0, _08036C0C  @ =gUnknown_03000FC0
	ldr r1, _08036C0C  @ =gUnknown_03000FC0
	ldrb r2, [r1, #2]
	add r1, r2, #1
	ldrb r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #2]
_08036C0A:
	b _08036C3E
_08036C0C:
	.4byte gUnknown_03000FC0
_08036C10:
	ldr r0, _08036CAC  @ =gUnknown_03000FC0
	ldrb r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #2]
	ldr r0, _08036CAC  @ =gUnknown_03000FC0
	ldr r1, _08036CAC  @ =gUnknown_03000FC0
	ldr r2, _08036CB0  @ =gUnknown_03000414
	ldrb r3, [r2]
	mov r4, #1
	add r2, r4, #0
	lsl r2, r2, r3
	ldrb r1, [r1, #3]
	orr r1, r1, r2
	ldrb r2, [r0, #3]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #3]
_08036C3E:
	add r0, r7, #0
	ldr r1, _08036CAC  @ =gUnknown_03000FC0
	ldrb r2, [r1, #3]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	add r2, r1, #0
	strh r2, [r0]
	add r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #3
	bne _08036CB4
	ldr r1, _08036CAC  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #57
	ldrb r0, [r1]
	cmp r0, #1
	bne _08036CAA
	ldr r1, _08036CAC  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #77
	ldrb r0, [r1]
	cmp r0, #1
	bne _08036CAA
	ldr r0, _08036CAC  @ =gUnknown_03000FC0
	ldr r1, _08036CAC  @ =gUnknown_03000FC0
	ldrb r2, [r1, #3]
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	ldrb r2, [r0, #3]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #3]
	ldr r1, _08036CAC  @ =gUnknown_03000FC0
	ldr r0, _08036CAC  @ =gUnknown_03000FC0
	ldr r1, _08036CAC  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #1
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
_08036CAA:
	b _08036D8A
_08036CAC:
	.4byte gUnknown_03000FC0
_08036CB0:
	.4byte gUnknown_03000414
_08036CB4:
	add r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #7
	bne _08036D1C
	ldr r1, _08036D18  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #57
	ldrb r0, [r1]
	cmp r0, #1
	bne _08036D16
	ldr r1, _08036D18  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #77
	ldrb r0, [r1]
	cmp r0, #1
	bne _08036D16
	ldr r1, _08036D18  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #97
	ldrb r0, [r1]
	cmp r0, #1
	bne _08036D16
	ldr r0, _08036D18  @ =gUnknown_03000FC0
	ldr r1, _08036D18  @ =gUnknown_03000FC0
	ldrb r2, [r1, #3]
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	ldrb r2, [r0, #3]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #3]
	ldr r1, _08036D18  @ =gUnknown_03000FC0
	ldr r0, _08036D18  @ =gUnknown_03000FC0
	ldr r1, _08036D18  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #1
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
_08036D16:
	b _08036D8A
_08036D18:
	.4byte gUnknown_03000FC0
_08036D1C:
	add r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #15
	bne _08036D8A
	ldr r1, _08036D90  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #57
	ldrb r0, [r1]
	cmp r0, #1
	bne _08036D8A
	ldr r1, _08036D90  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #77
	ldrb r0, [r1]
	cmp r0, #1
	bne _08036D8A
	ldr r1, _08036D90  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #97
	ldrb r0, [r1]
	cmp r0, #1
	bne _08036D8A
	ldr r1, _08036D90  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #117
	ldrb r0, [r1]
	cmp r0, #1
	bne _08036D8A
	ldr r0, _08036D90  @ =gUnknown_03000FC0
	ldr r1, _08036D90  @ =gUnknown_03000FC0
	ldrb r2, [r1, #3]
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	ldrb r2, [r0, #3]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #3]
	ldr r1, _08036D90  @ =gUnknown_03000FC0
	ldr r0, _08036D90  @ =gUnknown_03000FC0
	ldr r1, _08036D90  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #1
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
_08036D8A:
	bl sub_080368D8
	b _08036D9E
_08036D90:
	.4byte gUnknown_03000FC0
_08036D94:
	bl sub_08036948
	bl sub_080368D8
	b _08036D9E
_08036D9E:
	ldr r0, _08036DE8  @ =gUnknown_03000FC0
	add r1, r0, #0
	add r0, r0, #56
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08036DE8  @ =gUnknown_03000FC0
	add r1, r0, #0
	add r0, r0, #76
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08036DE8  @ =gUnknown_03000FC0
	add r1, r0, #0
	add r0, r0, #96
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08036DE8  @ =gUnknown_03000FC0
	add r1, r0, #0
	add r0, r0, #116
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08036DE8:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_080369B4

	THUMB_FUNC_START sub_08036DEC
sub_08036DEC: @ 0x08036DEC
	push {r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r1, [r7, #4]
	str r2, [r7, #8]
	add r1, r7, #0
	strb r0, [r1]
	add r0, r7, #0
	ldrb r1, [r0]
	add r0, r1, #0
	lsl r1, r0, #3
	ldr r0, _08036E20  @ =gUnknown_03006CA8
	add r1, r0, r1
	str r1, [r7, #12]
	ldr r0, [r7, #12]
	ldr r1, [r7, #4]
	str r1, [r0]
	ldr r1, [r7, #12]
	add r0, r1, #4
	ldr r1, [r7, #8]
	str r1, [r0]
	add sp, sp, #16
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08036E20:
	.4byte gUnknown_03006CA8
	THUMB_FUNC_END sub_08036DEC

	THUMB_FUNC_START sub_08036E24
sub_08036E24: @ 0x08036E24
	push {r7,lr}
	mov r7, sp
	ldr r0, _08036E38  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	cmp r1, #0
	bne _08036E3C
	mov r0, #5
	bl sub_08036770
	b _08036F16
_08036E38:
	.4byte gUnknown_03000FC0
_08036E3C:
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldrb r1, [r0, #16]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #48
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #16]
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldr r1, _08036F20  @ =gUnknown_0200B250
	mov r2, #192
	lsl r2, r2, #18
	ldrb r3, [r2, #4]
	add r2, r3, #0
	lsl r3, r2, #6
	add r1, r1, r3
	ldr r2, [r1]
	str r2, [r0, #20]
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	mov r1, #192
	lsl r1, r1, #18
	ldrb r2, [r1, #4]
	add r1, r2, #0
	lsl r2, r1, #6
	ldr r3, _08036F24  @ =gUnknown_0200B254
	add r1, r2, r3
	ldr r2, [r1]
	str r2, [r0, #24]
	mov r0, #48
	bl sub_08037B5C
	cmp r0, #0
	beq _08036F10
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08036EA4
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldr r1, [r0, #60]
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldr r2, [r0, #64]
	mov r0, #0
	bl sub_08036DEC
_08036EA4:
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #2
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08036EC6
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldr r1, [r0, #80]
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldr r2, [r0, #84]
	mov r0, #1
	bl sub_08036DEC
_08036EC6:
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #4
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08036EE8
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldr r1, [r0, #100]
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldr r2, [r0, #104]
	mov r0, #2
	bl sub_08036DEC
_08036EE8:
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #8
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08036F0A
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldr r1, [r0, #120]
	ldr r0, _08036F1C  @ =gUnknown_03000FC0
	ldr r2, [r0, #124]
	mov r0, #3
	bl sub_08036DEC
_08036F0A:
	mov r0, #1
	bl sub_08036770
_08036F10:
	mov r0, #48
	bl sub_08037D64
_08036F16:
	pop {r7}
	pop {r0}
	bx r0
_08036F1C:
	.4byte gUnknown_03000FC0
_08036F20:
	.4byte gUnknown_0200B250
_08036F24:
	.4byte gUnknown_0200B254
	THUMB_FUNC_END sub_08036E24

	THUMB_FUNC_START sub_08036F28
sub_08036F28: @ 0x08036F28
	push {r7,lr}
	mov r7, sp
	ldr r0, _08036F3C  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	cmp r1, #0
	bne _08036F40
	mov r0, #5
	bl sub_08036770
	b _08036F8E
_08036F3C:
	.4byte gUnknown_03000FC0
_08036F40:
	ldr r0, _08036F94  @ =gUnknown_03000FC0
	ldrb r1, [r0, #16]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #16]
	ldr r0, _08036F94  @ =gUnknown_03000FC0
	ldr r1, _08036F98  @ =gUnknown_03000F40
	ldr r2, [r1]
	str r2, [r0, #20]
	mov r0, #64
	bl sub_08037B5C
	cmp r0, #0
	beq _08036F88
	ldr r0, _08036F94  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08036F82
	ldr r0, _08036F98  @ =gUnknown_03000F40
	ldr r1, _08036F94  @ =gUnknown_03000FC0
	ldr r2, [r1, #60]
	str r2, [r0]
_08036F82:
	mov r0, #1
	bl sub_08036770
_08036F88:
	mov r0, #64
	bl sub_08037D64
_08036F8E:
	pop {r7}
	pop {r0}
	bx r0
_08036F94:
	.4byte gUnknown_03000FC0
_08036F98:
	.4byte gUnknown_03000F40
	THUMB_FUNC_END sub_08036F28

	THUMB_FUNC_START sub_08036F9C
sub_08036F9C: @ 0x08036F9C
	push {r4,r7,lr}
	mov r7, sp
	ldr r0, _08036FC0  @ =gUnknown_08427BA0
	ldr r1, _08036FC4  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r4, [r0]
	bl _call_via_r4
	mov r0, #80
	bl sub_08037D64
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08036FC0:
	.4byte gUnknown_08427BA0
_08036FC4:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_08036F9C

	THUMB_FUNC_START sub_08036FC8
sub_08036FC8: @ 0x08036FC8
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r7, sp
	add r0, r7, #2
	mov r2, #192
	lsl r2, r2, #8
	add r1, r2, #0
	strh r1, [r0]
	add r0, r7, #2
	ldr r1, _08036FF4  @ =gUnknown_0200B1D0
	ldr r2, _08036FF8  @ =0x01000040
	bl CpuSet
	add r0, r7, #0
	mov r1, #14
	strb r1, [r0]
_08036FE8:
	add r0, r7, #0
	ldrb r1, [r0]
	cmp r1, #15
	bls _08036FFC
	b _08037078
	.byte 0x00
	.byte 0x00
_08036FF4:
	.4byte gUnknown_0200B1D0
_08036FF8:
	.4byte 0x01000040
_08036FFC:
	ldr r0, _08037074  @ =gUnknown_0200B1D0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #1
	add r0, r0, r2
	ldr r1, _08037074  @ =gUnknown_0200B1D0
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #1
	add r2, r1, #0
	add r2, r2, #32
	add r1, r2, r3
	ldr r2, _08037074  @ =gUnknown_0200B1D0
	add r3, r7, #0
	ldrb r4, [r3]
	add r5, r4, #0
	lsl r3, r5, #1
	add r4, r2, #0
	add r5, r2, #0
	add r5, r5, #64
	add r2, r5, r3
	ldr r3, _08037074  @ =gUnknown_0200B1D0
	add r4, r7, #0
	ldrb r5, [r4]
	add r6, r5, #0
	lsl r4, r6, #1
	add r5, r3, #0
	add r6, r3, #0
	add r6, r6, #96
	add r3, r6, r4
	ldrh r4, [r3]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	strh r5, [r3]
	ldrh r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strh r4, [r2]
	ldrh r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1]
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08036FE8
_08037074:
	.4byte gUnknown_0200B1D0
_08037078:
	add r0, r7, #4
	mov r1, #0
	strh r1, [r0]
	add r0, r7, #4
	ldr r1, _080370B0  @ =gUnknown_03000FE4
	ldr r2, _080370B4  @ =0x0100000A
	bl CpuSet
	ldr r0, _080370B8  @ =gUnknown_03000494
	mov r1, #0
	str r1, [r0]
	ldr r1, _080370BC  @ =gUnknown_03000FC0
	ldr r0, _080370BC  @ =gUnknown_03000FC0
	ldr r1, _080370BC  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #1
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_080370B0:
	.4byte gUnknown_03000FE4
_080370B4:
	.4byte 0x0100000A
_080370B8:
	.4byte gUnknown_03000494
_080370BC:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_08036FC8

	THUMB_FUNC_START sub_080370C0
sub_080370C0: @ 0x080370C0
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	ldr r0, _08037170  @ =gUnknown_03000FC0
	mov r1, #3
	str r1, [r0, #8]
	ldr r0, _08037170  @ =gUnknown_03000FC0
	ldr r1, _08037170  @ =gUnknown_03000FC0
	ldrb r2, [r1, #16]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #80
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1, #16]
	add r1, r0, #0
	add r0, r0, #36
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #80
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #80
	bl sub_08037B5C
	cmp r0, #0
	beq _08037174
	ldr r0, _08037170  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803711C
	mov r0, #0
	bl sub_0803719C
_0803711C:
	ldr r0, _08037170  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #2
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08037136
	mov r0, #1
	bl sub_0803719C
_08037136:
	ldr r0, _08037170  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #4
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08037150
	mov r0, #2
	bl sub_0803719C
_08037150:
	ldr r0, _08037170  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #8
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803716A
	mov r0, #3
	bl sub_0803719C
_0803716A:
	bl sub_08037300
	b _0803718E
_08037170:
	.4byte gUnknown_03000FC0
_08037174:
	ldr r1, _08037198  @ =gUnknown_03000FC0
	ldr r0, _08037198  @ =gUnknown_03000FC0
	ldr r1, _08037198  @ =gUnknown_03000FC0
	ldrh r2, [r1, #12]
	add r1, r2, #1
	ldrh r2, [r0, #12]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #12]
_0803718E:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08037198:
	.4byte gUnknown_03000FC0
	THUMB_FUNC_END sub_080370C0

	THUMB_FUNC_START sub_0803719C
sub_0803719C: @ 0x0803719C
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	add r1, r7, #0
	strb r0, [r1]
	add r1, r7, #0
	ldrb r0, [r1]
	add r2, r0, #0
	lsl r1, r2, #2
	add r1, r1, r0
	lsl r0, r1, #2
	ldr r1, _080371DC  @ =gUnknown_03000FF8
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r0, _080371E0  @ =gUnknown_03000FC0
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #2
	add r2, r2, r1
	lsl r1, r2, #2
	add r0, r0, #68
	add r1, r0, r1
	ldr r0, [r1]
	mov r1, #15
	and r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #15
	bls _080371E8
_080371D8:
	b _080371E6
	.byte 0x00
	.byte 0x00
_080371DC:
	.4byte gUnknown_03000FF8
_080371E0:
	.4byte gUnknown_03000FC0
	.byte 0x00
	.byte 0xE0
_080371E6:
	b _080371D8
_080371E8:
	ldr r0, [r7, #4]
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _080371F2
	b _080372EE
_080371F2:
	add r0, r7, #0
	ldr r1, _080372F8  @ =gUnknown_03000414
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080372EE
	ldr r0, _080372FC  @ =gUnknown_0200B1D0
	ldr r1, [r7, #8]
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #5
	add r1, r1, r3
	add r0, r0, r1
	ldr r1, [r7, #4]
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #2]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7, #8]
	sub r0, r1, #1
	mov r1, #15
	and r0, r0, r1
	str r0, [r7, #8]
	ldr r0, _080372FC  @ =gUnknown_0200B1D0
	ldr r1, [r7, #8]
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #5
	add r1, r1, r3
	add r0, r0, r1
	ldr r1, [r7, #4]
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #4]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7, #8]
	sub r0, r1, #1
	mov r1, #15
	and r0, r0, r1
	str r0, [r7, #8]
	ldr r0, _080372FC  @ =gUnknown_0200B1D0
	ldr r1, [r7, #8]
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #5
	add r1, r1, r3
	add r0, r0, r1
	ldr r1, [r7, #4]
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #6]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7, #8]
	sub r0, r1, #1
	mov r1, #15
	and r0, r0, r1
	str r0, [r7, #8]
	ldr r0, _080372FC  @ =gUnknown_0200B1D0
	ldr r1, [r7, #8]
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #5
	add r1, r1, r3
	add r0, r0, r1
	ldr r1, [r7, #4]
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #8]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7, #8]
	sub r0, r1, #1
	mov r1, #15
	and r0, r0, r1
	str r0, [r7, #8]
	ldr r0, _080372FC  @ =gUnknown_0200B1D0
	ldr r1, [r7, #8]
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #5
	add r1, r1, r3
	add r0, r0, r1
	ldr r1, [r7, #4]
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #10]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
_080372EE:
	add sp, sp, #12
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080372F8:
	.4byte gUnknown_03000414
_080372FC:
	.4byte gUnknown_0200B1D0
	THUMB_FUNC_END sub_0803719C

	THUMB_FUNC_START sub_08037300
sub_08037300: @ 0x08037300
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	mov r0, #1
	str r0, [r7]
	ldr r0, _08037320  @ =gUnknown_03000494
	ldr r1, [r0]
	sub r0, r1, #2
	mov r1, #15
	and r0, r0, r1
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #15
	bls _08037328
_0803731C:
	b _08037326
	.byte 0x00
	.byte 0x00
_08037320:
	.4byte gUnknown_03000494
	.byte 0x00
	.byte 0xE0
_08037326:
	b _0803731C
_08037328:
	ldr r0, _080373F0  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08037354
	ldr r0, _080373F4  @ =gUnknown_0200B1D0
	ldr r1, [r7, #4]
	add r2, r1, #0
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #192
	lsl r0, r0, #8
	cmp r1, r0
	bne _08037354
	mov r0, #0
	str r0, [r7]
_08037354:
	ldr r0, _080373F0  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #2
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08037382
	ldr r0, _080373F4  @ =gUnknown_0200B1D0
	ldr r1, [r7, #4]
	add r2, r1, #0
	lsl r1, r2, #1
	add r0, r0, #32
	add r1, r0, r1
	ldrh r0, [r1]
	mov r1, #192
	lsl r1, r1, #8
	cmp r0, r1
	bne _08037382
	mov r0, #0
	str r0, [r7]
_08037382:
	ldr r0, _080373F0  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #4
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _080373B2
	ldr r0, _080373F4  @ =gUnknown_0200B1D0
	ldr r1, [r7, #4]
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r0, #0
	add r0, r0, #64
	add r1, r0, r1
	ldrh r0, [r1]
	mov r1, #192
	lsl r1, r1, #8
	cmp r0, r1
	bne _080373B2
	mov r0, #0
	str r0, [r7]
_080373B2:
	ldr r0, _080373F0  @ =gUnknown_03000FC0
	ldrb r1, [r0, #3]
	mov r2, #8
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _080373E2
	ldr r0, _080373F4  @ =gUnknown_0200B1D0
	ldr r1, [r7, #4]
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r0, #0
	add r0, r0, #96
	add r1, r0, r1
	ldrh r0, [r1]
	mov r1, #192
	lsl r1, r1, #8
	cmp r0, r1
	bne _080373E2
	mov r0, #0
	str r0, [r7]
_080373E2:
	ldr r0, [r7]
	cmp r0, #0
	beq _080373F8
	ldr r0, _080373F0  @ =gUnknown_03000FC0
	mov r1, #2
	str r1, [r0, #8]
	b _08037402
_080373F0:
	.4byte gUnknown_03000FC0
_080373F4:
	.4byte gUnknown_0200B1D0
_080373F8:
	ldr r0, _0803740C  @ =gUnknown_03000FE4
	ldr r1, _08037410  @ =gUnknown_03000FD0
	mov r2, #10
	bl CpuSet
_08037402:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803740C:
	.4byte gUnknown_03000FE4
_08037410:
	.4byte gUnknown_03000FD0
	THUMB_FUNC_END sub_08037300

	THUMB_FUNC_START sub_08037414
sub_08037414: @ 0x08037414
	push {r7,lr}
	mov r7, sp
	mov r0, #1
	b _0803741C
_0803741C:
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08037414

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08037424
sub_08037424: @ 0x08037424
	push {r7,lr}
	mov r7, sp
	ldr r1, _08037438  @ =gUnknown_03000FC0
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0803743C
	cmp r0, #1
	beq _08037468
	b _080374E4
	.byte 0x00
	.byte 0x00
_08037438:
	.4byte gUnknown_03000FC0
_0803743C:
	ldr r0, _08037464  @ =gUnknown_03000FC0
	ldrb r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #2]
	ldr r1, _08037464  @ =gUnknown_03000FC0
	ldr r0, _08037464  @ =gUnknown_03000FC0
	ldr r1, _08037464  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #1
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
	b _0803754C
_08037464:
	.4byte gUnknown_03000FC0
_08037468:
	ldr r0, _08037490  @ =gUnknown_03000FC0
	ldrb r1, [r0, #16]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #96
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #16]
	mov r0, #96
	bl sub_08037B5C
	cmp r0, #0
	beq _08037494
	mov r0, #1
	bl sub_08036770
	b _0803754C
	.byte 0x00
	.byte 0x00
_08037490:
	.4byte gUnknown_03000FC0
_08037494:
	ldr r1, _080374E0  @ =gUnknown_03000FC0
	ldr r0, _080374E0  @ =gUnknown_03000FC0
	ldr r1, _080374E0  @ =gUnknown_03000FC0
	ldrb r2, [r1, #2]
	add r1, r2, #1
	ldrb r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #2]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #29
	bls _080374DE
	ldr r1, _080374E0  @ =gUnknown_03000FC0
	ldr r0, _080374E0  @ =gUnknown_03000FC0
	ldr r1, _080374E0  @ =gUnknown_03000FC0
	ldrb r2, [r1, #1]
	add r1, r2, #1
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
	ldr r0, _080374E0  @ =gUnknown_03000FC0
	mov r1, #4
	str r1, [r0, #8]
_080374DE:
	b _0803754C
_080374E0:
	.4byte gUnknown_03000FC0
_080374E4:
	ldr r0, _0803750C  @ =gUnknown_03000FC0
	ldrb r1, [r0, #16]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #96
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #16]
	mov r0, #96
	bl sub_08037B5C
	cmp r0, #0
	beq _08037510
	mov r0, #1
	bl sub_08036770
	b _0803754C
	.byte 0x00
	.byte 0x00
_0803750C:
	.4byte gUnknown_03000FC0
_08037510:
	ldr r1, _08037548  @ =gUnknown_03000FC0
	ldr r0, _08037548  @ =gUnknown_03000FC0
	ldr r1, _08037548  @ =gUnknown_03000FC0
	ldrb r2, [r1, #2]
	add r1, r2, #1
	ldrb r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #2]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #179
	bls _08037544
	bl sub_08036760
	mov r0, #10
	bl sub_0800B5EC
_08037544:
	b _0803754C
	.byte 0x00
	.byte 0x00
_08037548:
	.4byte gUnknown_03000FC0
_0803754C:
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08037424

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08037554
sub_08037554: @ 0x08037554
	push {r7,lr}
	mov r7, sp
	mov r0, #0
	ldr r1, _08037568  @ =gUnknown_03000FC0
	ldr r2, [r1, #8]
	cmp r2, #2
	bne _08037564
	mov r0, #1
_08037564:
	b _0803756C
	.byte 0x00
	.byte 0x00
_08037568:
	.4byte gUnknown_03000FC0
_0803756C:
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08037554

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08037574
sub_08037574: @ 0x08037574
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r7, sp
	ldr r0, _080376D8  @ =gUnknown_03000FC0
	ldr r1, _080376DC  @ =gUnknown_0200B1D0
	ldr r2, _080376E0  @ =gUnknown_03000494
	ldr r3, [r2]
	mov r5, #15
	add r2, r3, #0
	and r2, r2, r5
	add r3, r2, #0
	lsl r2, r3, #1
	ldr r3, _080376E4  @ =gUnknown_03000414
	ldrb r5, [r3]
	add r3, r5, #0
	lsl r5, r3, #5
	add r2, r2, r5
	add r1, r1, r2
	ldr r2, _080376E8  @ =gUnknown_03000510
	ldrh r4, [r2]
	add r2, r4, #0
	ldr r3, _080376EC  @ =gUnknown_02000010
	ldrb r5, [r3]
	mov r6, #127
	add r3, r5, #0
	and r3, r3, r6
	add r6, r3, #0
	lsl r5, r6, #24
	lsr r3, r5, #24
	cmp r3, #0
	beq _080375B8
	mov r3, #128
	lsl r3, r3, #3
	orr r2, r2, r3
_080375B8:
	ldrh r3, [r1]
	mov r5, #0
	and r3, r3, r5
	add r5, r3, #0
	add r3, r2, #0
	orr r5, r5, r3
	add r3, r5, #0
	strh r3, [r1]
	add r1, r2, #0
	mov r2, #0
	bic r1, r1, r2
	ldrh r2, [r0, #38]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #38]
	ldr r0, _080376D8  @ =gUnknown_03000FC0
	ldr r1, _080376DC  @ =gUnknown_0200B1D0
	ldr r2, _080376E0  @ =gUnknown_03000494
	ldr r3, [r2]
	sub r2, r3, #1
	mov r3, #15
	and r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #1
	ldr r3, _080376E4  @ =gUnknown_03000414
	ldrb r5, [r3]
	add r3, r5, #0
	lsl r5, r3, #5
	add r2, r2, r5
	add r1, r1, r2
	ldrh r2, [r0, #40]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #40]
	ldr r0, _080376D8  @ =gUnknown_03000FC0
	ldr r1, _080376DC  @ =gUnknown_0200B1D0
	ldr r2, _080376E0  @ =gUnknown_03000494
	ldr r3, [r2]
	sub r2, r3, #2
	mov r3, #15
	and r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #1
	ldr r3, _080376E4  @ =gUnknown_03000414
	ldrb r5, [r3]
	add r3, r5, #0
	lsl r5, r3, #5
	add r2, r2, r5
	add r1, r1, r2
	ldrh r2, [r0, #42]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #42]
	ldr r0, _080376D8  @ =gUnknown_03000FC0
	ldr r1, _080376DC  @ =gUnknown_0200B1D0
	ldr r2, _080376E0  @ =gUnknown_03000494
	ldr r3, [r2]
	sub r2, r3, #3
	mov r3, #15
	and r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #1
	ldr r3, _080376E4  @ =gUnknown_03000414
	ldrb r5, [r3]
	add r3, r5, #0
	lsl r5, r3, #5
	add r2, r2, r5
	add r1, r1, r2
	ldrh r2, [r0, #44]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #44]
	ldr r0, _080376D8  @ =gUnknown_03000FC0
	ldr r1, _080376DC  @ =gUnknown_0200B1D0
	ldr r2, _080376E0  @ =gUnknown_03000494
	ldr r3, [r2]
	sub r2, r3, #4
	mov r3, #15
	and r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #1
	ldr r3, _080376E4  @ =gUnknown_03000414
	ldrb r5, [r3]
	add r3, r5, #0
	lsl r5, r3, #5
	add r2, r2, r5
	add r1, r1, r2
	ldrh r2, [r0, #46]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #46]
	ldr r2, _080376D8  @ =gUnknown_03000FC0
	ldr r0, _080376E0  @ =gUnknown_03000494
	ldr r1, [r0]
	str r1, [r2, #48]
	add r1, r1, #1
	str r1, [r0]
	ldr r0, _080376D8  @ =gUnknown_03000FC0
	add r1, r0, #0
	add r0, r0, #37
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _080376F0  @ =gUnknown_03000FE4
	ldr r1, _080376F4  @ =gUnknown_03000FD0
	ldr r2, _080376F8  @ =0x04000005
	bl CpuSet
	mov r0, #0
	str r0, [r7]
_080376D0:
	ldr r0, [r7]
	cmp r0, #3
	ble _080376FC
	b _08037748
_080376D8:
	.4byte gUnknown_03000FC0
_080376DC:
	.4byte gUnknown_0200B1D0
_080376E0:
	.4byte gUnknown_03000494
_080376E4:
	.4byte gUnknown_03000414
_080376E8:
	.4byte gUnknown_03000510
_080376EC:
	.4byte gUnknown_02000010
_080376F0:
	.4byte gUnknown_03000FE4
_080376F4:
	.4byte gUnknown_03000FD0
_080376F8:
	.4byte 0x04000005
_080376FC:
	ldr r0, _0803773C  @ =gUnknown_03000414
	ldrb r1, [r0]
	ldr r0, [r7]
	cmp r0, r1
	beq _08037734
	ldr r0, _08037740  @ =gUnknown_0200B1D0
	ldr r1, _08037744  @ =gUnknown_03000494
	ldr r2, [r1]
	sub r1, r2, #1
	mov r2, #15
	and r1, r1, r2
	add r2, r1, #0
	lsl r1, r2, #1
	ldr r2, [r7]
	add r3, r2, #0
	lsl r2, r3, #5
	add r1, r1, r2
	add r0, r0, r1
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #192
	lsl r3, r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
_08037734:
	ldr r0, [r7]
	add r1, r0, #1
	str r1, [r7]
	b _080376D0
_0803773C:
	.4byte gUnknown_03000414
_08037740:
	.4byte gUnknown_0200B1D0
_08037744:
	.4byte gUnknown_03000494
_08037748:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08037574

	THUMB_FUNC_START sub_08037750
sub_08037750: @ 0x08037750
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r0, r7, #2
	mov r1, #0
	strh r1, [r0]
_0803775C:
	add r0, r7, #2
	ldrh r1, [r0]
	cmp r1, #3
	bls _08037766
	b _08037814
_08037766:
	add r0, r7, #0
	ldr r1, _080377C0  @ =gUnknown_0200B1D0
	ldr r2, _080377C4  @ =gUnknown_03000494
	ldr r3, [r2]
	sub r2, r3, #2
	mov r3, #15
	and r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #1
	add r3, r7, #2
	ldrh r4, [r3]
	add r3, r4, #0
	lsl r4, r3, #5
	add r2, r2, r4
	add r1, r1, r2
	ldrh r2, [r1]
	lsl r3, r2, #21
	lsr r1, r3, #21
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _080377C8  @ =gUnknown_03005E10
	add r1, r7, #2
	ldrh r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #1
	add r0, r0, r2
	ldr r1, _080377C4  @ =gUnknown_03000494
	ldr r2, [r1]
	cmp r2, #7
	ble _080377D0
	add r1, r7, #0
	ldr r2, _080377CC  @ =gUnknown_03000940
	add r3, r7, #2
	ldrh r4, [r3]
	add r3, r4, #0
	lsl r4, r3, #1
	add r2, r2, r4
	ldrh r3, [r2]
	mvn r2, r3
	ldrh r1, [r1]
	add r3, r2, #0
	add r2, r1, #0
	and r2, r2, r3
	add r1, r2, #0
	b _080377D2
_080377C0:
	.4byte gUnknown_0200B1D0
_080377C4:
	.4byte gUnknown_03000494
_080377C8:
	.4byte gUnknown_03005E10
_080377CC:
	.4byte gUnknown_03000940
_080377D0:
	mov r1, #0
_080377D2:
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _08037810  @ =gUnknown_03000940
	add r1, r7, #2
	ldrh r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #1
	add r0, r0, r2
	add r1, r7, #0
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	add r1, r7, #2
	add r0, r7, #2
	add r1, r7, #2
	ldrh r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strh r2, [r0]
	b _0803775C
_08037810:
	.4byte gUnknown_03000940
_08037814:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08037750

	THUMB_FUNC_START sub_0803781C
sub_0803781C: @ 0x0803781C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strh r0, [r1]
	ldr r0, _08037850  @ =gUnknown_03005E10
	ldrh r1, [r0]
	ldr r0, _08037854  @ =0x0000FFFF
	cmp r1, r0
	beq _08037858
	ldr r0, _08037850  @ =gUnknown_03005E10
	add r1, r7, #0
	ldrh r0, [r0]
	ldrh r1, [r1]
	add r2, r1, #0
	add r1, r0, #0
	and r1, r1, r2
	add r0, r7, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	ldrh r0, [r0]
	cmp r1, r0
	bne _08037858
	mov r0, #1
	b _080378EC
	.byte 0x00
	.byte 0x00
_08037850:
	.4byte gUnknown_03005E10
_08037854:
	.4byte 0x0000FFFF
_08037858:
	ldr r0, _08037880  @ =gUnknown_03005E10
	ldrh r1, [r0, #2]
	ldr r0, _08037884  @ =0x0000FFFF
	cmp r1, r0
	beq _08037888
	ldr r0, _08037880  @ =gUnknown_03005E10
	add r1, r7, #0
	ldrh r0, [r0, #2]
	ldrh r1, [r1]
	add r2, r1, #0
	add r1, r0, #0
	and r1, r1, r2
	add r0, r7, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	ldrh r0, [r0]
	cmp r1, r0
	bne _08037888
	mov r0, #2
	b _080378EC
_08037880:
	.4byte gUnknown_03005E10
_08037884:
	.4byte 0x0000FFFF
_08037888:
	ldr r0, _080378B0  @ =gUnknown_03005E10
	ldrh r1, [r0, #4]
	ldr r0, _080378B4  @ =0x0000FFFF
	cmp r1, r0
	beq _080378B8
	ldr r0, _080378B0  @ =gUnknown_03005E10
	add r1, r7, #0
	ldrh r0, [r0, #4]
	ldrh r1, [r1]
	add r2, r1, #0
	add r1, r0, #0
	and r1, r1, r2
	add r0, r7, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	ldrh r0, [r0]
	cmp r1, r0
	bne _080378B8
	mov r0, #3
	b _080378EC
_080378B0:
	.4byte gUnknown_03005E10
_080378B4:
	.4byte 0x0000FFFF
_080378B8:
	ldr r0, _080378E0  @ =gUnknown_03005E10
	ldrh r1, [r0, #6]
	ldr r0, _080378E4  @ =0x0000FFFF
	cmp r1, r0
	beq _080378E8
	ldr r0, _080378E0  @ =gUnknown_03005E10
	add r1, r7, #0
	ldrh r0, [r0, #6]
	ldrh r1, [r1]
	add r2, r1, #0
	add r1, r0, #0
	and r1, r1, r2
	add r0, r7, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	ldrh r0, [r0]
	cmp r1, r0
	bne _080378E8
	mov r0, #4
	b _080378EC
_080378E0:
	.4byte gUnknown_03005E10
_080378E4:
	.4byte 0x0000FFFF
_080378E8:
	mov r0, #0
	b _080378EC
_080378EC:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803781C

	THUMB_FUNC_START sub_080378F4
sub_080378F4: @ 0x080378F4
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strh r0, [r1]
	ldr r0, _08037924  @ =gUnknown_03005E10
	ldrh r1, [r0]
	ldr r0, _08037928  @ =0x0000FFFF
	cmp r1, r0
	beq _0803792C
	ldr r0, _08037924  @ =gUnknown_03005E10
	add r1, r7, #0
	ldrh r0, [r0]
	ldrh r1, [r1]
	add r2, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _0803792C
	mov r0, #1
	b _080379B4
	.byte 0x00
	.byte 0x00
_08037924:
	.4byte gUnknown_03005E10
_08037928:
	.4byte 0x0000FFFF
_0803792C:
	ldr r0, _08037950  @ =gUnknown_03005E10
	ldrh r1, [r0, #2]
	ldr r0, _08037954  @ =0x0000FFFF
	cmp r1, r0
	beq _08037958
	ldr r0, _08037950  @ =gUnknown_03005E10
	add r1, r7, #0
	ldrh r0, [r0, #2]
	ldrh r1, [r1]
	add r2, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08037958
	mov r0, #2
	b _080379B4
_08037950:
	.4byte gUnknown_03005E10
_08037954:
	.4byte 0x0000FFFF
_08037958:
	ldr r0, _0803797C  @ =gUnknown_03005E10
	ldrh r1, [r0, #4]
	ldr r0, _08037980  @ =0x0000FFFF
	cmp r1, r0
	beq _08037984
	ldr r0, _0803797C  @ =gUnknown_03005E10
	add r1, r7, #0
	ldrh r0, [r0, #4]
	ldrh r1, [r1]
	add r2, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08037984
	mov r0, #3
	b _080379B4
_0803797C:
	.4byte gUnknown_03005E10
_08037980:
	.4byte 0x0000FFFF
_08037984:
	ldr r0, _080379A8  @ =gUnknown_03005E10
	ldrh r1, [r0, #6]
	ldr r0, _080379AC  @ =0x0000FFFF
	cmp r1, r0
	beq _080379B0
	ldr r0, _080379A8  @ =gUnknown_03005E10
	add r1, r7, #0
	ldrh r0, [r0, #6]
	ldrh r1, [r1]
	add r2, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _080379B0
	mov r0, #4
	b _080379B4
_080379A8:
	.4byte gUnknown_03005E10
_080379AC:
	.4byte 0x0000FFFF
_080379B0:
	mov r0, #0
	b _080379B4
_080379B4:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080378F4

	THUMB_FUNC_START sub_080379BC
sub_080379BC: @ 0x080379BC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strh r0, [r1]
	ldr r0, _080379F0  @ =gUnknown_03000940
	ldrh r1, [r0]
	ldr r0, _080379F4  @ =0x0000FFFF
	cmp r1, r0
	beq _080379F8
	ldr r0, _080379F0  @ =gUnknown_03000940
	add r1, r7, #0
	ldrh r0, [r0]
	ldrh r1, [r1]
	add r2, r1, #0
	add r1, r0, #0
	and r1, r1, r2
	add r0, r7, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	ldrh r0, [r0]
	cmp r1, r0
	bne _080379F8
	mov r0, #1
	b _08037A8C
	.byte 0x00
	.byte 0x00
_080379F0:
	.4byte gUnknown_03000940
_080379F4:
	.4byte 0x0000FFFF
_080379F8:
	ldr r0, _08037A20  @ =gUnknown_03000940
	ldrh r1, [r0, #2]
	ldr r0, _08037A24  @ =0x0000FFFF
	cmp r1, r0
	beq _08037A28
	ldr r0, _08037A20  @ =gUnknown_03000940
	add r1, r7, #0
	ldrh r0, [r0, #2]
	ldrh r1, [r1]
	add r2, r1, #0
	add r1, r0, #0
	and r1, r1, r2
	add r0, r7, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	ldrh r0, [r0]
	cmp r1, r0
	bne _08037A28
	mov r0, #2
	b _08037A8C
_08037A20:
	.4byte gUnknown_03000940
_08037A24:
	.4byte 0x0000FFFF
_08037A28:
	ldr r0, _08037A50  @ =gUnknown_03000940
	ldrh r1, [r0, #4]
	ldr r0, _08037A54  @ =0x0000FFFF
	cmp r1, r0
	beq _08037A58
	ldr r0, _08037A50  @ =gUnknown_03000940
	add r1, r7, #0
	ldrh r0, [r0, #4]
	ldrh r1, [r1]
	add r2, r1, #0
	add r1, r0, #0
	and r1, r1, r2
	add r0, r7, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	ldrh r0, [r0]
	cmp r1, r0
	bne _08037A58
	mov r0, #3
	b _08037A8C
_08037A50:
	.4byte gUnknown_03000940
_08037A54:
	.4byte 0x0000FFFF
_08037A58:
	ldr r0, _08037A80  @ =gUnknown_03000940
	ldrh r1, [r0, #6]
	ldr r0, _08037A84  @ =0x0000FFFF
	cmp r1, r0
	beq _08037A88
	ldr r0, _08037A80  @ =gUnknown_03000940
	add r1, r7, #0
	ldrh r0, [r0, #6]
	ldrh r1, [r1]
	add r2, r1, #0
	add r1, r0, #0
	and r1, r1, r2
	add r0, r7, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	ldrh r0, [r0]
	cmp r1, r0
	bne _08037A88
	mov r0, #4
	b _08037A8C
_08037A80:
	.4byte gUnknown_03000940
_08037A84:
	.4byte 0x0000FFFF
_08037A88:
	mov r0, #0
	b _08037A8C
_08037A8C:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080379BC

	THUMB_FUNC_START sub_08037A94
sub_08037A94: @ 0x08037A94
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strh r0, [r1]
	ldr r0, _08037AC4  @ =gUnknown_03000940
	ldrh r1, [r0]
	ldr r0, _08037AC8  @ =0x0000FFFF
	cmp r1, r0
	beq _08037ACC
	ldr r0, _08037AC4  @ =gUnknown_03000940
	add r1, r7, #0
	ldrh r0, [r0]
	ldrh r1, [r1]
	add r2, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08037ACC
	mov r0, #1
	b _08037B54
	.byte 0x00
	.byte 0x00
_08037AC4:
	.4byte gUnknown_03000940
_08037AC8:
	.4byte 0x0000FFFF
_08037ACC:
	ldr r0, _08037AF0  @ =gUnknown_03000940
	ldrh r1, [r0, #2]
	ldr r0, _08037AF4  @ =0x0000FFFF
	cmp r1, r0
	beq _08037AF8
	ldr r0, _08037AF0  @ =gUnknown_03000940
	add r1, r7, #0
	ldrh r0, [r0, #2]
	ldrh r1, [r1]
	add r2, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08037AF8
	mov r0, #2
	b _08037B54
_08037AF0:
	.4byte gUnknown_03000940
_08037AF4:
	.4byte 0x0000FFFF
_08037AF8:
	ldr r0, _08037B1C  @ =gUnknown_03000940
	ldrh r1, [r0, #4]
	ldr r0, _08037B20  @ =0x0000FFFF
	cmp r1, r0
	beq _08037B24
	ldr r0, _08037B1C  @ =gUnknown_03000940
	add r1, r7, #0
	ldrh r0, [r0, #4]
	ldrh r1, [r1]
	add r2, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08037B24
	mov r0, #3
	b _08037B54
_08037B1C:
	.4byte gUnknown_03000940
_08037B20:
	.4byte 0x0000FFFF
_08037B24:
	ldr r0, _08037B48  @ =gUnknown_03000940
	ldrh r1, [r0, #6]
	ldr r0, _08037B4C  @ =0x0000FFFF
	cmp r1, r0
	beq _08037B50
	ldr r0, _08037B48  @ =gUnknown_03000940
	add r1, r7, #0
	ldrh r0, [r0, #6]
	ldrh r1, [r1]
	add r2, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08037B50
	mov r0, #4
	b _08037B54
_08037B48:
	.4byte gUnknown_03000940
_08037B4C:
	.4byte 0x0000FFFF
_08037B50:
	mov r0, #0
	b _08037B54
_08037B54:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08037A94

	THUMB_FUNC_START sub_08037B5C
sub_08037B5C: @ 0x08037B5C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strb r0, [r1]
	add r0, r7, #1
	mov r1, #0
	strb r1, [r0]
	add r0, r7, #2
	ldr r1, _08037C48  @ =gUnknown_03000FC0
	ldrb r2, [r1, #3]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08037C4C  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08037BAA
	ldr r1, _08037C48  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #56
	add r0, r7, #0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08037BAA
	add r0, r7, #1
	add r1, r7, #1
	ldrb r2, [r1]
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08037BAA:
	ldr r0, _08037C4C  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08037BD8
	ldr r1, _08037C48  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #76
	add r0, r7, #0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08037BD8
	add r0, r7, #1
	add r1, r7, #1
	ldrb r2, [r1]
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08037BD8:
	ldr r0, _08037C4C  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #4
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08037C06
	ldr r1, _08037C48  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #96
	add r0, r7, #0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08037C06
	add r0, r7, #1
	add r1, r7, #1
	ldrb r2, [r1]
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08037C06:
	ldr r0, _08037C4C  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #8
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08037C34
	ldr r1, _08037C48  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #116
	add r0, r7, #0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08037C34
	add r0, r7, #1
	add r1, r7, #1
	ldrb r2, [r1]
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08037C34:
	mov r0, #0
	add r1, r7, #1
	add r2, r7, #2
	ldrb r1, [r1]
	ldrb r2, [r2]
	cmp r1, r2
	bne _08037C44
	mov r0, #1
_08037C44:
	b _08037C50
	.byte 0x00
	.byte 0x00
_08037C48:
	.4byte gUnknown_03000FC0
_08037C4C:
	.4byte gUnknown_03000BF0
_08037C50:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08037B5C

	THUMB_FUNC_START sub_08037C58
sub_08037C58: @ 0x08037C58
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strb r0, [r1]
	add r0, r7, #1
	mov r1, #0
	strb r1, [r0]
	add r0, r7, #2
	ldr r1, _08037D54  @ =gUnknown_03000FC0
	ldrb r2, [r1, #3]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08037D58  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08037CA6
	ldr r1, _08037D54  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #56
	add r0, r7, #0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08037CA6
	add r0, r7, #1
	add r1, r7, #1
	ldrb r2, [r1]
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08037CA6:
	ldr r0, _08037D58  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08037CD4
	ldr r1, _08037D54  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #76
	add r0, r7, #0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08037CD4
	add r0, r7, #1
	add r1, r7, #1
	ldrb r2, [r1]
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08037CD4:
	ldr r0, _08037D58  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #4
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08037D02
	ldr r1, _08037D54  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #96
	add r0, r7, #0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08037D02
	add r0, r7, #1
	add r1, r7, #1
	ldrb r2, [r1]
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08037D02:
	ldr r0, _08037D58  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #8
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08037D30
	ldr r1, _08037D54  @ =gUnknown_03000FC0
	add r0, r1, #0
	add r1, r1, #116
	add r0, r7, #0
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08037D30
	add r0, r7, #1
	add r1, r7, #1
	ldrb r2, [r1]
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08037D30:
	mov r0, #0
	add r1, r7, #1
	add r2, r7, #2
	ldrb r1, [r1]
	ldrb r2, [r2]
	cmp r1, r2
	bne _08037D52
	ldr r1, _08037D58  @ =gUnknown_03000BF0
	ldr r2, [r1]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	add r2, r7, #1
	ldrb r3, [r2]
	cmp r1, r3
	bne _08037D52
	mov r0, #1
_08037D52:
	b _08037D5C
_08037D54:
	.4byte gUnknown_03000FC0
_08037D58:
	.4byte gUnknown_03000BF0
_08037D5C:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08037C58

	THUMB_FUNC_START sub_08037D64
sub_08037D64: @ 0x08037D64
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08037D78  @ =gUnknown_03000FC0
	ldrb r1, [r0, #14]
	cmp r1, #0
	beq _08037D7C
	b _08037DDE
	.byte 0x00
	.byte 0x00
_08037D78:
	.4byte gUnknown_03000FC0
_08037D7C:
	ldr r4, _08037D9C  @ =gUnknown_03000FC0
	ldr r1, [r7]
	add r0, r1, #0
	lsl r2, r0, #24
	lsr r1, r2, #24
	add r0, r1, #0
	bl sub_08037C58
	cmp r0, #0
	bne _08037DA0
	ldr r0, _08037D9C  @ =gUnknown_03000FC0
	ldrh r1, [r0, #12]
	add r2, r1, #1
	add r0, r2, #0
	b _08037DA2
	.byte 0x00
	.byte 0x00
_08037D9C:
	.4byte gUnknown_03000FC0
_08037DA0:
	mov r0, #0
_08037DA2:
	ldrh r1, [r4, #12]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	orr r0, r0, r2
	add r1, r0, #0
	strh r1, [r4, #12]
	ldr r0, _08037DCC  @ =gUnknown_03000BF0
	ldr r1, [r0]
	mov r2, #192
	lsl r2, r2, #6
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	bne _08037DD4
	ldr r0, _08037DD0  @ =gUnknown_03000FC0
	ldrh r1, [r0, #12]
	cmp r1, #60
	bhi _08037DD4
	b _08037DDE
	.byte 0x00
	.byte 0x00
_08037DCC:
	.4byte gUnknown_03000BF0
_08037DD0:
	.4byte gUnknown_03000FC0
_08037DD4:
	bl sub_08036760
	mov r0, #10
	bl sub_0800B5EC
_08037DDE:
	add sp, sp, #4
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08037D64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08037DE8
sub_08037DE8: @ 0x08037DE8
	push {r4,r7,lr}
	mov r7, sp
	ldr r0, _08037E04  @ =gUnknown_08427BA8
	ldr r1, _08037E08  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r4, [r0]
	bl _call_via_r4
	pop {r4,r7}
	pop {r0}
	bx r0
_08037E04:
	.4byte gUnknown_08427BA8
_08037E08:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_08037DE8

	THUMB_FUNC_START sub_08037E0C
sub_08037E0C: @ 0x08037E0C
	push {r7,lr}
	mov r7, sp
	ldr r1, _08037E20  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	cmp r0, #0
	beq _08037E24
	cmp r0, #1
	beq _08037E98
	b _08037EE4
	.byte 0x00
	.byte 0x00
_08037E20:
	.4byte gUnknown_03000BFC
_08037E24:
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08037E84  @ =gUnknown_020163D0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	bl sub_08059A44
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0803668C
	ldr r0, _08037E88  @ =gUnknown_03000830
	mov r1, #0
	strb r1, [r0]
	bl sub_0800D1A0
	ldr r1, _08037E8C  @ =0x80010000
	add r0, r1, #0
	bl sub_0800D24C
	ldr r0, _08037E90  @ =gUnknown_02016D60
	ldrh r1, [r0, #4]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #4]
	ldr r1, _08037E94  @ =gUnknown_03000BFC
	ldr r0, _08037E94  @ =gUnknown_03000BFC
	ldr r1, _08037E94  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08037EE4
	.byte 0x00
	.byte 0x00
_08037E84:
	.4byte gUnknown_020163D0
_08037E88:
	.4byte gUnknown_03000830
_08037E8C:
	.4byte 0x80010000
_08037E90:
	.4byte gUnknown_02016D60
_08037E94:
	.4byte gUnknown_03000BFC
_08037E98:
	ldr r1, _08037ED8  @ =gUnknown_02016D60
	ldr r0, _08037ED8  @ =gUnknown_02016D60
	ldr r1, _08037ED8  @ =gUnknown_02016D60
	ldrh r2, [r1, #4]
	sub r1, r2, #1
	ldrh r2, [r0, #4]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strh r2, [r0, #4]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _08037ED6
	ldr r1, _08037EDC  @ =gUnknown_03005050
	ldr r0, _08037EDC  @ =gUnknown_03005050
	ldr r1, _08037EDC  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08037EE0  @ =gUnknown_03000BFC
	mov r1, #0
	strb r1, [r0]
_08037ED6:
	b _08037EE4
_08037ED8:
	.4byte gUnknown_02016D60
_08037EDC:
	.4byte gUnknown_03005050
_08037EE0:
	.4byte gUnknown_03000BFC
_08037EE4:
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08037E0C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08037EEC
sub_08037EEC: @ 0x08037EEC
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0802BF60
	bl sub_0802C278
	bl sub_0800D6F4
	bl sub_0800D744
	mov r0, #0
	str r0, [r7]
	ldr r1, _08038068  @ =0x0600C000
	ldr r2, _0803806C  @ =0x01001000
	add r0, r7, #0
	bl CpuFastSet
	mov r0, #2
	bl sub_0800B890
	mov r0, #21
	bl sub_0800B890
	mov r0, #27
	bl sub_0800BA44
	mov r0, #1
	bl sub_0800BA44
	mov r0, #160
	lsl r0, r0, #19
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08038070  @ =gUnknown_020163D0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _08038074  @ =0x00000405
	ldr r1, _08038078  @ =gUnknown_08427BB4
	bl sub_0800F4C4
	ldr r0, _0803807C  @ =gUnknown_030004A0
	ldr r1, _08038080  @ =gUnknown_08142374
	ldrh r2, [r0, #8]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #36]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #8]
	ldr r0, _0803807C  @ =gUnknown_030004A0
	ldr r1, _0803807C  @ =gUnknown_030004A0
	ldrh r2, [r1, #12]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1, #12]
	ldrh r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #10]
	ldr r0, _0803807C  @ =gUnknown_030004A0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #154
	lsl r3, r3, #5
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _0803807C  @ =gUnknown_030004A0
	ldr r1, _08038080  @ =gUnknown_08142374
	ldrh r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #42]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #20]
	ldr r0, _0803807C  @ =gUnknown_030004A0
	ldr r1, _0803807C  @ =gUnknown_030004A0
	ldrh r2, [r1, #24]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1, #24]
	ldrh r1, [r0, #22]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #22]
	ldr r0, _08038084  @ =gUnknown_03000414
	ldrb r1, [r0]
	add r0, r1, #0
	bl sub_08063C5C
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #31]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #31]
	ldr r0, [r7, #4]
	ldrh r1, [r0, #50]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #120
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #50]
	ldr r0, [r7, #4]
	ldrh r1, [r0, #54]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #136
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #54]
	ldr r0, _08038088  @ =gUnknown_03006A30
	ldr r2, _08038084  @ =gUnknown_03000414
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #12]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #7
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #12]
	mov r0, #0
	mov r1, #8
	bl sub_0800C0B0
	ldr r0, _0803808C  @ =gUnknown_02016D60
	ldrh r1, [r0, #4]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #4]
	ldr r1, _08038090  @ =gUnknown_03005050
	ldr r0, _08038090  @ =gUnknown_03005050
	ldr r1, _08038090  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
_08038068:
	.4byte 0x0600C000
_0803806C:
	.4byte 0x01001000
_08038070:
	.4byte gUnknown_020163D0
_08038074:
	.4byte 0x00000405
_08038078:
	.4byte gUnknown_08427BB4
_0803807C:
	.4byte gUnknown_030004A0
_08038080:
	.4byte gUnknown_08142374
_08038084:
	.4byte gUnknown_03000414
_08038088:
	.4byte gUnknown_03006A30
_0803808C:
	.4byte gUnknown_02016D60
_08038090:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_08037EEC

	THUMB_FUNC_START sub_08038094
sub_08038094: @ 0x08038094
	push {r4,r7,lr}
	mov r7, sp
	ldr r1, _080380A8  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	cmp r0, #0
	beq _080380AC
	cmp r0, #1
	beq _080380F8
	b _08038144
	.byte 0x00
	.byte 0x00
_080380A8:
	.4byte gUnknown_03000BFC
_080380AC:
	ldr r1, _080380F0  @ =gUnknown_02016D60
	ldr r0, _080380F0  @ =gUnknown_02016D60
	ldr r1, _080380F0  @ =gUnknown_02016D60
	ldrh r2, [r1, #4]
	sub r1, r2, #1
	ldrh r2, [r0, #4]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strh r2, [r0, #4]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _080380EC
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _080380F4  @ =gUnknown_03000BFC
	ldr r0, _080380F4  @ =gUnknown_03000BFC
	ldr r1, _080380F4  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_080380EC:
	b _08038144
	.byte 0x00
	.byte 0x00
_080380F0:
	.4byte gUnknown_02016D60
_080380F4:
	.4byte gUnknown_03000BFC
_080380F8:
	ldr r0, _08038104  @ =gUnknown_03000520
	ldrb r1, [r0]
	cmp r1, #0
	beq _08038108
	b _08038150
	.byte 0x00
	.byte 0x00
_08038104:
	.4byte gUnknown_03000520
_08038108:
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	ldr r2, _0803813C  @ =0x00006739
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _08038140  @ =gUnknown_020163D0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldr r3, _0803813C  @ =0x00006739
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	bl sub_080123BC
	bl sub_0801239C
	mov r0, #9
	bl sub_0800B5EC
	b _08038150
	.byte 0x00
	.byte 0x00
_0803813C:
	.4byte 0x00006739
_08038140:
	.4byte gUnknown_020163D0
_08038144:
	ldr r0, _08038158  @ =gUnknown_03006C70
	ldr r4, [r0]
	bl _call_via_r4
	bl 0x08000BAC
_08038150:
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08038158:
	.4byte gUnknown_03006C70
	THUMB_FUNC_END sub_08038094

	THUMB_FUNC_START sub_0803815C
sub_0803815C: @ 0x0803815C
	push {r7,lr}
	mov r7, sp
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803815C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08038168
sub_08038168: @ 0x08038168
	push {r4,r7,lr}
	mov r7, sp
	ldr r0, _08038184  @ =gUnknown_08427BCC
	ldr r1, _08038188  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r4, [r0]
	bl _call_via_r4
	pop {r4,r7}
	pop {r0}
	bx r0
_08038184:
	.4byte gUnknown_08427BCC
_08038188:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_08038168

	THUMB_FUNC_START sub_0803818C
sub_0803818C: @ 0x0803818C
	push {r7,lr}
	mov r7, sp
	ldr r1, _080381A4  @ =gUnknown_03005050
	ldr r0, _080381A4  @ =gUnknown_03005050
	ldr r1, _080381A4  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	pop {r7}
	pop {r0}
	bx r0
_080381A4:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_0803818C

	THUMB_FUNC_START sub_080381A8
sub_080381A8: @ 0x080381A8
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	ldr r0, _080381B8  @ =gUnknown_03000520
	ldrb r1, [r0]
	cmp r1, #0
	beq _080381BC
	b _08038214
_080381B8:
	.4byte gUnknown_03000520
_080381BC:
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0803821C  @ =gUnknown_020163D0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	bl sub_0803A030
	mov r0, #0
	str r0, [r7]
	ldr r1, _08038220  @ =gUnknown_03006A30
	ldr r2, _08038224  @ =0x05000090
	add r0, r7, #0
	bl CpuSet
	ldr r0, _08038228  @ =gUnknown_03000E20
	ldrb r1, [r0, #18]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #18]
	ldr r0, _0803822C  @ =gUnknown_03006730
	ldr r2, _08038230  @ =gUnknown_03000414
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	ldr r2, _08038220  @ =gUnknown_03006A30
	add r1, r2, r1
	str r1, [r0]
	ldr r1, _08038234  @ =gUnknown_03005050
	ldr r0, _08038234  @ =gUnknown_03005050
	ldr r1, _08038234  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_08038214:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_0803821C:
	.4byte gUnknown_020163D0
_08038220:
	.4byte gUnknown_03006A30
_08038224:
	.4byte 0x05000090
_08038228:
	.4byte gUnknown_03000E20
_0803822C:
	.4byte gUnknown_03006730
_08038230:
	.4byte gUnknown_03000414
_08038234:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_080381A8

	THUMB_FUNC_START sub_08038238
sub_08038238: @ 0x08038238
	push {r4,r5,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	ldr r0, _08038338  @ =gUnknown_03006C80
	ldr r1, _08038338  @ =gUnknown_03006C80
	ldr r2, _08038338  @ =gUnknown_03006C80
	ldr r3, _08038338  @ =gUnknown_03006C80
	add r4, r3, #0
	add r3, r3, #95
	ldrb r4, [r3]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	strb r5, [r3]
	add r3, r2, #0
	add r2, r2, #94
	ldrb r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strb r4, [r2]
	add r2, r1, #0
	add r1, r1, #93
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1]
	add r1, r0, #0
	add r0, r0, #92
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08038338  @ =gUnknown_03006C80
	ldr r1, _08038338  @ =gUnknown_03006C80
	add r2, r1, #0
	add r1, r1, #130
	ldrh r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1]
	add r1, r0, #0
	add r0, r0, #128
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _08038338  @ =gUnknown_03006C80
	add r1, r0, #0
	add r0, r0, #110
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08038338  @ =gUnknown_03006C80
	add r1, r0, #0
	add r0, r0, #109
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08038338  @ =gUnknown_03006C80
	mov r1, #0
	str r1, [r0, #28]
	ldr r0, _08038338  @ =gUnknown_03006C80
	ldrh r1, [r0, #38]
	ldr r2, _0803833C  @ =0x0000FFFF
	orr r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #38]
	ldr r0, _08038340  @ =gUnknown_03000F44
	ldr r1, _08038344  @ =gUnknown_03000208
	ldrh r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1]
	mov r1, #0
	str r1, [r0]
	ldr r0, _08038348  @ =gUnknown_03000200
	mov r1, #0
	str r1, [r0]
	bl sub_0800BED8
	bl sub_080137DC
	bl sub_0800BEC4
	bl sub_0802D954
	bl sub_0800D6F4
	bl sub_0800D744
	mov r0, #0
	str r0, [r7]
	ldr r1, _0803834C  @ =gUnknown_0202D110
	ldr r2, _08038350  @ =0x01000400
	add r0, r7, #0
	bl CpuFastSet
	bl sub_0801424C
	bl sub_080138BC
	bl sub_0803E518
	ldr r1, _08038354  @ =gUnknown_03005050
	ldr r0, _08038354  @ =gUnknown_03005050
	ldr r1, _08038354  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	add sp, sp, #4
	pop {r4,r5,r7}
	pop {r0}
	bx r0
_08038338:
	.4byte gUnknown_03006C80
_0803833C:
	.4byte 0x0000FFFF
_08038340:
	.4byte gUnknown_03000F44
_08038344:
	.4byte gUnknown_03000208
_08038348:
	.4byte gUnknown_03000200
_0803834C:
	.4byte gUnknown_0202D110
_08038350:
	.4byte 0x01000400
_08038354:
	.4byte gUnknown_03005050
	THUMB_FUNC_END sub_08038238

	THUMB_FUNC_START sub_08038358
sub_08038358: @ 0x08038358
	push {r7,lr}
	mov r7, sp
	ldr r1, _0803836C  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	cmp r0, #0
	beq _08038370
	cmp r0, #1
	beq _0803838C
	b _080383C4
	.byte 0x00
	.byte 0x00
_0803836C:
	.4byte gUnknown_03000BFC
_08038370:
	mov r0, #4
	bl sub_08036704
	ldr r1, _08038388  @ =gUnknown_03000BFC
	ldr r0, _08038388  @ =gUnknown_03000BFC
	ldr r1, _08038388  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _080383C6
	.byte 0x00
	.byte 0x00
_08038388:
	.4byte gUnknown_03000BFC
_0803838C:
	bl sub_080367CC
	cmp r0, #1
	bne _080383B0
	ldr r0, _080383B4  @ =gUnknown_03000490
	ldr r1, _080383B8  @ =gUnknown_03000F40
	ldr r2, [r1]
	str r2, [r0]
	ldr r1, _080383BC  @ =gUnknown_03005050
	ldr r0, _080383BC  @ =gUnknown_03005050
	ldr r1, _080383BC  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _080383C0  @ =gUnknown_03000BFC
	mov r1, #0
	strb r1, [r0]
_080383B0:
	b _080383C6
	.byte 0x00
	.byte 0x00
_080383B4:
	.4byte gUnknown_03000490
_080383B8:
	.4byte gUnknown_03000F40
_080383BC:
	.4byte gUnknown_03005050
_080383C0:
	.4byte gUnknown_03000BFC
_080383C4:
	b _080383C6
_080383C6:
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08038358

	THUMB_FUNC_START sub_080383CC
sub_080383CC: @ 0x080383CC
	push {r4,r7,lr}
	mov r7, sp
	ldr r0, _080383E8  @ =gUnknown_08427BFC
	ldr r1, _080383EC  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r4, [r0]
	bl _call_via_r4
	pop {r4,r7}
	pop {r0}
	bx r0
_080383E8:
	.4byte gUnknown_08427BFC
_080383EC:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_080383CC

	THUMB_FUNC_START sub_080383F0
sub_080383F0: @ 0x080383F0
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	bl sub_0801239C
	bl sub_080144A0
	bl sub_080123BC
	bl sub_0803A320
	bl sub_080152E0
	bl sub_0802BF60
	bl sub_0802C278
	ldr r0, _08038430  @ =0x03000040
	mov r1, #224
	lsl r1, r1, #1
	bl sub_0800B850
	bl sub_0803E518
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_08038426:
	add r0, r7, #0
	ldrb r1, [r0]
	cmp r1, #3
	bls _08038434
	b _0803847C
_08038430:
	.4byte 0x03000040
_08038434:
	ldr r0, _08038474  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _08038478  @ =gUnknown_03006C80
	add r3, r7, #0
	ldrb r2, [r3]
	add r3, r1, #0
	add r4, r1, #0
	add r4, r4, #88
	add r1, r4, r2
	ldrb r2, [r0, #28]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08038426
_08038474:
	.4byte gUnknown_03006A30
_08038478:
	.4byte gUnknown_03006C80
_0803847C:
	mov r0, #2
	bl sub_0800B890
	mov r0, #16
	bl sub_0800BA44
	mov r0, #160
	lsl r0, r0, #19
	mov r1, #0
	strh r1, [r0]
	ldr r0, _080384F0  @ =gUnknown_020163D0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r1, _080384F4  @ =gUnknown_03000BFC
	ldr r0, _080384F4  @ =gUnknown_03000BFC
	ldr r1, _080384F4  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _080384F8  @ =gUnknown_0202E1E0
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080384FC  @ =gUnknown_03000E20
	ldrh r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #10
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	mov r0, #0
	mov r1, #0
	bl sub_0800B980
	ldr r1, _08038500  @ =0x0000FFFF
	mov r0, #14
	bl sub_0800B980
	ldr r0, _08038504  @ =gUnknown_030004A0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	mov r0, #128
	lsl r0, r0, #19
	mov r1, #0
	strh r1, [r0]
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
_080384F0:
	.4byte gUnknown_020163D0
_080384F4:
	.4byte gUnknown_03000BFC
_080384F8:
	.4byte gUnknown_0202E1E0
_080384FC:
	.4byte gUnknown_03000E20
_08038500:
	.4byte 0x0000FFFF
_08038504:
	.4byte gUnknown_030004A0
	THUMB_FUNC_END sub_080383F0

	THUMB_FUNC_START sub_08038508
sub_08038508: @ 0x08038508
	push {r7,lr}
	mov r7, sp
	ldr r1, _0803851C  @ =gUnknown_0202E1E0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08038520
	cmp r0, #1
	beq _0803853C
	b _08038568
	.byte 0x00
	.byte 0x00
_0803851C:
	.4byte gUnknown_0202E1E0
_08038520:
	mov r0, #4
	bl sub_08036704
	ldr r1, _08038538  @ =gUnknown_0202E1E0
	ldr r0, _08038538  @ =gUnknown_0202E1E0
	ldr r1, _08038538  @ =gUnknown_0202E1E0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08038568
	.byte 0x00
	.byte 0x00
_08038538:
	.4byte gUnknown_0202E1E0
_0803853C:
	ldr r0, _0803855C  @ =gUnknown_03000BFC
	ldr r1, _0803855C  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08038560  @ =gUnknown_0202E1E0
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08038564  @ =gUnknown_02016D60
	ldrb r1, [r0, #3]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #3]
	b _08038568
_0803855C:
	.4byte gUnknown_03000BFC
_08038560:
	.4byte gUnknown_0202E1E0
_08038564:
	.4byte gUnknown_02016D60
_08038568:
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08038508

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08038570
sub_08038570: @ 0x08038570
	push {r7,lr}
	mov r7, sp
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08038570

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803857C
sub_0803857C: @ 0x0803857C
	push {r4,r5,r7,lr}
	mov r7, sp
	mov r0, #128
	lsl r0, r0, #19
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0803868C  @ =gUnknown_030004A0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _08038690  @ =gUnknown_03000F40
	ldr r1, _08038694  @ =gUnknown_03000490
	ldr r2, [r1]
	str r2, [r0]
	bl sub_08012BE4
	bl sub_08015AC4
	bl sub_08013804
	bl sub_0802C800
	bl sub_0803A544
	bl sub_0802B6BC
	ldr r0, _08038698  @ =gUnknown_03000510
	ldr r1, _0803869C  @ =gUnknown_03000BD0
	mov r2, #0
	strh r2, [r1]
	mov r1, #0
	strh r1, [r0]
	ldr r0, _080386A0  @ =gUnknown_03000940
	ldr r1, _080386A0  @ =gUnknown_03000940
	ldr r2, _080386A0  @ =gUnknown_03000940
	ldr r3, _080386A0  @ =gUnknown_03000940
	ldrh r4, [r3, #6]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	strh r5, [r3, #6]
	ldrh r3, [r2, #4]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strh r4, [r2, #4]
	ldrh r2, [r1, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1, #2]
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _080386A4  @ =gUnknown_03005E10
	ldr r1, _080386A4  @ =gUnknown_03005E10
	ldr r2, _080386A4  @ =gUnknown_03005E10
	ldr r3, _080386A4  @ =gUnknown_03005E10
	ldrh r4, [r3, #6]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	strh r5, [r3, #6]
	ldrh r3, [r2, #4]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strh r4, [r2, #4]
	ldrh r2, [r1, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1, #2]
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _080386A8  @ =gUnknown_03000E20
	ldrh r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #30
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _080386AC  @ =gUnknown_03000C00
	mov r1, #1
	strb r1, [r0]
	ldr r0, _080386B0  @ =gUnknown_03006D14
	mov r1, #1
	strh r1, [r0]
	ldr r0, _080386B4  @ =gUnknown_03000830
	mov r1, #0
	strb r1, [r0]
	mov r0, #0
	mov r1, #0
	bl sub_0800B980
	ldr r0, _0803868C  @ =gUnknown_030004A0
	ldr r1, _0803868C  @ =gUnknown_030004A0
	ldrh r2, [r0, #4]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #4]
	ldr r0, _0803868C  @ =gUnknown_030004A0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r1, _080386B8  @ =gUnknown_03005050
	ldr r0, _080386B8  @ =gUnknown_03005050
	ldr r1, _080386B8  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _080386BC  @ =gUnknown_03000BFC
	mov r1, #0
	strb r1, [r0]
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803868C:
	.4byte gUnknown_030004A0
_08038690:
	.4byte gUnknown_03000F40
_08038694:
	.4byte gUnknown_03000490
_08038698:
	.4byte gUnknown_03000510
_0803869C:
	.4byte gUnknown_03000BD0
_080386A0:
	.4byte gUnknown_03000940
_080386A4:
	.4byte gUnknown_03005E10
_080386A8:
	.4byte gUnknown_03000E20
_080386AC:
	.4byte gUnknown_03000C00
_080386B0:
	.4byte gUnknown_03006D14
_080386B4:
	.4byte gUnknown_03000830
_080386B8:
	.4byte gUnknown_03005050
_080386BC:
	.4byte gUnknown_03000BFC
	THUMB_FUNC_END sub_0803857C

	THUMB_FUNC_START sub_080386C0
sub_080386C0: @ 0x080386C0
	push {r4-r7,lr}
	mov r7, sp
	ldr r1, _080386D4  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	cmp r0, #0
	beq _080386D8
	cmp r0, #1
	beq _080386F4
	b _08038830
	.byte 0x00
	.byte 0x00
_080386D4:
	.4byte gUnknown_03000BFC
_080386D8:
	mov r0, #4
	bl sub_08036704
	ldr r1, _080386F0  @ =gUnknown_03000BFC
	ldr r0, _080386F0  @ =gUnknown_03000BFC
	ldr r1, _080386F0  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08038832
	.byte 0x00
	.byte 0x00
_080386F0:
	.4byte gUnknown_03000BFC
_080386F4:
	bl sub_080367CC
	cmp r0, #1
	beq _080386FE
	b _08038824
_080386FE:
	ldr r1, _080387D0  @ =gUnknown_03005050
	ldr r0, _080387D0  @ =gUnknown_03005050
	ldr r1, _080387D0  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _080387D4  @ =gUnknown_03000BFC
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080387D8  @ =gUnknown_03000C00
	ldr r1, _080387DC  @ =gUnknown_03006D14
	ldr r2, _080387E0  @ =gUnknown_03000E20
	ldr r3, _080387E4  @ =gUnknown_03000948
	ldr r4, _080387E0  @ =gUnknown_03000E20
	ldrh r5, [r4, #4]
	mov r6, #0
	and r5, r5, r6
	add r6, r5, #0
	strh r6, [r4, #4]
	ldrh r4, [r3]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	strh r5, [r3]
	ldrh r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strh r4, [r2]
	mov r2, #0
	strh r2, [r1]
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080387E0  @ =gUnknown_03000E20
	ldrh r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #120
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _080387E8  @ =gUnknown_03000F40
	ldr r1, _080387EC  @ =gUnknown_03000490
	ldr r2, [r1]
	str r2, [r0]
	mov r0, #5
	bl sub_08036704
	ldr r0, _080387F0  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _08038770
	bl sub_0802B738
_08038770:
	ldr r0, _080387F4  @ =gUnknown_030004A0
	ldr r1, _080387F4  @ =gUnknown_030004A0
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #4]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _080387F4  @ =gUnknown_030004A0
	ldr r1, _080387F4  @ =gUnknown_030004A0
	ldrh r2, [r1]
	mov r3, #186
	lsl r3, r3, #5
	add r1, r2, #0
	orr r1, r1, r3
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	mov r0, #31
	mov r1, #0
	bl sub_0800CA84
	mov r0, #120
	mov r1, #80
	mov r2, #1
	mov r3, #0
	bl sub_0800CE74
	bl sub_0800C080
	ldr r0, _080387F0  @ =gUnknown_03006C80
	ldrb r1, [r0, #1]
	cmp r1, #2
	bne _080387F8
	ldr r0, _080387F0  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _0803880C
	b _080387F8
	.byte 0x00
	.byte 0x00
_080387D0:
	.4byte gUnknown_03005050
_080387D4:
	.4byte gUnknown_03000BFC
_080387D8:
	.4byte gUnknown_03000C00
_080387DC:
	.4byte gUnknown_03006D14
_080387E0:
	.4byte gUnknown_03000E20
_080387E4:
	.4byte gUnknown_03000948
_080387E8:
	.4byte gUnknown_03000F40
_080387EC:
	.4byte gUnknown_03000490
_080387F0:
	.4byte gUnknown_03006C80
_080387F4:
	.4byte gUnknown_030004A0
_080387F8:
	mov r0, #16
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	mov r0, #46
	mov r1, #0
	mov r2, #240
	bl sub_0804C938
_0803880C:
	ldr r1, _08038828  @ =gUnknown_03000FE4
	add r0, r1, #0
	mov r1, #20
	bl sub_0800B850
	ldr r1, _0803882C  @ =0x80010000
	add r0, r1, #0
	bl sub_0800D24C
	mov r0, #88
	bl sub_0800D24C
_08038824:
	b _08038832
	.byte 0x00
	.byte 0x00
_08038828:
	.4byte gUnknown_03000FE4
_0803882C:
	.4byte 0x80010000
_08038830:
	b _08038832
_08038832:
	bl sub_0802BFC4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080386C0

	THUMB_FUNC_START sub_0803883C
sub_0803883C: @ 0x0803883C
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	bl sub_08037554
	cmp r0, #0
	bne _0803884C
	b _08038A10
_0803884C:
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_08038852:
	add r0, r7, #0
	ldrb r1, [r0]
	cmp r1, #3
	bls _0803885C
	b _080388A0
_0803885C:
	ldr r0, _08038898  @ =gUnknown_03000940
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #1
	add r0, r0, r2
	ldr r1, _0803889C  @ =gUnknown_03005E10
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #1
	add r1, r1, r3
	ldrh r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1]
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08038852
_08038898:
	.4byte gUnknown_03000940
_0803889C:
	.4byte gUnknown_03005E10
_080388A0:
	ldr r0, _08038924  @ =gUnknown_03000510
	ldr r1, _08038928  @ =gUnknown_03000BD0
	mov r2, #0
	strh r2, [r1]
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0803892C  @ =gUnknown_0200B1D0
	ldr r1, _08038930  @ =gUnknown_03000494
	ldr r2, [r1]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #1
	ldr r2, _08038934  @ =gUnknown_03000414
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #5
	add r1, r1, r3
	add r0, r0, r1
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _08038938  @ =gUnknown_03000F40
	ldr r1, _0803893C  @ =gUnknown_03000490
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, _08038940  @ =gUnknown_03000E20
	ldrh r1, [r0, #4]
	ldr r0, _08038944  @ =0x00000117
	cmp r1, r0
	bhi _08038980
	ldr r0, _08038940  @ =gUnknown_03000E20
	ldrh r2, [r0, #4]
	ldr r1, _08038940  @ =gUnknown_03000E20
	ldrh r0, [r1]
	add r3, r0, #0
	lsl r1, r3, #2
	add r1, r1, r0
	mov r0, #255
	add r3, r1, #0
	and r3, r3, r0
	mov r0, #120
	mov r1, #80
	bl sub_0800CE74
	ldr r0, _08038940  @ =gUnknown_03000E20
	ldrh r1, [r0, #4]
	cmp r1, #139
	bhi _08038948
	ldr r0, _08038940  @ =gUnknown_03000E20
	ldr r1, _08038940  @ =gUnknown_03000E20
	ldrh r2, [r1, #4]
	add r1, r2, #3
	ldrh r2, [r0, #4]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #4]
	b _08038960
	.byte 0x00
	.byte 0x00
_08038924:
	.4byte gUnknown_03000510
_08038928:
	.4byte gUnknown_03000BD0
_0803892C:
	.4byte gUnknown_0200B1D0
_08038930:
	.4byte gUnknown_03000494
_08038934:
	.4byte gUnknown_03000414
_08038938:
	.4byte gUnknown_03000F40
_0803893C:
	.4byte gUnknown_03000490
_08038940:
	.4byte gUnknown_03000E20
_08038944:
	.4byte 0x00000117
_08038948:
	ldr r0, _0803897C  @ =gUnknown_03000E20
	ldr r1, _0803897C  @ =gUnknown_03000E20
	ldrh r2, [r1, #4]
	add r1, r2, #4
	ldrh r2, [r0, #4]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #4]
_08038960:
	ldr r1, _0803897C  @ =gUnknown_03000E20
	ldr r0, _0803897C  @ =gUnknown_03000E20
	ldr r1, _0803897C  @ =gUnknown_03000E20
	ldrh r2, [r1]
	add r1, r2, #1
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	b _080389E8
_0803897C:
	.4byte gUnknown_03000E20
_08038980:
	bl sub_0803A20C
	bl sub_0800CA3C
	ldr r1, _08038A18  @ =gUnknown_03005050
	ldr r0, _08038A18  @ =gUnknown_03005050
	ldr r1, _08038A18  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08038A1C  @ =gUnknown_03000BFC
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08038A20  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _08038A24  @ =gUnknown_03006C80
	ldr r1, _08038A24  @ =gUnknown_03006C80
	ldrb r2, [r1, #5]
	mov r3, #127
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #5]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #5]
	ldr r0, _08038A28  @ =gUnknown_03000FC0
	ldr r1, _08038A28  @ =gUnknown_03000FC0
	add r2, r1, #0
	add r1, r1, #36
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1]
	ldrb r1, [r0, #16]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #16]
	bl sub_0800D6F4
	bl sub_0800D744
_080389E8:
	ldr r0, _08038A2C  @ =gUnknown_03006C70
	ldr r4, [r0]
	bl _call_via_r4
	bl sub_08015D9C
	bl sub_08015C64
	bl 0x08008ED8
	bl sub_0802CD3C
	bl sub_0803F284
	bl 0x08000BAC
	bl sub_0802BFC4
	bl sub_08037574
_08038A10:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
_08038A18:
	.4byte gUnknown_03005050
_08038A1C:
	.4byte gUnknown_03000BFC
_08038A20:
	.4byte gUnknown_03000E20
_08038A24:
	.4byte gUnknown_03006C80
_08038A28:
	.4byte gUnknown_03000FC0
_08038A2C:
	.4byte gUnknown_03006C70
	THUMB_FUNC_END sub_0803883C

	THUMB_FUNC_START sub_08038A30
sub_08038A30: @ 0x08038A30
	push {r4,r5,r7,lr}
	mov r7, sp
	bl sub_08037554
	cmp r0, #0
	bne _08038A3E
	b _08038C6C
_08038A3E:
	bl sub_08037750
	ldr r0, _08038A5C  @ =gUnknown_03000E20
	ldrb r1, [r0, #17]
	cmp r1, #0
	bne _08038A60
	mov r0, #8
	bl sub_0803781C
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08038A60
	b _08038A6E
	.byte 0x00
	.byte 0x00
_08038A5C:
	.4byte gUnknown_03000E20
_08038A60:
	bl sub_0802D988
	bl sub_0802CD3C
	bl sub_08037574
	b _08038C9C
_08038A6E:
	ldr r0, _08038BB0  @ =gUnknown_03000940
	ldrh r1, [r0]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08038A8A
	mov r0, #0
	bl sub_0803DE94
_08038A8A:
	ldr r0, _08038BB0  @ =gUnknown_03000940
	ldrh r1, [r0, #2]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08038AA6
	mov r0, #1
	bl sub_0803DE94
_08038AA6:
	ldr r0, _08038BB0  @ =gUnknown_03000940
	ldrh r1, [r0, #4]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08038AC2
	mov r0, #2
	bl sub_0803DE94
_08038AC2:
	ldr r0, _08038BB0  @ =gUnknown_03000940
	ldrh r1, [r0, #6]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08038ADE
	mov r0, #3
	bl sub_0803DE94
_08038ADE:
	ldr r0, _08038BB4  @ =gUnknown_03006C80
	ldr r1, [r0, #28]
	ldr r0, _08038BB8  @ =0x00057E03
	cmp r1, r0
	bhi _08038AF4
	ldr r1, _08038BB4  @ =gUnknown_03006C80
	ldr r0, _08038BB4  @ =gUnknown_03006C80
	ldr r1, _08038BB4  @ =gUnknown_03006C80
	ldr r2, [r1, #28]
	add r1, r2, #1
	str r1, [r0, #28]
_08038AF4:
	ldr r0, _08038BBC  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r2, #255
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _08038B0C
	bl sub_080141E8
_08038B0C:
	ldr r0, _08038BB4  @ =gUnknown_03006C80
	add r1, r0, #0
	add r0, r0, #111
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, _08038BBC  @ =gUnknown_03000E20
	ldr r0, _08038BBC  @ =gUnknown_03000E20
	ldr r1, _08038BBC  @ =gUnknown_03000E20
	ldrh r2, [r1]
	add r1, r2, #1
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	bl sub_0802B74C
	ldr r0, _08038BC0  @ =gUnknown_03006C70
	ldr r4, [r0]
	bl _call_via_r4
	bl sub_08014900
	bl sub_08015D9C
	bl sub_08015C64
	bl sub_08013A60
	bl 0x08008ED8
	bl sub_0802CD3C
	bl sub_08000434
	bl sub_0803F284
	bl sub_08052A88
	bl 0x08000BAC
	bl sub_0802BFC4
	ldr r0, _08038BBC  @ =gUnknown_03000E20
	ldrb r1, [r0, #18]
	cmp r1, #0
	beq _08038BD6
	bl sub_08036760
	ldr r1, _08038BC4  @ =0x80040000
	add r0, r1, #0
	bl sub_0800D24C
	ldr r0, _08038BC8  @ =gUnknown_03005050
	ldr r1, _08038BC8  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08038BCC  @ =gUnknown_03000BFC
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08038BD0  @ =gUnknown_03000C00
	mov r1, #1
	strb r1, [r0]
	ldr r0, _08038BBC  @ =gUnknown_03000E20
	ldrh r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #180
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	b _08038C9C
_08038BB0:
	.4byte gUnknown_03000940
_08038BB4:
	.4byte gUnknown_03006C80
_08038BB8:
	.4byte 0x00057E03
_08038BBC:
	.4byte gUnknown_03000E20
_08038BC0:
	.4byte gUnknown_03006C70
_08038BC4:
	.4byte 0x80040000
_08038BC8:
	.4byte gUnknown_03005050
_08038BCC:
	.4byte gUnknown_03000BFC
_08038BD0:
	.4byte gUnknown_03000C00
	.byte 0x30
	.byte 0xE0
_08038BD6:
	bl sub_08038CA8
	cmp r0, #0
	beq _08038C38
	bl sub_08036760
	bl sub_0803DFC8
	bl sub_0802D970
	ldr r1, _08038C4C  @ =0x80040000
	add r0, r1, #0
	bl sub_0800D24C
	ldr r0, _08038C50  @ =gUnknown_03000420
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08038C54  @ =gUnknown_03006C80
	add r1, r0, #0
	add r0, r0, #110
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08038C58  @ =gUnknown_03006D14
	mov r1, #1
	strh r1, [r0]
	ldr r1, _08038C5C  @ =gUnknown_03005050
	ldr r0, _08038C5C  @ =gUnknown_03005050
	ldr r1, _08038C5C  @ =gUnknown_03005050
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08038C60  @ =gUnknown_03000BFC
	mov r1, #0
	strb r1, [r0]
_08038C38:
	bl 0x0800099C
	ldr r0, _08038C64  @ =gUnknown_03000490
	ldr r1, _08038C68  @ =gUnknown_03000F40
	ldr r2, [r1]
	str r2, [r0]
	bl sub_08037574
	b _08038C9C
	.byte 0x00
	.byte 0x00
_08038C4C:
	.4byte 0x80040000
_08038C50:
	.4byte gUnknown_03000420
_08038C54:
	.4byte gUnknown_03006C80
_08038C58:
	.4byte gUnknown_03006D14
_08038C5C:
	.4byte gUnknown_03005050
_08038C60:
	.4byte gUnknown_03000BFC
_08038C64:
	.4byte gUnknown_03000490
_08038C68:
	.4byte gUnknown_03000F40
_08038C6C:
	ldr r0, _08038CA4  @ =gUnknown_03005E10
	ldr r1, _08038CA4  @ =gUnknown_03005E10
	ldr r2, _08038CA4  @ =gUnknown_03005E10
	ldr r3, _08038CA4  @ =gUnknown_03005E10
	ldrh r4, [r3, #6]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	strh r5, [r3, #6]
	ldrh r3, [r2, #4]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strh r4, [r2, #4]
	ldrh r2, [r1, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1, #2]
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
_08038C9C:
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08038CA4:
	.4byte gUnknown_03005E10
	THUMB_FUNC_END sub_08038A30

	THUMB_FUNC_START sub_08038CA8
sub_08038CA8: @ 0x08038CA8
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_08038CB4:
	add r0, r7, #0
	ldr r1, _08038CC4  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08038CC8
	b _08038D24
	.byte 0x00
	.byte 0x00
_08038CC4:
	.4byte gUnknown_03006C80
_08038CC8:
	ldr r0, _08038D0C  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #54]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _08038D10
	ldr r0, _08038D0C  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #69
	ldrb r0, [r1]
	cmp r0, #0
	bne _08038D14
	b _08038D10
_08038D0C:
	.4byte gUnknown_03006A30
_08038D10:
	mov r0, #0
	b _08038D48
_08038D14:
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08038CB4
_08038D24:
	bl sub_080367E4
	add r1, r0, #0
	mov r0, #0
	mov r2, #15
	and r1, r1, r2
	ldr r2, _08038D44  @ =gUnknown_03006C80
	add r3, r2, #0
	add r2, r2, #111
	lsl r3, r1, #24
	lsr r1, r3, #24
	ldrb r2, [r2]
	cmp r1, r2
	bne _08038D42
	mov r0, #1
_08038D42:
	b _08038D48
_08038D44:
	.4byte gUnknown_03006C80
_08038D48:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08038CA8

	THUMB_FUNC_START sub_08038D50
sub_08038D50: @ 0x08038D50
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	ldr r0, _08038DB0  @ =gUnknown_03006C80
	ldr r1, [r0, #28]
	add r0, r1, #0
	mov r1, #60
	bl __udivsi3
	str r0, [r7]
	mov r0, #2
	bl sub_0800D6A4
	ldr r4, _08038DB4  @ =gUnknown_0201ED90
	ldr r1, [r7]
	add r0, r1, #0
	mov r1, #60
	bl __udivsi3
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	str r0, [r4, #8]
	ldr r4, _08038DB4  @ =gUnknown_0201ED90
	ldr r1, [r7]
	add r0, r1, #0
	mov r1, #60
	bl __umodsi3
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	str r0, [r4, #12]
	bl sub_08038DB8
	add r1, r0, #0
	ldr r0, _08038DB4  @ =gUnknown_0201ED90
	lsl r2, r1, #16
	lsr r1, r2, #16
	str r1, [r0, #16]
	ldr r0, _08038DB4  @ =gUnknown_0201ED90
	ldr r1, _08038DB0  @ =gUnknown_03006C80
	ldrb r2, [r1]
	str r2, [r0, #20]
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
_08038DB0:
	.4byte gUnknown_03006C80
_08038DB4:
	.4byte gUnknown_0201ED90
	THUMB_FUNC_END sub_08038D50

	THUMB_FUNC_START sub_08038DB8
sub_08038DB8: @ 0x08038DB8
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	ldr r0, _08038DE4  @ =gUnknown_03006C80
	ldr r1, [r0, #28]
	add r0, r1, #0
	mov r1, #60
	bl __udivsi3
	str r0, [r7]
	add r0, r7, #4
	mov r1, #0
	strb r1, [r0]
	add r0, r7, #4
	mov r1, #0
	strb r1, [r0]
_08038DD8:
	add r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #6
	bls _08038DE8
	b _08038E14
	.byte 0x00
	.byte 0x00
_08038DE4:
	.4byte gUnknown_03006C80
_08038DE8:
	ldr r0, _08038E00  @ =gUnknown_0842ACD8
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #1
	add r0, r0, r2
	ldrh r1, [r0]
	ldr r0, [r7]
	cmp r0, r1
	bcs _08038E04
	b _08038E14
	.byte 0x00
	.byte 0x00
_08038E00:
	.4byte gUnknown_0842ACD8
_08038E04:
	add r1, r7, #4
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08038DD8
_08038E14:
	ldr r0, _08038E34  @ =gUnknown_0842ACC4
	ldr r1, _08038E38  @ =gUnknown_03006C80
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #1
	ldr r1, [r0]
	add r0, r2, r1
	ldrh r1, [r0]
	add r0, r1, #0
	b _08038E3C
	.byte 0x00
	.byte 0x00
_08038E34:
	.4byte gUnknown_0842ACC4
_08038E38:
	.4byte gUnknown_03006C80
_08038E3C:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08038DB8

	THUMB_FUNC_START sub_08038E44
sub_08038E44: @ 0x08038E44
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	ldr r1, _08038E60  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	cmp r0, #6
	bls _08038E54
	b _08039260
_08038E54:
	lsl r1, r0, #2
	ldr r2, _08038E64  @ =0x08038E68
	add r0, r1, r2
	ldr r1, [r0]
	mov pc, r1
	.byte 0x00
	.byte 0x00
_08038E60:
	.4byte gUnknown_03000BFC
_08038E64:
	.4byte 0x08038E68
	.4byte _08038E84
	.4byte _08038EC8
	.4byte _08038F48
	.4byte _080390A4
	.4byte _08039108
	.4byte _08039194
	.4byte _080391D8
_08038E84:
	ldr r0, _08038EBC  @ =gUnknown_03000208
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _08038EC0  @ =gUnknown_03000E20
	ldrh r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	ldr r1, _08038EC4  @ =gUnknown_03000BFC
	ldr r0, _08038EC4  @ =gUnknown_03000BFC
	ldr r1, _08038EC4  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08039260
_08038EBC:
	.4byte gUnknown_03000208
_08038EC0:
	.4byte gUnknown_03000E20
_08038EC4:
	.4byte gUnknown_03000BFC
_08038EC8:
	ldr r1, _08038F20  @ =gUnknown_03000E20
	ldr r0, _08038F20  @ =gUnknown_03000E20
	ldr r1, _08038F20  @ =gUnknown_03000E20
	ldrh r2, [r1, #2]
	sub r1, r2, #1
	ldrh r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strh r2, [r0, #2]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	ldr r1, _08038F24  @ =0x0000FFFF
	cmp r0, r1
	bne _08038F42
	ldr r0, _08038F20  @ =gUnknown_03000E20
	ldrh r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _08038F28  @ =gUnknown_03006C80
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq _08038F30
	ldr r0, _08038F28  @ =gUnknown_03006C80
	ldrb r1, [r0, #4]
	cmp r1, #0
	bne _08038F30
	ldr r0, _08038F2C  @ =gUnknown_03000BFC
	mov r1, #3
	strb r1, [r0]
	b _08038F42
_08038F20:
	.4byte gUnknown_03000E20
_08038F24:
	.4byte 0x0000FFFF
_08038F28:
	.4byte gUnknown_03006C80
_08038F2C:
	.4byte gUnknown_03000BFC
_08038F30:
	bl sub_08038D50
	ldr r1, _08038F44  @ =gUnknown_03000BFC
	ldr r0, _08038F44  @ =gUnknown_03000BFC
	ldr r1, _08038F44  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_08038F42:
	b _08039260
_08038F44:
	.4byte gUnknown_03000BFC
_08038F48:
	ldr r1, _08038FC8  @ =gUnknown_03000E20
	ldr r0, _08038FC8  @ =gUnknown_03000E20
	ldr r1, _08038FC8  @ =gUnknown_03000E20
	ldrh r2, [r1, #2]
	sub r1, r2, #1
	ldrh r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strh r2, [r0, #2]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	ldr r1, _08038FCC  @ =0x0000FFFF
	cmp r0, r1
	beq _08038F76
	b _08039098
_08038F76:
	bl sub_08038DB8
	add r1, r7, #2
	strh r0, [r1]
	ldr r0, _08038FC8  @ =gUnknown_03000E20
	ldrh r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _08038FD0  @ =gUnknown_03006C80
	ldr r2, _08038FD0  @ =gUnknown_03006C80
	add r1, r2, #0
	add r2, r2, #36
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #36
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_08038FBA:
	add r0, r7, #0
	ldr r1, _08038FD0  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08038FD4
	b _08039008
_08038FC8:
	.4byte gUnknown_03000E20
_08038FCC:
	.4byte 0x0000FFFF
_08038FD0:
	.4byte gUnknown_03006C80
_08038FD4:
	ldr r0, _08039004  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r7, #2
	ldrh r2, [r1]
	add r1, r2, #0
	bl sub_0802C53C
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08038FBA
	.byte 0x00
	.byte 0x00
_08039004:
	.4byte gUnknown_03006A30
_08039008:
	ldr r0, _0803904C  @ =gUnknown_03006C80
	ldr r2, _0803904C  @ =gUnknown_03006C80
	add r1, r2, #0
	add r2, r2, #36
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #36
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, _0803904C  @ =gUnknown_03006C80
	ldrb r1, [r0, #2]
	cmp r1, #0
	beq _08039050
	ldr r1, _0803904C  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #79
	ldrb r0, [r1]
	cmp r0, #79
	bne _08039050
	mov r0, #81
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	b _0803908A
	.byte 0x00
	.byte 0x00
_0803904C:
	.4byte gUnknown_03006C80
_08039050:
	ldr r0, _0803906C  @ =gUnknown_03006C80
	ldrb r1, [r0, #3]
	cmp r1, #2
	bne _08039070
	ldr r0, _0803906C  @ =gUnknown_03006C80
	ldrb r1, [r0, #4]
	cmp r1, #10
	bhi _08039070
	mov r0, #81
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	b _0803908A
_0803906C:
	.4byte gUnknown_03006C80
_08039070:
	ldr r0, _0803909C  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _0803908A
	ldr r0, _0803909C  @ =gUnknown_03006C80
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _0803908A
	mov r0, #81
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
_0803908A:
	ldr r1, _080390A0  @ =gUnknown_03000BFC
	ldr r0, _080390A0  @ =gUnknown_03000BFC
	ldr r1, _080390A0  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_08039098:
	b _08039260
	.byte 0x00
	.byte 0x00
_0803909C:
	.4byte gUnknown_03006C80
_080390A0:
	.4byte gUnknown_03000BFC
_080390A4:
	ldr r1, _080390F8  @ =gUnknown_03000E20
	ldr r0, _080390F8  @ =gUnknown_03000E20
	ldr r1, _080390F8  @ =gUnknown_03000E20
	ldrh r2, [r1, #2]
	sub r1, r2, #1
	ldrh r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strh r2, [r0, #2]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	ldr r1, _080390FC  @ =0x0000FFFF
	cmp r0, r1
	bne _080390F6
	ldr r0, _08039100  @ =gUnknown_03006C80
	add r1, r0, #0
	add r0, r0, #110
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, _08039104  @ =gUnknown_03000BFC
	ldr r0, _08039104  @ =gUnknown_03000BFC
	ldr r1, _08039104  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_080390F6:
	b _08039260
_080390F8:
	.4byte gUnknown_03000E20
_080390FC:
	.4byte 0x0000FFFF
_08039100:
	.4byte gUnknown_03006C80
_08039104:
	.4byte gUnknown_03000BFC
_08039108:
	ldr r1, _08039130  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #110
	ldrb r0, [r1]
	cmp r0, #4
	bne _0803918E
	mov r0, #26
	bl sub_0800D24C
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_08039120:
	add r0, r7, #0
	ldr r1, _08039130  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08039134
	b _08039180
	.byte 0x00
	.byte 0x00
_08039130:
	.4byte gUnknown_03006C80
_08039134:
	ldr r0, _0803917C  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	cmp r0, #0
	beq _0803916A
	ldr r0, _0803917C  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
_0803916A:
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08039120
	.byte 0x00
	.byte 0x00
_0803917C:
	.4byte gUnknown_03006A30
_08039180:
	ldr r1, _08039190  @ =gUnknown_03000BFC
	ldr r0, _08039190  @ =gUnknown_03000BFC
	ldr r1, _08039190  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_0803918E:
	b _08039260
_08039190:
	.4byte gUnknown_03000BFC
_08039194:
	ldr r0, _080391CC  @ =gUnknown_03000520
	ldrb r1, [r0]
	cmp r1, #0
	bne _080391CA
	ldr r0, _080391D0  @ =gUnknown_03006C80
	add r1, r0, #0
	add r0, r0, #110
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #5
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #1
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _080391D4  @ =gUnknown_03000BFC
	ldr r0, _080391D4  @ =gUnknown_03000BFC
	ldr r1, _080391D4  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_080391CA:
	b _08039260
_080391CC:
	.4byte gUnknown_03000520
_080391D0:
	.4byte gUnknown_03006C80
_080391D4:
	.4byte gUnknown_03000BFC
_080391D8:
	ldr r0, _08039204  @ =gUnknown_03000520
	ldrb r1, [r0]
	cmp r1, #0
	bne _08039260
	ldr r0, _08039208  @ =gUnknown_03006C80
	ldr r1, _08039208  @ =gUnknown_03006C80
	ldr r2, _08039208  @ =gUnknown_03006C80
	ldr r1, [r1, #32]
	ldr r2, [r2, #28]
	add r1, r1, r2
	str r1, [r0, #32]
	ldr r1, _08039208  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #79
	ldrb r0, [r1]
	cmp r0, #128
	bne _0803920C
	mov r0, #5
	bl sub_0800B5EC
	b _08039252
	.byte 0x00
	.byte 0x00
_08039204:
	.4byte gUnknown_03000520
_08039208:
	.4byte gUnknown_03006C80
_0803920C:
	bl sub_08039D64
	cmp r0, #0
	bne _0803922C
	ldr r0, _08039224  @ =gUnknown_03005050
	mov r1, #1
	strb r1, [r0]
	ldr r0, _08039228  @ =gUnknown_03000BFC
	mov r1, #0
	strb r1, [r0]
	b _08039252
	.byte 0x00
	.byte 0x00
_08039224:
	.4byte gUnknown_03005050
_08039228:
	.4byte gUnknown_03000BFC
_0803922C:
	ldr r0, _08039240  @ =gUnknown_03006C80
	ldrb r1, [r0, #7]
	cmp r1, #2
	beq _08039244
	ldr r0, _08039240  @ =gUnknown_03006C80
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _08039244
	b _0803924C
	.byte 0x00
	.byte 0x00
_08039240:
	.4byte gUnknown_03006C80
_08039244:
	mov r0, #7
	bl sub_0800B5EC
	b _08039252
_0803924C:
	mov r0, #4
	bl sub_0800B5EC
_08039252:
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0800BFBC
	b _08039280
_08039260:
	bl 0x08137AFC
	bl sub_08015D9C
	bl sub_08015C64
	bl 0x08008ED8
	bl sub_0802CD3C
	bl sub_0802BFC4
	bl sub_0803F284
	bl 0x08000BAC
_08039280:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08038E44

	THUMB_FUNC_START sub_08039288
sub_08039288: @ 0x08039288
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	mov r7, sp
	ldr r0, _08039358  @ =gUnknown_03000940
	ldr r1, _08039358  @ =gUnknown_03000940
	ldr r2, _08039358  @ =gUnknown_03000940
	ldr r3, _08039358  @ =gUnknown_03000940
	ldr r4, _0803935C  @ =gUnknown_03005E10
	ldr r5, _0803935C  @ =gUnknown_03005E10
	str r5, [r7, #8]
	ldr r6, _0803935C  @ =gUnknown_03005E10
	str r6, [r7, #12]
	ldr r5, _0803935C  @ =gUnknown_03005E10
	mov r8, r5
	mov r6, r8
	ldrh r6, [r6, #6]
	mov r9, r6
	mov r5, #0
	mov r10, r5
	mov r6, r9
	mov r5, r10
	and r6, r6, r5
	mov r9, r6
	mov r10, r9
	mov r5, r10
	mov r6, r8
	strh r5, [r6, #6]
	ldr r6, [r7, #12]
	ldrh r6, [r6, #4]
	mov r8, r6
	mov r5, #0
	mov r9, r5
	mov r6, r8
	mov r5, r9
	and r6, r6, r5
	mov r8, r6
	mov r9, r8
	mov r5, r9
	ldr r6, [r7, #12]
	strh r5, [r6, #4]
	ldr r6, [r7, #8]
	ldrh r6, [r6, #2]
	strh r6, [r7, #12]
	mov r5, #0
	mov r8, r5
	ldrh r6, [r7, #12]
	mov r5, r8
	and r6, r6, r5
	mov r8, r6
	mov r5, r8
	ldr r6, [r7, #8]
	strh r5, [r6, #2]
	ldrh r5, [r4]
	mov r6, #0
	and r5, r5, r6
	add r6, r5, #0
	strh r6, [r4]
	ldrh r4, [r3, #6]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	strh r5, [r3, #6]
	ldrh r3, [r2, #4]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strh r4, [r2, #4]
	ldrh r2, [r1, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1, #2]
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r1, _08039360  @ =gUnknown_03000E20
	ldr r0, _08039360  @ =gUnknown_03000E20
	ldr r1, _08039360  @ =gUnknown_03000E20
	ldrh r2, [r1]
	add r1, r2, #1
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, _08039364  @ =gUnknown_03000BFC
	ldrb r0, [r1]
	cmp r0, #1
	beq _08039400
	cmp r0, #1
	bgt _08039368
	cmp r0, #0
	beq _08039376
	b _08039640
	.byte 0x00
	.byte 0x00
_08039358:
	.4byte gUnknown_03000940
_0803935C:
	.4byte gUnknown_03005E10
_08039360:
	.4byte gUnknown_03000E20
_08039364:
	.4byte gUnknown_03000BFC
_08039368:
	cmp r0, #2
	bne _0803936E
	b _080395A8
_0803936E:
	cmp r0, #3
	bne _08039374
	b _08039610
_08039374:
	b _08039640
_08039376:
	ldr r0, _080393F4  @ =gUnknown_03000E20
	ldr r1, _080393F4  @ =gUnknown_03000E20
	ldrb r2, [r1, #18]
	mov r3, #3
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #18]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #18]
	ldr r1, _080393F4  @ =gUnknown_03000E20
	ldr r0, _080393F4  @ =gUnknown_03000E20
	ldr r1, _080393F4  @ =gUnknown_03000E20
	ldrh r2, [r1, #2]
	sub r1, r2, #1
	ldrh r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strh r2, [r0, #2]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	ldr r1, _080393F8  @ =0x0000FFFF
	cmp r0, r1
	bne _080393D4
	mov r0, #1
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _080393FC  @ =gUnknown_03000BFC
	ldr r0, _080393FC  @ =gUnknown_03000BFC
	ldr r1, _080393FC  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_080393D4:
	bl 0x08137AFC
	bl sub_08015D9C
	bl sub_08015C64
	bl 0x08008ED8
	bl sub_0802CD3C
	bl 0x08000BAC
	bl sub_0802BFC4
	b _08039640
	.byte 0x00
	.byte 0x00
_080393F4:
	.4byte gUnknown_03000E20
_080393F8:
	.4byte 0x0000FFFF
_080393FC:
	.4byte gUnknown_03000BFC
_08039400:
	ldr r0, _0803940C  @ =gUnknown_03000520
	ldrb r1, [r0]
	cmp r1, #0
	beq _08039410
	b _08039640
	.byte 0x00
	.byte 0x00
_0803940C:
	.4byte gUnknown_03000520
_08039410:
	bl sub_0800BED8
	mov r0, #160
	lsl r0, r0, #19
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08039588  @ =gUnknown_020163D0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	bl sub_0801239C
	bl sub_080123BC
	bl sub_0802BF60
	bl sub_0802C278
	bl sub_0800D6F4
	mov r0, #2
	bl sub_0800B890
	mov r0, #21
	bl sub_0800B890
	mov r0, #27
	bl sub_0800BA44
	mov r0, #160
	lsl r0, r0, #19
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08039588  @ =gUnknown_020163D0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _0803958C  @ =gUnknown_030004A0
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #146
	lsl r3, r3, #5
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _0803958C  @ =gUnknown_030004A0
	ldr r1, _08039590  @ =gUnknown_08142374
	ldrh r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #42]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #20]
	ldr r0, _0803958C  @ =gUnknown_030004A0
	ldr r1, _0803958C  @ =gUnknown_030004A0
	ldrh r2, [r1, #24]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strh r3, [r1, #24]
	ldrh r1, [r0, #22]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #22]
	ldr r0, _08039594  @ =gUnknown_03000E20
	ldrb r1, [r0, #18]
	add r0, r1, #0
	bl sub_08063C5C
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldrb r1, [r0, #31]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #31]
	ldr r0, [r7]
	ldrh r1, [r0, #50]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #120
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #50]
	ldr r0, [r7]
	ldrh r1, [r0, #54]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #136
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #54]
	ldr r0, _08039598  @ =gUnknown_03006A30
	ldr r2, _08039594  @ =gUnknown_03000E20
	ldrb r1, [r2, #18]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #12]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #12]
	ldr r0, _08039598  @ =gUnknown_03006A30
	ldr r2, _08039594  @ =gUnknown_03000E20
	ldrb r1, [r2, #18]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	add r1, r0, #0
	add r0, r0, #56
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #80
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	ldr r0, _08039594  @ =gUnknown_03000E20
	ldrh r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	ldr r1, _0803959C  @ =gUnknown_03000BFC
	ldr r0, _0803959C  @ =gUnknown_03000BFC
	ldr r1, _0803959C  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _080395A0  @ =gUnknown_03000830
	mov r1, #0
	strb r1, [r0]
	ldr r1, _080395A4  @ =0x800B01A0
	add r0, r1, #0
	bl sub_0800D24C
	mov r0, #0
	mov r1, #8
	bl sub_0800C0B0
	b _08039640
_08039588:
	.4byte gUnknown_020163D0
_0803958C:
	.4byte gUnknown_030004A0
_08039590:
	.4byte gUnknown_08142374
_08039594:
	.4byte gUnknown_03000E20
_08039598:
	.4byte gUnknown_03006A30
_0803959C:
	.4byte gUnknown_03000BFC
_080395A0:
	.4byte gUnknown_03000830
_080395A4:
	.4byte 0x800B01A0
_080395A8:
	bl 0x08137AFC
	bl 0x08000BAC
	bl sub_0802BFC4
	ldr r0, _080395C0  @ =gUnknown_03000520
	ldrb r1, [r0]
	cmp r1, #0
	beq _080395C4
	b _08039640
	.byte 0x00
	.byte 0x00
_080395C0:
	.4byte gUnknown_03000520
_080395C4:
	ldr r1, _080395F0  @ =gUnknown_03000E20
	ldr r0, _080395F0  @ =gUnknown_03000E20
	ldr r1, _080395F0  @ =gUnknown_03000E20
	ldrh r2, [r1, #2]
	sub r1, r2, #1
	ldrh r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strh r2, [r0, #2]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _080395F4
	b _08039640
_080395F0:
	.4byte gUnknown_03000E20
_080395F4:
	mov r0, #3
	mov r1, #8
	bl sub_0800C0B0
	ldr r1, _0803960C  @ =gUnknown_03000BFC
	ldr r0, _0803960C  @ =gUnknown_03000BFC
	ldr r1, _0803960C  @ =gUnknown_03000BFC
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08039640
_0803960C:
	.4byte gUnknown_03000BFC
_08039610:
	ldr r0, _0803961C  @ =gUnknown_03000520
	ldrb r1, [r0]
	cmp r1, #0
	beq _08039620
	b _08039640
	.byte 0x00
	.byte 0x00
_0803961C:
	.4byte gUnknown_03000520
_08039620:
	ldr r1, _0803963C  @ =0x80040000
	add r0, r1, #0
	bl sub_0800D24C
	bl sub_0800BED8
	bl sub_0801239C
	bl sub_080123BC
	mov r0, #5
	bl sub_0800B5EC
	b _08039640
_0803963C:
	.4byte 0x80040000
_08039640:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08039288

	THUMB_FUNC_START sub_08039650
sub_08039650: @ 0x08039650
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	add r0, r7, #2
	add r1, r7, #3
	add r2, r7, #4
	mov r3, #15
	strb r3, [r2]
	mov r2, #15
	strb r2, [r1]
	mov r1, #15
	strb r1, [r0]
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_0803966E:
	add r0, r7, #0
	ldr r1, _0803967C  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08039680
	b _08039720
_0803967C:
	.4byte gUnknown_03006C80
_08039680:
	ldr r0, _0803969C  @ =gUnknown_03006C80
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #3
	add r0, r0, #40
	add r1, r0, r2
	ldr r0, [r1]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	bne _080396A0
	mov r0, #1
	b _0803973C
_0803969C:
	.4byte gUnknown_03006C80
_080396A0:
	add r0, r7, #1
	ldr r1, _0803971C  @ =gUnknown_03006C80
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #3
	add r2, r1, r3
	add r1, r2, #0
	add r2, r2, #45
	ldrb r1, [r2]
	strb r1, [r0]
	add r4, r7, #2
	add r0, r7, #1
	ldrb r1, [r0]
	add r0, r1, #0
	mov r1, #1
	bl sub_08039744
	add r1, r7, #2
	ldrb r2, [r1]
	add r1, r0, #0
	add r0, r2, #0
	and r0, r0, r1
	add r1, r0, #0
	strb r1, [r4]
	add r4, r7, #3
	add r0, r7, #1
	ldrb r1, [r0]
	add r0, r1, #0
	mov r1, #2
	bl sub_08039744
	add r1, r7, #3
	ldrb r2, [r1]
	add r1, r0, #0
	add r0, r2, #0
	and r0, r0, r1
	add r1, r0, #0
	strb r1, [r4]
	add r4, r7, #4
	add r0, r7, #1
	ldrb r1, [r0]
	add r0, r1, #0
	mov r1, #3
	bl sub_08039744
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r0, #0
	add r0, r2, #0
	and r0, r0, r1
	add r1, r0, #0
	strb r1, [r4]
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _0803966E
	.byte 0x00
	.byte 0x00
_0803971C:
	.4byte gUnknown_03006C80
_08039720:
	add r0, r7, #2
	ldrb r1, [r0]
	cmp r1, #7
	beq _0803972C
	mov r0, #1
	b _0803973C
_0803972C:
	add r0, r7, #3
	ldrb r1, [r0]
	cmp r1, #7
	beq _08039738
	mov r0, #2
	b _0803973C
_08039738:
	mov r0, #3
	b _0803973C
_0803973C:
	add sp, sp, #8
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08039650

	THUMB_FUNC_START sub_08039744
sub_08039744: @ 0x08039744
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r2, r0, #0
	add r0, r1, #0
	add r1, r7, #0
	strb r2, [r1]
	add r1, r7, #1
	strb r0, [r1]
	add r0, r7, #2
	mov r1, #0
	strb r1, [r0]
	add r0, r7, #0
	ldrb r1, [r0]
	mov r0, #3
	and r1, r1, r0
	add r0, r7, #1
	lsl r2, r1, #24
	lsr r1, r2, #24
	ldrb r0, [r0]
	cmp r1, r0
	bcc _08039780
	add r0, r7, #2
	add r1, r7, #2
	ldrb r2, [r1]
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08039780:
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	lsr r1, r2, #2
	add r2, r1, #0
	strb r2, [r0]
	add r0, r7, #0
	ldrb r1, [r0]
	mov r0, #3
	and r1, r1, r0
	add r0, r7, #1
	lsl r2, r1, #24
	lsr r1, r2, #24
	ldrb r0, [r0]
	cmp r1, r0
	bcc _080397B0
	add r0, r7, #2
	add r1, r7, #2
	ldrb r2, [r1]
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_080397B0:
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	lsr r1, r2, #2
	add r2, r1, #0
	strb r2, [r0]
	add r0, r7, #0
	ldrb r1, [r0]
	mov r0, #3
	and r1, r1, r0
	add r0, r7, #1
	lsl r2, r1, #24
	lsr r1, r2, #24
	ldrb r0, [r0]
	cmp r1, r0
	bcc _080397E0
	add r0, r7, #2
	add r1, r7, #2
	ldrb r2, [r1]
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_080397E0:
	add r0, r7, #2
	ldrb r1, [r0]
	add r0, r1, #0
	b _080397E8
_080397E8:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08039744

	THUMB_FUNC_START sub_080397F0
sub_080397F0: @ 0x080397F0
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	add r0, r7, #2
	add r1, r7, #3
	add r2, r7, #4
	mov r3, #0
	strb r3, [r2]
	mov r2, #0
	strb r2, [r1]
	mov r1, #0
	strb r1, [r0]
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_0803980E:
	add r0, r7, #0
	ldr r1, _0803981C  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08039820
	b _080398B0
_0803981C:
	.4byte gUnknown_03006C80
_08039820:
	add r0, r7, #1
	ldr r1, _080398AC  @ =gUnknown_03006C80
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #3
	add r2, r1, r3
	add r1, r2, #0
	add r2, r2, #45
	ldrb r1, [r2]
	strb r1, [r0]
	add r0, r7, #1
	ldrb r1, [r0]
	add r0, r1, #0
	mov r1, #1
	bl sub_08039744
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #7
	bne _08039858
	add r1, r7, #2
	add r0, r7, #2
	add r1, r7, #2
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_08039858:
	add r0, r7, #1
	ldrb r1, [r0]
	add r0, r1, #0
	mov r1, #2
	bl sub_08039744
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #7
	bne _0803987A
	add r1, r7, #3
	add r0, r7, #3
	add r1, r7, #3
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_0803987A:
	add r0, r7, #1
	ldrb r1, [r0]
	add r0, r1, #0
	mov r1, #3
	bl sub_08039744
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #7
	bne _0803989C
	add r1, r7, #4
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_0803989C:
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _0803980E
_080398AC:
	.4byte gUnknown_03006C80
_080398B0:
	add r0, r7, #4
	ldr r1, _080398C0  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080398C4
	mov r0, #3
	b _080398F0
_080398C0:
	.4byte gUnknown_03006C80
_080398C4:
	add r0, r7, #3
	ldr r1, _080398D4  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080398D8
	mov r0, #2
	b _080398F0
_080398D4:
	.4byte gUnknown_03006C80
_080398D8:
	add r0, r7, #2
	ldr r1, _080398E8  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080398EC
	mov r0, #1
	b _080398F0
_080398E8:
	.4byte gUnknown_03006C80
_080398EC:
	mov r0, #0
	b _080398F0
_080398F0:
	add sp, sp, #8
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080397F0

	THUMB_FUNC_START sub_080398F8
sub_080398F8: @ 0x080398F8
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strb r0, [r1]
	add r0, r7, #3
	ldr r1, _08039944  @ =gUnknown_08427C0C
	ldr r2, _08039948  @ =gUnknown_03006C80
	ldrb r3, [r2, #1]
	add r2, r3, #0
	lsl r3, r2, #1
	add r1, r1, r3
	ldrb r2, [r1]
	strb r2, [r0]
	add r0, r7, #0
	add r2, r7, #0
	ldrb r1, [r2]
	ldr r2, _08039944  @ =gUnknown_08427C0C
	ldr r3, _08039948  @ =gUnknown_03006C80
	ldrb r4, [r3, #1]
	add r3, r4, #0
	lsl r4, r3, #1
	add r3, r4, #1
	add r2, r2, r3
	ldrb r3, [r2]
	lsl r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add r0, r7, #1
	mov r1, #0
	strb r1, [r0]
_08039936:
	add r0, r7, #1
	ldr r1, _08039948  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803994C
	b _080399C4
_08039944:
	.4byte gUnknown_08427C0C
_08039948:
	.4byte gUnknown_03006C80
_0803994C:
	add r0, r7, #2
	ldr r1, _080399C0  @ =gUnknown_03006C80
	add r2, r7, #1
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #3
	add r2, r1, r3
	add r1, r2, #0
	add r2, r2, #45
	ldrb r1, [r2]
	strb r1, [r0]
	add r0, r7, #2
	add r1, r7, #3
	ldrb r0, [r0]
	ldrb r1, [r1]
	add r2, r1, #0
	add r1, r0, #0
	and r1, r1, r2
	add r0, r7, #0
	lsl r2, r1, #24
	lsr r1, r2, #24
	ldrb r0, [r0]
	cmp r1, r0
	bcs _080399B0
	ldr r0, _080399C0  @ =gUnknown_03006C80
	add r1, r7, #1
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #3
	add r0, r0, r2
	add r1, r7, #2
	add r2, r7, #3
	ldrb r3, [r2]
	mvn r2, r3
	ldrb r1, [r1]
	add r3, r2, #0
	and r1, r1, r3
	add r2, r7, #0
	ldrb r2, [r2]
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #45
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_080399B0:
	add r1, r7, #1
	add r0, r7, #1
	add r1, r7, #1
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08039936
_080399C0:
	.4byte gUnknown_03006C80
_080399C4:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080398F8

	THUMB_FUNC_START sub_080399CC
sub_080399CC: @ 0x080399CC
	push {r7,lr}
	mov r7, sp
	ldr r1, _080399E4  @ =gUnknown_03006C80
	ldrb r0, [r1, #6]
	cmp r0, #2
	beq _08039A04
	cmp r0, #2
	bgt _080399E8
	cmp r0, #1
	beq _080399EE
	b _08039A34
	.byte 0x00
	.byte 0x00
_080399E4:
	.4byte gUnknown_03006C80
_080399E8:
	cmp r0, #3
	beq _08039A1C
	b _08039A34
_080399EE:
	ldr r0, _080399FC  @ =gUnknown_03006C80
	ldr r1, [r0, #8]
	ldr r0, _08039A00  @ =0x000003E7
	cmp r1, r0
	bls _08039A04
	mov r0, #1
	b _08039A38
_080399FC:
	.4byte gUnknown_03006C80
_08039A00:
	.4byte 0x000003E7
_08039A04:
	ldr r0, _08039A14  @ =gUnknown_03006C80
	ldr r1, [r0, #8]
	ldr r0, _08039A18  @ =0x00000BB7
	cmp r1, r0
	bls _08039A1C
	mov r0, #2
	b _08039A38
	.byte 0x00
	.byte 0x00
_08039A14:
	.4byte gUnknown_03006C80
_08039A18:
	.4byte 0x00000BB7
_08039A1C:
	ldr r0, _08039A2C  @ =gUnknown_03006C80
	ldr r1, [r0, #8]
	ldr r0, _08039A30  @ =0x00001387
	cmp r1, r0
	bls _08039A34
	mov r0, #3
	b _08039A38
	.byte 0x00
	.byte 0x00
_08039A2C:
	.4byte gUnknown_03006C80
_08039A30:
	.4byte 0x00001387
_08039A34:
	mov r0, #0
	b _08039A38
_08039A38:
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080399CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08039A40
sub_08039A40: @ 0x08039A40
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08039A64  @ =gUnknown_03006C80
	ldr r1, [r7]
	ldrb r2, [r1, #10]
	add r1, r2, #0
	lsl r2, r1, #3
	add r0, r0, #40
	add r1, r0, r2
	ldr r0, [r1]
	mov r2, #2
	add r1, r0, #0
	and r1, r1, r2
	add r0, r1, #0
	b _08039A68
	.byte 0x00
	.byte 0x00
_08039A64:
	.4byte gUnknown_03006C80
_08039A68:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08039A40

	THUMB_FUNC_START sub_08039A70
sub_08039A70: @ 0x08039A70
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08039A94  @ =gUnknown_03006C80
	ldr r1, [r7]
	ldrb r2, [r1, #10]
	add r1, r2, #0
	lsl r2, r1, #3
	add r0, r0, #40
	add r1, r0, r2
	ldr r0, [r1]
	mov r2, #1
	add r1, r0, #0
	and r1, r1, r2
	add r0, r1, #0
	b _08039A98
	.byte 0x00
	.byte 0x00
_08039A94:
	.4byte gUnknown_03006C80
_08039A98:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08039A70

	THUMB_FUNC_START sub_08039AA0
sub_08039AA0: @ 0x08039AA0
	push {r4,r7,lr}
	sub sp, sp, #16
	mov r7, sp
	add r1, r7, #0
	strb r0, [r1]
	mov r0, #192
	lsl r0, r0, #18
	ldrb r1, [r0, #4]
	add r0, r1, #0
	lsl r1, r0, #6
	ldr r0, _08039B1C  @ =gUnknown_0200B250
	add r1, r0, r1
	str r1, [r7, #4]
	add r0, r7, #0
	ldrb r1, [r0]
	add r0, r1, #0
	lsl r1, r0, #3
	ldr r0, _08039B20  @ =gUnknown_03006CA8
	add r1, r0, r1
	str r1, [r7, #8]
	bl sub_0802E5E0
	add r0, r7, #0
	ldrb r1, [r0]
	add r0, r1, #0
	bl sub_0802E750
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08039B02
	ldr r0, [r7, #8]
	ldrh r1, [r0, #6]
	ldr r0, _08039B24  @ =0x000003E6
	cmp r1, r0
	bhi _08039B02
	ldr r1, [r7, #8]
	ldr r0, [r7, #8]
	ldr r1, [r7, #8]
	ldrh r2, [r1, #6]
	add r1, r2, #1
	ldrh r2, [r0, #6]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #6]
_08039B02:
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #0
	strb r1, [r0]
_08039B0A:
	add r0, r7, #0
	add r0, r0, #12
	ldr r1, _08039B28  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08039B2C
	b _08039BEC
	.byte 0x00
	.byte 0x00
_08039B1C:
	.4byte gUnknown_0200B250
_08039B20:
	.4byte gUnknown_03006CA8
_08039B24:
	.4byte 0x000003E6
_08039B28:
	.4byte gUnknown_03006C80
_08039B2C:
	ldr r0, _08039BE8  @ =gUnknown_03006C80
	ldrb r1, [r0, #1]
	cmp r1, #2
	bne _08039B5E
	ldr r0, _08039BE8  @ =gUnknown_03006C80
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #3
	add r1, r0, #0
	add r1, r1, #40
	add r0, r1, r2
	ldr r1, _08039BE8  @ =gUnknown_03006C80
	add r2, r7, #0
	add r2, r2, #12
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #3
	add r1, r1, #40
	add r2, r1, r3
	ldr r1, [r2]
	mov r2, #8
	orr r1, r1, r2
	str r1, [r0]
_08039B5E:
	ldr r0, _08039BE8  @ =gUnknown_03006C80
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #3
	add r0, r0, r2
	ldrh r1, [r0, #46]
	cmp r1, #9
	bls _08039B9C
	ldr r0, _08039BE8  @ =gUnknown_03006C80
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #3
	add r1, r0, #0
	add r1, r1, #40
	add r0, r1, r2
	ldr r1, _08039BE8  @ =gUnknown_03006C80
	add r2, r7, #0
	add r2, r2, #12
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #3
	add r1, r1, #40
	add r2, r1, r3
	ldr r1, [r2]
	mov r2, #4
	orr r1, r1, r2
	str r1, [r0]
_08039B9C:
	ldr r0, _08039BE8  @ =gUnknown_03006C80
	ldrb r1, [r0, #3]
	cmp r1, #2
	bne _08039BD0
	ldr r0, _08039BE8  @ =gUnknown_03006C80
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #3
	add r1, r0, #0
	add r1, r1, #40
	add r0, r1, r2
	ldr r1, _08039BE8  @ =gUnknown_03006C80
	add r2, r7, #0
	add r2, r2, #12
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #3
	add r1, r1, #40
	add r2, r1, r3
	ldr r1, [r2]
	mov r2, #128
	lsl r2, r2, #2
	orr r1, r1, r2
	str r1, [r0]
_08039BD0:
	add r1, r7, #0
	add r1, r1, #12
	add r0, r7, #0
	add r0, r0, #12
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08039B0A
	.byte 0x00
	.byte 0x00
_08039BE8:
	.4byte gUnknown_03006C80
_08039BEC:
	bl sub_080399CC
	add r1, r0, #0
	ldr r0, _08039CC8  @ =gUnknown_03006C80
	lsl r2, r1, #24
	lsr r1, r2, #24
	ldrb r0, [r0, #6]
	cmp r1, r0
	bcc _08039C08
	ldr r0, _08039CC8  @ =gUnknown_03006C80
	ldrb r1, [r0, #6]
	add r0, r1, #0
	bl sub_080398F8
_08039C08:
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	ldr r2, [r1]
	str r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	ldrb r2, [r0, #5]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1, #5]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #5]
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	ldrh r2, [r0, #6]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #6]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #6]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _08039CC8  @ =gUnknown_03006C80
	add r3, r7, #0
	ldrb r4, [r3]
	add r3, r4, #0
	lsl r4, r3, #2
	add r2, r2, #12
	add r3, r2, r4
	ldr r1, [r1, #16]
	ldr r2, [r3]
	add r1, r1, r2
	str r1, [r0, #16]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _08039CC8  @ =gUnknown_03006C80
	ldr r1, [r1, #20]
	ldr r2, [r2, #32]
	add r1, r1, r2
	str r1, [r0, #20]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, _08039CC8  @ =gUnknown_03006C80
	ldrb r3, [r2, #4]
	ldr r1, [r1, #24]
	add r2, r1, r3
	str r2, [r0, #24]
	ldr r0, [r7, #4]
	ldr r1, _08039CC8  @ =gUnknown_03006C80
	ldr r0, [r0, #28]
	ldr r1, [r1, #8]
	cmp r0, r1
	bcs _08039C86
	ldr r0, [r7, #4]
	ldr r1, _08039CC8  @ =gUnknown_03006C80
	ldr r2, [r1, #8]
	str r2, [r0, #28]
_08039C86:
	ldr r0, [r7, #4]
	ldr r1, _08039CC8  @ =gUnknown_03006C80
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #2
	add r1, r1, #12
	add r2, r1, r3
	ldr r0, [r0, #32]
	ldr r1, [r2]
	cmp r0, r1
	bcs _08039CB2
	ldr r0, [r7, #4]
	ldr r1, _08039CC8  @ =gUnknown_03006C80
	add r2, r7, #0
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #2
	add r1, r1, #12
	add r2, r1, r3
	ldr r1, [r2]
	str r1, [r0, #32]
_08039CB2:
	mov r0, #192
	lsl r0, r0, #18
	ldrb r1, [r0, #4]
	add r0, r1, #0
	bl sub_08011434
	lsl r2, r0, #24
	lsr r1, r2, #24
	add r0, r1, #0
	b _08039CCC
	.byte 0x00
	.byte 0x00
_08039CC8:
	.4byte gUnknown_03006C80
_08039CCC:
	add sp, sp, #16
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08039AA0

	THUMB_FUNC_START sub_08039CD4
sub_08039CD4: @ 0x08039CD4
	push {r4,r7,lr}
	mov r7, sp
	ldr r4, _08039CF4  @ =gUnknown_03006C80
	ldr r0, _08039CF4  @ =gUnknown_03006C80
	ldrb r1, [r0, #4]
	add r0, r1, #0
	mov r1, #3
	bl __umodsi3
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #2
	bne _08039CF8
	mov r0, #129
	b _08039CFA
_08039CF4:
	.4byte gUnknown_03006C80
_08039CF8:
	mov r0, #0
_08039CFA:
	ldrb r1, [r4, #5]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	orr r0, r0, r2
	add r1, r0, #0
	strb r1, [r4, #5]
	ldr r0, _08039D10  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	add r0, r1, #0
	b _08039D14
_08039D10:
	.4byte gUnknown_03006C80
_08039D14:
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08039CD4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08039D1C
sub_08039D1C: @ 0x08039D1C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r0, r7, #0
	ldr r1, _08039D54  @ =gUnknown_03006C80
	ldrb r2, [r1, #1]
	strb r2, [r0]
_08039D2A:
	bl 0x0800099C
	add r1, r0, #0
	ldr r0, _08039D54  @ =gUnknown_03006C80
	mov r2, #3
	and r1, r1, r2
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
	ldr r0, _08039D54  @ =gUnknown_03006C80
	add r1, r7, #0
	ldrb r0, [r0, #1]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08039D58
	b _08039D5A
_08039D54:
	.4byte gUnknown_03006C80
_08039D58:
	b _08039D2A
_08039D5A:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08039D1C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08039D64
sub_08039D64: @ 0x08039D64
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	ldr r0, _08039D90  @ =gUnknown_03006C80
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _08039D74
	b _08039ED8
_08039D74:
	ldr r0, _08039D90  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #5]
	ldr r1, _08039D90  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #79
	ldrb r0, [r1]
	cmp r0, #239
	bls _08039D94
	mov r0, #1
	b _0803A028
_08039D90:
	.4byte gUnknown_03006C80
_08039D94:
	ldr r1, _08039DE4  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #79
	ldrb r0, [r1]
	mov r1, #16
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08039DBE
	ldr r0, _08039DE4  @ =gUnknown_03006C80
	ldrb r1, [r0, #4]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #4]
_08039DBE:
	ldr r1, _08039DE4  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #79
	ldrb r0, [r1]
	mov r1, #32
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08039E98
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_08039DDA:
	add r0, r7, #0
	ldrb r1, [r0]
	cmp r1, #3
	bls _08039DE8
	b _08039E68
_08039DE4:
	.4byte gUnknown_03006C80
_08039DE8:
	ldr r0, _08039E64  @ =gUnknown_03006C80
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, #12
	add r1, r0, r2
	mov r0, #0
	str r0, [r1]
	ldr r0, _08039E64  @ =gUnknown_03006C80
	add r2, r7, #0
	ldrb r1, [r2]
	add r2, r0, #0
	add r3, r0, #0
	add r3, r3, #104
	add r0, r3, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08039E64  @ =gUnknown_03006C80
	add r2, r7, #0
	ldrb r1, [r2]
	add r2, r0, #0
	add r3, r0, #0
	add r3, r3, #88
	add r0, r3, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #9
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08039E64  @ =gUnknown_03006C80
	add r2, r7, #0
	ldrb r1, [r2]
	add r2, r0, #0
	add r3, r0, #0
	add r3, r3, #96
	add r0, r3, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #40
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08039DDA
	.byte 0x00
	.byte 0x00
_08039E64:
	.4byte gUnknown_03006C80
_08039E68:
	ldr r0, _08039ECC  @ =gUnknown_03006C80
	ldr r1, _08039ECC  @ =gUnknown_03006C80
	ldr r2, _08039ECC  @ =gUnknown_03006C80
	add r3, r2, #0
	add r2, r2, #36
	ldrb r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strb r4, [r2]
	ldrb r2, [r1, #4]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1, #4]
	mov r1, #0
	str r1, [r0, #8]
	mov r0, #0
	str r0, [r7, #4]
	add r0, r7, #4
	ldr r1, _08039ED0  @ =gUnknown_03006A30
	ldr r2, _08039ED4  @ =0x05000090
	bl CpuSet
_08039E98:
	ldr r1, _08039ECC  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #79
	ldrb r0, [r1]
	mov r1, #64
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08039EC8
	ldr r1, _08039ECC  @ =gUnknown_03006C80
	ldr r0, _08039ECC  @ =gUnknown_03006C80
	ldr r1, _08039ECC  @ =gUnknown_03006C80
	ldrb r2, [r1, #4]
	add r1, r2, #1
	ldrb r2, [r0, #4]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #4]
_08039EC8:
	b _0803A024
	.byte 0x00
	.byte 0x00
_08039ECC:
	.4byte gUnknown_03006C80
_08039ED0:
	.4byte gUnknown_03006A30
_08039ED4:
	.4byte 0x05000090
_08039ED8:
	ldr r1, _08039F04  @ =gUnknown_03006C80
	ldr r0, _08039F04  @ =gUnknown_03006C80
	ldr r1, _08039F04  @ =gUnknown_03006C80
	ldrb r2, [r1, #4]
	add r1, r2, #1
	ldrb r2, [r0, #4]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #4]
	ldr r1, _08039F04  @ =gUnknown_03006C80
	ldrb r0, [r1, #3]
	cmp r0, #1
	beq _08039F28
	cmp r0, #1
	bgt _08039F08
	cmp r0, #0
	beq _08039F0E
	b _0803A024
_08039F04:
	.4byte gUnknown_03006C80
_08039F08:
	cmp r0, #2
	beq _08039F68
	b _0803A024
_08039F0E:
	ldr r0, _08039F1C  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	cmp r1, #0
	beq _08039F20
	mov r0, #1
	b _0803A028
	.byte 0x00
	.byte 0x00
_08039F1C:
	.4byte gUnknown_03006C80
_08039F20:
	bl sub_08039CD4
	mov r0, #0
	b _0803A028
_08039F28:
	ldr r0, _08039F34  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	cmp r1, #0
	beq _08039F38
	mov r0, #1
	b _0803A028
_08039F34:
	.4byte gUnknown_03006C80
_08039F38:
	bl sub_08039CD4
	ldr r0, _08039F5C  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	cmp r1, #0
	beq _08039F60
	ldr r0, _08039F5C  @ =gUnknown_03006C80
	ldrb r1, [r0, #1]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #1]
	b _08039F64
	.byte 0x00
	.byte 0x00
_08039F5C:
	.4byte gUnknown_03006C80
_08039F60:
	bl sub_08039D1C
_08039F64:
	mov r0, #0
	b _0803A028
_08039F68:
	ldr r0, _08039F7C  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	cmp r1, #0
	beq _08039F80
	ldr r0, _08039F7C  @ =gUnknown_03006C80
	ldrb r1, [r0, #1]
	cmp r1, #2
	bne _08039F80
	mov r0, #1
	b _0803A028
_08039F7C:
	.4byte gUnknown_03006C80
_08039F80:
	bl sub_08039D1C
	bl sub_08039CD4
	cmp r0, #0
	beq _0803A01C
	ldr r0, _08039FC0  @ =gUnknown_03006C80
	ldrb r1, [r0, #1]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #1]
	ldr r0, _08039FC0  @ =gUnknown_03006C80
	ldrb r1, [r0, #4]
	cmp r1, #11
	bne _08039FB4
	ldr r0, _08039FC0  @ =gUnknown_03006C80
	ldrb r1, [r0, #1]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #1]
_08039FB4:
	ldr r0, _08039FC0  @ =gUnknown_03006C80
	ldrb r1, [r0, #1]
	cmp r1, #2
	bne _08039FC4
	mov r0, #0
	b _0803A028
_08039FC0:
	.4byte gUnknown_03006C80
_08039FC4:
	bl sub_08039D1C
_08039FC8:
	ldr r0, _08039FE8  @ =gUnknown_03006C80
	ldrb r1, [r0, #1]
	cmp r1, #2
	beq _08039FEC
	ldr r1, _08039FE8  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #78
	ldrb r0, [r1]
	ldr r1, _08039FE8  @ =gUnknown_03006C80
	ldrb r2, [r1, #1]
	asr r0, r0, r2
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08039FEC
	b _08039FF2
_08039FE8:
	.4byte gUnknown_03006C80
_08039FEC:
	bl sub_08039D1C
	b _08039FC8
_08039FF2:
	ldr r0, _0803A020  @ =gUnknown_03006C80
	ldr r1, _0803A020  @ =gUnknown_03006C80
	add r2, r1, #0
	add r1, r1, #78
	ldr r2, _0803A020  @ =gUnknown_03006C80
	ldrb r3, [r2, #1]
	mov r4, #1
	add r2, r4, #0
	lsl r2, r2, r3
	ldrb r1, [r1]
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #78
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_0803A01C:
	b _0803A024
	.byte 0x00
	.byte 0x00
_0803A020:
	.4byte gUnknown_03006C80
_0803A024:
	mov r0, #0
	b _0803A028
_0803A028:
	add sp, sp, #8
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08039D64

	THUMB_FUNC_START sub_0803A030
sub_0803A030: @ 0x0803A030
	push {r4-r7,lr}
	sub sp, sp, #40
	mov r7, sp
	ldr r0, _0803A08C  @ =gUnknown_03006C80
	ldr r1, [r0]
	str r1, [r7]
	ldr r0, _0803A090  @ =gUnknown_03006CA8
	add r1, r7, #4
	ldr r2, _0803A094  @ =0x04000008
	bl CpuSet
	mov r0, #0
	str r0, [r7, #36]
	add r0, r7, #0
	add r0, r0, #36
	ldr r1, _0803A08C  @ =gUnknown_03006C80
	ldr r2, _0803A098  @ =0x05000024
	bl CpuSet
	ldr r0, _0803A08C  @ =gUnknown_03006C80
	ldr r1, [r7]
	str r1, [r0]
	add r0, r7, #4
	ldr r1, _0803A090  @ =gUnknown_03006CA8
	ldr r2, _0803A094  @ =0x04000008
	bl CpuSet
	bl sub_08039650
	add r1, r0, #0
	ldr r0, _0803A08C  @ =gUnknown_03006C80
	ldrb r2, [r0, #6]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #6]
	ldr r0, _0803A08C  @ =gUnknown_03006C80
	ldr r1, _0803A08C  @ =gUnknown_03006C80
	ldrb r2, [r1, #2]
	cmp r2, #0
	bne _0803A09C
	ldr r2, _0803A08C  @ =gUnknown_03006C80
	ldrb r1, [r2, #1]
	b _0803A09E
_0803A08C:
	.4byte gUnknown_03006C80
_0803A090:
	.4byte gUnknown_03006CA8
_0803A094:
	.4byte 0x04000008
_0803A098:
	.4byte 0x05000024
_0803A09C:
	mov r1, #4
_0803A09E:
	ldrb r2, [r0, #7]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #7]
	ldr r0, _0803A204  @ =gUnknown_03006C80
	ldr r1, _0803A204  @ =gUnknown_03006C80
	ldr r2, _0803A204  @ =gUnknown_03006C80
	ldr r3, _0803A204  @ =gUnknown_03006C80
	add r4, r3, #0
	add r3, r3, #91
	ldrb r4, [r3]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	mov r6, #9
	add r4, r5, #0
	orr r4, r4, r6
	add r5, r4, #0
	strb r5, [r3]
	add r3, r2, #0
	add r2, r2, #90
	ldrb r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	mov r5, #9
	add r3, r4, #0
	orr r3, r3, r5
	add r4, r3, #0
	strb r4, [r2]
	add r2, r1, #0
	add r1, r1, #89
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #9
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1]
	add r1, r0, #0
	add r0, r0, #88
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #9
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A204  @ =gUnknown_03006C80
	ldr r1, _0803A204  @ =gUnknown_03006C80
	ldr r2, _0803A204  @ =gUnknown_03006C80
	ldr r3, _0803A204  @ =gUnknown_03006C80
	add r4, r3, #0
	add r3, r3, #99
	ldrb r4, [r3]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	mov r6, #40
	add r4, r5, #0
	orr r4, r4, r6
	add r5, r4, #0
	strb r5, [r3]
	add r3, r2, #0
	add r2, r2, #98
	ldrb r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	mov r5, #40
	add r3, r4, #0
	orr r3, r3, r5
	add r4, r3, #0
	strb r4, [r2]
	add r2, r1, #0
	add r1, r1, #97
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #40
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1]
	add r1, r0, #0
	add r0, r0, #96
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #40
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A204  @ =gUnknown_03006C80
	ldr r1, _0803A204  @ =gUnknown_03006C80
	ldr r2, _0803A204  @ =gUnknown_03006C80
	ldr r3, _0803A204  @ =gUnknown_03006C80
	add r4, r3, #0
	add r3, r3, #103
	ldrb r4, [r3]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	mov r6, #6
	add r4, r5, #0
	orr r4, r4, r6
	add r5, r4, #0
	strb r5, [r3]
	add r3, r2, #0
	add r2, r2, #102
	ldrb r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	mov r5, #6
	add r3, r4, #0
	orr r3, r3, r5
	add r4, r3, #0
	strb r4, [r2]
	add r2, r1, #0
	add r1, r1, #101
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #6
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1]
	add r1, r0, #0
	add r0, r0, #100
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A204  @ =gUnknown_03006C80
	ldrh r1, [r0, #38]
	ldr r2, _0803A208  @ =0x0000FFFF
	orr r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #38]
	ldr r0, _0803A204  @ =gUnknown_03006C80
	ldrb r1, [r0, #3]
	cmp r1, #0
	beq _0803A1FC
	bl 0x0800099C
	add r1, r0, #0
	ldr r0, _0803A204  @ =gUnknown_03006C80
	mov r2, #3
	and r1, r1, r2
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
_0803A1FC:
	add sp, sp, #40
	pop {r4-r7}
	pop {r0}
	bx r0
_0803A204:
	.4byte gUnknown_03006C80
_0803A208:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_0803A030

	THUMB_FUNC_START sub_0803A20C
sub_0803A20C: @ 0x0803A20C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	mov r0, #1
	neg r0, r0
	str r0, [r7]
	ldr r1, _0803A228  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #110
	ldrb r0, [r1]
	cmp r0, #1
	bls _0803A22C
	b _0803A2DA
	.byte 0x00
	.byte 0x00
_0803A228:
	.4byte gUnknown_03006C80
_0803A22C:
	ldr r0, _0803A238  @ =gUnknown_03006C80
	ldrb r1, [r0, #5]
	cmp r1, #0
	beq _0803A23C
	b _0803A2DA
	.byte 0x00
	.byte 0x00
_0803A238:
	.4byte gUnknown_03006C80
_0803A23C:
	ldr r0, _0803A248  @ =gUnknown_03006C80
	ldrh r1, [r0, #38]
	ldr r0, _0803A24C  @ =0x000001A1
	cmp r1, r0
	bne _0803A250
	b _0803A2DA
_0803A248:
	.4byte gUnknown_03006C80
_0803A24C:
	.4byte 0x000001A1
_0803A250:
	ldr r0, _0803A2A4  @ =gUnknown_08427C14
	ldr r1, _0803A2A8  @ =gUnknown_03006C80
	ldrb r2, [r1, #7]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	str r1, [r7]
	ldr r1, _0803A2A8  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #36
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803A270
	ldr r0, _0803A2AC  @ =0x000001A9
	str r0, [r7]
_0803A270:
	ldr r1, _0803A2A8  @ =gUnknown_03006C80
	add r0, r1, #0
	add r1, r1, #81
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803A282
	mov r0, #213
	lsl r0, r0, #1
	str r0, [r7]
_0803A282:
	ldr r1, _0803A2A8  @ =gUnknown_03006C80
	ldrh r0, [r1, #38]
	ldr r1, [r7]
	lsl r2, r1, #16
	lsr r1, r2, #16
	cmp r0, r1
	beq _0803A2DA
	ldr r0, _0803A2A8  @ =gUnknown_03006C80
	ldrh r1, [r0, #38]
	ldr r0, _0803A2B0  @ =0x0000FFFF
	cmp r1, r0
	beq _0803A2B8
	ldr r1, _0803A2B4  @ =0x80080000
	add r0, r1, #0
	bl sub_0800D24C
	b _0803A2C0
_0803A2A4:
	.4byte gUnknown_08427C14
_0803A2A8:
	.4byte gUnknown_03006C80
_0803A2AC:
	.4byte 0x000001A9
_0803A2B0:
	.4byte 0x0000FFFF
_0803A2B4:
	.4byte 0x80080000
_0803A2B8:
	ldr r0, [r7]
	lsl r1, r0, #16
	lsr r0, r1, #16
	str r0, [r7]
_0803A2C0:
	ldr r0, _0803A2E4  @ =gUnknown_03006C80
	ldr r2, [r7]
	add r1, r2, #0
	ldrh r2, [r0, #38]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #38]
	ldr r0, [r7]
	bl sub_0800D24C
_0803A2DA:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803A2E4:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0803A20C

	THUMB_FUNC_START sub_0803A2E8
sub_0803A2E8: @ 0x0803A2E8
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	mov r0, #0
	str r0, [r7]
	ldr r1, _0803A314  @ =gUnknown_0201F020
	ldr r2, _0803A318  @ =0x05002C01
	add r0, r7, #0
	bl CpuSet
	mov r0, #0
	str r0, [r7, #4]
	add r0, r7, #4
	ldr r1, _0803A31C  @ =gUnknown_0200B320
	ldr r2, _0803A318  @ =0x05002C01
	bl CpuSet
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803A314:
	.4byte gUnknown_0201F020
_0803A318:
	.4byte 0x05002C01
_0803A31C:
	.4byte gUnknown_0200B320
	THUMB_FUNC_END sub_0803A2E8

	THUMB_FUNC_START sub_0803A320
sub_0803A320: @ 0x0803A320
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	ldr r0, _0803A45C  @ =gUnknown_03005060
	ldrb r1, [r0, #12]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #12]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	add r0, r0, #156
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	mov r1, #150
	lsl r1, r1, #1
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	mov r1, #222
	lsl r1, r1, #1
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	mov r1, #147
	lsl r1, r1, #2
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	mov r1, #183
	lsl r1, r1, #2
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	mov r1, #219
	lsl r1, r1, #2
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	mov r1, #255
	lsl r1, r1, #2
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	ldr r1, _0803A460  @ =0x0000048C
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	ldr r1, _0803A464  @ =0x0000051C
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	ldr r1, _0803A468  @ =0x000005AC
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	ldr r1, _0803A46C  @ =0x0000063C
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	ldr r1, _0803A470  @ =0x000006CC
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	ldr r1, _0803A474  @ =0x0000075C
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	ldr r1, _0803A478  @ =0x000007EC
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803A45C  @ =gUnknown_03005060
	add r1, r0, #0
	ldr r1, _0803A47C  @ =0x0000087C
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, _0803A480  @ =gUnknown_03006C80
	ldrb r0, [r1]
	cmp r0, #3
	beq _0803A4AC
	cmp r0, #3
	bgt _0803A484
	cmp r0, #2
	beq _0803A48A
	b _0803A53C
_0803A45C:
	.4byte gUnknown_03005060
_0803A460:
	.4byte 0x0000048C
_0803A464:
	.4byte 0x0000051C
_0803A468:
	.4byte 0x000005AC
_0803A46C:
	.4byte 0x0000063C
_0803A470:
	.4byte 0x000006CC
_0803A474:
	.4byte 0x0000075C
_0803A478:
	.4byte 0x000007EC
_0803A47C:
	.4byte 0x0000087C
_0803A480:
	.4byte gUnknown_03006C80
_0803A484:
	cmp r0, #4
	beq _0803A4E8
	b _0803A53C
_0803A48A:
	ldr r0, _0803A4A8  @ =gUnknown_03005060
	ldr r1, [r0, #8]
	str r1, [r7]
	ldr r0, _0803A4A8  @ =gUnknown_03005060
	ldr r2, _0803A4A8  @ =gUnknown_03005060
	add r1, r2, #0
	add r2, r2, #152
	ldr r1, [r2]
	str r1, [r0, #8]
	ldr r1, _0803A4A8  @ =gUnknown_03005060
	add r0, r1, #0
	add r1, r1, #152
	ldr r0, [r7]
	str r0, [r1]
	b _0803A53C
_0803A4A8:
	.4byte gUnknown_03005060
_0803A4AC:
	ldr r0, _0803A4E4  @ =gUnknown_03005060
	ldr r1, [r0, #8]
	str r1, [r7]
	ldr r0, _0803A4E4  @ =gUnknown_03005060
	ldr r2, _0803A4E4  @ =gUnknown_03005060
	add r1, r2, #0
	add r2, r2, #152
	ldr r1, [r2]
	str r1, [r0, #8]
	ldr r0, _0803A4E4  @ =gUnknown_03005060
	add r1, r0, #0
	add r0, r0, #152
	ldr r2, _0803A4E4  @ =gUnknown_03005060
	add r1, r2, #0
	mov r1, #148
	lsl r1, r1, #1
	add r2, r2, r1
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, _0803A4E4  @ =gUnknown_03005060
	add r0, r1, #0
	mov r0, #148
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, [r7]
	str r0, [r1]
	b _0803A53C
	.byte 0x00
	.byte 0x00
_0803A4E4:
	.4byte gUnknown_03005060
_0803A4E8:
	ldr r0, _0803A538  @ =gUnknown_03005060
	ldr r1, [r0, #8]
	str r1, [r7]
	ldr r0, _0803A538  @ =gUnknown_03005060
	ldr r2, _0803A538  @ =gUnknown_03005060
	add r1, r2, #0
	add r2, r2, #152
	ldr r1, [r2]
	str r1, [r0, #8]
	ldr r0, _0803A538  @ =gUnknown_03005060
	add r1, r0, #0
	add r0, r0, #152
	ldr r2, _0803A538  @ =gUnknown_03005060
	add r1, r2, #0
	mov r1, #148
	lsl r1, r1, #1
	add r2, r2, r1
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _0803A538  @ =gUnknown_03005060
	add r1, r0, #0
	mov r1, #148
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r2, _0803A538  @ =gUnknown_03005060
	add r1, r2, #0
	mov r1, #220
	lsl r1, r1, #1
	add r2, r2, r1
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, _0803A538  @ =gUnknown_03005060
	add r0, r1, #0
	mov r0, #220
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, [r7]
	str r0, [r1]
	b _0803A53C
	.byte 0x00
	.byte 0x00
_0803A538:
	.4byte gUnknown_03005060
_0803A53C:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803A320

	THUMB_FUNC_START sub_0803A544
sub_0803A544: @ 0x0803A544
	push {r7,lr}
	mov r7, sp
	ldr r0, _0803A5D0  @ =gUnknown_03005060
	mov r1, #144
	lsl r1, r1, #4
	bl sub_0800B850
	ldr r0, _0803A5D4  @ =gUnknown_02016D50
	ldr r1, _0803A5D0  @ =gUnknown_03005060
	str r1, [r0]
	ldr r0, _0803A5D0  @ =gUnknown_03005060
	ldr r1, _0803A5D0  @ =gUnknown_03005060
	str r1, [r0]
	ldr r0, _0803A5D0  @ =gUnknown_03005060
	ldr r1, _0803A5D0  @ =gUnknown_03005060
	str r1, [r0, #4]
	ldr r0, _0803A5D0  @ =gUnknown_03005060
	ldr r1, _0803A5D8  @ =gUnknown_03006A30
	ldr r2, [r1, #40]
	str r2, [r0, #8]
	ldr r1, _0803A5D8  @ =gUnknown_03006A30
	add r0, r1, #0
	add r1, r1, #184
	ldr r0, [r1]
	cmp r0, #0
	beq _0803A5CA
	ldr r1, _0803A5D8  @ =gUnknown_03006A30
	add r0, r1, #0
	add r1, r1, #184
	ldr r2, [r1]
	add r0, r2, #0
	bl 0x080005F0
	ldr r1, _0803A5D8  @ =gUnknown_03006A30
	add r0, r1, #0
	mov r0, #164
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0803A5CA
	ldr r1, _0803A5D8  @ =gUnknown_03006A30
	add r0, r1, #0
	mov r0, #164
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r2, [r1]
	add r0, r2, #0
	bl 0x080005F0
	ldr r1, _0803A5D8  @ =gUnknown_03006A30
	add r0, r1, #0
	mov r0, #236
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0803A5CA
	ldr r1, _0803A5D8  @ =gUnknown_03006A30
	add r0, r1, #0
	mov r0, #236
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r2, [r1]
	add r0, r2, #0
	bl 0x080005F0
_0803A5CA:
	pop {r7}
	pop {r0}
	bx r0
_0803A5D0:
	.4byte gUnknown_03005060
_0803A5D4:
	.4byte gUnknown_02016D50
_0803A5D8:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_0803A544

	THUMB_FUNC_START sub_0803A5DC
sub_0803A5DC: @ 0x0803A5DC
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7]
	ldrb r1, [r0, #8]
	cmp r1, #1
	bne _0803A64C
	add r0, r7, #0
	add r0, r0, #10
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #68
	ldrb r1, [r2]
	ldr r2, _0803A648  @ =gUnknown_03006A30
	ldr r4, [r7]
	ldrb r3, [r4, #10]
	add r5, r3, #0
	lsl r4, r5, #3
	add r4, r4, r3
	lsl r3, r4, #4
	add r4, r2, r3
	add r2, r4, #0
	add r3, r4, #0
	add r3, r3, #62
	ldrb r2, [r3]
	lsl r3, r2, #28
	lsr r2, r3, #30
	lsl r3, r2, #24
	lsr r2, r3, #24
	sub r1, r1, r2
	cmp r1, #1
	bge _0803A622
	mov r1, #1
_0803A622:
	strb r1, [r0]
	add r4, r7, #0
	add r4, r4, #8
	add r0, r7, #0
	add r0, r0, #10
	mov r1, #0
	ldrsb r1, [r0, r1]
	neg r2, r1
	ldr r0, [r7]
	add r1, r2, #0
	bl sub_0802C3F0
	add r1, r0, #0
	strh r1, [r4]
	ldr r0, [r7]
	mov r1, #195
	bl 0x08003E10
	b _0803A690
_0803A648:
	.4byte gUnknown_03006A30
_0803A64C:
	add r0, r7, #0
	add r0, r0, #8
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #69
	ldrb r3, [r2]
	add r1, r3, #0
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #68
	ldrb r4, [r3]
	add r2, r4, #0
	sub r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #8]
	cmp r1, #3
	bne _0803A690
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #106
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803A688
	ldr r0, [r7]
	mov r1, #45
	bl 0x08003E10
	b _0803A690
_0803A688:
	ldr r0, [r7]
	mov r1, #4
	bl 0x08003E10
_0803A690:
	add r0, r7, #0
	add r0, r0, #8
	mov r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bgt _0803A6C2
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	mov r0, #0
	b _0803A6D2
_0803A6C2:
	add r0, r7, #0
	add r0, r0, #8
	ldrh r1, [r0]
	add r0, r1, #0
	lsl r2, r0, #24
	lsr r1, r2, #24
	add r0, r1, #0
	b _0803A6D2
_0803A6D2:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803A5DC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803A6DC
sub_0803A6DC: @ 0x0803A6DC
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7]
	ldrb r1, [r0, #8]
	cmp r1, #8
	bne _0803A73C
	ldr r0, [r7]
	ldrb r1, [r0, #9]
	cmp r1, #9
	bne _0803A73C
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #61
	mov r3, #0
	ldrsb r3, [r2, r3]
	asr r1, r3, #1
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #66
	mov r3, #0
	ldrsb r3, [r2, r3]
	asr r1, r3, #1
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _0803A780
_0803A73C:
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #61
	mov r3, #0
	ldrsb r3, [r2, r3]
	asr r1, r3, #1
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #66
	mov r3, #0
	ldrsb r3, [r2, r3]
	asr r1, r3, #1
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_0803A780:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803A6DC

	THUMB_FUNC_START sub_0803A788
sub_0803A788: @ 0x0803A788
	push {r4,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	mov r0, #15
	mov r1, #16
	mov r2, #0
	bl sub_0804C8A8
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0803A830
	ldr r0, [r7, #8]
	ldr r2, [r7]
	mov r3, #50
	ldrsh r1, [r2, r3]
	ldr r2, [r7, #4]
	mov r4, #50
	ldrsh r3, [r2, r4]
	add r2, r1, r3
	asr r1, r2, #1
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7, #8]
	ldr r2, [r7]
	mov r3, #54
	ldrsh r1, [r2, r3]
	ldr r2, [r7, #4]
	mov r4, #54
	ldrsh r3, [r2, r4]
	add r2, r1, r3
	asr r1, r2, #1
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r0, [r7, #8]
	ldr r2, [r7]
	mov r3, #58
	ldrsh r1, [r2, r3]
	ldr r2, [r7, #4]
	mov r4, #58
	ldrsh r3, [r2, r4]
	add r2, r1, r3
	asr r1, r2, #1
	ldrh r2, [r0, #58]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #58]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7, #8]
	add r0, r1, #0
	bl 0x08008DD8
_0803A830:
	add sp, sp, #12
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803A788

	THUMB_FUNC_START sub_0803A838
sub_0803A838: @ 0x0803A838
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	mov r0, #0
	b _0803A84E
_0803A84E:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803A838

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803A858
sub_0803A858: @ 0x0803A858
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A6DC
	mov r0, #1
	b _0803A876
_0803A876:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803A858

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803A880
sub_0803A880: @ 0x0803A880
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A5DC
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803A8F8
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803A906
_0803A8F8:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803A906:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803A934
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803A934:
	mov r0, #1
	b _0803A938
_0803A938:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803A880

	THUMB_FUNC_START sub_0803A940
sub_0803A940: @ 0x0803A940
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r1, [r7, #4]
	add r0, r1, #0
	ldr r1, [r7]
	bl sub_0803A5DC
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803A9BA
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803A9C8
_0803A9BA:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803A9C8:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803A9F6
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803A9F6:
	mov r0, #1
	b _0803A9FA
_0803A9FA:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803A940

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803AA04
sub_0803AA04: @ 0x0803AA04
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A5DC
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803AA7C
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803AA8A
_0803AA7C:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803AA8A:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	ldr r1, [r7]
	bl sub_0803A5DC
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803AB04
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803AB12
_0803AB04:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803AB12:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #1
	b _0803AB28
_0803AB28:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803AA04

	THUMB_FUNC_START sub_0803AB30
sub_0803AB30: @ 0x0803AB30
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803AB9A
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803AB90
	add r2, r2, #3
_0803AB90:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803ABBC
_0803AB9A:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803ABB6
	add r3, r3, #3
_0803ABB6:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803ABBC:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803ABEA
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803ABEA:
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A6DC
	mov r0, #1
	b _0803ABF6
_0803ABF6:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803AB30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803AC00
sub_0803AC00: @ 0x0803AC00
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803AC6A
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803AC60
	add r2, r2, #3
_0803AC60:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803AC8C
_0803AC6A:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803AC86
	add r3, r3, #3
_0803AC86:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803AC8C:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803ACBA
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803ACBA:
	mov r0, #1
	b _0803ACBE
_0803ACBE:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803AC00

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803ACC8
sub_0803ACC8: @ 0x0803ACC8
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803AD32
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803AD28
	add r2, r2, #3
_0803AD28:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803AD54
_0803AD32:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803AD4E
	add r3, r3, #3
_0803AD4E:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803AD54:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803ADBE
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803ADB4
	add r2, r2, #3
_0803ADB4:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803ADE0
_0803ADBE:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803ADDA
	add r3, r3, #3
_0803ADDA:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803ADE0:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #1
	b _0803ADF6
_0803ADF6:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803ACC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803AE00
sub_0803AE00: @ 0x0803AE00
	push {r4,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	ldrb r1, [r0, #8]
	cmp r1, #6
	bne _0803AE68
	ldr r0, [r7]
	ldrb r1, [r0, #9]
	cmp r1, #0
	bne _0803AE68
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, _0803AE64  @ =gUnknown_03006A30
	ldr r2, [r7, #4]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	ldr r0, [r7]
	add r1, r2, #0
	bl sub_0804C448
	b _0803AEA4
	.byte 0x00
	.byte 0x00
_0803AE64:
	.4byte gUnknown_03006A30
_0803AE68:
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, _0803AEA8  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r1, [r2]
	bl sub_0804C448
_0803AEA4:
	mov r0, #2
	b _0803AEAC
_0803AEA8:
	.4byte gUnknown_03006A30
_0803AEAC:
	add sp, sp, #12
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803AE00

	THUMB_FUNC_START sub_0803AEB4
sub_0803AEB4: @ 0x0803AEB4
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803AF00
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803AEF6
	add r2, r2, #3
_0803AEF6:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803AF22
_0803AF00:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803AF1C
	add r3, r3, #3
_0803AF1C:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803AF22:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803AF6E
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803AF64
	add r2, r2, #3
_0803AF64:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803AF90
_0803AF6E:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803AF8A
	add r3, r3, #3
_0803AF8A:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803AF90:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A788
	mov r0, #1
	b _0803AFAE
_0803AFAE:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803AEB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803AFB8
sub_0803AFB8: @ 0x0803AFB8
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B022
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803B018
	add r2, r2, #3
_0803B018:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803B044
_0803B022:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803B03E
	add r3, r3, #3
_0803B03E:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803B044:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B090
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803B086
	add r2, r2, #3
_0803B086:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803B0B2
_0803B090:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803B0AC
	add r3, r3, #3
_0803B0AC:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803B0B2:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A788
	mov r0, #1
	b _0803B0D0
_0803B0D0:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803AFB8

	THUMB_FUNC_START sub_0803B0D8
sub_0803B0D8: @ 0x0803B0D8
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B142
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803B138
	add r2, r2, #3
_0803B138:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803B164
_0803B142:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803B15E
	add r3, r3, #3
_0803B15E:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803B164:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B1B0
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803B1A6
	add r2, r2, #3
_0803B1A6:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803B1D2
_0803B1B0:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803B1CC
	add r3, r3, #3
_0803B1CC:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803B1D2:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A788
	mov r0, #1
	b _0803B1F0
_0803B1F0:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B0D8

	THUMB_FUNC_START sub_0803B1F8
sub_0803B1F8: @ 0x0803B1F8
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B262
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803B258
	add r2, r2, #3
_0803B258:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803B284
_0803B262:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803B27E
	add r3, r3, #3
_0803B27E:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803B284:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B2EE
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803B2E4
	add r2, r2, #3
_0803B2E4:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803B310
_0803B2EE:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803B30A
	add r3, r3, #3
_0803B30A:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803B310:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A788
	mov r0, #1
	b _0803B32E
_0803B32E:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B1F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803B338
sub_0803B338: @ 0x0803B338
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl 0x08003C84
	mov r0, #0
	b _0803B356
_0803B356:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B338

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803B360
sub_0803B360: @ 0x0803B360
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #21]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #21]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #244
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803B3B2
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803B3B2:
	mov r0, #1
	b _0803B3B6
_0803B3B6:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B360

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803B3C0
sub_0803B3C0: @ 0x0803B3C0
	push {r4,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	bl 0x08003FB0
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _0803B3E2
	b _0803B544
_0803B3E2:
	ldr r0, _0803B540  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #54]
	mov r2, #129
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _0803B406
	b _0803B544
_0803B406:
	ldr r0, _0803B540  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803B540  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #26]
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	ldrb r2, [r0, #26]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #26]
	ldr r0, _0803B540  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803B540  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #10]
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	ldrb r2, [r0, #10]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #10]
	ldr r0, _0803B540  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803B540  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrh r2, [r1, #54]
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r0, _0803B540  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #2]
	ldr r1, [r7, #4]
	add r0, r1, #0
	ldr r1, [r7]
	mov r2, #0
	mov r3, #1
	bl sub_0803D4A4
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #248
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #1
	b _0803B548
	.byte 0x00
	.byte 0x00
_0803B540:
	.4byte gUnknown_03006A30
_0803B544:
	mov r0, #0
	b _0803B548
_0803B548:
	add sp, sp, #12
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B3C0

	THUMB_FUNC_START sub_0803B550
sub_0803B550: @ 0x0803B550
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, _0803B5A8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #30]
	mov r2, #96
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803B5AC
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _0803B638
_0803B5A8:
	.4byte gUnknown_03006A30
_0803B5AC:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B604
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803B5FA
	add r2, r2, #3
_0803B5FA:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803B626
_0803B604:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803B620
	add r3, r3, #3
_0803B620:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803B626:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_0803B638:
	mov r0, #1
	b _0803B63C
_0803B63C:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B550

	THUMB_FUNC_START sub_0803B644
sub_0803B644: @ 0x0803B644
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r1, [r7, #4]
	add r0, r1, #0
	ldr r1, [r7]
	bl sub_0803A5DC
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B6DC
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803B6EA
_0803B6DC:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803B6EA:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #67
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803B730
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803B730:
	mov r0, #1
	b _0803B734
_0803B734:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B644

	THUMB_FUNC_START sub_0803B73C
sub_0803B73C: @ 0x0803B73C
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803B826
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803B826
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B7A6
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	b _0803B7B2
_0803B7A6:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	neg r3, r2
	add r1, r3, #0
_0803B7B2:
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B804
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	b _0803B810
_0803B804:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	neg r3, r2
	add r1, r3, #0
_0803B810:
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #1
	b _0803B82A
_0803B826:
	mov r0, #0
	b _0803B82A
_0803B82A:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B73C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803B834
sub_0803B834: @ 0x0803B834
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A5DC
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B88E
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803B89C
_0803B88E:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803B89C:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803B8CA
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803B8CA:
	mov r0, #1
	b _0803B8CE
_0803B8CE:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B834

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803B8D8
sub_0803B8D8: @ 0x0803B8D8
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r1, [r7, #4]
	add r0, r1, #0
	ldr r1, [r7]
	bl sub_0803A5DC
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B934
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803B942
_0803B934:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803B942:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	cmp r1, #3
	bne _0803B974
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #66
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_0803B974:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803B990
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803B990:
	mov r0, #1
	b _0803B994
_0803B994:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B8D8

	THUMB_FUNC_START sub_0803B99C
sub_0803B99C: @ 0x0803B99C
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A5DC
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803B9F6
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803BA04
_0803B9F6:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803BA04:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	ldr r1, [r7]
	bl sub_0803A5DC
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803BA60
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803BA6E
_0803BA60:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803BA6E:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	cmp r1, #3
	bne _0803BAA0
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #66
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_0803BAA0:
	mov r0, #1
	b _0803BAA4
_0803BAA4:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803B99C

	THUMB_FUNC_START sub_0803BAAC
sub_0803BAAC: @ 0x0803BAAC
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #69
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803BB0C
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803BB0C:
	mov r0, #1
	b _0803BB10
_0803BB10:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803BAAC

	THUMB_FUNC_START sub_0803BB18
sub_0803BB18: @ 0x0803BB18
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #69
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803BB78
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803BB78:
	mov r0, #1
	b _0803BB7C
_0803BB7C:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803BB18

	THUMB_FUNC_START sub_0803BB84
sub_0803BB84: @ 0x0803BB84
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #67
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803BBE2
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803BBE2:
	mov r0, #1
	b _0803BBE6
_0803BBE6:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803BB84

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803BBF0
sub_0803BBF0: @ 0x0803BBF0
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #69
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803BC50
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803BC50:
	mov r0, #1
	b _0803BC54
_0803BC54:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803BBF0

	THUMB_FUNC_START sub_0803BC5C
sub_0803BC5C: @ 0x0803BC5C
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803BCC6
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803BCBC
	add r2, r2, #3
_0803BCBC:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803BCE8
_0803BCC6:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803BCE2
	add r3, r3, #3
_0803BCE2:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803BCE8:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803BD6C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803BD44
	ldr r0, _0803BD6C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_0803BD44:
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803BD60
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803BD60:
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A6DC
	mov r0, #1
	b _0803BD70
_0803BD6C:
	.4byte gUnknown_03006A30
_0803BD70:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803BC5C

	THUMB_FUNC_START sub_0803BD78
sub_0803BD78: @ 0x0803BD78
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803BDE2
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803BDD8
	add r2, r2, #3
_0803BDD8:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803BE04
_0803BDE2:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803BDFE
	add r3, r3, #3
_0803BDFE:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803BE04:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803BE80  @ =gUnknown_03006A30
	ldr r2, [r7, #4]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803BE60
	ldr r0, _0803BE80  @ =gUnknown_03006A30
	ldr r2, [r7, #4]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_0803BE60:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803BE7C
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803BE7C:
	mov r0, #1
	b _0803BE84
_0803BE80:
	.4byte gUnknown_03006A30
_0803BE84:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803BD78

	THUMB_FUNC_START sub_0803BE8C
sub_0803BE8C: @ 0x0803BE8C
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803BEF6
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803BEEC
	add r2, r2, #3
_0803BEEC:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803BF18
_0803BEF6:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803BF12
	add r3, r3, #3
_0803BF12:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803BF18:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #8]
	cmp r1, #8
	bne _0803BF7C
	ldr r0, _0803BFD4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803BF7C
	ldr r0, _0803BFD4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_0803BF7C:
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803BFD8
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803BFCA
	add r2, r2, #3
_0803BFCA:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803BFFA
_0803BFD4:
	.4byte gUnknown_03006A30
_0803BFD8:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803BFF4
	add r3, r3, #3
_0803BFF4:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803BFFA:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	cmp r1, #8
	bne _0803C05E
	ldr r0, _0803C064  @ =gUnknown_03006A30
	ldr r2, [r7, #4]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C05E
	ldr r0, _0803C064  @ =gUnknown_03006A30
	ldr r2, [r7, #4]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_0803C05E:
	mov r0, #1
	b _0803C068
	.byte 0x00
	.byte 0x00
_0803C064:
	.4byte gUnknown_03006A30
_0803C068:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803BE8C

	THUMB_FUNC_START sub_0803C070
sub_0803C070: @ 0x0803C070
	push {r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, _0803C158  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #54]
	mov r2, #160
	lsl r2, r2, #5
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _0803C10C
	mov r0, #85
	mov r1, #1
	mov r2, #0
	bl sub_0804C8A8
	str r0, [r7, #12]
	ldr r0, [r7, #12]
	cmp r0, #0
	beq _0803C10C
	ldr r0, [r7, #12]
	ldr r1, [r7]
	str r1, [r0, #88]
	ldr r0, _0803C158  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #54]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	lsl r3, r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #54]
	ldr r0, [r7]
	add r1, r7, #0
	add r1, r1, #8
	ldrb r2, [r1]
	mov r3, #16
	add r1, r2, #0
	eor r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #24
	lsr r2, r1, #24
	lsr r1, r2, #2
	add r2, r0, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_0803C10C:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C15C
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803C16A
	.byte 0x00
	.byte 0x00
_0803C158:
	.4byte gUnknown_03006A30
_0803C15C:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803C16A:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C198
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803C198:
	mov r0, #1
	b _0803C19C
_0803C19C:
	add sp, sp, #16
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803C070

	THUMB_FUNC_START sub_0803C1A4
sub_0803C1A4: @ 0x0803C1A4
	push {r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, _0803C2A0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #54]
	mov r2, #196
	lsl r2, r2, #5
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _0803C254
	mov r0, #85
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	str r0, [r7, #12]
	ldr r0, [r7, #12]
	cmp r0, #0
	beq _0803C254
	ldr r0, [r7, #12]
	ldr r1, [r7]
	str r1, [r0, #88]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A5DC
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, _0803C2A0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #54]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	lsl r3, r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #54]
	ldr r0, _0803C2A0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #12]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #13
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #12]
_0803C254:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C2A4
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803C2B2
	.byte 0x00
	.byte 0x00
_0803C2A0:
	.4byte gUnknown_03006A30
_0803C2A4:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803C2B2:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C2E0
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803C2E0:
	mov r0, #1
	b _0803C2E4
_0803C2E4:
	add sp, sp, #16
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803C1A4

	THUMB_FUNC_START sub_0803C2EC
sub_0803C2EC: @ 0x0803C2EC
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	add r0, r7, #0
	add r0, r0, #8
	add r1, r7, #0
	add r1, r1, #8
	ldrb r2, [r1]
	mov r3, #16
	add r1, r2, #0
	eor r1, r1, r3
	add r2, r1, #0
	add r1, r2, #0
	sub r1, r1, #12
	add r2, r1, #0
	mov r3, #31
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	add r1, r7, #0
	add r1, r1, #8
	ldrb r2, [r1]
	sub r0, r0, r2
	mov r1, #31
	and r0, r0, r1
	cmp r0, #24
	ble _0803C33A
	b _0803C45C
_0803C33A:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C392
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803C388
	add r2, r2, #3
_0803C388:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803C3B4
_0803C392:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803C3AE
	add r3, r3, #3
_0803C3AE:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803C3B4:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C41E
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803C414
	add r2, r2, #3
_0803C414:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803C440
_0803C41E:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803C43A
	add r3, r3, #3
_0803C43A:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803C440:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A788
	b _0803C500
_0803C45C:
	ldr r1, [r7, #4]
	add r0, r1, #0
	ldr r1, [r7]
	bl sub_0803A5DC
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C4C4
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803C4D2
_0803C4C4:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803C4D2:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C500
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803C500:
	mov r0, #1
	b _0803C504
_0803C504:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803C2EC

	THUMB_FUNC_START sub_0803C50C
sub_0803C50C: @ 0x0803C50C
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	add r0, r7, #0
	add r0, r0, #8
	add r1, r7, #0
	add r1, r1, #8
	ldrb r2, [r1]
	mov r3, #16
	add r1, r2, #0
	eor r1, r1, r3
	add r2, r1, #0
	add r1, r2, #0
	sub r1, r1, #12
	add r2, r1, #0
	mov r3, #31
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	add r1, r7, #0
	add r1, r1, #8
	ldrb r2, [r1]
	sub r0, r0, r2
	mov r1, #31
	and r0, r0, r1
	cmp r0, #24
	ble _0803C55A
	b _0803C640
_0803C55A:
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C594
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803C58A
	add r2, r2, #3
_0803C58A:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803C5B6
_0803C594:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803C5B0
	add r3, r3, #3
_0803C5B0:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803C5B6:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C602
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803C5F8
	add r2, r2, #3
_0803C5F8:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803C624
_0803C602:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803C61E
	add r3, r3, #3
_0803C61E:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803C624:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A788
	b _0803C71E
_0803C640:
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C6B6
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803C6AC
	add r2, r2, #3
_0803C6AC:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803C6D8
_0803C6B6:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803C6D2
	add r3, r3, #3
_0803C6D2:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803C6D8:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #67
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C71E
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803C71E:
	mov r0, #1
	b _0803C722
_0803C722:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803C50C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803C72C
sub_0803C72C: @ 0x0803C72C
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, _0803C7C4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #26]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #26]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #114
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #150
	lsl r3, r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C7C8
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803C7D6
_0803C7C4:
	.4byte gUnknown_03006A30
_0803C7C8:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803C7D6:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C804
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803C804:
	mov r0, #1
	b _0803C808
_0803C808:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803C72C

	THUMB_FUNC_START sub_0803C810
sub_0803C810: @ 0x0803C810
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	add r0, r7, #0
	add r0, r0, #8
	add r1, r7, #0
	add r1, r1, #8
	ldrb r2, [r1]
	mov r3, #16
	add r1, r2, #0
	eor r1, r1, r3
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	add r2, r1, #4
	mov r3, #24
	add r1, r2, #0
	and r1, r1, r3
	asr r2, r1, #3
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, _0803C89C  @ =gUnknown_0813E3F4
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	add r0, r0, r1
	add r1, r7, #0
	add r1, r1, #8
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0803C860
	b _0803C94C
_0803C860:
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C8A0
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803C890
	add r2, r2, #3
_0803C890:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803C8C2
	.byte 0x00
	.byte 0x00
_0803C89C:
	.4byte gUnknown_0813E3F4
_0803C8A0:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803C8BC
	add r3, r3, #3
_0803C8BC:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803C8C2:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C90E
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803C904
	add r2, r2, #3
_0803C904:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803C930
_0803C90E:
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803C92A
	add r3, r3, #3
_0803C92A:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803C930:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A788
	b _0803C9F0
_0803C94C:
	ldr r1, [r7, #4]
	add r0, r1, #0
	ldr r1, [r7]
	bl sub_0803A5DC
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803C9B4
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803C9C2
_0803C9B4:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803C9C2:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C9F0
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803C9F0:
	mov r0, #1
	b _0803C9F4
_0803C9F4:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803C810

	THUMB_FUNC_START sub_0803C9FC
sub_0803C9FC: @ 0x0803C9FC
	push {r4,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, _0803CA80  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #64
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #65
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, _0803CA80  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803CA84
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _0803CA92
_0803CA80:
	.4byte gUnknown_03006A30
_0803CA84:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_0803CA92:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803CB70  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, _0803CB70  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r7, #0
	add r1, r1, #8
	ldrb r2, [r1]
	mov r3, #16
	add r1, r2, #0
	eor r1, r1, r3
	add r2, r0, #0
	add r0, r0, #62
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, _0803CB70  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, [r7, #4]
	bl sub_0803A5DC
	ldr r1, _0803CB70  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r1, [r2]
	add r2, r1, #0
	add r1, r1, #69
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7]
	bl 0x080023C8
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803CB6A
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803CB6A:
	mov r0, #1
	b _0803CB74
	.byte 0x00
	.byte 0x00
_0803CB70:
	.4byte gUnknown_03006A30
_0803CB74:
	add sp, sp, #12
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803C9FC

	THUMB_FUNC_START sub_0803CB7C
sub_0803CB7C: @ 0x0803CB7C
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #70
	ldrb r1, [r2]
	mov r2, #128
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	cmp r1, #0
	beq _0803CBC8
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #70
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	cmp r2, #0
	bge _0803CBBE
	add r2, r2, #3
_0803CBBE:
	asr r2, r2, #2
	ldrb r1, [r1]
	add r3, r1, r2
	add r1, r3, #0
	b _0803CBEA
_0803CBC8:
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #70
	ldrb r4, [r3]
	neg r2, r4
	ldr r4, [r7, #4]
	add r3, r4, #0
	add r4, r4, #70
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r3, r5, #0
	cmp r3, #0
	bge _0803CBE4
	add r3, r3, #3
_0803CBE4:
	asr r3, r3, #2
	sub r2, r2, r3
	add r1, r2, #0
_0803CBEA:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803A788
	mov r0, #1
	b _0803CC18
_0803CC18:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803CB7C

	THUMB_FUNC_START sub_0803CC20
sub_0803CC20: @ 0x0803CC20
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803CC40
	b _0803CC90
_0803CC40:
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, _0803CC98  @ =gUnknown_0813E4CC
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #43
	ldrb r3, [r4]
	lsl r4, r3, #3
	add r3, r4, #0
	lsl r4, r3, #1
	add r3, r2, r4
	mov r4, #0
	ldrsh r2, [r3, r4]
	ldr r3, [r7]
	ldr r4, [r3, #12]
	mul r2, r4, r2
	ldr r1, [r1, #48]
	add r2, r1, r2
	str r2, [r0, #48]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, _0803CC98  @ =gUnknown_0813E4CC
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #43
	ldrb r3, [r4]
	lsl r4, r3, #3
	add r3, r4, #0
	add r3, r3, #64
	add r4, r3, #0
	lsl r3, r4, #1
	add r4, r2, r3
	mov r3, #0
	ldrsh r2, [r4, r3]
	ldr r3, [r7]
	ldr r4, [r3, #12]
	mul r2, r4, r2
	ldr r1, [r1, #52]
	sub r2, r1, r2
	str r2, [r0, #52]
_0803CC90:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
_0803CC98:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_0803CC20

	THUMB_FUNC_START sub_0803CC9C
sub_0803CC9C: @ 0x0803CC9C
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	add r0, r7, #4
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r3, [r2, #72]
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	ldrh r1, [r1, #50]
	add r2, r2, r1
	ldr r1, _0803CCF4  @ =gUnknown_03000450
	ldrh r1, [r1, #24]
	sub r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	add r0, r7, #6
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r3, [r2, #72]
	mov r4, #1
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	ldrh r1, [r1, #54]
	add r2, r2, r1
	ldr r1, _0803CCF4  @ =gUnknown_03000450
	ldrh r1, [r1, #26]
	sub r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #2
	beq _0803CD2E
	cmp r0, #2
	bgt _0803CCF8
	cmp r0, #0
	beq _0803CD02
	b _0803CD5A
	.byte 0x00
	.byte 0x00
_0803CCF4:
	.4byte gUnknown_03000450
_0803CCF8:
	cmp r0, #4
	beq _0803CD18
	cmp r0, #6
	beq _0803CD44
	b _0803CD5A
_0803CD02:
	add r0, r7, #6
	add r1, r7, #6
	ldr r2, [r7]
	ldr r3, [r2, #72]
	ldrb r4, [r3, #5]
	add r2, r4, #0
	ldrh r1, [r1]
	sub r2, r1, r2
	add r1, r2, #0
	strh r1, [r0]
	b _0803CD5A
_0803CD18:
	add r0, r7, #6
	add r1, r7, #6
	ldr r2, [r7]
	ldr r3, [r2, #72]
	ldrb r4, [r3, #5]
	add r2, r4, #0
	ldrh r1, [r1]
	add r2, r1, r2
	add r1, r2, #0
	strh r1, [r0]
	b _0803CD5A
_0803CD2E:
	add r0, r7, #4
	add r1, r7, #4
	ldr r2, [r7]
	ldr r3, [r2, #72]
	ldrb r4, [r3, #2]
	add r2, r4, #0
	ldrh r1, [r1]
	add r2, r1, r2
	add r1, r2, #0
	strh r1, [r0]
	b _0803CD5A
_0803CD44:
	add r0, r7, #4
	add r1, r7, #4
	ldr r2, [r7]
	ldr r3, [r2, #72]
	ldrb r4, [r3, #2]
	add r2, r4, #0
	ldrh r1, [r1]
	sub r2, r1, r2
	add r1, r2, #0
	strh r1, [r0]
	b _0803CD5A
_0803CD5A:
	add r0, r7, #4
	ldrh r1, [r0]
	lsr r0, r1, #4
	add r1, r0, #0
	mov r2, #63
	add r0, r1, #0
	and r0, r0, r2
	add r1, r7, #6
	ldrh r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r1, r2, #0
	mov r2, #252
	lsl r2, r2, #4
	and r1, r1, r2
	add r0, r0, r1
	add r1, r0, #0
	lsl r0, r1, #16
	lsr r1, r0, #16
	add r0, r1, #0
	b _0803CD84
_0803CD84:
	add sp, sp, #8
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803CC9C

	THUMB_FUNC_START sub_0803CD8C
sub_0803CD8C: @ 0x0803CD8C
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	add r0, r7, #4
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r3, [r2, #72]
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	ldrh r1, [r1, #50]
	add r2, r2, r1
	ldr r1, _0803CDF8  @ =gUnknown_03000450
	ldrh r1, [r1, #24]
	sub r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	add r0, r7, #6
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r3, [r2, #72]
	mov r4, #1
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	ldrh r1, [r1, #54]
	add r2, r2, r1
	ldr r1, _0803CDF8  @ =gUnknown_03000450
	ldrh r1, [r1, #26]
	sub r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	add r0, r7, #4
	ldrh r1, [r0]
	lsr r0, r1, #4
	add r1, r0, #0
	mov r2, #63
	add r0, r1, #0
	and r0, r0, r2
	add r1, r7, #6
	ldrh r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r1, r2, #0
	mov r2, #252
	lsl r2, r2, #4
	and r1, r1, r2
	add r0, r0, r1
	add r1, r0, #0
	lsl r0, r1, #16
	lsr r1, r0, #16
	add r0, r1, #0
	b _0803CDFC
	.byte 0x00
	.byte 0x00
_0803CDF8:
	.4byte gUnknown_03000450
_0803CDFC:
	add sp, sp, #8
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803CD8C

	THUMB_FUNC_START sub_0803CE04
sub_0803CE04: @ 0x0803CE04
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r4, _0803CE28  @ =gUnknown_0201F020
	ldr r0, [r7]
	bl sub_0803CC9C
	lsl r1, r0, #16
	lsr r0, r1, #16
	add r1, r4, #0
	ldr r1, _0803CE2C  @ =0x00002004
	add r2, r4, r1
	add r0, r2, r0
	ldrb r1, [r0]
	add r0, r1, #0
	b _0803CE30
	.byte 0x00
	.byte 0x00
_0803CE28:
	.4byte gUnknown_0201F020
_0803CE2C:
	.4byte 0x00002004
_0803CE30:
	add sp, sp, #4
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803CE04

	THUMB_FUNC_START sub_0803CE38
sub_0803CE38: @ 0x0803CE38
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r4, _0803CE5C  @ =gUnknown_0201F020
	ldr r0, [r7]
	bl sub_0803CC9C
	lsl r1, r0, #16
	lsr r0, r1, #16
	add r1, r0, #0
	lsl r0, r1, #1
	add r1, r4, #4
	add r0, r1, r0
	ldrh r1, [r0]
	add r0, r1, #0
	b _0803CE60
	.byte 0x00
	.byte 0x00
_0803CE5C:
	.4byte gUnknown_0201F020
_0803CE60:
	add sp, sp, #4
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803CE38

	THUMB_FUNC_START sub_0803CE68
sub_0803CE68: @ 0x0803CE68
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	add r2, r0, #0
	add r0, r1, #0
	add r1, r7, #0
	strh r2, [r1]
	add r1, r7, #2
	strh r0, [r1]
	add r0, r7, #4
	add r1, r7, #0
	ldrh r2, [r1]
	lsr r1, r2, #4
	add r2, r1, #0
	mov r3, #63
	add r1, r2, #0
	and r1, r1, r3
	add r2, r7, #2
	ldrh r3, [r2]
	mov r4, #252
	lsl r4, r4, #2
	add r2, r3, #0
	and r2, r2, r4
	add r4, r2, #0
	lsl r3, r4, #16
	lsr r2, r3, #16
	add r3, r2, #0
	lsl r2, r3, #2
	add r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _0803CEC0  @ =gUnknown_0201F020
	add r1, r7, #4
	ldrh r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #1
	add r0, r0, #4
	add r1, r0, r2
	ldrh r2, [r1]
	add r0, r2, #0
	lsl r2, r0, #24
	lsr r1, r2, #24
	add r0, r1, #0
	b _0803CEC4
_0803CEC0:
	.4byte gUnknown_0201F020
_0803CEC4:
	add sp, sp, #8
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803CE68

	THUMB_FUNC_START sub_0803CECC
sub_0803CECC: @ 0x0803CECC
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl 0x08003F4C
	lsl r2, r0, #24
	lsr r1, r2, #24
	add r0, r1, #0
	b _0803CEE6
_0803CEE6:
	add sp, sp, #8
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803CECC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803CEF0
sub_0803CEF0: @ 0x0803CEF0
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r1, r2, #0
	add r0, r3, #0
	add r2, r7, #0
	add r2, r2, #8
	strb r1, [r2]
	add r1, r7, #0
	add r1, r1, #9
	strb r0, [r1]
	ldr r1, [r7]
	mov r2, #50
	ldrsh r0, [r1, r2]
	ldr r2, [r7]
	mov r3, #54
	ldrsh r1, [r2, r3]
	ldr r2, [r7, #4]
	add r3, r7, #0
	add r3, r3, #8
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r3, r4, #0
	ldrh r2, [r2, #50]
	add r3, r3, r2
	add r2, r3, #0
	lsl r3, r2, #16
	asr r2, r3, #16
	ldr r3, [r7, #4]
	add r4, r7, #0
	add r4, r4, #9
	mov r5, #0
	ldrsb r5, [r4, r5]
	add r4, r5, #0
	ldrh r3, [r3, #54]
	add r4, r4, r3
	add r3, r4, #0
	lsl r4, r3, #16
	asr r3, r4, #16
	bl 0x08003F54
	lsl r2, r0, #24
	lsr r1, r2, #24
	add r0, r1, #0
	b _0803CF4E
_0803CF4E:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803CEF0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803CF58
sub_0803CF58: @ 0x0803CF58
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #80
	ldrh r0, [r1]
	mov r1, #128
	lsl r1, r1, #8
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _0803D004
	ldr r1, [r7]
	mov r2, #50
	ldrsh r0, [r1, r2]
	ldr r1, [r7]
	ldrh r2, [r1, #54]
	sub r1, r2, #4
	add r3, r1, #0
	lsl r2, r3, #16
	asr r1, r2, #16
	mov r2, #128
	lsl r2, r2, #8
	bl 0x08009310
	add r1, r7, #4
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803CFD8
	add r0, r7, #4
	ldrh r1, [r0]
	ldr r0, _0803CFD4  @ =0x000004A2
	cmp r1, r0
	beq _0803CFD8
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #128
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1, #31]
	ldrb r1, [r0, #29]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	mov r0, #1
	b _0803D008
	.byte 0x00
	.byte 0x00
_0803CFD4:
	.4byte 0x000004A2
_0803CFD8:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #64
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1, #31]
	ldrb r1, [r0, #29]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	mov r0, #0
	b _0803D008
_0803D004:
	mov r0, #0
	b _0803D008
_0803D008:
	add sp, sp, #8
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803CF58

	THUMB_FUNC_START sub_0803D010
sub_0803D010: @ 0x0803D010
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #80
	ldrh r0, [r1]
	mov r1, #128
	lsl r1, r1, #8
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _0803D032
	b _0803D128
_0803D032:
	ldr r1, [r7]
	mov r2, #50
	ldrsh r0, [r1, r2]
	ldr r1, [r7]
	ldrh r2, [r1, #54]
	sub r1, r2, #4
	add r3, r1, #0
	lsl r2, r3, #16
	asr r1, r2, #16
	mov r2, #128
	lsl r2, r2, #8
	bl 0x08009310
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _0803D080
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #128
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1, #31]
	ldrb r1, [r0, #29]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	mov r0, #1
	b _0803D12C
_0803D080:
	ldr r1, [r7]
	mov r2, #50
	ldrsh r0, [r1, r2]
	ldr r1, [r7]
	ldrh r2, [r1, #54]
	sub r1, r2, #4
	add r3, r1, #0
	lsl r2, r3, #16
	asr r1, r2, #16
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #80
	ldrh r2, [r3]
	bl 0x08009310
	lsl r1, r0, #16
	lsr r0, r1, #16
	ldr r1, _0803D0B8  @ =0x0000021F
	cmp r0, r1
	beq _0803D0D0
	ldr r1, _0803D0B8  @ =0x0000021F
	cmp r0, r1
	bgt _0803D0BC
	mov r1, #132
	lsl r1, r1, #2
	cmp r0, r1
	beq _0803D0D0
	b _0803D0FC
_0803D0B8:
	.4byte 0x0000021F
_0803D0BC:
	mov r1, #153
	lsl r1, r1, #2
	cmp r0, r1
	beq _0803D0D0
	ldr r1, _0803D0CC  @ =0x00000273
	cmp r0, r1
	beq _0803D0D0
	b _0803D0FC
_0803D0CC:
	.4byte 0x00000273
_0803D0D0:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #128
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1, #31]
	ldrb r1, [r0, #29]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	mov r0, #1
	b _0803D12C
_0803D0FC:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #64
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1, #31]
	ldrb r1, [r0, #29]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	mov r0, #0
	b _0803D12C
_0803D128:
	mov r0, #0
	b _0803D12C
_0803D12C:
	add sp, sp, #8
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803D010

	THUMB_FUNC_START sub_0803D134
sub_0803D134: @ 0x0803D134
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0803D160  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #13]
	cmp r1, #255
	bne _0803D164
	ldr r1, [r7]
	add r0, r1, #0
	add r2, r1, #0
	add r2, r2, #42
	ldrb r1, [r2]
	add r0, r1, #0
	b _0803D21C
_0803D160:
	.4byte gUnknown_03006A30
_0803D164:
	add r0, r7, #4
	ldr r1, _0803D1C4  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #13]
	mov r3, #28
	add r1, r2, #0
	and r1, r1, r3
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	lsr r2, r1, #2
	add r1, r2, #0
	strb r1, [r0]
	add r0, r7, #4
	ldrb r1, [r0]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803D1C8
	add r1, r7, #4
	ldrb r0, [r1]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	sub r2, r1, #1
	sub r0, r0, r2
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0803D1C8
	ldr r1, [r7]
	add r0, r1, #0
	add r2, r1, #0
	add r2, r2, #42
	ldrb r1, [r2]
	add r0, r1, #0
	b _0803D21C
_0803D1C4:
	.4byte gUnknown_03006A30
_0803D1C8:
	ldr r0, [r7]
	mov r1, #0
	add r2, r7, #4
	ldrb r3, [r2]
	cmp r3, #4
	bls _0803D1D6
	mov r1, #1
_0803D1D6:
	mov r2, #1
	and r1, r1, r2
	add r2, r1, #0
	lsl r1, r2, #2
	ldrb r2, [r0, #28]
	mov r3, #251
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r0, [r7]
	add r1, r7, #4
	ldrb r2, [r1]
	mov r3, #6
	add r1, r2, #0
	and r1, r1, r3
	add r2, r0, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r2, r1, #0
	add r2, r2, #42
	ldrb r1, [r2]
	add r0, r1, #0
	b _0803D21C
_0803D21C:
	add sp, sp, #8
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803D134

	THUMB_FUNC_START sub_0803D224
sub_0803D224: @ 0x0803D224
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	add r0, r7, #4
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _0803D300
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	mov r1, #28
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	lsr r1, r0, #2
	add r0, r1, #0
	mov r1, #1
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803D2AA
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	mov r1, #28
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	lsr r1, r0, #2
	add r0, r1, #0
	lsl r1, r0, #24
	lsr r0, r1, #24
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	sub r0, r0, r1
	add r1, r0, #1
	mov r2, #4
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	bne _0803D2AA
	add r0, r7, #4
	ldrb r1, [r0]
	add r0, r1, #0
	b _0803D308
_0803D2AA:
	add r0, r7, #4
	ldr r2, [r7]
	ldr r3, [r7]
	add r1, r3, #0
	add r3, r3, #43
	ldrb r1, [r3]
	lsr r3, r1, #2
	add r1, r3, #0
	mov r3, #126
	and r1, r1, r3
	add r3, r2, #0
	add r2, r2, #42
	ldrb r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	add r3, r1, #0
	orr r4, r4, r3
	add r3, r4, #0
	strb r3, [r2]
	mov r2, #0
	bic r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #4
	bhi _0803D2F4
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #251
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	b _0803D300
_0803D2F4:
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #4
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
_0803D300:
	add r0, r7, #4
	ldrb r1, [r0]
	add r0, r1, #0
	b _0803D308
_0803D308:
	add sp, sp, #8
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803D224

	THUMB_FUNC_START sub_0803D310
sub_0803D310: @ 0x0803D310
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r2, r0, #0
	add r0, r1, #0
	add r1, r7, #0
	strh r2, [r1]
	add r1, r7, #2
	strh r0, [r1]
	add r1, r7, #0
	mov r2, #0
	ldrsh r0, [r1, r2]
	add r1, r7, #2
	mov r3, #0
	ldrsh r2, [r1, r3]
	add r1, r0, #0
	mul r1, r2, r1
	add r0, r1, #0
	cmp r0, #0
	bge _0803D33A
	add r0, r0, #255
_0803D33A:
	asr r0, r0, #8
	add r1, r0, #0
	lsl r0, r1, #16
	asr r1, r0, #16
	add r0, r1, #0
	b _0803D346
_0803D346:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803D310

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803D350
sub_0803D350: @ 0x0803D350
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r2, r0, #0
	add r0, r1, #0
	add r1, r7, #0
	strh r2, [r1]
	add r1, r7, #2
	strh r0, [r1]
	add r0, r7, #2
	mov r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _0803D370
	mov r0, #0
	b _0803D390
_0803D370:
	add r0, r7, #0
	mov r3, #0
	ldrsh r1, [r0, r3]
	add r2, r1, #0
	lsl r0, r2, #8
	add r1, r7, #2
	mov r3, #0
	ldrsh r2, [r1, r3]
	add r1, r2, #0
	bl __divsi3
	add r1, r0, #0
	lsl r0, r1, #16
	asr r1, r0, #16
	add r0, r1, #0
	b _0803D390
_0803D390:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803D350

	THUMB_FUNC_START sub_0803D398
sub_0803D398: @ 0x0803D398
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strh r0, [r1]
	add r0, r7, #0
	mov r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _0803D3B0
	mov r0, #0
	b _0803D3C8
_0803D3B0:
	add r0, r7, #0
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r0, #128
	lsl r0, r0, #9
	bl __divsi3
	add r1, r0, #0
	lsl r0, r1, #16
	asr r1, r0, #16
	add r0, r1, #0
	b _0803D3C8
_0803D3C8:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803D398

	THUMB_FUNC_START sub_0803D3D0
sub_0803D3D0: @ 0x0803D3D0
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	str r2, [r0, #52]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #82
	add r2, r0, #0
	add r0, r0, #82
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	bl 0x08008DD8
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803D3D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803D440
sub_0803D440: @ 0x0803D440
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #94
	ldrb r0, [r1]
	lsl r1, r0, #30
	lsr r0, r1, #30
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #2
	bhi _0803D49A
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #94
	ldrb r0, [r1]
	lsl r2, r0, #30
	lsr r1, r2, #30
	ldr r0, [r7, #4]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #94
	ldrb r1, [r2]
	lsl r2, r1, #30
	lsr r3, r2, #30
	add r1, r3, #1
	add r2, r0, #0
	add r0, r0, #94
	mov r2, #3
	and r1, r1, r2
	ldrb r2, [r0]
	mov r3, #252
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_0803D49A:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803D440

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803D4A4
sub_0803D4A4: @ 0x0803D4A4
	push {r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #12]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #48]
	ldr r1, [r7, #8]
	add r2, r2, r1
	str r2, [r0, #48]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	ldr r1, [r7, #12]
	add r2, r2, r1
	str r2, [r0, #52]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #82
	add r2, r0, #0
	add r0, r0, #82
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	bl 0x08008DD8
	add sp, sp, #16
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803D4A4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803D520
sub_0803D520: @ 0x0803D520
	push {r7,lr}
	sub sp, sp, #16
	mov r7, sp
	add r3, r0, #0
	add r0, r2, #0
	add r2, r7, #0
	strb r3, [r2]
	add r2, r7, #2
	strh r1, [r2]
	add r1, r7, #4
	strb r0, [r1]
	ldr r0, _0803D554  @ =gUnknown_03006C80
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r1, r0, #0
	add r1, r1, #12
	add r0, r1, r2
	add r1, r7, #2
	ldrh r2, [r1]
	ldr r1, [r0]
	sub r0, r1, r2
	cmp r0, #0
	bge _0803D558
	b _0803D654
_0803D554:
	.4byte gUnknown_03006C80
_0803D558:
	add r1, r7, #2
	ldrh r0, [r1]
	cmp r0, #20
	beq _0803D596
	cmp r0, #20
	bgt _0803D56E
	cmp r0, #1
	beq _0803D582
	cmp r0, #5
	beq _0803D58C
	b _0803D5BE
_0803D56E:
	cmp r0, #100
	beq _0803D5AA
	cmp r0, #100
	bgt _0803D57C
	cmp r0, #50
	beq _0803D5A0
	b _0803D5BE
_0803D57C:
	cmp r0, #200
	beq _0803D5B4
	b _0803D5BE
_0803D582:
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #1
	strb r1, [r0]
	b _0803D5C0
_0803D58C:
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #2
	strb r1, [r0]
	b _0803D5C0
_0803D596:
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #3
	strb r1, [r0]
	b _0803D5C0
_0803D5A0:
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #6
	strb r1, [r0]
	b _0803D5C0
_0803D5AA:
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #8
	strb r1, [r0]
	b _0803D5C0
_0803D5B4:
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #9
	strb r1, [r0]
	b _0803D5C0
_0803D5BE:
	b _0803D654
_0803D5C0:
	add r0, r7, #0
	add r0, r0, #12
	ldrb r1, [r0]
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0803D64E
	ldr r0, _0803D650  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, [r7, #8]
	bl sub_0803D3D0
	ldr r0, [r7, #8]
	add r1, r7, #4
	ldrb r2, [r1]
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #8]
	mov r1, #128
	lsl r1, r1, #10
	str r1, [r0, #16]
	ldr r0, [r7, #8]
	ldr r1, [r7, #8]
	ldrh r2, [r1, #58]
	sub r1, r2, #4
	ldrh r2, [r0, #58]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #58]
	ldr r0, _0803D650  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r7, #2
	ldrh r2, [r1]
	neg r1, r2
	bl sub_0802C53C
_0803D64E:
	b _0803D654
_0803D650:
	.4byte gUnknown_03006A30
_0803D654:
	add sp, sp, #16
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803D520

	THUMB_FUNC_START sub_0803D65C
sub_0803D65C: @ 0x0803D65C
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	add r2, r0, #0
	add r0, r1, #0
	add r1, r7, #0
	strb r2, [r1]
	add r1, r7, #2
	strh r0, [r1]
	add r4, r7, #4
	add r0, r7, #2
	ldrh r1, [r0]
	add r0, r1, #0
	mov r1, #20
	bl __udivsi3
	add r1, r0, #0
	strh r1, [r4]
	add r4, r7, #2
	add r0, r7, #2
	ldrh r1, [r0]
	add r0, r1, #0
	mov r1, #20
	bl __umodsi3
	add r1, r0, #0
	strh r1, [r4]
_0803D692:
	add r1, r7, #4
	add r0, r7, #4
	add r1, r7, #4
	ldrh r2, [r1]
	sub r1, r2, #1
	add r2, r1, #0
	strh r2, [r0]
	lsl r1, r2, #16
	asr r0, r1, #16
	mov r1, #1
	cmn r0, r1
	bne _0803D6AC
	b _0803D6CC
_0803D6AC:
	add r0, r7, #0
	ldrb r4, [r0]
	bl 0x0800099C
	add r1, r0, #0
	mov r2, #31
	add r0, r1, #0
	and r0, r0, r2
	add r1, r0, #0
	lsl r0, r1, #24
	lsr r2, r0, #24
	add r0, r4, #0
	mov r1, #20
	bl sub_0803D520
	b _0803D692
_0803D6CC:
	add r4, r7, #4
	add r0, r7, #2
	ldrh r1, [r0]
	add r0, r1, #0
	mov r1, #5
	bl __udivsi3
	add r1, r0, #0
	strh r1, [r4]
_0803D6DE:
	add r1, r7, #4
	add r0, r7, #4
	add r1, r7, #4
	ldrh r2, [r1]
	sub r1, r2, #1
	add r2, r1, #0
	strh r2, [r0]
	lsl r1, r2, #16
	asr r0, r1, #16
	mov r1, #1
	cmn r0, r1
	bne _0803D6F8
	b _0803D718
_0803D6F8:
	add r0, r7, #0
	ldrb r4, [r0]
	bl 0x0800099C
	add r1, r0, #0
	mov r2, #31
	add r0, r1, #0
	and r0, r0, r2
	add r1, r0, #0
	lsl r0, r1, #24
	lsr r2, r0, #24
	add r0, r4, #0
	mov r1, #5
	bl sub_0803D520
	b _0803D6DE
_0803D718:
	add r4, r7, #4
	add r0, r7, #2
	ldrh r1, [r0]
	add r0, r1, #0
	mov r1, #5
	bl __umodsi3
	add r1, r0, #0
	strh r1, [r4]
_0803D72A:
	add r1, r7, #4
	add r0, r7, #4
	add r1, r7, #4
	ldrh r2, [r1]
	sub r1, r2, #1
	add r2, r1, #0
	strh r2, [r0]
	lsl r1, r2, #16
	asr r0, r1, #16
	mov r1, #1
	cmn r0, r1
	bne _0803D744
	b _0803D764
_0803D744:
	add r0, r7, #0
	ldrb r4, [r0]
	bl 0x0800099C
	add r1, r0, #0
	mov r2, #31
	add r0, r1, #0
	and r0, r0, r2
	add r1, r0, #0
	lsl r0, r1, #24
	lsr r2, r0, #24
	add r0, r4, #0
	mov r1, #1
	bl sub_0803D520
	b _0803D72A
_0803D764:
	b _0803D766
_0803D766:
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803D65C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803D770
sub_0803D770: @ 0x0803D770
	push {r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #31]
	lsl r2, r1, #26
	lsr r0, r2, #27
	add r1, r0, #0
	lsl r0, r1, #5
	ldr r1, _0803D7E4  @ =gUnknown_03005E26
	add r0, r0, r1
	str r0, [r7, #8]
	ldr r1, [r7, #8]
	ldr r0, [r7]
	mov r2, #1
	mov r3, #8
	bl ObjAffineSet
	ldr r0, [r7, #8]
	mov r2, #128
	lsl r2, r2, #3
	add r1, r0, r2
	str r1, [r7, #12]
	ldr r0, [r7, #12]
	ldr r1, [r7, #8]
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r1, [r7, #12]
	add r0, r1, #0
	add r0, r0, #8
	ldr r2, [r7, #8]
	add r1, r2, #0
	add r1, r1, #8
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r1, [r7, #12]
	add r0, r1, #0
	add r0, r0, #16
	ldr r2, [r7, #8]
	add r1, r2, #0
	add r1, r1, #16
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r1, [r7, #12]
	add r0, r1, #0
	add r0, r0, #24
	ldr r2, [r7, #8]
	add r1, r2, #0
	add r1, r1, #24
	ldrh r2, [r1]
	strh r2, [r0]
	add sp, sp, #16
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803D7E4:
	.4byte gUnknown_03005E26
	THUMB_FUNC_END sub_0803D770

	THUMB_FUNC_START sub_0803D7E8
sub_0803D7E8: @ 0x0803D7E8
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	add r0, r2, #0
	add r1, r7, #0
	add r1, r1, #8
	strb r0, [r1]
	add r0, r7, #0
	add r0, r0, #8
	ldrb r1, [r0]
	cmp r1, #0
	bne _0803D80C
	add r0, r7, #0
	add r0, r0, #8
	mov r1, #1
	strb r1, [r0]
_0803D80C:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #118
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r7, #0
	add r1, r1, #8
	add r2, r0, #0
	add r0, r0, #119
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r0, #0
	add r0, r0, #120
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #50]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r0, #0
	add r0, r0, #122
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #54]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r0, #0
	add r0, r0, #124
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #2
	add r2, r0, #0
	add r0, r0, #126
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	b _0803D8A4
_0803D8A4:
	add sp, sp, #12
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803D7E8

	THUMB_FUNC_START sub_0803D8AC
sub_0803D8AC: @ 0x0803D8AC
	push {r4,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #118
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #119
	ldrb r0, [r0]
	ldrb r1, [r2]
	cmp r0, r1
	bcc _0803D900
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #124
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #126
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	mov r0, #1
	b _0803D9EA
_0803D900:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #118
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #118
	ldrb r3, [r2]
	add r1, r3, #1
	add r2, r0, #0
	add r0, r0, #118
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #124
	mov r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #120
	mov r3, #0
	ldrsh r1, [r2, r3]
	sub r0, r0, r1
	str r0, [r7, #4]
	add r4, r7, #0
	add r4, r4, #8
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #118
	ldrb r0, [r1]
	ldr r1, [r7, #4]
	mul r0, r1, r0
	add r1, r0, #0
	lsl r0, r1, #8
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #119
	ldrb r1, [r2]
	bl __divsi3
	asr r1, r0, #8
	add r0, r1, #0
	strh r0, [r4]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #120
	add r1, r7, #0
	add r1, r1, #8
	ldrh r2, [r2]
	ldrh r3, [r1]
	add r1, r2, r3
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #126
	mov r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #122
	mov r3, #0
	ldrsh r1, [r2, r3]
	sub r0, r0, r1
	str r0, [r7, #4]
	add r4, r7, #0
	add r4, r4, #8
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #118
	ldrb r0, [r1]
	ldr r1, [r7, #4]
	mul r0, r1, r0
	add r1, r0, #0
	lsl r0, r1, #8
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #119
	ldrb r1, [r2]
	bl __divsi3
	asr r1, r0, #8
	add r0, r1, #0
	strh r0, [r4]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #122
	add r1, r7, #0
	add r1, r1, #8
	ldrh r2, [r2]
	ldrh r3, [r1]
	add r1, r2, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	mov r0, #0
	b _0803D9EA
_0803D9EA:
	add sp, sp, #12
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803D8AC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803D9F4
sub_0803D9F4: @ 0x0803D9F4
	push {r4,r7,lr}
	sub sp, sp, #24
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	add r0, r7, #0
	add r0, r0, #21
	mov r1, #255
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #16
	ldr r2, _0803DA2C  @ =0x0000FFFF
	add r1, r2, #0
	strh r1, [r0]
	add r0, r7, #0
	add r0, r0, #20
	mov r1, #0
	strb r1, [r0]
_0803DA1A:
	add r0, r7, #0
	add r0, r0, #20
	ldr r1, _0803DA30  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803DA34
	b _0803DB38
	.byte 0x00
	.byte 0x00
_0803DA2C:
	.4byte 0x0000FFFF
_0803DA30:
	.4byte gUnknown_03006C80
_0803DA34:
	ldr r0, _0803DB34  @ =gUnknown_03006A30
	add r2, r7, #0
	add r2, r2, #20
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r2, r0, r1
	ldr r1, [r2]
	ldr r2, [r7, #4]
	ldr r3, [r7, #8]
	ldr r0, [r7]
	bl 0x0800390C
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803DB1E
	add r0, r7, #0
	add r0, r0, #12
	ldr r1, _0803DB34  @ =gUnknown_03006A30
	add r3, r7, #0
	add r3, r3, #20
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r1, [r2]
	ldr r2, [r7]
	ldrh r1, [r1, #50]
	ldrh r2, [r2, #50]
	sub r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	add r0, r7, #0
	add r0, r0, #12
	mov r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bge _0803DA8E
_0803DA8E:
	add r0, r7, #0
	add r0, r0, #12
	add r1, r7, #0
	add r1, r1, #12
	ldrh r2, [r1]
	neg r1, r2
	add r2, r1, #0
	strh r2, [r0]
	add r0, r7, #0
	add r0, r0, #14
	ldr r1, _0803DB34  @ =gUnknown_03006A30
	add r3, r7, #0
	add r3, r3, #20
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r1, [r2]
	ldr r2, [r7]
	ldrh r1, [r1, #54]
	ldrh r2, [r2, #54]
	sub r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	add r0, r7, #0
	add r0, r0, #14
	mov r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bge _0803DAD0
_0803DAD0:
	add r0, r7, #0
	add r0, r0, #14
	add r1, r7, #0
	add r1, r1, #14
	ldrh r2, [r1]
	neg r1, r2
	add r2, r1, #0
	strh r2, [r0]
	add r0, r7, #0
	add r0, r0, #18
	add r1, r7, #0
	add r1, r1, #12
	add r2, r7, #0
	add r2, r2, #14
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #18
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bls _0803DB1E
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #18
	ldrh r2, [r1]
	strh r2, [r0]
	add r0, r7, #0
	add r0, r0, #21
	add r1, r7, #0
	add r1, r1, #20
	ldrb r2, [r1]
	strb r2, [r0]
_0803DB1E:
	add r1, r7, #0
	add r1, r1, #20
	add r0, r7, #0
	add r0, r0, #20
	add r1, r7, #0
	add r1, r1, #20
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _0803DA1A
_0803DB34:
	.4byte gUnknown_03006A30
_0803DB38:
	add r0, r7, #0
	add r0, r0, #21
	ldrb r1, [r0]
	add r0, r1, #0
	b _0803DB42
_0803DB42:
	add sp, sp, #24
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0803D9F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803DB4C
sub_0803DB4C: @ 0x0803DB4C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _0803DBA4  @ =gUnknown_03000E20
	ldrb r1, [r0, #18]
	cmp r1, #0
	beq _0803DB70
	ldr r0, [r7]
	ldrb r1, [r0, #21]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #21]
_0803DB70:
	ldr r0, _0803DBA8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #11]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _0803DB9A
	ldr r0, [r7]
	ldrb r1, [r0, #21]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #21]
_0803DB9A:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803DBA4:
	.4byte gUnknown_03000E20
_0803DBA8:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_0803DB4C

	THUMB_FUNC_START sub_0803DBAC
sub_0803DBAC: @ 0x0803DBAC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _0803DBD0  @ =gUnknown_08427C28
	ldr r1, [r7]
	ldrb r2, [r1, #9]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_0803DBD0:
	.4byte gUnknown_08427C28
	THUMB_FUNC_END sub_0803DBAC

	THUMB_FUNC_START sub_0803DBD4
sub_0803DBD4: @ 0x0803DBD4
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	add r0, r7, #4
	ldr r1, _0803DC04  @ =gUnknown_03000510
	ldrh r2, [r1]
	strh r2, [r0]
	add r0, r7, #6
	ldr r1, _0803DC08  @ =gUnknown_03000BD0
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0803DC0C  @ =gUnknown_03006620
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, _0803DC10  @ =gUnknown_03006D10
	ldrb r1, [r0]
	cmp r1, #2
	beq _0803DC14
	ldr r0, _0803DC10  @ =gUnknown_03006D10
	ldrb r1, [r0]
	cmp r1, #12
	beq _0803DC14
	b _0803DC38
_0803DC04:
	.4byte gUnknown_03000510
_0803DC08:
	.4byte gUnknown_03000BD0
_0803DC0C:
	.4byte gUnknown_03006620
_0803DC10:
	.4byte gUnknown_03006D10
_0803DC14:
	ldr r0, _0803DC58  @ =gUnknown_03000510
	ldr r1, _0803DC5C  @ =gUnknown_03000940
	ldr r2, [r7]
	ldrb r3, [r2, #10]
	add r2, r3, #0
	lsl r3, r2, #1
	add r1, r1, r3
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0803DC60  @ =gUnknown_03000BD0
	ldr r1, _0803DC64  @ =gUnknown_03005E10
	ldr r2, [r7]
	ldrb r3, [r2, #10]
	add r2, r3, #0
	lsl r3, r2, #1
	add r1, r1, r3
	ldrh r2, [r1]
	strh r2, [r0]
_0803DC38:
	ldr r0, [r7]
	bl 0x080045FC
	ldr r0, _0803DC58  @ =gUnknown_03000510
	add r1, r7, #4
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0803DC60  @ =gUnknown_03000BD0
	add r1, r7, #6
	ldrh r2, [r1]
	strh r2, [r0]
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803DC58:
	.4byte gUnknown_03000510
_0803DC5C:
	.4byte gUnknown_03000940
_0803DC60:
	.4byte gUnknown_03000BD0
_0803DC64:
	.4byte gUnknown_03005E10
	THUMB_FUNC_END sub_0803DBD4

	THUMB_FUNC_START sub_0803DC68
sub_0803DC68: @ 0x0803DC68
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #29]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	ldr r0, [r7]
	bl 0x08003B94
	ldr r0, _0803DD00  @ =gUnknown_03000488
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _0803DD00  @ =gUnknown_03000488
	ldrh r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _0803DD00  @ =gUnknown_03000488
	ldrh r1, [r0, #4]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #4]
	ldr r0, _0803DD00  @ =gUnknown_03000488
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	lsl r3, r2, #26
	lsr r1, r3, #27
	add r2, r1, #0
	lsl r1, r2, #5
	ldr r2, _0803DD04  @ =gUnknown_03005E26
	add r1, r1, r2
	mov r2, #1
	mov r3, #8
	bl ObjAffineSet
	ldr r0, _0803DD00  @ =gUnknown_03000488
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	lsl r3, r2, #26
	lsr r1, r3, #27
	add r2, r1, #0
	lsl r1, r2, #5
	ldr r2, _0803DD08  @ =gUnknown_03006226
	add r1, r1, r2
	mov r2, #1
	mov r3, #8
	bl ObjAffineSet
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803DD00:
	.4byte gUnknown_03000488
_0803DD04:
	.4byte gUnknown_03005E26
_0803DD08:
	.4byte gUnknown_03006226
	THUMB_FUNC_END sub_0803DC68

	THUMB_FUNC_START sub_0803DD0C
sub_0803DD0C: @ 0x0803DD0C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _0803DD88  @ =gUnknown_03000488
	ldr r1, [r7]
	ldr r2, [r1, #120]
	add r1, r2, #0
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _0803DD88  @ =gUnknown_03000488
	ldr r1, [r7]
	ldr r2, [r1, #124]
	add r1, r2, #0
	ldrh r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _0803DD88  @ =gUnknown_03000488
	ldrh r1, [r0, #4]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #4]
	ldr r0, _0803DD88  @ =gUnknown_03000488
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	lsl r3, r2, #26
	lsr r1, r3, #27
	add r2, r1, #0
	lsl r1, r2, #5
	ldr r2, _0803DD8C  @ =gUnknown_03005E26
	add r1, r1, r2
	mov r2, #1
	mov r3, #8
	bl ObjAffineSet
	ldr r0, _0803DD88  @ =gUnknown_03000488
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	lsl r3, r2, #26
	lsr r1, r3, #27
	add r2, r1, #0
	lsl r1, r2, #5
	ldr r2, _0803DD90  @ =gUnknown_03006226
	add r1, r1, r2
	mov r2, #1
	mov r3, #8
	bl ObjAffineSet
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_0803DD88:
	.4byte gUnknown_03000488
_0803DD8C:
	.4byte gUnknown_03005E26
_0803DD90:
	.4byte gUnknown_03006226
	THUMB_FUNC_END sub_0803DD0C

	THUMB_FUNC_START sub_0803DD94
sub_0803DD94: @ 0x0803DD94
	push {r4,r5,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r0, r7, #2
	mov r1, #0
	strh r1, [r0]
_0803DDA0:
	add r0, r7, #2
	ldrh r1, [r0]
	cmp r1, #3
	bls _0803DDAA
	b _0803DE34
_0803DDAA:
	add r0, r7, #0
	ldr r1, _0803DE28  @ =gUnknown_03000FC0
	add r3, r7, #2
	ldrh r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #2
	add r3, r3, r2
	lsl r2, r3, #2
	add r1, r1, r2
	ldrh r2, [r1, #58]
	strh r2, [r0]
	ldr r0, _0803DE2C  @ =gUnknown_03005E10
	add r1, r7, #2
	ldrh r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #1
	add r0, r0, r2
	add r1, r7, #0
	add r2, r7, #0
	ldr r3, _0803DE30  @ =gUnknown_03000940
	add r4, r7, #2
	ldrh r5, [r4]
	add r4, r5, #0
	lsl r5, r4, #1
	add r3, r3, r5
	ldrh r2, [r2]
	ldrh r3, [r3]
	eor r2, r2, r3
	ldrh r1, [r1]
	add r3, r2, #0
	and r1, r1, r3
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _0803DE30  @ =gUnknown_03000940
	add r1, r7, #2
	ldrh r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #1
	add r0, r0, r2
	add r1, r7, #0
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	add r1, r7, #2
	add r0, r7, #2
	add r1, r7, #2
	ldrh r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strh r2, [r0]
	b _0803DDA0
_0803DE28:
	.4byte gUnknown_03000FC0
_0803DE2C:
	.4byte gUnknown_03005E10
_0803DE30:
	.4byte gUnknown_03000940
_0803DE34:
	ldr r0, _0803DE78  @ =gUnknown_03000950
	ldr r1, _0803DE7C  @ =gUnknown_03000940
	ldr r2, _0803DE80  @ =gUnknown_03000414
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #1
	add r1, r1, r3
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0803DE84  @ =gUnknown_03006734
	ldr r1, _0803DE88  @ =gUnknown_03005E10
	ldr r2, _0803DE80  @ =gUnknown_03000414
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #1
	add r1, r1, r3
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0803DE8C  @ =gUnknown_03000FC0
	ldr r1, _0803DE90  @ =gUnknown_03000510
	ldrh r2, [r0, #18]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #18]
	add sp, sp, #4
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803DE78:
	.4byte gUnknown_03000950
_0803DE7C:
	.4byte gUnknown_03000940
_0803DE80:
	.4byte gUnknown_03000414
_0803DE84:
	.4byte gUnknown_03006734
_0803DE88:
	.4byte gUnknown_03005E10
_0803DE8C:
	.4byte gUnknown_03000FC0
_0803DE90:
	.4byte gUnknown_03000510
	THUMB_FUNC_END sub_0803DD94

	THUMB_FUNC_START sub_0803DE94
sub_0803DE94: @ 0x0803DE94
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strb r0, [r1]
	ldr r0, _0803DF80  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #7]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #7]
	ldr r0, _0803DF80  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803DF80  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldr r2, _0803DF80  @ =gUnknown_03006A30
	add r4, r7, #0
	ldrb r3, [r4]
	add r5, r3, #0
	lsl r4, r5, #3
	add r4, r4, r3
	lsl r3, r4, #4
	add r2, r2, r3
	ldr r3, _0803DF80  @ =gUnknown_03006A30
	add r5, r7, #0
	ldrb r4, [r5]
	add r6, r4, #0
	lsl r5, r6, #3
	add r5, r5, r4
	lsl r4, r5, #4
	add r3, r3, r4
	ldrb r4, [r3, #26]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	mov r6, #1
	add r4, r5, #0
	orr r4, r4, r6
	add r5, r4, #0
	strb r5, [r3, #26]
	ldrb r3, [r2, #11]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	mov r5, #1
	add r3, r4, #0
	orr r3, r3, r5
	add r4, r3, #0
	strb r4, [r2, #11]
	ldrb r2, [r1, #10]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #1
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1, #10]
	add r1, r0, #0
	add r0, r0, #39
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803DF80  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #254
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803DF80:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_0803DE94

	THUMB_FUNC_START sub_0803DF84
sub_0803DF84: @ 0x0803DF84
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_0803DF90:
	add r0, r7, #0
	ldr r1, _0803DFA0  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803DFA4
	b _0803DFBE
	.byte 0x00
	.byte 0x00
_0803DFA0:
	.4byte gUnknown_03006C80
_0803DFA4:
	add r0, r7, #0
	ldrb r1, [r0]
	add r0, r1, #0
	bl sub_0803DE94
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _0803DF90
_0803DFBE:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803DF84

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803DFC8
sub_0803DFC8: @ 0x0803DFC8
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_0803DFD4:
	add r0, r7, #0
	ldr r1, _0803DFE4  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803DFE8
	b _0803E040
	.byte 0x00
	.byte 0x00
_0803DFE4:
	.4byte gUnknown_03006C80
_0803DFE8:
	ldr r0, _0803E03C  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #20
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, _0803E03C  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldrb r1, [r0, #21]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #21]
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _0803DFD4
_0803E03C:
	.4byte gUnknown_03006A30
_0803E040:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803DFC8

	THUMB_FUNC_START sub_0803E048
sub_0803E048: @ 0x0803E048
	push {r4,r5,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _0803E10C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803E10C  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrh r2, [r1, #54]
	ldr r3, _0803E110  @ =0x0000FDFF
	add r1, r2, #0
	and r1, r1, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, _0803E10C  @ =gUnknown_03006A30
	ldr r4, [r7]
	ldrb r3, [r4, #10]
	add r5, r3, #0
	lsl r4, r5, #3
	add r4, r4, r3
	lsl r3, r4, #4
	add r4, r2, r3
	add r2, r4, #0
	add r3, r4, #0
	add r3, r3, #63
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	ldrh r3, [r1, #54]
	sub r1, r3, r2
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r0, _0803E10C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	add r1, r0, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803E10C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #54]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _0803E104
	ldr r0, [r7]
	bl 0x080074C0
_0803E104:
	add sp, sp, #4
	pop {r4,r5,r7}
	pop {r0}
	bx r0
_0803E10C:
	.4byte gUnknown_03006A30
_0803E110:
	.4byte 0x0000FDFF
	THUMB_FUNC_END sub_0803E048

	THUMB_FUNC_START sub_0803E114
sub_0803E114: @ 0x0803E114
	push {r4,r5,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	ldr r0, _0803E134  @ =gUnknown_03000838
	mov r1, #0
	strb r1, [r0]
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_0803E126:
	add r0, r7, #0
	ldr r1, _0803E138  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0803E13C
	b _0803E508
_0803E134:
	.4byte gUnknown_03000838
_0803E138:
	.4byte gUnknown_03006C80
_0803E13C:
	ldr r0, _0803E158  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	cmp r0, #0
	bne _0803E15C
	b _0803E4EE
	.byte 0x00
	.byte 0x00
_0803E158:
	.4byte gUnknown_03006A30
_0803E15C:
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #20]
	cmp r1, #0
	beq _0803E1B6
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r3, r2, #4
	add r1, r0, r3
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803E500  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #20]
	sub r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
_0803E1B6:
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #26]
	cmp r1, #0
	beq _0803E1E6
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	bl 0x080074C0
_0803E1E6:
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #114
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803E266
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #114
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, _0803E500  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r3, [r2]
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #114
	ldrh r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #114
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
_0803E266:
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r2, r0, r1
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #138
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803E2D6
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r2, r0, r1
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #138
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803E500  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r3, r1, r2
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #138
	ldrb r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #138
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_0803E2D6:
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803E500  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #7]
	mov r3, #127
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #7]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #7]
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, _0803E500  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r3, [r2]
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #65
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #65
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803E500  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldr r2, _0803E500  @ =gUnknown_03006A30
	add r4, r7, #0
	ldrb r3, [r4]
	add r5, r3, #0
	lsl r4, r5, #3
	add r4, r4, r3
	lsl r3, r4, #4
	add r2, r2, r3
	add r3, r2, #0
	add r2, r2, #52
	ldrb r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strb r4, [r2]
	ldrb r2, [r1, #26]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1, #26]
	add r1, r0, #0
	add r0, r0, #39
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803E500  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #10]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #10]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #10]
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803E500  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrh r2, [r1, #54]
	ldr r3, _0803E504  @ =0x0000FFFD
	add r1, r2, #0
	and r1, r1, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803E500  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #15]
	mov r3, #239
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #15]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #15]
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	bl 0x08003130
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803E4EE
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #112
	ldr r0, _0803E500  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, _0803E500  @ =gUnknown_03006A30
	add r3, r7, #0
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r3, [r2]
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #112
	ldrb r3, [r2]
	add r1, r3, #1
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_0803E4EE:
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _0803E126
	.byte 0x00
	.byte 0x00
_0803E500:
	.4byte gUnknown_03006A30
_0803E504:
	.4byte 0x0000FFFD
_0803E508:
	mov r0, #1
	bl sub_0801276C
	add sp, sp, #4
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803E114

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803E518
sub_0803E518: @ 0x0803E518
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _0803E538  @ =0xFFFFFD44
	add sp, sp, r4
	mov r7, sp
	ldr r0, _0803E53C  @ =gUnknown_03006A30
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0803E540  @ =gUnknown_03006C70
	cmp r0, r1
	bcc _0803E544
	bl 0x0803F0B8
_0803E538:
	.4byte 0xFFFFFD44
_0803E53C:
	.4byte gUnknown_03006A30
_0803E540:
	.4byte gUnknown_03006C70
_0803E544:
	ldr r0, _0803E930  @ =gUnknown_03000948
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r3, [r7]
	ldr r4, [r7]
	mov r5, #172
	lsl r5, r5, #2
	add r5, r5, r7
	str r4, [r5]
	ldr r6, [r7]
	mov r4, #173
	lsl r4, r4, #2
	add r4, r4, r7
	str r6, [r4]
	ldr r5, [r7]
	mov r6, #174
	lsl r6, r6, #2
	add r6, r6, r7
	str r5, [r6]
	ldr r4, [r7]
	mov r8, r4
	ldr r5, [r7]
	mov r9, r5
	ldr r6, [r7]
	mov r10, r6
	ldr r4, [r7]
	mov r12, r4
	ldr r5, [r7]
	str r5, [r7, #8]
	ldr r6, [r7]
	str r6, [r7, #12]
	ldr r4, [r7]
	str r4, [r7, #16]
	ldr r5, [r7]
	str r5, [r7, #20]
	ldr r6, [r7]
	str r6, [r7, #24]
	ldr r4, [r7]
	str r4, [r7, #28]
	ldr r5, [r7]
	str r5, [r7, #32]
	ldr r6, [r7]
	str r6, [r7, #36]
	ldr r4, [r7]
	str r4, [r7, #40]
	ldr r5, [r7]
	str r5, [r7, #44]
	ldr r6, [r7]
	str r6, [r7, #48]
	ldr r4, [r7]
	str r4, [r7, #52]
	ldr r5, [r7]
	str r5, [r7, #56]
	ldr r6, [r7]
	str r6, [r7, #60]
	ldr r4, [r7]
	str r4, [r7, #64]
	ldr r5, [r7]
	str r5, [r7, #68]
	ldr r6, [r7]
	str r6, [r7, #72]
	ldr r4, [r7]
	str r4, [r7, #76]
	ldr r5, [r7]
	str r5, [r7, #80]
	ldr r6, [r7]
	str r6, [r7, #84]
	ldr r4, [r7]
	str r4, [r7, #88]
	ldr r5, [r7]
	str r5, [r7, #92]
	ldr r6, [r7]
	str r6, [r7, #96]
	ldr r4, [r7]
	str r4, [r7, #100]
	ldr r5, [r7]
	str r5, [r7, #104]
	ldr r6, [r7]
	str r6, [r7, #108]
	ldr r4, [r7]
	str r4, [r7, #112]
	ldr r5, [r7]
	str r5, [r7, #116]
	ldr r6, [r7, #116]
	str r6, [r7, #120]
	ldr r4, [r7, #116]
	add r4, r4, #63
	str r4, [r7, #124]
	ldr r5, [r7, #124]
	ldrb r6, [r5]
	mov r5, #128
	add r5, r5, r7
	strb r6, [r5]
	mov r4, #0
	mov r5, #136
	add r5, r5, r7
	str r4, [r5]
	mov r6, #128
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #136
	add r6, r6, r7
	ldr r6, [r6]
	and r4, r4, r6
	mov r6, #132
	add r6, r6, r7
	str r4, [r6]
	mov r4, #132
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #140
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #140
	add r6, r6, r7
	ldrb r4, [r6]
	ldr r6, [r7, #124]
	strb r4, [r6]
	ldr r5, [r7, #112]
	mov r6, #144
	add r6, r6, r7
	str r5, [r6]
	ldr r4, [r7, #112]
	add r4, r4, #38
	mov r5, #148
	add r5, r5, r7
	str r4, [r5]
	mov r6, #148
	add r6, r6, r7
	ldr r6, [r6]
	ldrb r4, [r6]
	mov r6, #152
	add r6, r6, r7
	strb r4, [r6]
	mov r4, #0
	mov r5, #160
	add r5, r5, r7
	str r4, [r5]
	mov r6, #152
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #160
	add r6, r6, r7
	ldr r6, [r6]
	and r4, r4, r6
	mov r6, #156
	add r6, r6, r7
	str r4, [r6]
	mov r4, #156
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #164
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #164
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #148
	add r6, r6, r7
	ldr r6, [r6]
	strb r4, [r6]
	ldr r4, [r7, #108]
	mov r5, #168
	add r5, r5, r7
	str r4, [r5]
	ldr r6, [r7, #108]
	add r6, r6, #61
	mov r4, #172
	add r4, r4, r7
	str r6, [r4]
	mov r5, #172
	add r5, r5, r7
	ldr r5, [r5]
	ldrb r6, [r5]
	mov r5, #176
	add r5, r5, r7
	strb r6, [r5]
	mov r6, #0
	mov r4, #184
	add r4, r4, r7
	str r6, [r4]
	mov r5, #176
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #184
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #180
	add r5, r5, r7
	str r6, [r5]
	mov r6, #180
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #188
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #188
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #172
	add r5, r5, r7
	ldr r5, [r5]
	strb r6, [r5]
	ldr r6, [r7, #104]
	mov r4, #192
	add r4, r4, r7
	str r6, [r4]
	ldr r5, [r7, #104]
	add r5, r5, #60
	mov r6, #196
	add r6, r6, r7
	str r5, [r6]
	mov r4, #196
	add r4, r4, r7
	ldr r4, [r4]
	ldrb r5, [r4]
	mov r4, #200
	add r4, r4, r7
	strb r5, [r4]
	mov r5, #0
	mov r6, #208
	add r6, r6, r7
	str r5, [r6]
	mov r4, #200
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #208
	add r4, r4, r7
	ldr r4, [r4]
	and r5, r5, r4
	mov r4, #204
	add r4, r4, r7
	str r5, [r4]
	mov r5, #204
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #212
	add r5, r5, r7
	strb r6, [r5]
	mov r4, #212
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #196
	add r4, r4, r7
	ldr r4, [r4]
	strb r5, [r4]
	ldr r5, [r7, #100]
	mov r6, #216
	add r6, r6, r7
	str r5, [r6]
	ldr r4, [r7, #100]
	add r4, r4, #58
	mov r5, #220
	add r5, r5, r7
	str r4, [r5]
	mov r6, #220
	add r6, r6, r7
	ldr r6, [r6]
	ldrb r4, [r6]
	mov r6, #224
	add r6, r6, r7
	strb r4, [r6]
	mov r4, #0
	mov r5, #232
	add r5, r5, r7
	str r4, [r5]
	mov r6, #224
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #232
	add r6, r6, r7
	ldr r6, [r6]
	and r4, r4, r6
	mov r6, #228
	add r6, r6, r7
	str r4, [r6]
	mov r4, #228
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #236
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #236
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #220
	add r6, r6, r7
	ldr r6, [r6]
	strb r4, [r6]
	ldr r4, [r7, #96]
	mov r5, #240
	add r5, r5, r7
	str r4, [r5]
	ldr r6, [r7, #96]
	add r6, r6, #57
	mov r4, #244
	add r4, r4, r7
	str r6, [r4]
	mov r5, #244
	add r5, r5, r7
	ldr r5, [r5]
	ldrb r6, [r5]
	mov r5, #248
	add r5, r5, r7
	strb r6, [r5]
	mov r6, #0
	mov r4, #128
	lsl r4, r4, #1
	add r4, r4, r7
	str r6, [r4]
	mov r5, #248
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #128
	lsl r5, r5, #1
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #252
	add r5, r5, r7
	str r6, [r5]
	mov r6, #252
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #130
	lsl r6, r6, #1
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #130
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #244
	add r5, r5, r7
	ldr r5, [r5]
	strb r6, [r5]
	ldr r6, [r7, #92]
	mov r4, #132
	lsl r4, r4, #1
	add r4, r4, r7
	str r6, [r4]
	ldr r5, [r7, #92]
	add r5, r5, #56
	mov r6, #134
	lsl r6, r6, #1
	add r6, r6, r7
	str r5, [r6]
	mov r4, #134
	lsl r4, r4, #1
	add r4, r4, r7
	ldr r4, [r4]
	ldrb r5, [r4]
	mov r4, #136
	lsl r4, r4, #1
	add r4, r4, r7
	strb r5, [r4]
	mov r5, #0
	mov r6, #140
	lsl r6, r6, #1
	add r6, r6, r7
	str r5, [r6]
	mov r4, #136
	lsl r4, r4, #1
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #140
	lsl r4, r4, #1
	add r4, r4, r7
	ldr r4, [r4]
	and r5, r5, r4
	mov r4, #138
	lsl r4, r4, #1
	add r4, r4, r7
	str r5, [r4]
	mov r5, #138
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #142
	lsl r5, r5, #1
	add r5, r5, r7
	strb r6, [r5]
	mov r4, #142
	lsl r4, r4, #1
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #134
	lsl r4, r4, #1
	add r4, r4, r7
	ldr r4, [r4]
	strb r5, [r4]
	ldr r5, [r7, #88]
	ldrh r6, [r5, #54]
	mov r5, #144
	lsl r5, r5, #1
	add r5, r5, r7
	strh r6, [r5]
	mov r4, #0
	mov r5, #148
	lsl r5, r5, #1
	add r5, r5, r7
	str r4, [r5]
	mov r6, #144
	lsl r6, r6, #1
	add r6, r6, r7
	ldrh r4, [r6]
	mov r6, #148
	lsl r6, r6, #1
	add r6, r6, r7
	ldr r6, [r6]
	and r4, r4, r6
	mov r6, #146
	lsl r6, r6, #1
	add r6, r6, r7
	str r4, [r6]
	mov r4, #146
	lsl r4, r4, #1
	add r4, r4, r7
	ldrh r5, [r4]
	mov r4, #150
	lsl r4, r4, #1
	add r4, r4, r7
	strh r5, [r4]
	mov r6, #150
	lsl r6, r6, #1
	add r6, r6, r7
	ldrh r4, [r6]
	ldr r6, [r7, #88]
	strh r4, [r6, #54]
	ldr r5, [r7, #84]
	mov r6, #152
	lsl r6, r6, #1
	add r6, r6, r7
	str r5, [r6]
	ldr r4, [r7, #84]
	add r4, r4, #53
	mov r5, #154
	lsl r5, r5, #1
	add r5, r5, r7
	str r4, [r5]
	mov r6, #154
	lsl r6, r6, #1
	add r6, r6, r7
	ldr r6, [r6]
	ldrb r4, [r6]
	mov r6, #156
	lsl r6, r6, #1
	add r6, r6, r7
	strb r4, [r6]
	mov r4, #0
	mov r5, #160
	lsl r5, r5, #1
	add r5, r5, r7
	str r4, [r5]
	mov r6, #156
	lsl r6, r6, #1
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #160
	lsl r6, r6, #1
	add r6, r6, r7
	ldr r6, [r6]
	and r4, r4, r6
	mov r6, #158
	lsl r6, r6, #1
	add r6, r6, r7
	str r4, [r6]
	mov r4, #158
	lsl r4, r4, #1
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #162
	lsl r4, r4, #1
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #162
	lsl r6, r6, #1
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #154
	lsl r6, r6, #1
	add r6, r6, r7
	ldr r6, [r6]
	strb r4, [r6]
	ldr r4, [r7, #80]
	mov r5, #164
	lsl r5, r5, #1
	add r5, r5, r7
	str r4, [r5]
	ldr r6, [r7, #80]
	add r6, r6, #52
	mov r4, #166
	lsl r4, r4, #1
	add r4, r4, r7
	str r6, [r4]
	mov r5, #166
	lsl r5, r5, #1
	add r5, r5, r7
	ldr r5, [r5]
	b _0803E934
	.byte 0x00
	.byte 0x00
_0803E930:
	.4byte gUnknown_03000948
_0803E934:
	ldrb r6, [r5]
	mov r5, #168
	lsl r5, r5, #1
	add r5, r5, r7
	strb r6, [r5]
	mov r6, #0
	mov r4, #172
	lsl r4, r4, #1
	add r4, r4, r7
	str r6, [r4]
	mov r5, #168
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #172
	lsl r5, r5, #1
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #170
	lsl r5, r5, #1
	add r5, r5, r7
	str r6, [r5]
	mov r6, #170
	lsl r6, r6, #1
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #174
	lsl r6, r6, #1
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #174
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #166
	lsl r5, r5, #1
	add r5, r5, r7
	ldr r5, [r5]
	strb r6, [r5]
	ldr r6, [r7, #76]
	ldrh r4, [r6, #36]
	mov r6, #176
	lsl r6, r6, #1
	add r6, r6, r7
	strh r4, [r6]
	mov r5, #0
	mov r6, #180
	lsl r6, r6, #1
	add r6, r6, r7
	str r5, [r6]
	mov r4, #176
	lsl r4, r4, #1
	add r4, r4, r7
	ldrh r5, [r4]
	mov r4, #180
	lsl r4, r4, #1
	add r4, r4, r7
	ldr r4, [r4]
	and r5, r5, r4
	mov r4, #178
	lsl r4, r4, #1
	add r4, r4, r7
	str r5, [r4]
	mov r5, #178
	lsl r5, r5, #1
	add r5, r5, r7
	ldrh r6, [r5]
	mov r5, #182
	lsl r5, r5, #1
	add r5, r5, r7
	strh r6, [r5]
	mov r4, #182
	lsl r4, r4, #1
	add r4, r4, r7
	ldrh r5, [r4]
	ldr r4, [r7, #76]
	strh r5, [r4, #36]
	ldr r6, [r7, #72]
	ldrh r4, [r6, #34]
	mov r6, #184
	lsl r6, r6, #1
	add r6, r6, r7
	strh r4, [r6]
	mov r5, #0
	mov r6, #188
	lsl r6, r6, #1
	add r6, r6, r7
	str r5, [r6]
	mov r4, #184
	lsl r4, r4, #1
	add r4, r4, r7
	ldrh r5, [r4]
	mov r4, #188
	lsl r4, r4, #1
	add r4, r4, r7
	ldr r4, [r4]
	and r5, r5, r4
	mov r4, #186
	lsl r4, r4, #1
	add r4, r4, r7
	str r5, [r4]
	mov r5, #186
	lsl r5, r5, #1
	add r5, r5, r7
	ldrh r6, [r5]
	mov r5, #190
	lsl r5, r5, #1
	add r5, r5, r7
	strh r6, [r5]
	mov r4, #190
	lsl r4, r4, #1
	add r4, r4, r7
	ldrh r5, [r4]
	ldr r4, [r7, #72]
	strh r5, [r4, #34]
	ldr r6, [r7, #68]
	mov r4, #192
	lsl r4, r4, #1
	add r4, r4, r7
	str r6, [r4]
	ldr r5, [r7, #68]
	add r5, r5, #33
	mov r6, #194
	lsl r6, r6, #1
	add r6, r6, r7
	str r5, [r6]
	mov r4, #194
	lsl r4, r4, #1
	add r4, r4, r7
	ldr r4, [r4]
	ldrb r5, [r4]
	mov r4, #196
	lsl r4, r4, #1
	add r4, r4, r7
	strb r5, [r4]
	mov r5, #0
	mov r6, #200
	lsl r6, r6, #1
	add r6, r6, r7
	str r5, [r6]
	mov r4, #196
	lsl r4, r4, #1
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #200
	lsl r4, r4, #1
	add r4, r4, r7
	ldr r4, [r4]
	and r5, r5, r4
	mov r4, #198
	lsl r4, r4, #1
	add r4, r4, r7
	str r5, [r4]
	mov r5, #198
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #202
	lsl r5, r5, #1
	add r5, r5, r7
	strb r6, [r5]
	mov r4, #202
	lsl r4, r4, #1
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #194
	lsl r4, r4, #1
	add r4, r4, r7
	ldr r4, [r4]
	strb r5, [r4]
	ldr r5, [r7, #64]
	mov r6, #204
	lsl r6, r6, #1
	add r6, r6, r7
	str r5, [r6]
	ldr r4, [r7, #64]
	add r4, r4, #32
	mov r5, #206
	lsl r5, r5, #1
	add r5, r5, r7
	str r4, [r5]
	mov r6, #206
	lsl r6, r6, #1
	add r6, r6, r7
	ldr r6, [r6]
	ldrb r4, [r6]
	mov r6, #208
	lsl r6, r6, #1
	add r6, r6, r7
	strb r4, [r6]
	mov r4, #0
	mov r5, #212
	lsl r5, r5, #1
	add r5, r5, r7
	str r4, [r5]
	mov r6, #208
	lsl r6, r6, #1
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #212
	lsl r6, r6, #1
	add r6, r6, r7
	ldr r6, [r6]
	and r4, r4, r6
	mov r6, #210
	lsl r6, r6, #1
	add r6, r6, r7
	str r4, [r6]
	mov r4, #210
	lsl r4, r4, #1
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #214
	lsl r4, r4, #1
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #214
	lsl r6, r6, #1
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #206
	lsl r6, r6, #1
	add r6, r6, r7
	ldr r6, [r6]
	strb r4, [r6]
	ldr r4, [r7, #60]
	ldrb r5, [r4, #31]
	mov r4, #216
	lsl r4, r4, #1
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #220
	lsl r4, r4, #1
	add r4, r4, r7
	str r6, [r4]
	mov r5, #216
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #220
	lsl r5, r5, #1
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #218
	lsl r5, r5, #1
	add r5, r5, r7
	str r6, [r5]
	mov r6, #218
	lsl r6, r6, #1
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #222
	lsl r6, r6, #1
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #222
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #60]
	strb r6, [r5, #31]
	ldr r4, [r7, #56]
	ldrb r5, [r4, #30]
	mov r4, #224
	lsl r4, r4, #1
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #228
	lsl r4, r4, #1
	add r4, r4, r7
	str r6, [r4]
	mov r5, #224
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #228
	lsl r5, r5, #1
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #226
	lsl r5, r5, #1
	add r5, r5, r7
	str r6, [r5]
	mov r6, #226
	lsl r6, r6, #1
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #230
	lsl r6, r6, #1
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #230
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #56]
	strb r6, [r5, #30]
	ldr r4, [r7, #52]
	ldrb r5, [r4, #27]
	mov r4, #232
	lsl r4, r4, #1
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #236
	lsl r4, r4, #1
	add r4, r4, r7
	str r6, [r4]
	mov r5, #232
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #236
	lsl r5, r5, #1
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #234
	lsl r5, r5, #1
	add r5, r5, r7
	str r6, [r5]
	mov r6, #234
	lsl r6, r6, #1
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #238
	lsl r6, r6, #1
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #238
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #52]
	strb r6, [r5, #27]
	ldr r4, [r7, #48]
	ldrb r5, [r4, #20]
	mov r4, #240
	lsl r4, r4, #1
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #244
	lsl r4, r4, #1
	add r4, r4, r7
	str r6, [r4]
	mov r5, #240
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #244
	lsl r5, r5, #1
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #242
	lsl r5, r5, #1
	add r5, r5, r7
	str r6, [r5]
	mov r6, #242
	lsl r6, r6, #1
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #246
	lsl r6, r6, #1
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #246
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #48]
	strb r6, [r5, #20]
	ldr r4, [r7, #44]
	ldrb r5, [r4, #19]
	mov r4, #248
	lsl r4, r4, #1
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #252
	lsl r4, r4, #1
	add r4, r4, r7
	str r6, [r4]
	mov r5, #248
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #252
	lsl r5, r5, #1
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #250
	lsl r5, r5, #1
	add r5, r5, r7
	str r6, [r5]
	mov r6, #250
	lsl r6, r6, #1
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #254
	lsl r6, r6, #1
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #254
	lsl r5, r5, #1
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #44]
	strb r6, [r5, #19]
	ldr r4, [r7, #40]
	ldrb r5, [r4, #18]
	mov r4, #128
	lsl r4, r4, #2
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #130
	lsl r4, r4, #2
	add r4, r4, r7
	str r6, [r4]
	mov r5, #128
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #130
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #129
	lsl r5, r5, #2
	add r5, r5, r7
	str r6, [r5]
	mov r6, #129
	lsl r6, r6, #2
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #131
	lsl r6, r6, #2
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #131
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #40]
	strb r6, [r5, #18]
	ldr r4, [r7, #36]
	ldrb r5, [r4, #17]
	mov r4, #132
	lsl r4, r4, #2
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #134
	lsl r4, r4, #2
	add r4, r4, r7
	str r6, [r4]
	mov r5, #132
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #134
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #133
	lsl r5, r5, #2
	add r5, r5, r7
	str r6, [r5]
	mov r6, #133
	lsl r6, r6, #2
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #135
	lsl r6, r6, #2
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #135
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #36]
	strb r6, [r5, #17]
	ldr r4, [r7, #32]
	ldrb r5, [r4, #16]
	mov r4, #136
	lsl r4, r4, #2
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #138
	lsl r4, r4, #2
	add r4, r4, r7
	str r6, [r4]
	mov r5, #136
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #138
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #137
	lsl r5, r5, #2
	add r5, r5, r7
	str r6, [r5]
	mov r6, #137
	lsl r6, r6, #2
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #139
	lsl r6, r6, #2
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #139
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #32]
	strb r6, [r5, #16]
	ldr r4, [r7, #28]
	ldrb r5, [r4, #15]
	mov r4, #140
	lsl r4, r4, #2
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #142
	lsl r4, r4, #2
	add r4, r4, r7
	str r6, [r4]
	mov r5, #140
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #142
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #141
	lsl r5, r5, #2
	add r5, r5, r7
	str r6, [r5]
	mov r6, #141
	lsl r6, r6, #2
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #143
	lsl r6, r6, #2
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #143
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #28]
	strb r6, [r5, #15]
	ldr r4, [r7, #24]
	ldrb r5, [r4, #14]
	mov r4, #144
	lsl r4, r4, #2
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #146
	lsl r4, r4, #2
	add r4, r4, r7
	str r6, [r4]
	mov r5, #144
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #146
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #145
	lsl r5, r5, #2
	add r5, r5, r7
	str r6, [r5]
	mov r6, #145
	lsl r6, r6, #2
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #147
	lsl r6, r6, #2
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #147
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #24]
	strb r6, [r5, #14]
	ldr r4, [r7, #20]
	ldrb r5, [r4, #13]
	mov r4, #148
	lsl r4, r4, #2
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #150
	lsl r4, r4, #2
	add r4, r4, r7
	str r6, [r4]
	mov r5, #148
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #150
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #149
	lsl r5, r5, #2
	add r5, r5, r7
	str r6, [r5]
	mov r6, #149
	lsl r6, r6, #2
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #151
	lsl r6, r6, #2
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #151
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #20]
	strb r6, [r5, #13]
	ldr r4, [r7, #16]
	ldrb r5, [r4, #12]
	mov r4, #152
	lsl r4, r4, #2
	add r4, r4, r7
	strb r5, [r4]
	mov r6, #0
	mov r4, #154
	lsl r4, r4, #2
	add r4, r4, r7
	str r6, [r4]
	mov r5, #152
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #154
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #153
	lsl r5, r5, #2
	add r5, r5, r7
	str r6, [r5]
	mov r6, #153
	lsl r6, r6, #2
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #155
	lsl r6, r6, #2
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #155
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	ldr r5, [r7, #16]
	strb r6, [r5, #12]
	ldr r4, [r7, #12]
	mov r5, #156
	lsl r5, r5, #2
	add r5, r5, r7
	str r4, [r5]
	ldr r6, [r7, #12]
	add r6, r6, #53
	mov r4, #157
	lsl r4, r4, #2
	add r4, r4, r7
	str r6, [r4]
	mov r5, #157
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	ldrb r6, [r5]
	mov r5, #158
	lsl r5, r5, #2
	add r5, r5, r7
	strb r6, [r5]
	mov r6, #0
	mov r4, #160
	lsl r4, r4, #2
	add r4, r4, r7
	str r6, [r4]
	mov r5, #158
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #160
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	and r6, r6, r5
	mov r5, #159
	lsl r5, r5, #2
	add r5, r5, r7
	str r6, [r5]
	mov r6, #159
	lsl r6, r6, #2
	add r6, r6, r7
	ldrb r4, [r6]
	mov r6, #161
	lsl r6, r6, #2
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #161
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #157
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	strb r6, [r5]
	ldr r6, [r7, #8]
	ldrb r4, [r6, #11]
	mov r6, #162
	lsl r6, r6, #2
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #0
	mov r6, #164
	lsl r6, r6, #2
	add r6, r6, r7
	str r5, [r6]
	mov r4, #162
	lsl r4, r4, #2
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #164
	lsl r4, r4, #2
	add r4, r4, r7
	ldr r4, [r4]
	and r5, r5, r4
	mov r4, #163
	lsl r4, r4, #2
	add r4, r4, r7
	str r5, [r4]
	mov r5, #163
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #165
	lsl r5, r5, #2
	add r5, r5, r7
	strb r6, [r5]
	mov r4, #165
	lsl r4, r4, #2
	add r4, r4, r7
	ldrb r5, [r4]
	ldr r4, [r7, #8]
	strb r5, [r4, #11]
	mov r6, r12
	ldrb r4, [r6, #10]
	mov r6, #166
	lsl r6, r6, #2
	add r6, r6, r7
	strb r4, [r6]
	mov r5, #0
	mov r6, #168
	lsl r6, r6, #2
	add r6, r6, r7
	str r5, [r6]
	mov r4, #166
	lsl r4, r4, #2
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, #168
	lsl r4, r4, #2
	add r4, r4, r7
	ldr r4, [r4]
	and r5, r5, r4
	mov r4, #167
	lsl r4, r4, #2
	add r4, r4, r7
	str r5, [r4]
	mov r5, #167
	lsl r5, r5, #2
	add r5, r5, r7
	ldrb r6, [r5]
	mov r5, #169
	lsl r5, r5, #2
	add r5, r5, r7
	strb r6, [r5]
	mov r4, #169
	lsl r4, r4, #2
	add r4, r4, r7
	ldrb r5, [r4]
	mov r4, r12
	strb r5, [r4, #10]
	mov r6, r10
	ldrh r6, [r6, #8]
	mov r12, r6
	mov r4, #0
	mov r5, #170
	lsl r5, r5, #2
	add r5, r5, r7
	str r4, [r5]
	mov r6, r12
	mov r4, #170
	lsl r4, r4, #2
	add r4, r4, r7
	ldr r4, [r4]
	and r6, r6, r4
	mov r12, r6
	mov r6, r12
	mov r5, #171
	lsl r5, r5, #2
	add r5, r5, r7
	strh r6, [r5]
	mov r4, #171
	lsl r4, r4, #2
	add r4, r4, r7
	ldrh r5, [r4]
	mov r4, r10
	strh r5, [r4, #8]
	mov r6, r9
	ldrb r6, [r6, #7]
	mov r10, r6
	mov r4, #0
	mov r12, r4
	mov r5, r10
	mov r6, r12
	and r5, r5, r6
	mov r10, r5
	mov r12, r10
	mov r5, r12
	mov r4, r9
	strb r5, [r4, #7]
	mov r6, r8
	ldrb r6, [r6, #6]
	mov r9, r6
	mov r4, #0
	mov r10, r4
	mov r5, r9
	mov r6, r10
	and r5, r5, r6
	mov r9, r5
	mov r10, r9
	mov r5, r10
	mov r4, r8
	strb r5, [r4, #6]
	mov r6, #174
	lsl r6, r6, #2
	add r6, r6, r7
	ldr r6, [r6]
	ldrb r6, [r6, #5]
	mov r8, r6
	mov r4, #0
	mov r9, r4
	mov r5, r8
	mov r6, r9
	and r5, r5, r6
	mov r8, r5
	mov r9, r8
	mov r5, r9
	mov r4, #174
	lsl r4, r4, #2
	add r4, r4, r7
	ldr r4, [r4]
	strb r5, [r4, #5]
	mov r5, #173
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	ldrb r6, [r5, #4]
	mov r5, #174
	lsl r5, r5, #2
	add r5, r5, r7
	strb r6, [r5]
	mov r6, #0
	mov r8, r6
	mov r4, #174
	lsl r4, r4, #2
	add r4, r4, r7
	ldrb r6, [r4]
	mov r4, r8
	and r6, r6, r4
	mov r8, r6
	mov r6, r8
	mov r5, #173
	lsl r5, r5, #2
	add r5, r5, r7
	ldr r5, [r5]
	strb r6, [r5, #4]
	mov r6, #172
	lsl r6, r6, #2
	add r6, r6, r7
	ldr r6, [r6]
	ldrb r5, [r6, #3]
	mov r6, #0
	and r5, r5, r6
	add r6, r5, #0
	mov r4, #172
	lsl r4, r4, #2
	add r4, r4, r7
	ldr r4, [r4]
	strb r6, [r4, #3]
	ldrb r4, [r3, #2]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	strb r5, [r3, #2]
	ldrb r3, [r2, #1]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strb r4, [r2, #1]
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1]
	ldrb r1, [r0, #4]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #4]
	ldr r0, [r7]
	mov r1, #0
	str r1, [r0, #44]
	mov r0, #1
	neg r0, r0
	str r0, [r7, #4]
	add r0, r7, #4
	ldr r2, [r7]
	add r1, r2, #0
	add r1, r1, #64
	ldr r2, _0803F0B4  @ =0x05000010
	bl CpuSet
	ldr r0, [r7]
	add r1, r0, #0
	add r1, r1, #144
	str r1, [r7]
	bl 0x0803E52C
_0803F0B4:
	@ assembler insists on doing 'add r0, r2, #0' instead for some fucking reason
	@ mov r0, r2
	.2byte 0x0010
	lsl r0, r0, #20
	mov r0, #0
	str r0, [r7, #4]
	add r0, r7, #4
	ldr r1, _0803F0DC  @ =gUnknown_03000840
	ldr r2, _0803F0E0  @ =0x05000040
	bl CpuSet
	mov r3, #175
	lsl r3, r3, #2
	add sp, sp, r3
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803F0DC:
	.4byte gUnknown_03000840
_0803F0E0:
	.4byte 0x05000040
	THUMB_FUNC_END sub_0803E518

	THUMB_FUNC_START sub_0803F0E4
sub_0803F0E4: @ 0x0803F0E4
	push {r4,r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _0803F104
	b _0803F27A
_0803F104:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #127
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #12
	bne _0803F11C
	b _0803F27A
_0803F11C:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #127
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #3
	bhi _0803F134
	b _0803F27A
_0803F134:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #127
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #21
	bls _0803F14C
	b _0803F27A
_0803F14C:
	ldr r1, [r7]
	ldr r0, [r1, #76]
	ldr r1, [r7]
	ldr r2, [r1, #76]
	add r1, r2, #0
	add r2, r2, #65
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r0, #0
	add r0, r0, #65
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #76]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #63
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #14
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1]
	add r1, r0, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #14
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #76]
	ldr r0, [r0, #48]
	ldr r1, [r2, #48]
	sub r0, r0, r1
	asr r1, r0, #1
	str r1, [r7, #8]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #76]
	ldr r0, [r0, #52]
	ldr r1, [r2, #52]
	sub r0, r0, r1
	asr r1, r0, #1
	str r1, [r7, #12]
	bl sub_080123E8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0803F27A
	ldr r0, [r7, #4]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #23
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #48]
	ldr r1, [r7, #8]
	sub r2, r2, r1
	str r2, [r0, #48]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	ldr r1, [r7, #12]
	sub r2, r2, r1
	str r2, [r0, #52]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7, #4]
	mov r0, #6
	bl sub_08012728
_0803F27A:
	add sp, sp, #16
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803F0E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803F284
sub_0803F284: @ 0x0803F284
	push {r4,r5,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	mov r0, #0
	str r0, [r7]
_0803F28E:
	ldr r0, _0803F29C  @ =gUnknown_03006C80
	ldrb r1, [r0]
	ldr r0, [r7]
	cmp r0, r1
	blt _0803F2A0
	b _0803F3BC
	.byte 0x00
	.byte 0x00
_0803F29C:
	.4byte gUnknown_03006C80
_0803F2A0:
	ldr r0, _0803F31C  @ =gUnknown_03006A30
	ldr r1, [r7]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, _0803F31C  @ =gUnknown_03006A30
	ldr r2, [r7]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r1, [r2]
	ldr r2, _0803F31C  @ =gUnknown_03006A30
	ldr r3, [r7]
	add r5, r3, #0
	lsl r4, r5, #3
	add r4, r4, r3
	lsl r3, r4, #4
	add r4, r2, r3
	add r2, r4, #0
	add r3, r4, #0
	add r3, r3, #63
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	ldrh r3, [r1, #54]
	add r1, r2, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r0, _0803F31C  @ =gUnknown_03006A30
	ldr r1, [r7]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #5]
	cmp r1, #3
	beq _0803F320
	ldr r0, _0803F31C  @ =gUnknown_03006A30
	ldr r1, [r7]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #5]
	cmp r1, #4
	beq _0803F320
	b _0803F338
_0803F31C:
	.4byte gUnknown_03006A30
_0803F320:
	ldr r0, _0803F3B8  @ =gUnknown_03006A30
	ldr r1, [r7]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	bl sub_0803F3C4
_0803F338:
	ldr r0, _0803F3B8  @ =gUnknown_03006A30
	ldr r1, [r7]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #54]
	mov r2, #4
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _0803F370
	ldr r0, _0803F3B8  @ =gUnknown_03006A30
	ldr r1, [r7]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	bl 0x080021EC
_0803F370:
	ldr r0, _0803F3B8  @ =gUnknown_03006A30
	ldr r1, [r7]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	ldr r0, [r1]
	cmp r0, #0
	beq _0803F3AE
	ldr r0, _0803F3B8  @ =gUnknown_03006A30
	ldr r1, [r7]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, _0803F3B8  @ =gUnknown_03006A30
	ldr r2, [r7]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #44
	add r2, r1, r2
	ldr r1, [r2]
	bl sub_0803F550
_0803F3AE:
	ldr r0, [r7]
	add r1, r0, #1
	str r1, [r7]
	b _0803F28E
	.byte 0x00
	.byte 0x00
_0803F3B8:
	.4byte gUnknown_03006A30
_0803F3BC:
	add sp, sp, #4
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803F284

	THUMB_FUNC_START sub_0803F3C4
sub_0803F3C4: @ 0x0803F3C4
	push {r4,r7,lr}
	sub sp, sp, #20
	mov r7, sp
	str r0, [r7]
	add r0, r7, #4
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #41
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, [r0, #108]
	ldr r0, [r1, #88]
	str r0, [r7, #8]
	add r0, r7, #0
	add r0, r0, #12
	ldr r1, [r7, #8]
	ldrb r2, [r1, #26]
	lsr r1, r2, #4
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803F488  @ =gUnknown_08427C2C
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	str r1, [r7, #16]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #20]
	cmp r1, #2
	beq _0803F410
	b _0803F546
_0803F410:
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	lsl r2, r1, #29
	lsr r0, r2, #31
	cmp r0, #0
	beq _0803F48C
	ldr r0, [r7, #8]
	ldr r1, [r7]
	add r2, r7, #4
	ldrb r3, [r2]
	ldr r4, [r7, #16]
	add r2, r3, r4
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #50]
	sub r1, r3, r2
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	b _0803F4B2
_0803F488:
	.4byte gUnknown_08427C2C
_0803F48C:
	ldr r0, [r7, #8]
	ldr r1, [r7]
	add r2, r7, #4
	ldrb r3, [r2]
	ldr r4, [r7, #16]
	add r2, r3, r4
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #50]
	add r1, r2, r3
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
_0803F4B2:
	ldr r0, [r7, #8]
	ldr r1, [r7, #8]
	add r2, r7, #4
	ldrb r3, [r2]
	ldr r4, [r7, #16]
	add r2, r3, r4
	add r3, r2, #1
	mov r4, #0
	ldrsb r4, [r3, r4]
	add r2, r4, #0
	ldrh r3, [r1, #58]
	add r1, r2, r3
	ldrh r2, [r0, #58]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #58]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	add r1, r2, #1
	str r1, [r0, #52]
	ldr r0, _0803F524  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #5]
	cmp r1, #4
	bne _0803F528
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	ldr r1, [r7, #8]
	add r0, r1, #0
	bl sub_0803D010
	b _0803F546
	.byte 0x00
	.byte 0x00
_0803F524:
	.4byte gUnknown_03006A30
_0803F528:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	lsr r1, r0, #1
	add r0, r1, #0
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803F546
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	add r1, r2, #1
	str r1, [r0, #52]
_0803F546:
	add sp, sp, #20
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803F3C4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803F550
sub_0803F550: @ 0x0803F550
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7, #4]
	add r0, r1, #0
	ldr r1, [r7]
	bl 0x0800238C
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803F57E
	ldr r1, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, [r1, #52]
	sub r1, r2, #1
	str r1, [r0, #52]
	b _0803F58A
_0803F57E:
	ldr r1, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldr r2, [r1, #52]
	add r1, r2, #1
	str r1, [r0, #52]
_0803F58A:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803F550

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803F594
sub_0803F594: @ 0x0803F594
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r2, r0, #0
	add r0, r1, #0
	add r1, r7, #0
	strb r2, [r1]
	add r1, r7, #1
	strb r0, [r1]
	add r0, r7, #0
	ldrb r1, [r0]
	cmp r1, #255
	bne _0803F5BC
	ldr r1, _0803F5B8  @ =0x00000203
	add r0, r1, #0
	bl sub_0800D6A4
	b _0803F610
_0803F5B8:
	.4byte 0x00000203
_0803F5BC:
	ldr r1, _0803F618  @ =0x00000201
	add r0, r1, #0
	bl sub_0800D6A4
	ldr r0, _0803F61C  @ =gUnknown_0201ED90
	add r1, r7, #1
	ldrb r2, [r1]
	add r1, r2, #0
	add r2, r1, #1
	add r1, r2, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	str r1, [r0, #8]
	ldr r0, _0803F61C  @ =gUnknown_0201ED90
	ldr r1, _0803F620  @ =0x080046DC
	ldr r3, _0803F624  @ =gUnknown_03006C80
	add r2, r3, #0
	add r3, r3, #80
	ldrb r2, [r3]
	sub r3, r2, #1
	add r2, r3, #0
	lsl r3, r2, #2
	add r1, r1, r3
	ldr r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	str r1, [r0, #12]
	ldr r0, _0803F61C  @ =gUnknown_0201ED90
	ldr r1, _0803F620  @ =0x080046DC
	ldr r3, _0803F624  @ =gUnknown_03006C80
	add r2, r3, #0
	add r3, r3, #80
	ldrb r2, [r3]
	add r3, r2, #0
	lsl r2, r3, #2
	add r1, r1, r2
	ldr r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #16
	lsr r1, r2, #16
	str r1, [r0, #16]
_0803F610:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_0803F618:
	.4byte 0x00000201
_0803F61C:
	.4byte gUnknown_0201ED90
_0803F620:
	.4byte 0x080046DC
_0803F624:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0803F594

	THUMB_FUNC_START sub_0803F628
sub_0803F628: @ 0x0803F628
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803F628

	THUMB_FUNC_START sub_0803F638
sub_0803F638: @ 0x0803F638
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _0803F6A8  @ =gUnknown_03006C80
	ldr r2, [r7]
	ldrb r3, [r2, #10]
	add r4, r3, #0
	lsl r2, r4, #1
	add r3, r1, #0
	add r1, r1, #132
	add r2, r1, r2
	ldrb r3, [r2]
	add r1, r3, #0
	lsl r2, r1, #4
	add r1, r2, #0
	mov r2, #8
	orr r1, r1, r2
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7]
	ldr r1, _0803F6A8  @ =gUnknown_03006C80
	ldr r2, [r7]
	ldrb r3, [r2, #10]
	add r2, r3, #0
	lsl r3, r2, #1
	add r2, r3, #1
	add r3, r1, #0
	add r1, r1, #132
	add r2, r1, r2
	ldrb r3, [r2]
	add r1, r3, #0
	lsl r2, r1, #4
	add r1, r2, #0
	mov r2, #8
	orr r1, r1, r2
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803F6A8:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0803F638

	THUMB_FUNC_START sub_0803F6AC
sub_0803F6AC: @ 0x0803F6AC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _0803F6F4  @ =gUnknown_084286E0
	ldr r1, [r7]
	ldrb r2, [r1, #9]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #65
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #65
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803F6F4:
	.4byte gUnknown_084286E0
	THUMB_FUNC_END sub_0803F6AC

	THUMB_FUNC_START sub_0803F6F8
sub_0803F6F8: @ 0x0803F6F8
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl sub_08012540
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803F6F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803F710
sub_0803F710: @ 0x0803F710
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _0803F744  @ =gUnknown_03000C00
	ldrb r1, [r0]
	cmp r1, #0
	bne _0803F734
	ldr r0, _0803F748  @ =gUnknown_0813E8A8
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
_0803F734:
	ldr r0, [r7]
	bl 0x08003688
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803F744:
	.4byte gUnknown_03000C00
_0803F748:
	.4byte gUnknown_0813E8A8
	THUMB_FUNC_END sub_0803F710

	THUMB_FUNC_START sub_0803F74C
sub_0803F74C: @ 0x0803F74C
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	ldr r0, _0803F7A4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, _0803F7A4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #4]
	cmp r1, #0
	bne _0803F7A8
	ldr r0, _0803F7A4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #2]
	mov r2, #32
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _0803F7A8
	b _0803FAD8
_0803F7A4:
	.4byte gUnknown_03006A30
_0803F7A8:
	ldr r0, _0803FA4C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	ldr r0, [r7]
	str r0, [r1]
	ldr r0, _0803FA4C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _0803FA4C  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #15]
	mov r3, #2
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #15]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #15]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #96
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #70
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	add r2, r1, #1
	add r1, r2, #0
	mov r2, #32
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #92
	add r2, r0, #0
	add r0, r0, #92
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	mov r0, #8
	bl sub_0800BD14
	ldr r1, [r7]
	str r0, [r1, #72]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	add r3, r2, #0
	add r2, r2, #66
	ldrb r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strb r4, [r2]
	add r2, r1, #0
	add r1, r1, #61
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1]
	add r1, r0, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #32
	add r2, r0, #0
	add r0, r0, #32
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #28]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	mov r2, #14
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl 0x0800238C
	ldr r0, _0803FA4C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #2]
	mov r2, #32
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803FA50
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7]
	ldr r1, _0803FA4C  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r3, r1, r2
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #62
	ldrb r1, [r2]
	lsl r2, r1, #30
	lsr r1, r2, #30
	lsl r2, r1, #24
	lsr r1, r2, #24
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r1, #0
	add r1, r2, #0
	add r1, r1, #8
	add r2, r0, #0
	add r0, r0, #68
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #24
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	bl sub_0803FEAC
	b _0803FAC2
	.byte 0x00
	.byte 0x00
_0803FA4C:
	.4byte gUnknown_03006A30
_0803FA50:
	ldr r0, [r7]
	ldr r1, _0803FACC  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r3, r1, r2
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #62
	ldrb r1, [r2]
	lsl r2, r1, #30
	lsr r1, r2, #30
	lsl r2, r1, #24
	lsr r1, r2, #24
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r1, #0
	add r1, r2, #4
	add r2, r0, #0
	add r0, r0, #68
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	bl sub_0803FAE8
	ldr r0, _0803FACC  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r4, [r1]
	ldr r5, _0803FAD0  @ =gUnknown_0813E8BF
	ldr r1, _0803FAD4  @ =gUnknown_0813E8BC
	add r0, r1, #0
	bl 0x08003184
	lsl r1, r0, #24
	lsr r0, r1, #24
	add r1, r5, r0
	ldrb r2, [r1]
	add r0, r4, #0
	add r1, r2, #0
	bl 0x08003E10
_0803FAC2:
	ldr r0, [r7]
	bl 0x080005F0
	b _0803FADE
	.byte 0x00
	.byte 0x00
_0803FACC:
	.4byte gUnknown_03006A30
_0803FAD0:
	.4byte gUnknown_0813E8BF
_0803FAD4:
	.4byte gUnknown_0813E8BC
_0803FAD8:
	ldr r0, [r7]
	bl sub_08012540
_0803FADE:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0803F74C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0803FAE8
sub_0803FAE8: @ 0x0803FAE8
	push {r4,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	ldr r0, _0803FB38  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, _0803FB38  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, [r7]
	cmp r0, r1
	beq _0803FB3C
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	ldr r1, [r0, #72]
	add r0, r1, #0
	bl sub_0800BE50
	ldr r0, [r7]
	bl sub_08012540
	b _0803FE9E
_0803FB38:
	.4byte gUnknown_03006A30
_0803FB3C:
	ldr r0, _0803FB9C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #4]
	cmp r1, #0
	bne _0803FBA0
	ldr r0, _0803FB9C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, _0803FB9C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	ldr r1, [r0, #72]
	add r0, r1, #0
	bl sub_0800BE50
	ldr r0, [r7]
	bl sub_08012540
	b _0803FE9E
	.byte 0x00
	.byte 0x00
_0803FB9C:
	.4byte gUnknown_03006A30
_0803FBA0:
	ldr r0, _0803FDA8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #4]
	mov r2, #128
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803FBDE
	ldr r0, _0803FDA8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	mov r1, #20
	bl 0x08003E10
_0803FBDE:
	ldr r0, _0803FDA8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	cmp r1, #0
	beq _0803FCCE
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _0803FDA8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	mov r2, #32
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803FC54
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #30]
	lsl r3, r2, #28
	lsr r1, r3, #28
	mov r2, #3
	eor r1, r1, r2
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #30]
	mov r3, #240
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #30]
_0803FC54:
	ldr r0, _0803FDA8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	mov r2, #64
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803FCCE
	ldr r0, [r7]
	ldr r1, _0803FDA8  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r3, r1, r2
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #62
	ldrb r1, [r2]
	lsl r2, r1, #30
	lsr r1, r2, #30
	lsl r2, r1, #24
	lsr r1, r2, #24
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r1, #0
	add r1, r2, #0
	add r1, r1, #8
	add r2, r0, #0
	add r0, r0, #68
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_0803FCCE:
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_08040074
	ldr r0, [r7]
	bl sub_0803F0E4
	ldr r0, [r7]
	bl sub_0804055C
	ldr r0, _0803FDA8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	cmp r1, #0
	beq _0803FCFA
	b _0803FE6C
_0803FCFA:
	ldr r0, _0803FDA8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r2, r0, r1
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #62
	ldrb r0, [r1]
	lsl r1, r0, #30
	lsr r0, r1, #30
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _0803FD20
	b _0803FE66
_0803FD20:
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #64
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _0803FD38
	b _0803FE66
_0803FD38:
	bl sub_080123E8
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0803FD46
	b _0803FE66
_0803FD46:
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, _0803FDA8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r2, r0, r1
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #62
	ldrb r0, [r1]
	lsl r1, r0, #30
	lsr r0, r1, #30
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #1
	bne _0803FDAC
	ldr r0, [r7, #8]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #20
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	b _0803FDC0
_0803FDA8:
	.4byte gUnknown_03006A30
_0803FDAC:
	ldr r0, [r7, #8]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #18
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
_0803FDC0:
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	lsl r2, r1, #29
	lsr r0, r2, #31
	cmp r0, #0
	beq _0803FE00
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, _0803FDFC  @ =gUnknown_0813EABC
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #33
	ldrb r3, [r4]
	add r4, r3, #0
	lsl r3, r4, #1
	add r2, r2, r3
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #50]
	sub r1, r3, r2
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	b _0803FE2E
_0803FDFC:
	.4byte gUnknown_0813EABC
_0803FE00:
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, _0803FE68  @ =gUnknown_0813EABC
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #33
	ldrb r3, [r4]
	add r4, r3, #0
	lsl r3, r4, #1
	add r2, r2, r3
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #50]
	add r1, r2, r3
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
_0803FE2E:
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, _0803FE68  @ =gUnknown_0813EABC
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #33
	ldrb r3, [r4]
	add r4, r3, #0
	lsl r3, r4, #1
	add r4, r3, #1
	add r2, r2, r4
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #54]
	add r1, r2, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r1, [r7, #8]
	mov r0, #6
	bl sub_08012728
_0803FE66:
	b _0803FE9E
_0803FE68:
	.4byte gUnknown_0813EABC
_0803FE6C:
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #32
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803FE9E
	ldr r0, _0803FEA8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	mov r1, #28
	bl 0x08003E10
_0803FE9E:
	add sp, sp, #12
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803FEA8:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_0803FAE8

	THUMB_FUNC_START sub_0803FEAC
sub_0803FEAC: @ 0x0803FEAC
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0803FF58  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, _0803FF58  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, [r7]
	cmp r0, r1
	beq _0803FEFA
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	ldr r1, [r0, #72]
	add r0, r1, #0
	bl sub_0800BE50
	ldr r0, [r7]
	bl sub_08012540
_0803FEFA:
	ldr r0, _0803FF58  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #4]
	cmp r1, #0
	bne _0803FF12
	b _0804003A
_0803FF12:
	ldr r0, _0803FF58  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _0803FF5C
	ldr r0, _0803FF58  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	ldr r1, [r0, #72]
	add r0, r1, #0
	bl sub_0800BE50
	ldr r0, [r7]
	bl sub_08012540
	b _08040066
	.byte 0x00
	.byte 0x00
_0803FF58:
	.4byte gUnknown_03006A30
_0803FF5C:
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803FFA4
	ldr r0, _0803FFA0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	ldr r1, [r0, #72]
	add r0, r1, #0
	bl sub_0800BE50
	ldr r0, [r7]
	bl sub_08012540
	b _08040038
_0803FFA0:
	.4byte gUnknown_03006A30
_0803FFA4:
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_08040074
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #32
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0803FFCC
	ldr r1, [r7, #4]
	add r0, r1, #0
	mov r1, #192
	bl 0x08003E10
_0803FFCC:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #33
	ldrb r0, [r1]
	cmp r0, #104
	bls _0803FFE8
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #33
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0803FFE8:
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #8
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08040028
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	bl sub_080407E0
	b _08040038
_08040028:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_08040038:
	b _08040066
_0804003A:
	ldr r0, _08040070  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	ldr r1, [r0, #72]
	add r0, r1, #0
	bl sub_0800BE50
	ldr r0, [r7]
	bl sub_08012540
_08040066:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08040070:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_0803FEAC

	THUMB_FUNC_START sub_08040074
sub_08040074: @ 0x08040074
	push {r4,r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #33
	ldrb r3, [r2]
	add r1, r3, #0
	sub r1, r1, #37
	add r2, r0, #0
	add r0, r0, #33
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, _080400D0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	mov r2, #64
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _080400D4
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #251
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	b _0804013C
_080400D0:
	.4byte gUnknown_03006A30
_080400D4:
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	mov r1, #2
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08040116
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #29
	lsr r1, r3, #31
	mov r2, #1
	eor r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #2
	ldrb r2, [r0, #28]
	mov r3, #251
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	b _0804013C
_08040116:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #29
	lsr r1, r3, #31
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #2
	ldrb r2, [r0, #28]
	mov r3, #251
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
_0804013C:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08040154
	b _0804041E
_08040154:
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804016E
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #129
	beq _0804016E
	b _080401F8
_0804016E:
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #61
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #62
	add r2, r0, #0
	add r0, r0, #62
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #66
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	add r3, r2, #0
	add r2, r2, #66
	ldrb r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strb r4, [r2]
	add r2, r1, #0
	add r1, r1, #62
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_080401F8:
	ldr r0, _08040234  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	cmp r1, #0
	bne _08040210
	b _0804041E
_08040210:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #127
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #52
	beq _0804023E
	cmp r0, #52
	bgt _08040238
	cmp r0, #12
	beq _08040240
	cmp r0, #38
	beq _08040240
	b _0804039C
_08040234:
	.4byte gUnknown_03006A30
_08040238:
	cmp r0, #63
	beq _0804023E
	b _0804039C
_0804023E:
	b _0804041E
_08040240:
	ldr r0, _08040394  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _08040394  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #27]
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	ldrb r2, [r0, #27]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #27]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #66
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	bl sub_080123E8
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08040336
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, _08040398  @ =gUnknown_0813E8DC
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #42
	ldrb r3, [r4]
	add r2, r2, r3
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #50]
	add r1, r2, r3
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, _08040398  @ =gUnknown_0813E8DC
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #42
	ldrb r3, [r4]
	add r4, r3, #1
	add r2, r2, r4
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #54]
	add r1, r2, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r1, [r7, #8]
	mov r0, #6
	bl sub_08012728
_08040336:
	ldr r0, _08040394  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	mov r2, #32
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08040390
	ldr r0, _08040394  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _08040394  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #27]
	mov r3, #254
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #27]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #27]
_08040390:
	b _0804041E
	.byte 0x00
	.byte 0x00
_08040394:
	.4byte gUnknown_03006A30
_08040398:
	.4byte gUnknown_0813E8DC
_0804039C:
	ldr r0, _08040460  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	mov r2, #192
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _0804041E
	ldr r0, _08040460  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, _08040460  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #4]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #4]
	ldr r0, _08040460  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	ldr r1, [r0, #72]
	add r0, r1, #0
	bl sub_0800BE50
	ldr r0, [r7]
	bl sub_08012540
_0804041E:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804048A
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08040464
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #61
	ldrb r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _0804048A
_08040460:
	.4byte gUnknown_03006A30
_08040464:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #61
	ldrb r3, [r2]
	add r1, r3, #1
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_0804048A:
	add r0, r7, #0
	add r0, r0, #12
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #33
	ldrb r1, [r2]
	add r2, r1, #0
	sub r2, r2, #37
	add r1, r2, #0
	lsl r2, r1, #2
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #72]
	ldr r1, _08040558  @ =gUnknown_0813E918
	add r2, r7, #0
	add r2, r2, #12
	ldrh r3, [r2]
	add r1, r1, r3
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #72]
	ldr r1, _08040558  @ =gUnknown_0813E918
	add r2, r7, #0
	add r2, r2, #12
	ldrh r3, [r2]
	add r2, r3, #1
	add r1, r1, r2
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
	ldr r1, [r7]
	ldr r0, [r1, #72]
	ldr r1, _08040558  @ =gUnknown_0813E918
	add r2, r7, #0
	add r2, r2, #12
	ldrh r3, [r2]
	add r2, r3, #2
	add r1, r1, r2
	ldrb r2, [r0, #6]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #6]
	ldr r1, [r7]
	ldr r0, [r1, #72]
	ldr r1, _08040558  @ =gUnknown_0813E918
	add r2, r7, #0
	add r2, r2, #12
	ldrh r3, [r2]
	add r2, r3, #3
	add r1, r1, r2
	ldrb r2, [r0, #7]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #7]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	lsl r2, r1, #29
	lsr r0, r2, #31
	cmp r0, #0
	beq _08040550
	ldr r1, [r7]
	ldr r0, [r1, #72]
	ldr r1, [r7]
	ldr r2, [r1, #72]
	ldrb r3, [r2]
	neg r1, r3
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_08040550:
	add sp, sp, #16
	pop {r4,r7}
	pop {r0}
	bx r0
_08040558:
	.4byte gUnknown_0813E918
	THUMB_FUNC_END sub_08040074

	THUMB_FUNC_START sub_0804055C
sub_0804055C: @ 0x0804055C
	push {r4,r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	ldr r0, _080406E0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #15
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08040592
	b _080407CE
_08040592:
	add r0, r7, #0
	add r0, r0, #12
	ldr r1, _080406E4  @ =gUnknown_0813E8F0
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #41
	ldrb r2, [r3]
	mov r3, #15
	and r2, r2, r3
	add r4, r2, #0
	lsl r3, r4, #24
	lsr r2, r3, #24
	sub r3, r2, #1
	add r2, r3, #0
	lsl r3, r2, #1
	add r1, r1, r3
	ldrb r2, [r1]
	strb r2, [r0]
	add r0, r7, #0
	add r0, r0, #13
	ldr r1, _080406E4  @ =gUnknown_0813E8F0
	ldr r3, [r7, #4]
	add r2, r3, #0
	add r3, r3, #41
	ldrb r2, [r3]
	mov r3, #15
	and r2, r2, r3
	add r4, r2, #0
	lsl r3, r4, #24
	lsr r2, r3, #24
	sub r3, r2, #1
	add r2, r3, #0
	lsl r3, r2, #1
	add r2, r3, #1
	add r1, r1, r2
	ldrb r2, [r1]
	strb r2, [r0]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #15
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #3
	bhi _0804060E
	ldr r0, [r7, #4]
	ldrb r1, [r0, #28]
	lsl r2, r1, #29
	lsr r0, r2, #31
	cmp r0, #0
	beq _0804060E
	add r0, r7, #0
	add r0, r0, #12
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	neg r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0804060E:
	ldr r0, [r7]
	ldr r1, [r0, #56]
	cmp r1, #0
	beq _08040618
	b _080407CE
_08040618:
	ldr r0, _080406E0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #18]
	cmp r1, #172
	bne _08040630
	b _080407CE
_08040630:
	ldr r0, [r7]
	add r1, r7, #0
	add r1, r1, #12
	mov r2, #0
	ldrsb r2, [r1, r2]
	add r1, r2, #0
	ldrh r0, [r0, #50]
	add r1, r1, r0
	add r2, r1, #0
	lsl r0, r2, #16
	lsr r2, r0, #16
	ldr r0, [r7]
	add r1, r7, #0
	add r1, r1, #13
	mov r3, #0
	ldrsb r3, [r1, r3]
	add r1, r3, #0
	ldrh r0, [r0, #54]
	add r1, r1, r0
	add r3, r1, #0
	lsl r0, r3, #16
	lsr r3, r0, #16
	ldr r0, [r7]
	mov r1, #0
	bl 0x080017EC
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0804066E
	b _080407CE
_0804066E:
	ldr r0, _080406E0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	cmp r1, #0
	bne _08040686
	b _080407CE
_08040686:
	ldr r0, _080406E0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #27]
	mov r2, #192
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _080406AA
	b _080407CE
_080406AA:
	add r4, r7, #0
	add r4, r4, #14
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r0, r7, #0
	add r0, r0, #13
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, [r7]
	bl 0x0800934C
	add r1, r0, #0
	strb r1, [r4]
	add r0, r7, #0
	add r0, r0, #14
	ldrb r1, [r0]
	cmp r1, #59
	beq _080406E8
	add r0, r7, #0
	add r0, r0, #14
	ldrb r1, [r0]
	cmp r1, #81
	beq _080406E8
	b _0804070C
	.byte 0x00
	.byte 0x00
_080406E0:
	.4byte gUnknown_03006A30
_080406E4:
	.4byte gUnknown_0813E8F0
_080406E8:
	ldr r0, _08040708  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	mov r1, #31
	bl 0x08003E10
	b _08040728
	.byte 0x00
	.byte 0x00
_08040708:
	.4byte gUnknown_03006A30
_0804070C:
	ldr r0, _080407D8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	mov r1, #29
	bl 0x08003E10
_08040728:
	bl sub_080123E8
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _080407CE
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #26
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, _080407DC  @ =gUnknown_0813E904
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #42
	ldrb r3, [r4]
	add r2, r2, r3
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #50]
	add r1, r2, r3
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, _080407DC  @ =gUnknown_0813E904
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #42
	ldrb r3, [r4]
	add r4, r3, #1
	add r2, r2, r4
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #54]
	add r1, r2, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r1, [r7, #8]
	mov r0, #6
	bl sub_08012728
_080407CE:
	add sp, sp, #16
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080407D8:
	.4byte gUnknown_03006A30
_080407DC:
	.4byte gUnknown_0813E904
	THUMB_FUNC_END sub_0804055C

	THUMB_FUNC_START sub_080407E0
sub_080407E0: @ 0x080407E0
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	add r0, r7, #7
	mov r2, #16
	neg r2, r2
	add r1, r2, #0
	strb r1, [r0]
	add r0, r7, #4
	mov r1, #0
	strb r1, [r0]
_080407F8:
	add r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #2
	bls _08040802
	b _08040888
_08040802:
	add r0, r7, #6
	mov r2, #16
	neg r2, r2
	add r1, r2, #0
	strb r1, [r0]
	add r0, r7, #5
	mov r1, #0
	strb r1, [r0]
_08040812:
	add r0, r7, #5
	ldrb r1, [r0]
	cmp r1, #2
	bls _0804081C
	b _0804086A
_0804081C:
	ldr r0, [r7]
	add r1, r7, #6
	mov r2, #0
	ldrsb r2, [r1, r2]
	add r1, r2, #0
	ldrh r0, [r0, #50]
	add r1, r1, r0
	add r2, r1, #0
	lsl r0, r2, #16
	lsr r2, r0, #16
	ldr r0, [r7]
	add r1, r7, #7
	mov r3, #0
	ldrsb r3, [r1, r3]
	add r1, r3, #0
	ldrh r0, [r0, #54]
	add r1, r1, r0
	add r3, r1, #0
	lsl r0, r3, #16
	lsr r3, r0, #16
	ldr r0, [r7]
	mov r1, #0
	bl 0x08001B70
	add r0, r7, #6
	add r1, r7, #6
	ldrb r2, [r1]
	add r1, r2, #0
	add r1, r1, #16
	add r2, r1, #0
	strb r2, [r0]
	add r1, r7, #5
	add r0, r7, #5
	add r1, r7, #5
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08040812
_0804086A:
	add r0, r7, #7
	add r1, r7, #7
	ldrb r2, [r1]
	add r1, r2, #0
	add r1, r1, #16
	add r2, r1, #0
	strb r2, [r0]
	add r1, r7, #4
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _080407F8
_08040888:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080407E0

	THUMB_FUNC_START sub_08040890
sub_08040890: @ 0x08040890
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _080408AC  @ =gUnknown_03000C00
	ldrb r1, [r0]
	cmp r1, #0
	beq _080408B0
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	cmp r1, #0
	beq _080408AA
	b _08040B02
_080408AA:
	b _080408B0
_080408AC:
	.4byte gUnknown_03000C00
_080408B0:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #100
	ldrh r0, [r1]
	cmp r0, #0
	beq _080408C4
	ldr r0, [r7]
	bl sub_08041088
	b _08040B02
_080408C4:
	ldr r0, _0804098C  @ =gUnknown_0813EAFC
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	cmp r1, #3
	bne _080408E8
	b _08040B02
_080408E8:
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	beq _08040994
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08040988
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #80
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #24]
	ldr r0, [r7]
	mov r1, #0
	str r1, [r0, #96]
	ldr r0, [r7]
	ldrb r1, [r0, #29]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	ldr r0, [r7]
	bl 0x08003B94
	ldr r0, _08040990  @ =gUnknown_03000488
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, _08040990  @ =gUnknown_03000488
	ldrh r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #2]
	ldr r0, _08040990  @ =gUnknown_03000488
	ldrh r1, [r0, #4]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #4]
	ldr r1, _08040990  @ =gUnknown_03000488
	add r0, r1, #0
	ldr r1, [r7]
	bl sub_0803D770
_08040988:
	b _08040B02
	.byte 0x00
	.byte 0x00
_0804098C:
	.4byte gUnknown_0813EAFC
_08040990:
	.4byte gUnknown_03000488
_08040994:
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	cmp r1, #0
	bne _0804099E
	b _08040B02
_0804099E:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #24]
	sub r1, r2, #1
	ldrb r2, [r0, #24]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #24]
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	cmp r1, #0
	beq _080409C2
	b _08040AFC
_080409C2:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	cmp r1, #2
	bne _080409EC
	ldr r0, [r7]
	ldrb r1, [r0, #21]
	cmp r1, #1
	bne _080409EC
	ldr r0, _08040AF4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #11]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #5]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #5]
_080409EC:
	ldr r0, [r7]
	bl 0x08003BCC
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldr r1, _08040AF8  @ =gUnknown_0842873C
	str r1, [r0, #72]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	bl sub_080123E8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08040AE2
	ldr r0, [r7, #4]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #32
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrb r2, [r0, #10]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1, #10]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #10]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	str r2, [r0, #52]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r1, [r7, #4]
	mov r0, #6
	bl sub_08012728
_08040AE2:
	ldr r0, [r7]
	mov r1, #3
	bl sub_08053564
	ldr r0, [r7]
	bl sub_08041328
	b _08040B02
	.byte 0x00
	.byte 0x00
_08040AF4:
	.4byte gUnknown_03006A30
_08040AF8:
	.4byte gUnknown_0842873C
_08040AFC:
	ldr r0, [r7]
	bl sub_08041200
_08040B02:
	ldr r0, [r7]
	bl 0x08003688
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08040890

	THUMB_FUNC_START sub_08040B10
sub_08040B10: @ 0x08040B10
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #10]
	cmp r1, #255
	bne _08040B7C
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	b _08040BBA
_08040B7C:
	ldr r0, [r7]
	ldrb r1, [r0, #10]
	cmp r1, #254
	bne _08040BA6
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #10]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #10]
	b _08040BBA
_08040BA6:
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
_08040BBA:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #22
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #68
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #70
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, _08040D1C  @ =gUnknown_08428744
	str r1, [r0, #72]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #11
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #32
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #206
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #192
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #30]
	mov r3, #15
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #16
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1, #30]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #9
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	ldrb r1, [r0, #26]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #26]
	ldr r0, [r7]
	mov r1, #5
	bl 0x08003870
	bl sub_080123E8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08040D12
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #100
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r1, [r7, #4]
	mov r0, #2
	bl sub_08012728
_08040D12:
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08040D1C:
	.4byte gUnknown_08428744
	THUMB_FUNC_END sub_08040B10

	THUMB_FUNC_START sub_08040D20
sub_08040D20: @ 0x08040D20
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #104]
	cmp r1, #0
	beq _08040D50
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #24]
_08040D50:
	ldr r0, [r7]
	bl 0x08003B64
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08040D20

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08040D60
sub_08040D60: @ 0x08040D60
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	mov r1, #0
	str r1, [r0, #104]
	ldr r0, _08040D8C  @ =gUnknown_08428728
	ldr r1, [r7]
	ldrb r2, [r1, #21]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08040D8C:
	.4byte gUnknown_08428728
	THUMB_FUNC_END sub_08040D60

	THUMB_FUNC_START sub_08040D90
sub_08040D90: @ 0x08040D90
	push {r4,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	ldr r0, _08040F70  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #11]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #8]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #21]
	add r1, r2, #1
	ldrb r2, [r0, #21]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #21]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r0, [r0, #23]
	ldrb r1, [r1, #24]
	orr r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08040DDE
	b _08040F5E
_08040DDE:
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #22
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #68
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #10
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #70
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, _08040F74  @ =gUnknown_08428744
	str r1, [r0, #72]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #11
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #32
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #206
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #192
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #30]
	mov r3, #15
	and r2, r2, r3
	add r3, r2, #0
	mov r4, #16
	add r2, r3, #0
	orr r2, r2, r4
	add r3, r2, #0
	strb r3, [r1, #30]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #9
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	ldrb r1, [r0, #26]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #26]
	ldr r0, [r7]
	mov r1, #5
	bl 0x08003870
	bl sub_080123E8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08040F5E
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #100
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r1, [r7, #4]
	mov r0, #2
	bl sub_08012728
_08040F5E:
	ldr r1, [r7, #8]
	ldr r0, [r7]
	bl 0x0800238C
	add sp, sp, #12
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08040F70:
	.4byte gUnknown_03006A30
_08040F74:
	.4byte gUnknown_08428744
	THUMB_FUNC_END sub_08040D90

	THUMB_FUNC_START sub_08040F78
sub_08040F78: @ 0x08040F78
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _08040FB0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #11]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08040FB0:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08040F78

	THUMB_FUNC_START sub_08040FB4
sub_08040FB4: @ 0x08040FB4
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08040FB4

	THUMB_FUNC_START sub_08040FDC
sub_08040FDC: @ 0x08040FDC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	sub r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #21]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #21]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #60
	bls _08041026
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
_08041026:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08040FDC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08041030
sub_08041030: @ 0x08041030
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl sub_08012540
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08041030

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08041048
sub_08041048: @ 0x08041048
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #23]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #255
	bne _08041080
	ldr r0, [r7]
	bl sub_08012540
_08041080:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08041048

	THUMB_FUNC_START sub_08041088
sub_08041088: @ 0x08041088
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #84]
	str r1, [r7, #4]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	cmp r1, #0
	bne _08041138
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #9
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #32
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #206
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #192
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #30]
	mov r3, #15
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1, #30]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #9
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	mov r1, #6
	bl 0x08003870
_08041138:
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldr r2, [r1, #52]
	add r1, r2, #1
	str r1, [r0, #52]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #23]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #255
	bne _080411D8
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #30
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	mov r0, #83
	bl 0x08003DFC
_080411D8:
	ldr r0, [r7, #4]
	ldrb r1, [r0, #20]
	cmp r1, #3
	beq _080411F2
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	cmp r1, #8
	bne _080411F2
	ldr r0, [r7, #4]
	ldrb r1, [r0, #9]
	cmp r1, #4
	bne _080411F2
	b _080411F8
_080411F2:
	ldr r0, [r7]
	bl sub_08012540
_080411F8:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08041088

	THUMB_FUNC_START sub_08041200
sub_08041200: @ 0x08041200
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	cmp r1, #40
	bls _08041218
	add r0, r7, #4
	mov r1, #8
	strb r1, [r0]
	b _080412D2
_08041218:
	add r0, r7, #4
	mov r1, #4
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r0, #96]
	mov r2, #128
	lsl r2, r2, #8
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0804123C
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #96]
	add r1, r2, #0
	sub r1, r1, #16
	str r1, [r0, #96]
	b _08041248
_0804123C:
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #96]
	add r1, r2, #0
	add r1, r1, #16
	str r1, [r0, #96]
_08041248:
	ldr r0, [r7]
	ldr r1, [r0, #96]
	mov r2, #240
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08041266
	ldr r0, [r7]
	ldr r1, [r0, #96]
	mov r2, #240
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #128
	bhi _08041266
	b _08041274
_08041266:
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #96]
	mov r1, #128
	lsl r1, r1, #8
	eor r2, r2, r1
	str r2, [r0, #96]
_08041274:
	ldr r0, _080412F8  @ =gUnknown_03000488
	ldr r1, [r7]
	ldr r2, [r1, #96]
	add r1, r2, #0
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #152
	lsl r3, r3, #1
	sub r1, r3, r2
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, _080412F8  @ =gUnknown_03000488
	ldr r1, [r7]
	ldr r2, [r1, #96]
	add r1, r2, #0
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #152
	lsl r3, r3, #1
	sub r1, r3, r2
	ldrh r2, [r0, #2]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #2]
	ldr r0, _080412F8  @ =gUnknown_03000488
	ldrh r1, [r0, #4]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #4]
	ldr r1, _080412F8  @ =gUnknown_03000488
	add r0, r1, #0
	ldr r1, [r7]
	bl sub_0803D770
_080412D2:
	ldr r0, [r7]
	add r1, r7, #4
	ldrb r0, [r0, #24]
	ldrb r1, [r1]
	add r2, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _080412FC
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #30]
	b _0804131E
	.byte 0x00
	.byte 0x00
_080412F8:
	.4byte gUnknown_03000488
_080412FC:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #30]
	lsl r3, r2, #24
	lsr r1, r3, #28
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #30]
	mov r3, #240
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #30]
_0804131E:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08041200

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08041328
sub_08041328: @ 0x08041328
	push {r7,lr}
	sub sp, sp, #20
	mov r7, sp
	str r0, [r7]
	mov r0, #16
	str r0, [r7, #12]
	add r0, r7, #0
	add r0, r0, #16
	mov r1, #3
	strb r1, [r0]
_0804133C:
	add r0, r7, #0
	add r0, r0, #16
	ldrb r1, [r0]
	cmp r1, #0
	bne _08041348
	b _08041404
_08041348:
	mov r0, #16
	str r0, [r7, #8]
	add r0, r7, #0
	add r0, r0, #17
	mov r1, #3
	strb r1, [r0]
_08041354:
	add r0, r7, #0
	add r0, r0, #17
	ldrb r1, [r0]
	cmp r1, #0
	bne _08041360
	b _080413E6
_08041360:
	ldr r1, [r7, #8]
	add r0, r1, #0
	lsl r2, r0, #16
	asr r1, r2, #16
	ldr r2, [r7, #12]
	add r0, r2, #0
	lsl r3, r0, #16
	asr r2, r3, #16
	ldr r0, [r7]
	bl 0x0800934C
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #59
	bne _080413C8
	mov r0, #73
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080413C8
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r3, [r7, #8]
	add r2, r3, #0
	ldrh r3, [r1, #50]
	add r1, r2, r3
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r3, [r7, #12]
	add r2, r3, #0
	ldrh r3, [r1, #54]
	add r1, r2, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
_080413C8:
	ldr r0, [r7, #8]
	add r1, r0, #0
	sub r1, r1, #16
	str r1, [r7, #8]
	add r1, r7, #0
	add r1, r1, #17
	add r0, r7, #0
	add r0, r0, #17
	add r1, r7, #0
	add r1, r1, #17
	ldrb r2, [r1]
	sub r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08041354
_080413E6:
	ldr r0, [r7, #12]
	add r1, r0, #0
	sub r1, r1, #16
	str r1, [r7, #12]
	add r1, r7, #0
	add r1, r1, #16
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #16
	ldrb r2, [r1]
	sub r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _0804133C
_08041404:
	add sp, sp, #20
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08041328

	THUMB_FUNC_START sub_0804140C
sub_0804140C: @ 0x0804140C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08041440  @ =gUnknown_03000C00
	ldrb r1, [r0]
	cmp r1, #0
	bne _08041430
	ldr r0, _08041444  @ =gUnknown_0842874C
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
_08041430:
	ldr r0, [r7]
	bl 0x08003688
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08041440:
	.4byte gUnknown_03000C00
_08041444:
	.4byte gUnknown_0842874C
	THUMB_FUNC_END sub_0804140C

	THUMB_FUNC_START sub_08041448
sub_08041448: @ 0x08041448
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _08041598  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, _08041598  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	ldr r0, [r7]
	str r0, [r1]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #20
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	mov r2, #14
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #32
	add r2, r0, #0
	add r0, r0, #32
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #28]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl 0x0800238C
	ldr r0, [r7]
	bl sub_0804159C
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08041598:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08041448

	THUMB_FUNC_START sub_0804159C
sub_0804159C: @ 0x0804159C
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _080415F4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, _080415F4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #15]
	mov r2, #2
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _080415F8
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	b _08041604
	.byte 0x00
	.byte 0x00
_080415F4:
	.4byte gUnknown_03006A30
_080415F8:
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #30]
_08041604:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #23]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #255
	bne _0804164C
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r1, [r7, #4]
	add r0, r1, #0
	mov r1, #79
	bl 0x08003E10
_0804164C:
	ldr r0, _0804171C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #15]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08041720
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #29
	lsr r1, r3, #31
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #2
	ldrb r2, [r0, #28]
	mov r3, #251
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #28
	lsr r1, r3, #31
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #3
	ldrb r2, [r0, #28]
	mov r3, #247
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #33
	ldrb r3, [r2]
	add r1, r3, #0
	sub r1, r1, #123
	add r2, r0, #0
	add r0, r0, #33
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #41
	add r2, r0, #0
	add r0, r0, #41
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #47
	add r2, r0, #0
	add r0, r0, #47
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _0804173C
	.byte 0x00
	.byte 0x00
_0804171C:
	.4byte gUnknown_03006A30
_08041720:
	ldr r0, _08041744  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [r7]
	bl sub_08012540
_0804173C:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
_08041744:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_0804159C

	THUMB_FUNC_START sub_08041748
sub_08041748: @ 0x08041748
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _0804177C  @ =gUnknown_03000C00
	ldrb r1, [r0]
	cmp r1, #0
	bne _0804176C
	ldr r0, _08041780  @ =gUnknown_0813EB48
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
_0804176C:
	ldr r0, [r7]
	bl 0x08003688
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804177C:
	.4byte gUnknown_03000C00
_08041780:
	.4byte gUnknown_0813EB48
	THUMB_FUNC_END sub_08041748

	THUMB_FUNC_START sub_08041784
sub_08041784: @ 0x08041784
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _080418DC  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #94
	ldrb r1, [r2]
	lsl r2, r1, #30
	lsr r1, r2, #30
	add r2, r0, #0
	add r0, r0, #94
	mov r2, #3
	and r1, r1, r2
	ldrb r2, [r0]
	mov r3, #252
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #42
	add r2, r0, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	cmp r1, #0
	bne _08041850
	b _08041B64
_08041850:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #70
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #21
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #108
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #106
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #9
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #68
	ldrb r0, [r1]
	cmp r0, #3
	bls _080418E0
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	str r1, [r0, #12]
	b _080418E8
	.byte 0x00
	.byte 0x00
_080418DC:
	.4byte gUnknown_03006A30
_080418E0:
	ldr r0, [r7]
	mov r1, #192
	lsl r1, r1, #2
	str r1, [r0, #12]
_080418E8:
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	mov r2, #14
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	add r2, r1, #0
	lsl r1, r2, #2
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #32
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #192
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #192
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldr r2, _08041A1C  @ =gUnknown_0813EB60
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #42
	ldrb r3, [r4]
	add r2, r2, r3
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #50]
	add r1, r2, r3
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldr r2, _08041A1C  @ =gUnknown_0813EB60
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #42
	ldrb r3, [r4]
	add r4, r3, #1
	add r2, r2, r4
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1, #54]
	add r1, r2, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #80
	ldrh r0, [r1]
	mov r1, #192
	lsl r1, r1, #8
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	mov r1, #128
	lsl r1, r1, #8
	cmp r0, r1
	bne _080419DC
	ldr r0, [r7]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
_080419DC:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #2
	bne _08041A20
	ldr r0, [r7]
	mov r1, #5
	str r1, [r0, #100]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #4
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	b _08041A5E
	.byte 0x00
	.byte 0x00
_08041A1C:
	.4byte gUnknown_0813EB60
_08041A20:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #0
	bne _08041A36
	ldr r0, [r7]
	mov r1, #5
	neg r1, r1
	str r1, [r0, #104]
	b _08041A5E
_08041A36:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #4
	bne _08041A56
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #8
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	mov r1, #5
	str r1, [r0, #104]
	b _08041A5E
_08041A56:
	ldr r0, [r7]
	mov r1, #5
	neg r1, r1
	str r1, [r0, #100]
_08041A5E:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #2
	beq _08041A78
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #6
	beq _08041A78
	b _08041A9C
_08041A78:
	ldr r0, [r7]
	ldr r1, _08041A98  @ =gUnknown_0813EB8C
	str r1, [r0, #72]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #35
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	b _08041ABA
_08041A98:
	.4byte gUnknown_0813EB8C
_08041A9C:
	ldr r0, [r7]
	ldr r1, _08041B5C  @ =gUnknown_0813EB94
	str r1, [r0, #72]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #35
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08041ABA:
	ldr r0, [r7]
	bl 0x080005F0
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #68
	ldrb r0, [r1]
	cmp r0, #3
	bls _08041AEE
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #35
	ldrb r3, [r2]
	add r1, r3, #0
	add r1, r1, #13
	add r2, r0, #0
	add r0, r0, #35
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_08041AEE:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #35
	ldrb r2, [r1]
	ldr r0, [r7]
	add r1, r2, #0
	bl 0x08003870
	ldr r0, _08041B60  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	mov r1, #2
	bl 0x08003E10
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r3, [r2]
	add r1, r3, #1
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #92
	add r2, r0, #0
	add r0, r0, #92
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	b _08041C2E
	.byte 0x00
	.byte 0x00
_08041B5C:
	.4byte gUnknown_0813EB94
_08041B60:
	.4byte gUnknown_03006A30
_08041B64:
	ldr r0, _08041C38  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	ldr r0, [r7]
	str r0, [r1]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl 0x0800238C
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #68
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #98
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #32
	add r2, r0, #0
	add r0, r0, #32
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #28]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	lsr r1, r0, #1
	add r0, r1, #0
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #1
	bne _08041C0A
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #4
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
_08041C0A:
	ldr r0, [r7]
	ldrb r1, [r0, #10]
	mov r0, #82
	mov r2, #1
	bl sub_0804C8A8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08041C2E
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	str r2, [r0, #52]
_08041C2E:
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08041C38:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08041784

	THUMB_FUNC_START sub_08041C3C
sub_08041C3C: @ 0x08041C3C
	push {r4,r5,r7,lr}
	sub sp, sp, #20
	mov r7, sp
	str r0, [r7]
	ldr r0, _08041CDC  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #16]
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	cmp r1, #0
	bne _08041C64
	b _08041FD0
_08041C64:
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #108
	ldrb r0, [r1]
	cmp r0, #23
	bhi _08041C9C
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #28]
	lsl r3, r2, #30
	lsr r1, r3, #30
	mov r2, #1
	eor r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #28]
	mov r3, #252
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
_08041C9C:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #108
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #108
	ldrb r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #108
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #108
	ldrb r0, [r1]
	cmp r0, #0
	bne _08041CE0
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	bl sub_08012540
	b _080421FC
_08041CDC:
	.4byte gUnknown_03006A30
_08041CE0:
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #100]
	add r1, r2, #0
	ldrh r0, [r0, #50]
	add r1, r1, r0
	add r2, r1, #0
	lsl r0, r2, #16
	lsr r2, r0, #16
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r3, [r1, #104]
	add r1, r3, #0
	ldrh r0, [r0, #54]
	add r1, r1, r0
	add r3, r1, #0
	lsl r0, r3, #16
	lsr r3, r0, #16
	ldr r0, [r7]
	mov r1, #4
	bl 0x080017EC
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08041D30
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #68
	ldrb r0, [r1]
	cmp r0, #3
	bhi _08041D2E
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	bl sub_08012540
	b _080421FC
_08041D2E:
	b _08041FCE
_08041D30:
	ldr r0, [r7]
	bl sub_0803CC20
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	add r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #68
	ldrb r0, [r1]
	cmp r0, #3
	bls _08041D7A
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #7
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08041D7A
	ldr r0, [r7]
	mov r1, #20
	mov r2, #0
	bl sub_0804CB38
_08041D7A:
	ldr r0, [r7]
	ldrb r1, [r0, #11]
	cmp r1, #0
	bne _08041D88
	ldr r0, [r7]
	bl 0x0800402C
_08041D88:
	ldr r0, [r7]
	bl sub_0803F0E4
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #80
	ldrh r2, [r1]
	add r0, r2, #0
	bl sub_08015DC0
	str r0, [r7, #4]
	add r0, r7, #0
	add r0, r0, #8
	ldr r1, [r7, #4]
	ldr r3, [r7]
	mov r4, #50
	ldrsh r2, [r3, r4]
	ldr r3, _08041F84  @ =gUnknown_03000450
	ldrh r4, [r3, #24]
	sub r3, r2, r4
	asr r2, r3, #4
	ldr r4, [r7]
	mov r5, #54
	ldrsh r3, [r4, r5]
	ldr r4, _08041F84  @ =gUnknown_03000450
	ldrh r5, [r4, #26]
	sub r3, r3, r5
	asr r4, r3, #4
	lsl r3, r4, #6
	orr r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #1
	add r1, r1, #4
	add r2, r1, r2
	ldrh r1, [r2]
	lsl r2, r1, #21
	lsr r1, r2, #21
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	add r1, r7, #0
	add r1, r1, #8
	ldrh r2, [r1]
	add r3, r2, #0
	lsl r1, r3, #1
	add r2, r0, #0
	ldr r2, _08041F88  @ =0x00005004
	add r0, r0, r2
	add r1, r0, r1
	ldrh r0, [r1]
	ldr r1, _08041F8C  @ =0x08008840
	bl 0x080012CC
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _08041ED0
	ldr r0, [r7]
	bl 0x0800935C
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #70
	beq _08041ED0
	ldr r1, _08041F90  @ =0x08003538
	ldr r0, [r7]
	ldrh r2, [r0, #50]
	ldr r0, [r7]
	ldrh r3, [r0, #54]
	ldr r0, [r7]
	bl 0x08003748
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08041ED0
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #30
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #68
	ldrb r0, [r1]
	cmp r0, #3
	bls _08041E7C
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #35
	ldrb r3, [r2]
	add r1, r3, #0
	sub r1, r1, #13
	add r2, r0, #0
	add r0, r0, #35
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_08041E7C:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #35
	ldrb r0, [r1]
	add r1, r0, #2
	add r2, r1, #0
	lsl r0, r2, #24
	lsr r1, r0, #24
	ldr r0, [r7]
	bl 0x08003870
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #60
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1]
	mov r1, #0
	str r1, [r0, #12]
	ldr r0, [r7]
	ldr r2, [r7]
	ldr r1, [r2, #48]
	cmp r1, #0
	bge _08041EBA
	mov r1, #0
_08041EBA:
	str r1, [r0, #48]
	ldr r0, [r7]
	ldr r2, [r7]
	ldr r1, [r2, #52]
	cmp r1, #0
	bge _08041EC8
	mov r1, #0
_08041EC8:
	str r1, [r0, #52]
	mov r0, #144
	bl 0x08003DFC
_08041ED0:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	cmp r0, #0
	bne _08041EDE
	b _08041FCE
_08041EDE:
	ldr r0, [r7]
	bl 0x08000620
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #63
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08041F94
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #63
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #21
	bhi _08041F94
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #43
	ldrb r1, [r2]
	mov r2, #16
	eor r1, r1, r2
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #1
	str r1, [r0, #12]
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #8
	str r1, [r0, #16]
	ldr r0, [r7]
	mov r1, #8
	bl 0x08003870
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	b _08041FCE
_08041F84:
	.4byte gUnknown_03000450
_08041F88:
	.4byte 0x00005004
_08041F8C:
	.4byte 0x08008840
_08041F90:
	.4byte 0x08003538
_08041F94:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
_08041FCE:
	b _080421FC
_08041FD0:
	ldr r0, _08042060  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r2, r0, r1
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #33
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804207C
	ldr r0, _08042060  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r2, r0, r1
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #33
	ldrb r0, [r1]
	cmp r0, #119
	bhi _08042064
	ldr r0, _08042060  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r2, r0, r1
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #33
	ldr r0, _08042060  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _08042060  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r3, r1, r2
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #33
	ldrb r3, [r2]
	add r1, r3, #1
	add r2, r0, #0
	add r0, r0, #33
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _0804207C
	.byte 0x00
	.byte 0x00
_08042060:
	.4byte gUnknown_03006A30
_08042064:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #68
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_0804207C:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #68
	ldrb r0, [r1]
	cmp r0, #3
	bls _080420C4
	ldr r0, _080420B4  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r2, #7
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #3
	bhi _080420B8
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	b _080420C4
	.byte 0x00
	.byte 0x00
_080420B4:
	.4byte gUnknown_03000E20
_080420B8:
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #30]
_080420C4:
	ldr r0, [r7]
	ldr r1, [r7, #16]
	add r2, r1, #0
	add r1, r1, #33
	add r2, r0, #0
	add r0, r0, #33
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7, #16]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #1
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0804217C
	bl sub_080123E8
	str r0, [r7, #12]
	ldr r0, [r7, #12]
	cmp r0, #0
	beq _0804217C
	ldr r0, [r7, #12]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #12]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #12]
	ldr r1, [r7]
	ldrb r2, [r0, #10]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1, #10]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #10]
	ldr r0, [r7, #12]
	ldrb r1, [r0, #24]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #24]
	ldr r0, [r7, #12]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #68
	add r2, r0, #0
	add r0, r0, #68
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7, #12]
	mov r0, #2
	bl sub_08012728
_0804217C:
	ldr r0, _080421B8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #4]
	cmp r1, #0
	beq _080421BC
	ldr r0, _080421B8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #4]
	mov r2, #8
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _080421BC
	b _080421FC
	.byte 0x00
	.byte 0x00
_080421B8:
	.4byte gUnknown_03006A30
_080421BC:
	ldr r0, _08042204  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, _08042204  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	add r1, r0, #0
	add r0, r0, #33
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	bl sub_08012540
_080421FC:
	add sp, sp, #20
	pop {r4,r5,r7}
	pop {r0}
	bx r0
_08042204:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08041C3C

	THUMB_FUNC_START sub_08042208
sub_08042208: @ 0x08042208
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #14
	bhi _0804222A
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #35
	ldrb r2, [r1]
	ldr r0, [r7]
	add r1, r2, #0
	bl 0x08003870
	b _08042230
_0804222A:
	ldr r0, [r7]
	bl 0x08003828
_08042230:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #23]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #255
	bne _08042260
	ldr r0, [r7]
	bl sub_08012540
_08042260:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08042208

	THUMB_FUNC_START sub_08042268
sub_08042268: @ 0x08042268
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_0803CC20
	mov r1, #128
	lsl r1, r1, #6
	ldr r0, [r7]
	bl 0x08003594
	cmp r0, #0
	bne _08042290
	ldr r0, [r7]
	bl sub_08012540
_08042290:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08042268

	THUMB_FUNC_START sub_08042298
sub_08042298: @ 0x08042298
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _080422CC  @ =gUnknown_03000C00
	ldrb r1, [r0]
	cmp r1, #0
	bne _080422BC
	ldr r0, _080422D0  @ =gUnknown_0813EB9C
	ldr r1, [r7]
	ldrb r2, [r1, #21]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
_080422BC:
	ldr r0, [r7]
	bl 0x08003688
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080422CC:
	.4byte gUnknown_03000C00
_080422D0:
	.4byte gUnknown_0813EB9C
	THUMB_FUNC_END sub_08042298

	THUMB_FUNC_START sub_080422D4
sub_080422D4: @ 0x080422D4
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	ldr r0, _0804236C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, [r7]
	ldr r1, [r0, #88]
	str r1, [r7, #8]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #21]
	add r1, r2, #1
	ldrb r2, [r0, #21]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #21]
	ldr r0, [r7]
	ldr r1, _08042370  @ =gUnknown_0813EC00
	str r1, [r0, #72]
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08042374
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldr r2, [r1, #52]
	str r2, [r0, #52]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldrb r2, [r0, #26]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1, #26]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #26]
	ldr r0, [r7, #8]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	b _08042450
_0804236C:
	.4byte gUnknown_03006A30
_08042370:
	.4byte gUnknown_0813EC00
_08042374:
	ldr r0, [r7]
	ldr r1, [r7]
	str r1, [r7, #8]
	str r1, [r0, #88]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldr r1, _0804248C  @ =gUnknown_0813EBB4
	ldr r2, [r7]
	ldrb r3, [r2, #24]
	add r2, r3, #0
	lsl r3, r2, #2
	add r2, r3, #1
	add r1, r1, r2
	add r2, r0, #0
	add r0, r0, #32
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, _0804248C  @ =gUnknown_0813EBB4
	ldr r2, [r7]
	ldrb r3, [r2, #24]
	add r2, r3, #0
	lsl r3, r2, #2
	add r2, r3, #2
	add r1, r1, r2
	ldrb r2, [r1]
	add r1, r2, #0
	mov r2, #15
	and r1, r1, r2
	ldrb r2, [r0, #30]
	mov r3, #240
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #30]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #11
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #192
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, _0804248C  @ =gUnknown_0813EBB4
	ldr r1, [r7]
	ldrb r2, [r1, #24]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldrb r1, [r0]
	ldr r0, [r7]
	bl 0x08003870
	ldr r0, [r7]
	ldrb r1, [r0, #26]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #26]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
_08042450:
	ldr r1, [r7]
	ldr r0, [r7, #8]
	ldrb r2, [r0, #8]
	add r0, r2, #0
	add r2, r1, #0
	add r1, r1, #100
	ldrh r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strh r2, [r1]
	ldr r1, [r7]
	ldr r0, [r7, #8]
	ldrb r2, [r0, #9]
	add r0, r2, #0
	add r2, r1, #0
	add r1, r1, #102
	ldrh r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strh r2, [r1]
	add sp, sp, #12
	pop {r7}
	pop {r0}
	bx r0
_0804248C:
	.4byte gUnknown_0813EBB4
	THUMB_FUNC_END sub_080422D4

	THUMB_FUNC_START sub_08042490
sub_08042490: @ 0x08042490
	push {r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	ldr r0, _080424E8  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, [r7]
	ldr r1, [r0, #84]
	str r1, [r7, #8]
	ldr r0, [r7]
	ldr r1, [r0, #88]
	str r1, [r7, #12]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #100
	ldr r1, [r7, #12]
	ldrb r2, [r1, #8]
	add r1, r2, #0
	ldrh r0, [r0]
	lsl r2, r1, #16
	lsr r1, r2, #16
	cmp r0, r1
	beq _080424EC
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #102
	ldr r1, [r7, #12]
	ldrb r2, [r1, #9]
	add r1, r2, #0
	ldrh r0, [r0]
	lsl r2, r1, #16
	lsr r1, r2, #16
	cmp r0, r1
	beq _080424EC
	b _08042578
_080424E8:
	.4byte gUnknown_03006A30
_080424EC:
	ldr r0, [r7, #12]
	ldrb r1, [r0, #20]
	cmp r1, #2
	beq _08042518
	ldr r1, [r7]
	ldrb r0, [r1, #10]
	add r2, r0, #0
	lsl r1, r2, #3
	add r1, r1, r0
	lsl r0, r1, #4
	ldr r2, _08042514  @ =gUnknown_03006A30
	add r1, r0, r2
	add r0, r1, #0
	bl 0x080012A0
	ldr r0, [r7]
	bl sub_08012540
	b _08042576
	.byte 0x00
	.byte 0x00
_08042514:
	.4byte gUnknown_03006A30
_08042518:
	ldr r0, _0804253C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #5]
	cmp r1, #0
	beq _08042540
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #113
	ldrb r0, [r1]
	cmp r0, #0
	bne _08042540
	b _08042576
_0804253C:
	.4byte gUnknown_03006A30
_08042540:
	ldr r0, [r7]
	bl sub_08042A90
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #21]
	add r1, r2, #1
	ldrb r2, [r0, #21]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #21]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	mov r1, #0
	str r1, [r0, #16]
_08042576:
	b _08042594
_08042578:
	ldr r1, [r7]
	ldrb r0, [r1, #10]
	add r2, r0, #0
	lsl r1, r2, #3
	add r1, r1, r0
	lsl r0, r1, #4
	ldr r2, _0804259C  @ =gUnknown_03006A30
	add r1, r0, r2
	add r0, r1, #0
	bl 0x080012A0
	ldr r0, [r7]
	bl sub_08012540
_08042594:
	add sp, sp, #16
	pop {r7}
	pop {r0}
	bx r0
_0804259C:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08042490

	THUMB_FUNC_START sub_080425A0
sub_080425A0: @ 0x080425A0
	push {r7,lr}
	sub sp, sp, #20
	mov r7, sp
	str r0, [r7]
	ldr r0, _080425E0  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, [r7]
	ldr r1, [r0, #88]
	str r1, [r7, #8]
	ldr r0, [r7]
	ldr r1, [r0, #88]
	str r1, [r7, #8]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #20]
	cmp r1, #2
	beq _080425E4
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	bl sub_08012540
	b _08042A70
_080425E0:
	.4byte gUnknown_03006A30
_080425E4:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0804260A
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_0804260A:
	ldr r0, [r7]
	ldr r1, [r0, #12]
	cmp r1, #0
	bne _08042614
	b _080429EE
_08042614:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #66
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08042658
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #62
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #66
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_08042658:
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	cmp r1, #1
	beq _0804266A
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	cmp r1, #3
	beq _0804266A
	b _08042672
_0804266A:
	ldr r0, [r7]
	bl 0x08002E64
	b _080426D4
_08042672:
	ldr r0, _080426BC  @ =gUnknown_0813EBCC
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #43
	ldrb r1, [r2]
	lsr r2, r1, #2
	add r1, r2, #0
	lsl r2, r1, #24
	lsr r1, r2, #24
	add r0, r0, r1
	mov r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, _080426BC  @ =gUnknown_0813EBCC
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #43
	ldrb r2, [r3]
	lsr r3, r2, #2
	add r2, r3, #0
	lsl r3, r2, #24
	lsr r2, r3, #24
	add r3, r2, #1
	add r0, r0, r3
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, [r7]
	bl 0x0800934C
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #70
	bne _080426C0
	ldr r0, [r7]
	bl sub_0803CC20
	b _080426D4
	.byte 0x00
	.byte 0x00
_080426BC:
	.4byte gUnknown_0813EBCC
_080426C0:
	ldr r0, [r7]
	bl 0x080093A4
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #38
	beq _080426D4
	ldr r0, [r7]
	bl 0x08002E64
_080426D4:
	mov r1, #128
	lsl r1, r1, #6
	ldr r0, [r7]
	bl 0x08003594
	cmp r0, #0
	beq _080426E4
	b _08042948
_080426E4:
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #16]
	str r2, [r0, #16]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	str r2, [r0, #52]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r0, [r7]
	mov r1, #0
	mov r2, #3
	bl 0x08009394
	add r1, r7, #0
	add r1, r1, #18
	strb r0, [r1]
	add r1, r7, #0
	add r1, r1, #18
	ldrb r0, [r1]
	cmp r0, #32
	bge _08042720
	b _080427DC
_08042720:
	cmp r0, #33
	ble _0804272E
	cmp r0, #37
	bgt _080427DC
	cmp r0, #36
	blt _080427DC
	b _0804272E
_0804272E:
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	cmp r1, #1
	beq _080427A6
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #54]
	add r1, r2, #3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	add r1, r7, #0
	add r1, r1, #18
	ldrb r0, [r1]
	cmp r0, #33
	beq _0804276C
	cmp r0, #33
	bgt _08042762
	cmp r0, #32
	beq _08042784
	b _08042790
_08042762:
	cmp r0, #36
	beq _08042784
	cmp r0, #37
	beq _08042778
	b _08042790
_0804276C:
	ldr r0, [r7]
	mov r1, #0
	mov r2, #0
	bl sub_0804CB38
	b _08042790
_08042778:
	ldr r0, [r7]
	mov r1, #12
	mov r2, #0
	bl sub_0804CB38
	b _08042790
_08042784:
	ldr r0, [r7]
	mov r1, #11
	mov r2, #0
	bl sub_0804CB38
	b _08042790
_08042790:
	ldr r0, [r7, #8]
	ldrb r1, [r0, #21]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #21]
	b _080427CE
_080427A6:
	add r1, r7, #0
	add r1, r1, #18
	ldrb r0, [r1]
	cmp r0, #33
	beq _080427B6
	cmp r0, #37
	beq _080427B8
	b _080427BA
_080427B6:
	b _080427BA
_080427B8:
	b _080427BA
_080427BA:
	ldr r0, [r7, #8]
	ldrb r1, [r0, #21]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #21]
_080427CE:
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	bl sub_08012540
	b _08042946
_080427DC:
	ldr r0, [r7]
	ldr r1, [r0, #88]
	ldr r0, [r7]
	cmp r1, r0
	bne _0804287E
	ldr r0, [r7]
	ldrb r1, [r0, #11]
	cmp r1, #0
	beq _08042870
	ldr r0, [r7]
	ldrb r1, [r0, #11]
	cmp r1, #15
	bne _08042804
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	ldr r0, [r7]
	mov r2, #128
	bl sub_0804CB38
	b _08042870
_08042804:
	bl sub_080123E8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08042870
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrb r2, [r0, #9]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1, #11]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #9]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrb r2, [r0, #10]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1, #23]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #10]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	str r2, [r0, #52]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r1, [r7, #4]
	mov r0, #6
	bl sub_08012728
_08042870:
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	bl sub_08012540
	b _08042944
_0804287E:
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08042898
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	cmp r1, #6
	bne _0804290E
	ldr r0, [r7, #8]
	ldrb r1, [r0, #9]
	cmp r1, #5
	beq _08042898
	b _0804290E
_08042898:
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #1
	bne _080428AA
	ldr r1, [r7, #4]
	add r0, r1, #0
	mov r1, #10
	bl 0x08003E10
_080428AA:
	ldr r0, [r7, #8]
	ldrb r1, [r0, #21]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #21]
	ldr r0, [r7]
	bl 0x08008DD8
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	bl sub_08012540
	b _08042944
_0804290E:
	ldr r1, [r7, #4]
	add r0, r1, #0
	mov r1, #10
	bl 0x08003E10
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	add r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #9
	str r1, [r0, #16]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #12]
	asr r1, r2, #1
	str r1, [r0, #12]
_08042944:
	b _08042946
_08042946:
	b _080429EC
_08042948:
	ldr r0, [r7]
	bl 0x0800402C
	ldr r0, [r7]
	bl sub_0803D010
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	str r2, [r0, #52]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #16]
	str r2, [r0, #16]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_080429EC:
	b _08042A70
_080429EE:
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #1
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08042A2C
	ldr r0, _08042A28  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	mov r1, #194
	bl 0x08003E10
	ldr r0, [r7]
	bl sub_08042A90
	b _08042A70
_08042A28:
	.4byte gUnknown_03006A30
_08042A2C:
	ldr r0, _08042A50  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #5]
	cmp r1, #0
	beq _08042A54
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #113
	ldrb r0, [r1]
	cmp r0, #0
	bne _08042A54
	b _08042A70
_08042A50:
	.4byte gUnknown_03006A30
_08042A54:
	ldr r0, [r7]
	bl sub_08042A90
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	mov r1, #0
	str r1, [r0, #16]
_08042A70:
	add sp, sp, #20
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080425A0

	THUMB_FUNC_START sub_08042A78
sub_08042A78: @ 0x08042A78
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl sub_08012540
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08042A78

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08042A90
sub_08042A90: @ 0x08042A90
	push {r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	add r0, r7, #4
	ldr r1, [r7]
	ldrb r2, [r1, #26]
	lsr r1, r2, #4
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08042B1C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #8]
	ldr r0, [r7]
	ldr r1, [r0, #88]
	str r1, [r7, #12]
	ldr r0, [r7, #8]
	mov r1, #0
	str r1, [r0, #108]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #100
	ldr r1, [r7, #12]
	ldrb r2, [r1, #8]
	add r1, r2, #0
	ldrh r0, [r0]
	lsl r2, r1, #16
	lsr r1, r2, #16
	cmp r0, r1
	beq _08042ADE
	b _08042C90
_08042ADE:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #102
	ldr r1, [r7, #12]
	ldrb r2, [r1, #9]
	add r1, r2, #0
	ldrh r0, [r0]
	lsl r2, r1, #16
	lsr r1, r2, #16
	cmp r0, r1
	beq _08042AF6
	b _08042C90
_08042AF6:
	ldr r0, [r7]
	ldr r1, [r0, #88]
	ldr r0, [r7]
	cmp r1, r0
	beq _08042B20
	ldr r0, [r7]
	ldr r1, [r0, #88]
	str r1, [r7, #12]
	ldr r0, [r7, #12]
	ldrb r1, [r0, #21]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #21]
	b _08042B38
_08042B1C:
	.4byte gUnknown_03006A30
_08042B20:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08042B38:
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r0, [r7]
	ldr r1, [r7, #12]
	ldr r2, [r1, #72]
	str r2, [r0, #72]
	ldr r0, [r7]
	ldr r1, _08042C88  @ =gUnknown_0813EBDC
	add r2, r7, #4
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #2
	add r1, r1, r3
	ldr r2, [r1]
	str r2, [r0, #12]
	ldr r0, [r7]
	ldr r1, _08042C8C  @ =gUnknown_0813EBE8
	add r2, r7, #4
	ldrb r3, [r2]
	add r2, r3, #0
	lsl r3, r2, #2
	add r1, r1, r3
	ldr r2, [r1]
	str r2, [r0, #16]
	ldr r0, [r7]
	ldr r1, [r7, #12]
	ldrh r2, [r0, #58]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #58]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #58]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #54]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #50]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #68
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #70
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #23
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	add r2, r1, #0
	add r1, r1, #60
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	bl 0x080005F0
	b _08042CAC
	.byte 0x00
	.byte 0x00
_08042C88:
	.4byte gUnknown_0813EBDC
_08042C8C:
	.4byte gUnknown_0813EBE8
_08042C90:
	ldr r1, [r7]
	ldrb r0, [r1, #10]
	add r2, r0, #0
	lsl r1, r2, #3
	add r1, r1, r0
	lsl r0, r1, #4
	ldr r2, _08042CB4  @ =gUnknown_03006A30
	add r1, r0, r2
	add r0, r1, #0
	bl 0x080012A0
	ldr r0, [r7]
	bl sub_08012540
_08042CAC:
	add sp, sp, #16
	pop {r7}
	pop {r0}
	bx r0
_08042CB4:
	.4byte gUnknown_03006A30
	THUMB_FUNC_END sub_08042A90

	THUMB_FUNC_START sub_08042CB8
sub_08042CB8: @ 0x08042CB8
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	cmp r1, #0
	beq _08042D88
	ldr r0, _08042D58  @ =gUnknown_03000C00
	ldrb r1, [r0]
	cmp r1, #0
	bne _08042D86
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #101
	ldrb r0, [r1]
	cmp r0, #0
	beq _08042D02
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #101
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #101
	ldrb r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #101
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_08042D02:
	ldr r0, _08042D5C  @ =gUnknown_0842875C
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	beq _08042D86
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08042D60
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #61
	ldrb r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _08042D86
_08042D58:
	.4byte gUnknown_03000C00
_08042D5C:
	.4byte gUnknown_0842875C
_08042D60:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #61
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #61
	ldrb r3, [r2]
	add r1, r3, #1
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_08042D86:
	b _08042D9C
_08042D88:
	ldr r0, _08042DAC  @ =gUnknown_0842875C
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
_08042D9C:
	ldr r0, [r7]
	bl 0x08003688
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08042DAC:
	.4byte gUnknown_0842875C
	THUMB_FUNC_END sub_08042CB8

	THUMB_FUNC_START sub_08042DB0
sub_08042DB0: @ 0x08042DB0
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _08042F54  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, _08042F54  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	ldr r0, [r7]
	str r0, [r1]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, _08042F58  @ =gUnknown_03000414
	ldr r1, [r7]
	ldrb r0, [r0]
	ldrb r1, [r1, #10]
	cmp r0, r1
	bne _08042E2A
	ldr r0, [r7]
	ldrb r1, [r0, #31]
	mov r2, #1
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #31]
_08042E2A:
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #68
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #70
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #18
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	mov r2, #14
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #29]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #29]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #29]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #31]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #31]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #31]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #32
	add r2, r0, #0
	add r0, r0, #32
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #28]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r0, [r7]
	bl sub_08042F5C
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08042F54:
	.4byte gUnknown_03006A30
_08042F58:
	.4byte gUnknown_03000414
	THUMB_FUNC_END sub_08042DB0

	THUMB_FUNC_START sub_08042F5C
sub_08042F5C: @ 0x08042F5C
	push {r4,r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	ldr r0, _08042F94  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #8]
	ldr r1, [r7, #8]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #0
	beq _08042F98
	ldr r1, [r7, #8]
	add r0, r1, #0
	add r1, r1, #61
	ldrb r0, [r1]
	cmp r0, #129
	beq _08042F98
	b _08043022
_08042F94:
	.4byte gUnknown_03006A30
_08042F98:
	ldr r0, [r7, #8]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #61
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #62
	add r2, r0, #0
	add r0, r0, #62
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #66
	add r2, r0, #0
	add r0, r0, #66
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	add r3, r2, #0
	add r2, r2, #66
	ldrb r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strb r4, [r2]
	add r2, r1, #0
	add r1, r1, #62
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_08043022:
	ldr r0, _080430FC  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #3]
	cmp r1, #0
	bne _0804303A
	b _080431AC
_0804303A:
	ldr r0, _080430FC  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	ldr r0, [r7]
	ldr r1, [r1]
	cmp r0, r1
	beq _08043056
	b _080431AC
_08043056:
	ldr r0, _080430FC  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #3]
	mov r2, #128
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08043104
	ldr r0, [r7]
	ldr r1, _08043100  @ =gUnknown_08428764
	ldr r3, [r7, #8]
	add r2, r3, #0
	add r3, r3, #42
	ldrb r2, [r3]
	lsr r3, r2, #1
	add r2, r3, #0
	lsl r3, r2, #24
	lsr r2, r3, #24
	add r3, r2, #0
	lsl r2, r3, #2
	add r1, r1, r2
	ldr r2, [r1]
	str r2, [r0, #72]
	ldr r0, _080430FC  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _080430FC  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrb r2, [r1, #3]
	mov r3, #127
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #3]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #3]
	ldr r0, [r7]
	ldr r2, [r7, #8]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	add r2, r1, #1
	add r1, r2, #0
	mov r2, #32
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	bl sub_08000740
	b _080431A6
_080430FC:
	.4byte gUnknown_03006A30
_08043100:
	.4byte gUnknown_08428764
_08043104:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _080431A6
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #101
	ldrb r0, [r1]
	cmp r0, #0
	bne _08043148
	ldr r1, [r7, #8]
	add r0, r1, #0
	mov r1, #30
	bl 0x08003E10
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #101
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08043148:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #127
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _080431A6
	ldr r0, _080431A8  @ =gUnknown_03006A30
	ldr r1, [r7]
	ldr r2, [r1, #76]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #30]
	cmp r1, #0
	beq _080431A6
	ldr r0, _080431A8  @ =gUnknown_03006A30
	ldr r1, [r7]
	ldr r2, [r1, #76]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #30]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	ldr r2, [r0, #76]
	add r1, r2, #0
	add r0, r2, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_080431A6:
	b _080431FE
_080431A8:
	.4byte gUnknown_03006A30
_080431AC:
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08043220  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [r7]
	bl sub_08012540
_080431FE:
	ldr r0, [r7, #8]
	ldrb r1, [r0, #27]
	cmp r1, #0
	bne _080432E2
	ldr r1, [r7, #8]
	add r0, r1, #0
	add r1, r1, #33
	ldrb r0, [r1]
	cmp r0, #207
	bhi _08043224
	ldr r1, [r7, #8]
	add r0, r1, #0
	add r1, r1, #33
	ldrb r0, [r1]
	cmp r0, #168
	bls _08043224
	b _08043236
_08043220:
	.4byte gUnknown_03006A30
_08043224:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #33
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	b _080432E0
_08043236:
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldrb r2, [r1, #28]
	lsl r3, r2, #29
	lsr r1, r3, #31
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #2
	ldrb r2, [r0, #28]
	mov r3, #251
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	ldrb r2, [r1, #28]
	lsl r3, r2, #28
	lsr r1, r3, #31
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #3
	ldrb r2, [r0, #28]
	mov r3, #247
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r0, [r7]
	ldr r2, [r7, #8]
	add r1, r2, #0
	add r2, r2, #33
	ldrb r3, [r2]
	add r1, r3, #0
	add r1, r1, #87
	add r2, r0, #0
	add r0, r0, #33
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	add r2, r1, #0
	add r1, r1, #41
	add r2, r0, #0
	add r0, r0, #41
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	add r2, r1, #0
	add r1, r1, #47
	add r2, r0, #0
	add r0, r0, #47
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_080432E0:
	b _080432F2
_080432E2:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #33
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_080432F2:
	add sp, sp, #16
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08042F5C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080432FC
sub_080432FC: @ 0x080432FC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08043330  @ =gUnknown_03000C00
	ldrb r1, [r0]
	cmp r1, #0
	bne _08043320
	ldr r0, _08043334  @ =gUnknown_0813EC20
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
_08043320:
	ldr r0, [r7]
	bl 0x08003688
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08043330:
	.4byte gUnknown_03000C00
_08043334:
	.4byte gUnknown_0813EC20
	THUMB_FUNC_END sub_080432FC

	THUMB_FUNC_START sub_08043338
sub_08043338: @ 0x08043338
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _080434C4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r0, _080434C4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #30]
	cmp r1, #0
	bne _0804336E
	b _080434C8
_0804336E:
	ldr r0, _080434C4  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	ldr r0, [r7]
	str r0, [r1]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #96
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #32
	add r2, r0, #0
	add r0, r0, #32
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #24
	lsr r1, r3, #30
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #28]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r0, [r7]
	ldr r1, _080434C4  @ =gUnknown_03006A30
	ldr r3, [r7]
	ldrb r2, [r3, #10]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r3, r1, r2
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #62
	ldrb r1, [r2]
	lsl r2, r1, #30
	lsr r1, r2, #30
	lsl r2, r1, #24
	lsr r1, r2, #24
	add r2, r1, #0
	lsl r1, r2, #1
	add r2, r1, #0
	add r1, r2, #3
	add r2, r0, #0
	add r0, r0, #68
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #70
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #92
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #192
	lsl r3, r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #8
	bl sub_0800BD14
	ldr r1, [r7]
	str r0, [r1, #72]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl 0x0800238C
	ldr r0, [r7]
	bl 0x080005F0
	ldr r0, [r7]
	bl sub_080434D8
	b _080434CE
	.byte 0x00
	.byte 0x00
_080434C4:
	.4byte gUnknown_03006A30
_080434C8:
	ldr r0, [r7]
	bl sub_08012540
_080434CE:
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08043338

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080434D8
sub_080434D8: @ 0x080434D8
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	ldr r0, _0804356C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #8]
	ldr r0, _0804356C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, [r7]
	cmp r0, r1
	beq _08043526
	ldr r0, [r7]
	ldr r1, [r0, #72]
	add r0, r1, #0
	bl sub_0800BE50
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	bl sub_08012540
_08043526:
	ldr r0, _0804356C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #30]
	cmp r1, #0
	bne _08043570
	ldr r0, [r7]
	ldr r1, [r0, #72]
	add r0, r1, #0
	bl sub_0800BE50
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, _0804356C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #44
	add r1, r0, r1
	mov r0, #0
	str r0, [r1]
	ldr r0, [r7]
	bl sub_08012540
	b _0804360C
	.byte 0x00
	.byte 0x00
_0804356C:
	.4byte gUnknown_03006A30
_08043570:
	ldr r0, _080435EC  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #30]
	mov r2, #64
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _080435F0
	ldr r0, _080435EC  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #30]
	mov r2, #128
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _080435F0
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #173
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #8]
	ldr r0, [r7]
	bl sub_08043614
	b _0804360C
	.byte 0x00
	.byte 0x00
_080435EC:
	.4byte gUnknown_03006A30
_080435F0:
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #60
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
_0804360C:
	add sp, sp, #12
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080434D8

	THUMB_FUNC_START sub_08043614
sub_08043614: @ 0x08043614
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	mov r2, #14
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	mov r1, #2
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08043682
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #29
	lsr r1, r3, #31
	mov r2, #1
	eor r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #2
	ldrb r2, [r0, #28]
	mov r3, #251
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	b _080436A8
_08043682:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #28]
	lsl r3, r2, #29
	lsr r1, r3, #31
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #2
	ldrb r2, [r0, #28]
	mov r3, #251
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
_080436A8:
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #35
	ldrb r0, [r1]
	cmp r0, #155
	bls _080436E4
	ldr r1, [r7, #4]
	add r0, r1, #0
	add r1, r1, #35
	ldrb r0, [r1]
	cmp r0, #159
	bhi _080436E4
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #33
	ldrb r3, [r2]
	add r1, r3, #0
	add r1, r1, #248
	add r2, r0, #0
	add r0, r0, #33
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _080436F4
_080436E4:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #33
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_080436F4:
	ldr r1, [r7]
	ldr r0, [r1, #72]
	ldr r1, _080437F0  @ =gUnknown_0813EC48
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #42
	ldrb r2, [r3]
	lsr r3, r2, #1
	add r2, r3, #0
	lsl r3, r2, #24
	lsr r2, r3, #24
	lsl r3, r2, #2
	add r1, r1, r3
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #72]
	ldr r1, _080437F0  @ =gUnknown_0813EC48
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #42
	ldrb r2, [r3]
	lsr r3, r2, #1
	add r2, r3, #0
	lsl r3, r2, #24
	lsr r2, r3, #24
	lsl r3, r2, #2
	add r2, r3, #1
	add r1, r1, r2
	ldrb r2, [r0, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #1]
	ldr r1, [r7]
	ldr r0, [r1, #72]
	ldr r1, _080437F0  @ =gUnknown_0813EC48
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #42
	ldrb r2, [r3]
	lsr r3, r2, #1
	add r2, r3, #0
	lsl r3, r2, #24
	lsr r2, r3, #24
	lsl r3, r2, #2
	add r2, r3, #2
	add r1, r1, r2
	ldrb r2, [r0, #6]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #6]
	ldr r1, [r7]
	ldr r0, [r1, #72]
	ldr r1, _080437F0  @ =gUnknown_0813EC48
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #42
	ldrb r2, [r3]
	lsr r3, r2, #1
	add r2, r3, #0
	lsl r3, r2, #24
	lsr r2, r3, #24
	lsl r3, r2, #2
	add r2, r3, #3
	add r1, r1, r2
	ldrb r2, [r0, #7]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #7]
	ldr r0, _080437F4  @ =gUnknown_0813EC38
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	mov r2, #14
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	add r0, r0, r1
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, _080437F4  @ =gUnknown_0813EC38
	ldr r3, [r7]
	add r1, r3, #0
	add r3, r3, #42
	ldrb r1, [r3]
	mov r3, #14
	and r1, r1, r3
	add r4, r1, #0
	lsl r3, r4, #24
	lsr r1, r3, #24
	add r3, r1, #1
	add r0, r0, r3
	mov r3, #0
	ldrsb r3, [r0, r3]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08001B54
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
_080437F0:
	.4byte gUnknown_0813EC48
_080437F4:
	.4byte gUnknown_0813EC38
	THUMB_FUNC_END sub_08043614

	THUMB_FUNC_START sub_080437F8
sub_080437F8: @ 0x080437F8
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _0804382C  @ =gUnknown_03000C00
	ldrb r1, [r0]
	cmp r1, #0
	bne _0804381C
	ldr r0, _08043830  @ =gUnknown_08428794
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
_0804381C:
	ldr r0, [r7]
	bl 0x08003688
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804382C:
	.4byte gUnknown_03000C00
_08043830:
	.4byte gUnknown_08428794
	THUMB_FUNC_END sub_080437F8

	THUMB_FUNC_START sub_08043834
sub_08043834: @ 0x08043834
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _08043A2C  @ =gUnknown_03006A30
	ldr r2, [r7]
	ldrb r1, [r2, #10]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	str r0, [r7, #4]
	ldr r1, [r7, #4]
	add r0, r1, #0
	ldr r1, [r7]
	bl sub_0803D3D0
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #70
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r3, [r2]
	add r1, r3, #1
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #92
	add r2, r0, #0
	add r0, r0, #92
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, _08043A30  @ =gUnknown_0842879C
	str r1, [r0, #72]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #35
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #63
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #70
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	mov r1, #224
	lsl r1, r1, #2
	str r1, [r0, #12]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #32
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #192
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldrb r1, [r0, #30]
	mov r2, #240
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #30]
	ldr r0, [r7]
	ldrb r1, [r0, #27]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #127
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #27]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #80
	ldrh r0, [r1]
	mov r1, #192
	lsl r1, r1, #8
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	mov r1, #128
	lsl r1, r1, #8
	cmp r0, r1
	bne _08043992
	ldr r0, [r7]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
_08043992:
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r1, #0
	add r1, r1, #42
	add r2, r0, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7, #4]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r3, [r2]
	lsl r1, r3, #2
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #68
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	mov r1, #60
	str r1, [r0, #100]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	lsr r1, r0, #1
	add r0, r1, #0
	add r1, r0, #0
	add r1, r1, #12
	add r2, r1, #0
	lsl r0, r2, #24
	lsr r1, r0, #24
	ldr r0, [r7]
	bl 0x08003870
	ldr r0, [r7]
	bl 0x080005F0
	ldr r0, [r7]
	bl sub_0803CC20
	mov r0, #69
	bl 0x08003DFC
	ldr r0, [r7]
	bl sub_08043A34
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08043A2C:
	.4byte gUnknown_03006A30
_08043A30:
	.4byte gUnknown_0842879C
	THUMB_FUNC_END sub_08043834

	THUMB_FUNC_START sub_08043A34
sub_08043A34: @ 0x08043A34
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r3, [r1, #100]
	sub r2, r3, #1
	add r1, r2, #0
	str r1, [r0, #100]
	mov r0, #1
	cmn r1, r0
	bne _08043A52
	b _08043B80
_08043A52:
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_0803CC20
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	add r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #11]
	cmp r1, #0
	bne _08043A86
	ldr r0, [r7]
	bl 0x0800402C
_08043A86:
	ldr r0, [r7]
	bl sub_0803F0E4
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #80
	ldrh r2, [r1]
	add r0, r2, #0
	bl sub_08015DC0
	str r0, [r7, #4]
	add r0, r7, #0
	add r0, r0, #8
	ldr r1, [r7, #4]
	ldr r3, [r7]
	mov r4, #50
	ldrsh r2, [r3, r4]
	ldr r3, _08043B70  @ =gUnknown_03000450
	ldrh r4, [r3, #24]
	sub r3, r2, r4
	asr r2, r3, #4
	ldr r4, [r7]
	mov r5, #54
	ldrsh r3, [r4, r5]
	ldr r4, _08043B70  @ =gUnknown_03000450
	ldrh r5, [r4, #26]
	sub r3, r3, r5
	asr r4, r3, #4
	lsl r3, r4, #6
	orr r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #1
	add r1, r1, #4
	add r2, r1, r2
	ldrh r1, [r2]
	lsl r2, r1, #21
	lsr r1, r2, #21
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	add r1, r7, #0
	add r1, r1, #8
	ldrh r2, [r1]
	add r3, r2, #0
	lsl r1, r3, #1
	add r2, r0, #0
	ldr r2, _08043B74  @ =0x00005004
	add r0, r0, r2
	add r1, r0, r1
	ldrh r0, [r1]
	ldr r1, _08043B78  @ =0x08008840
	bl 0x080012CC
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _08043B34
	ldr r0, [r7]
	bl 0x0800935C
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #70
	beq _08043B34
	ldr r1, _08043B7C  @ =0x08003538
	ldr r0, [r7]
	ldrh r2, [r0, #50]
	ldr r0, [r7]
	ldrh r3, [r0, #54]
	ldr r0, [r7]
	bl 0x08003748
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08043B34
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	mov r1, #25
	mov r2, #0
	bl sub_0804CB38
	ldr r0, [r7]
	bl sub_08012540
_08043B34:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	cmp r0, #0
	beq _08043B56
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	mov r1, #25
	mov r2, #0
	bl sub_0804CB38
	ldr r0, [r7]
	bl sub_08012540
_08043B56:
	ldr r0, [r7]
	mov r1, #12
	bl 0x080017E0
	cmp r0, #0
	beq _08043B6E
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	bl sub_08012540
_08043B6E:
	b _08043B8C
_08043B70:
	.4byte gUnknown_03000450
_08043B74:
	.4byte 0x00005004
_08043B78:
	.4byte 0x08008840
_08043B7C:
	.4byte 0x08003538
_08043B80:
	ldr r0, [r7]
	bl 0x08000620
	ldr r0, [r7]
	bl sub_08012540
_08043B8C:
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08043A34

	THUMB_FUNC_START sub_08043B94
sub_08043B94: @ 0x08043B94
	push {r4,r5,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #25]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08043BB4
	mov r0, #0
	b _08043E9A
_08043BB4:
	ldr r0, [r7]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r1, r0, #0
	lsl r0, r1, #1
	ldr r1, _08043C58  @ =gUnknown_08138C20
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	ldr r0, _08043C5C  @ =0x0000FFFF
	cmp r1, r0
	bne _08043BEC
	ldr r0, _08043C60  @ =gUnknown_081390E0
	ldr r2, [r7, #4]
	add r1, r2, #2
	ldrh r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r7]
	ldrb r2, [r1, #10]
	lsl r1, r2, #3
	add r2, r1, #0
	lsl r1, r2, #1
	ldr r0, [r0]
	add r1, r0, r1
	str r1, [r7, #4]
_08043BEC:
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	cmp r1, #0
	beq _08043C7A
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	mov r2, #128
	lsl r2, r2, #8
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08043C64
	ldr r1, [r7]
	ldr r0, [r7, #4]
	ldrh r2, [r0]
	add r0, r2, #0
	add r2, r1, #0
	add r1, r1, #32
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrh r2, [r1]
	mov r3, #192
	lsl r3, r3, #2
	add r1, r2, #0
	and r1, r1, r3
	add r3, r1, #0
	lsl r2, r3, #16
	lsr r1, r2, #16
	lsr r2, r1, #8
	add r1, r2, #0
	lsl r2, r1, #24
	lsr r1, r2, #24
	add r2, r1, #0
	lsl r1, r2, #6
	ldrb r2, [r0, #28]
	mov r3, #63
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	b _08043C7A
	.byte 0x00
	.byte 0x00
_08043C58:
	.4byte gUnknown_08138C20
_08043C5C:
	.4byte 0x0000FFFF
_08043C60:
	.4byte gUnknown_081390E0
_08043C64:
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	ldr r0, [r7]
	bl sub_0802C070
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08043C7A
	mov r0, #1
	b _08043E9A
_08043C7A:
	ldr r0, [r7, #4]
	add r1, r0, #2
	str r1, [r7, #4]
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	mov r2, #128
	lsl r2, r2, #8
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08043CEC
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	ldr r0, _08043CE8  @ =0x000080FF
	cmp r1, r0
	beq _08043CE6
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7, #4]
	ldrh r3, [r2]
	mov r4, #15
	add r2, r3, #0
	and r2, r2, r4
	add r4, r2, #0
	lsl r3, r4, #16
	lsr r2, r3, #16
	add r4, r2, #0
	lsl r3, r4, #4
	ldrb r4, [r1, #30]
	mov r5, #15
	and r4, r4, r5
	add r5, r4, #0
	add r4, r5, #0
	orr r4, r4, r3
	add r3, r4, #0
	strb r3, [r1, #30]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #30]
	mov r3, #240
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #30]
_08043CE6:
	b _08043D38
_08043CE8:
	.4byte 0x000080FF
_08043CEC:
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	add r0, r1, #0
	lsl r2, r0, #24
	lsr r1, r2, #24
	add r0, r1, #0
	bl sub_0802C2DC
	add r2, r0, #0
	ldr r0, [r7]
	ldr r1, [r7]
	lsl r3, r2, #24
	lsr r2, r3, #24
	add r4, r2, #0
	lsl r3, r4, #4
	ldrb r4, [r1, #30]
	mov r5, #15
	and r4, r4, r5
	add r5, r4, #0
	add r4, r5, #0
	orr r4, r4, r3
	add r3, r4, #0
	strb r3, [r1, #30]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #30]
	mov r3, #240
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #30]
_08043D38:
	ldr r0, [r7, #4]
	add r1, r0, #2
	str r1, [r7, #4]
	ldr r0, [r7]
	ldrb r1, [r0, #25]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #25]
	ldr r2, [r7]
	add r0, r7, #4
	ldr r1, [r0]
	ldrh r4, [r1]
	add r3, r4, #0
	ldrb r4, [r2, #27]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	orr r3, r3, r5
	add r4, r3, #0
	strb r4, [r2, #27]
	add r1, r1, #2
	str r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrh r2, [r1]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r2, #0
	and r1, r1, r3
	add r3, r1, #0
	lsl r2, r3, #16
	lsr r1, r2, #16
	lsr r2, r1, #8
	add r1, r2, #0
	mov r2, #9
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	ldrh r2, [r0]
	add r0, r2, #0
	add r2, r1, #0
	add r1, r1, #64
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r2, [r7]
	add r0, r7, #4
	ldr r1, [r0]
	ldrh r3, [r1]
	mov r4, #254
	lsl r4, r4, #7
	and r3, r3, r4
	add r5, r3, #0
	lsl r4, r5, #16
	lsr r3, r4, #16
	lsr r4, r3, #8
	add r3, r4, #0
	add r4, r2, #0
	add r2, r2, #70
	ldrb r4, [r2]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	orr r3, r3, r5
	add r4, r3, #0
	strb r4, [r2]
	add r1, r1, #2
	str r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrh r2, [r1]
	mov r3, #255
	lsl r3, r3, #8
	add r1, r2, #0
	and r1, r1, r3
	add r3, r1, #0
	lsl r2, r3, #16
	lsr r1, r2, #16
	lsr r2, r1, #8
	add r1, r2, #0
	add r2, r0, #0
	add r0, r0, #68
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r3, [r7]
	add r0, r7, #4
	ldr r1, [r0]
	ldrh r4, [r1]
	add r2, r4, #0
	add r4, r3, #0
	add r3, r3, #69
	ldrb r4, [r3]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	orr r2, r2, r5
	add r4, r2, #0
	strb r4, [r3]
	add r1, r1, #2
	str r1, [r0]
	ldr r0, [r7]
	ldr r1, [r0, #12]
	cmp r1, #0
	bne _08043E40
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrh r2, [r1]
	str r2, [r0, #12]
_08043E40:
	ldr r0, [r7, #4]
	add r1, r0, #2
	str r1, [r7, #4]
	ldr r3, [r7]
	add r0, r7, #4
	ldr r1, [r0]
	ldrh r4, [r1]
	add r2, r4, #0
	add r4, r3, #0
	add r3, r3, #63
	ldrb r4, [r3]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	orr r2, r2, r5
	add r4, r2, #0
	strb r4, [r3]
	add r1, r1, #2
	str r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, r0, #0
	add r0, r0, #92
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #35
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	bl 0x08008DD8
	mov r0, #0
	b _08043E9A
_08043E9A:
	add sp, sp, #8
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08043B94

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08043EA4
sub_08043EA4: @ 0x08043EA4
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strb r0, [r1]
	add r0, r7, #0
	ldrb r1, [r0]
	mov r2, #15
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08043ED2
	add r0, r7, #0
	ldrb r1, [r0]
	lsr r0, r1, #4
	add r1, r0, #0
	lsl r0, r1, #24
	lsr r1, r0, #24
	add r0, r1, #0
	b _08043ED6
_08043ED2:
	mov r0, #255
	b _08043ED6
_08043ED6:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08043EA4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08043EE0
sub_08043EE0: @ 0x08043EE0
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r1, r7, #0
	strb r0, [r1]
	add r0, r7, #0
	ldrb r1, [r0]
	mov r2, #7
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #4
	beq _08043F14
	add r0, r7, #0
	ldrb r1, [r0]
	add r0, r1, #4
	mov r1, #31
	and r0, r0, r1
	asr r1, r0, #3
	add r2, r1, #0
	lsl r0, r2, #24
	lsr r1, r0, #24
	add r0, r1, #0
	b _08043F18
_08043F14:
	mov r0, #255
	b _08043F18
_08043F18:
	add sp, sp, #4
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08043EE0

	THUMB_FUNC_START sub_08043F20
sub_08043F20: @ 0x08043F20
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #106
	ldrb r0, [r1]
	cmp r0, #0
	beq _08043F98
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #106
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08043F96
	ldr r0, [r7]
	ldrb r1, [r0, #9]
	ldr r2, [r7]
	add r0, r2, #0
	add r3, r2, #0
	add r3, r3, #106
	ldrb r2, [r3]
	mov r0, #1
	bl sub_0804C8A8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08043F96
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #88]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #106
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #106
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_08043F96:
	b _0804400A
_08043F98:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #127
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #19
	beq _08044004
	ldr r0, [r7]
	ldrb r1, [r0, #9]
	mov r0, #1
	mov r2, #0
	bl sub_0804C8A8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08044004
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1, #22]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, _08044014  @ =gUnknown_03000208
	ldrh r1, [r0, #2]
	cmp r1, #1
	bne _08044004
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldrb r2, [r1, #11]
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	ldrb r2, [r0, #11]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #11]
_08044004:
	ldr r0, [r7]
	bl sub_08012540
_0804400A:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08044014:
	.4byte gUnknown_03000208
	THUMB_FUNC_END sub_08043F20

	THUMB_FUNC_START sub_08044018
sub_08044018: @ 0x08044018
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrb r2, [r1, #25]
	mov r3, #254
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #25]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #25]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #52]
	str r2, [r0, #52]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #82
	add r2, r0, #0
	add r0, r0, #82
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #96]
	str r2, [r0, #96]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #104
	add r2, r0, #0
	add r0, r0, #104
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #105
	add r2, r0, #0
	add r0, r0, #105
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #107
	add r2, r0, #0
	add r0, r0, #107
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #108
	add r2, r0, #0
	add r0, r0, #108
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08044018

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804411C
sub_0804411C: @ 0x0804411C
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	add r0, r2, #0
	add r2, r7, #4
	strb r1, [r2]
	add r1, r7, #5
	strb r0, [r1]
	bl sub_080123E8
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0804418A
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #8]
	add r1, r7, #4
	ldrb r2, [r0, #9]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #9]
	ldr r0, [r7, #8]
	add r1, r7, #5
	ldrb r2, [r0, #10]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #10]
	ldr r1, [r7, #8]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r1, [r7, #8]
	mov r0, #5
	bl sub_08012728
_0804418A:
	ldr r1, [r7, #8]
	add r0, r1, #0
	b _08044190
_08044190:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804411C

	THUMB_FUNC_START sub_08044198
sub_08044198: @ 0x08044198
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080441EE
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_08044018
	ldr r1, [r7, #4]
	add r0, r1, #0
	mov r1, #6
	mov r2, #0
	bl 0x08009394
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _080441EE
	ldr r0, [r7, #4]
	mov r2, #50
	ldrsh r1, [r0, r2]
	add r0, r1, #6
	ldr r1, _0804423C  @ =gUnknown_03000450
	ldrh r2, [r1, #40]
	cmp r0, r2
	bge _080441EE
	ldr r0, [r7, #4]
	ldr r1, [r7, #4]
	ldrh r2, [r1, #50]
	add r1, r2, #6
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
_080441EE:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08044234
	ldr r1, [r7, #8]
	ldr r0, [r7]
	bl sub_08044018
	ldr r0, [r7, #8]
	mov r1, #6
	neg r1, r1
	mov r2, #0
	bl 0x08009394
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08044234
	ldr r0, [r7, #4]
	mov r2, #50
	ldrsh r1, [r0, r2]
	sub r0, r1, #6
	cmp r0, #0
	blt _08044234
	ldr r0, [r7, #8]
	ldr r1, [r7, #8]
	ldrh r2, [r1, #50]
	sub r1, r2, #6
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
_08044234:
	add sp, sp, #12
	pop {r7}
	pop {r0}
	bx r0
_0804423C:
	.4byte gUnknown_03000450
	THUMB_FUNC_END sub_08044198

	THUMB_FUNC_START sub_08044240
sub_08044240: @ 0x08044240
	push {r4,r5,r7,lr}
	sub sp, sp, #24
	mov r7, sp
	str r0, [r7]
	add r0, r1, #0
	add r1, r7, #4
	strh r0, [r1]
	add r0, r7, #0
	add r0, r0, #12
	add r1, r7, #0
	add r1, r1, #13
	mov r2, #0
	strb r2, [r1]
	mov r1, #0
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #16
	add r2, r7, #0
	add r2, r2, #16
	add r3, r7, #0
	add r3, r3, #16
	ldrb r4, [r3, #3]
	mov r5, #255
	orr r4, r4, r5
	add r5, r4, #0
	strb r5, [r3, #3]
	ldrb r3, [r2, #2]
	mov r4, #255
	orr r3, r3, r4
	add r4, r3, #0
	strb r4, [r2, #2]
	ldrb r2, [r1, #1]
	mov r3, #255
	orr r2, r2, r3
	add r3, r2, #0
	strb r3, [r1, #1]
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_08044296:
	add r1, r7, #0
	add r1, r1, #13
	ldrb r0, [r1]
	add r2, r0, #0
	lsl r1, r2, #3
	add r1, r1, r0
	lsl r0, r1, #4
	ldr r1, _0804431C  @ =gUnknown_03006A30
	add r0, r1, r0
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #15]
	mov r2, #210
	add r0, r1, #0
	bic r0, r0, r2
	cmp r0, #0
	beq _08044386
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #80
	ldr r1, [r7, #8]
	ldr r2, [r1, #40]
	add r1, r2, #0
	add r2, r2, #80
	ldrh r0, [r0]
	ldrh r1, [r2]
	add r2, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	lsr r1, r0, #14
	add r0, r1, #0
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08044386
	ldr r0, [r7, #8]
	ldr r1, [r0, #40]
	ldr r0, [r7]
	ldrh r1, [r1, #50]
	ldrh r0, [r0, #50]
	sub r1, r1, r0
	add r0, r1, #0
	add r1, r0, #0
	add r1, r1, #12
	add r0, r1, #0
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #24
	bls _08044320
	ldr r0, [r7, #8]
	ldr r1, [r0, #40]
	ldr r0, [r7]
	ldrh r1, [r1, #54]
	ldrh r0, [r0, #54]
	sub r1, r1, r0
	add r0, r1, #0
	add r1, r0, #0
	add r1, r1, #12
	add r0, r1, #0
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #24
	bls _08044320
	b _08044386
	.byte 0x00
	.byte 0x00
_0804431C:
	.4byte gUnknown_03006A30
_08044320:
	ldr r0, [r7, #8]
	ldr r1, [r0, #40]
	ldr r0, [r7]
	bl sub_0803CECC
	add r1, r7, #0
	add r1, r1, #20
	strb r0, [r1]
	add r0, r7, #0
	add r0, r0, #20
	ldrb r1, [r0]
	add r0, r1, #0
	add r0, r0, #20
	mov r2, #24
	add r1, r0, #0
	and r1, r1, r2
	asr r0, r1, #2
	ldr r1, [r7, #8]
	ldr r2, [r1, #40]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r1, [r2]
	cmp r0, r1
	bne _08044386
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	add r0, r0, r2
	add r1, r7, #0
	add r1, r1, #20
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	add r1, r7, #0
	add r1, r1, #12
	add r0, r7, #0
	add r0, r0, #12
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_08044386:
	add r1, r7, #0
	add r1, r1, #13
	add r0, r7, #0
	add r0, r0, #13
	add r1, r7, #0
	add r1, r1, #13
	ldrb r2, [r1]
	add r3, r2, #1
	add r1, r3, #0
	strb r1, [r0]
	ldr r0, _080443A8  @ =gUnknown_03006C80
	lsl r2, r1, #24
	lsr r1, r2, #24
	ldrb r0, [r0]
	cmp r1, r0
	bcc _080443AC
	b _080443AE
_080443A8:
	.4byte gUnknown_03006C80
_080443AC:
	b _08044296
_080443AE:
	add r0, r7, #0
	add r0, r0, #12
	ldrb r1, [r0]
	cmp r1, #0
	bne _080443BA
	b _08044582
_080443BA:
	add r0, r7, #0
	add r0, r0, #13
	mov r1, #0
	strb r1, [r0]
_080443C2:
	add r1, r7, #0
	add r1, r1, #13
	ldrb r0, [r1]
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	sub r1, r2, #1
	cmp r0, r1
	blt _080443D6
	b _0804448E
_080443D6:
	add r0, r7, #0
	add r0, r0, #14
	add r1, r7, #0
	add r1, r1, #13
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_080443E6:
	add r0, r7, #0
	add r0, r0, #14
	add r1, r7, #0
	add r1, r1, #12
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080443F8
	b _08044478
_080443F8:
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #13
	ldrb r2, [r1]
	add r0, r0, r2
	ldrb r1, [r0]
	add r0, r1, #0
	add r0, r0, #20
	mov r1, #24
	and r0, r0, r1
	add r1, r7, #0
	add r1, r1, #16
	add r2, r7, #0
	add r2, r2, #14
	ldrb r3, [r2]
	add r1, r1, r3
	ldrb r2, [r1]
	add r1, r2, #4
	mov r2, #24
	and r1, r1, r2
	cmp r0, r1
	bne _08044462
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #13
	ldrb r2, [r1]
	add r0, r0, r2
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #14
	ldrb r2, [r1]
	add r0, r0, r2
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	add r0, r7, #0
	add r0, r0, #12
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	sub r1, r2, #2
	add r2, r1, #0
	strb r2, [r0]
_08044462:
	add r1, r7, #0
	add r1, r1, #14
	add r0, r7, #0
	add r0, r0, #14
	add r1, r7, #0
	add r1, r1, #14
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _080443E6
_08044478:
	add r1, r7, #0
	add r1, r1, #13
	add r0, r7, #0
	add r0, r0, #13
	add r1, r7, #0
	add r1, r1, #13
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _080443C2
_0804448E:
	add r0, r7, #0
	add r0, r0, #13
	mov r1, #0
	strb r1, [r0]
_08044496:
	add r0, r7, #0
	add r0, r0, #13
	ldr r1, _080444A8  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080444AC
	b _08044582
	.byte 0x00
	.byte 0x00
_080444A8:
	.4byte gUnknown_03006C80
_080444AC:
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #13
	ldrb r2, [r1]
	add r0, r0, r2
	ldrb r1, [r0]
	cmp r1, #255
	beq _0804456C
	add r0, r7, #0
	add r0, r0, #20
	add r1, r7, #0
	add r1, r1, #16
	add r2, r7, #0
	add r2, r2, #13
	ldrb r3, [r2]
	add r1, r1, r3
	ldrb r2, [r1]
	add r1, r2, #4
	add r2, r1, #0
	mov r3, #24
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add r0, r7, #4
	ldrh r1, [r0]
	add r0, r7, #0
	add r0, r0, #20
	ldrb r2, [r0]
	ldr r0, [r7]
	bl 0x08002E70
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #13
	ldrb r2, [r1]
	add r0, r0, r2
	ldrb r1, [r0]
	mov r2, #7
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0804456C
	add r0, r7, #0
	add r0, r0, #16
	add r1, r7, #0
	add r1, r1, #13
	ldrb r2, [r1]
	add r1, r0, r2
	ldrb r0, [r1]
	add r1, r7, #0
	add r1, r1, #20
	ldrb r2, [r1]
	sub r0, r0, r2
	mov r1, #31
	and r0, r0, r1
	cmp r0, #15
	bgt _0804454C
	add r0, r7, #0
	add r0, r0, #20
	ldrb r1, [r0]
	add r0, r1, #0
	add r0, r0, #8
	add r1, r0, #0
	mov r2, #24
	add r0, r1, #0
	and r0, r0, r2
	add r1, r0, #0
	lsl r0, r1, #24
	lsr r2, r0, #24
	ldr r0, [r7]
	mov r1, #128
	bl 0x08002E70
	b _0804456C
_0804454C:
	add r0, r7, #0
	add r0, r0, #20
	ldrb r1, [r0]
	add r0, r1, #0
	sub r0, r0, #8
	add r1, r0, #0
	mov r2, #24
	add r0, r1, #0
	and r0, r0, r2
	add r1, r0, #0
	lsl r0, r1, #24
	lsr r2, r0, #24
	ldr r0, [r7]
	mov r1, #128
	bl 0x08002E70
_0804456C:
	add r1, r7, #0
	add r1, r1, #13
	add r0, r7, #0
	add r0, r0, #13
	add r1, r7, #0
	add r1, r1, #13
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08044496
_08044582:
	add r0, r7, #0
	add r0, r0, #12
	ldrb r1, [r0]
	add r0, r1, #0
	b _0804458C
_0804458C:
	add sp, sp, #24
	pop {r4,r5,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044240

	THUMB_FUNC_START sub_08044594
sub_08044594: @ 0x08044594
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	add r4, r7, #4
	bl 0x0800099C
	ldr r1, _080445C0  @ =gUnknown_03006C80
	ldrb r2, [r1]
	add r1, r2, #0
	bl __umodsi3
	add r1, r0, #0
	strb r1, [r4]
	add r4, r7, #5
	bl 0x0800099C
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080445C4
	mov r0, #1
	b _080445CA
_080445C0:
	.4byte gUnknown_03006C80
_080445C4:
	mov r1, #1
	neg r1, r1
	add r0, r1, #0
_080445CA:
	strb r0, [r4]
	add r0, r7, #6
	mov r1, #0
	strb r1, [r0]
_080445D2:
	add r1, r7, #6
	mov r0, #0
	ldrsb r0, [r1, r0]
	ldr r1, _080445E4  @ =gUnknown_03006C80
	ldrb r2, [r1]
	cmp r0, r2
	blt _080445E8
	b _08044688
	.byte 0x00
	.byte 0x00
_080445E4:
	.4byte gUnknown_03006C80
_080445E8:
	add r1, r7, #4
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r2, r0, #0
	lsl r1, r2, #3
	add r1, r1, r0
	lsl r0, r1, #4
	ldr r1, _08044634  @ =gUnknown_03006A30
	add r0, r1, r0
	str r0, [r7]
	ldr r0, _08044638  @ =gUnknown_03000940
	add r1, r7, #4
	mov r2, #0
	ldrsb r2, [r1, r2]
	add r1, r2, #0
	lsl r2, r1, #1
	add r0, r0, r2
	ldrh r1, [r0]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _0804463C
	ldr r0, [r7]
	ldr r1, [r0, #40]
	add r0, r1, #0
	add r1, r1, #69
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804463C
	ldr r0, [r7]
	ldr r1, [r0, #40]
	add r0, r1, #0
	b _08044694
_08044634:
	.4byte gUnknown_03006A30
_08044638:
	.4byte gUnknown_03000940
_0804463C:
	add r0, r7, #4
	add r1, r7, #4
	add r2, r7, #5
	ldrb r1, [r1]
	ldrb r2, [r2]
	add r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	add r1, r7, #4
	mov r0, #0
	ldrsb r0, [r1, r0]
	ldr r1, _08044684  @ =gUnknown_03006C80
	ldrb r2, [r1]
	cmp r0, r2
	bne _08044660
	add r0, r7, #4
	mov r1, #0
	strb r1, [r0]
_08044660:
	add r0, r7, #4
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #1
	cmn r1, r0
	bne _08044674
	add r0, r7, #4
	ldr r1, _08044684  @ =gUnknown_03006C80
	ldrb r2, [r1]
	strb r2, [r0]
_08044674:
	add r1, r7, #6
	add r0, r7, #6
	add r1, r7, #6
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _080445D2
_08044684:
	.4byte gUnknown_03006C80
_08044688:
	ldr r0, _08044690  @ =gUnknown_03006A30
	ldr r1, [r0, #40]
	add r0, r1, #0
	b _08044694
_08044690:
	.4byte gUnknown_03006A30
_08044694:
	add sp, sp, #8
	pop {r4,r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08044594

	THUMB_FUNC_START sub_0804469C
sub_0804469C: @ 0x0804469C
	push {r4,r7,lr}
	sub sp, sp, #24
	mov r7, sp
	str r0, [r7]
	add r4, r1, #0
	add r1, r2, #0
	add r0, r3, #0
	add r2, r7, #4
	add r3, r4, #0
	strb r3, [r2]
	add r2, r7, #6
	strh r1, [r2]
	add r1, r7, #0
	add r1, r1, #8
	strh r0, [r1]
	add r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #7
	bls _080446C8
	add r0, r7, #4
	mov r1, #7
	strb r1, [r0]
_080446C8:
	add r0, r7, #4
	ldrb r1, [r0]
	lsl r0, r1, #2
	ldr r1, _0804471C  @ =gUnknown_0813ED60
	add r0, r1, r0
	str r0, [r7, #16]
	add r4, r7, #0
	add r4, r4, #21
	bl 0x0800099C
	add r1, r0, #0
	mov r2, #3
	add r0, r1, #0
	and r0, r0, r2
	add r1, r0, #0
	strb r1, [r4]
	add r0, r7, #0
	add r0, r0, #22
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #62
	ldrb r1, [r2]
	mov r2, #16
	eor r1, r1, r2
	add r2, r1, #0
	sub r1, r2, #3
	add r2, r1, #0
	mov r3, #31
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add r0, r7, #0
	add r0, r0, #20
	mov r1, #0
	strb r1, [r0]
_08044710:
	add r0, r7, #0
	add r0, r0, #20
	ldrb r1, [r0]
	cmp r1, #3
	bls _08044720
	b _080447BE
_0804471C:
	.4byte gUnknown_0813ED60
_08044720:
	add r0, r7, #0
	add r0, r0, #21
	ldrb r1, [r0]
	ldr r2, [r7, #16]
	add r0, r1, r2
	ldrb r1, [r0]
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	str r0, [r7, #12]
	ldr r0, [r7, #12]
	cmp r0, #0
	beq _08044778
	ldr r0, [r7, #12]
	add r1, r7, #0
	add r1, r1, #22
	ldrb r2, [r1]
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7, #12]
	add r0, r7, #6
	mov r2, #0
	ldrsh r3, [r0, r2]
	lsl r2, r3, #16
	add r0, r7, #0
	add r0, r0, #8
	mov r3, #0
	ldrsh r4, [r0, r3]
	lsl r3, r4, #16
	ldr r0, [r7]
	bl sub_0803D4A4
_08044778:
	add r0, r7, #0
	add r0, r0, #21
	add r1, r7, #0
	add r1, r1, #21
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add r0, r7, #0
	add r0, r0, #22
	add r1, r7, #0
	add r1, r1, #22
	ldrb r2, [r1]
	add r1, r2, #2
	add r2, r1, #0
	mov r3, #31
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add r1, r7, #0
	add r1, r1, #20
	add r0, r7, #0
	add r0, r0, #20
	add r1, r7, #0
	add r1, r1, #20
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08044710
_080447BE:
	add sp, sp, #24
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804469C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080447C8
sub_080447C8: @ 0x080447C8
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x080095A4
	ldr r4, _08044828  @ =gUnknown_0813ED84
	ldr r0, [r7]
	bl 0x080098DC
	lsl r1, r0, #24
	lsr r0, r1, #24
	add r1, r0, #0
	lsl r0, r1, #2
	add r1, r4, r0
	ldr r2, [r1]
	ldr r0, [r7]
	bl _call_via_r2
	ldr r0, [r7]
	bl 0x08008D90
	ldr r0, [r7]
	ldrb r1, [r0, #31]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #31]
	ldr r0, [r7]
	ldrb r1, [r0, #29]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08044828:
	.4byte gUnknown_0813ED84
	THUMB_FUNC_END sub_080447C8

	THUMB_FUNC_START sub_0804482C
sub_0804482C: @ 0x0804482C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08044850  @ =gUnknown_0813EDA0
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_08044850:
	.4byte gUnknown_0813EDA0
	THUMB_FUNC_END sub_0804482C

	THUMB_FUNC_START sub_08044854
sub_08044854: @ 0x08044854
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _0804486C  @ =gUnknown_0813ED84
	ldr r0, [r7]
	bl 0x080098A0
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_0804486C:
	.4byte gUnknown_0813ED84
	THUMB_FUNC_END sub_08044854

	THUMB_FUNC_START sub_08044870
sub_08044870: @ 0x08044870
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldrb r1, [r0, #29]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, _0804490C  @ =gUnknown_0813EE14
	str r1, [r0, #72]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #42
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_0804490C:
	.4byte gUnknown_0813EE14
	THUMB_FUNC_END sub_08044870

	THUMB_FUNC_START sub_08044910
sub_08044910: @ 0x08044910
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #23]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08044944
	b _080449EC
_08044944:
	add r4, r7, #4
	bl 0x0800099C
	add r1, r0, #0
	mov r2, #112
	add r0, r1, #0
	and r0, r0, r2
	add r1, r0, #0
	add r0, r1, #0
	add r0, r0, #75
	add r1, r0, #0
	strh r1, [r4]
	ldr r0, [r7]
	add r1, r7, #4
	ldrh r2, [r1]
	add r1, r2, #0
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	add r4, r7, #4
	bl 0x0800099C
	add r1, r0, #0
	mov r2, #31
	add r0, r1, #0
	and r0, r0, r2
	add r1, r0, #0
	strh r1, [r4]
	ldr r1, [r7]
	add r0, r7, #4
	ldrh r2, [r0]
	add r0, r2, #0
	add r2, r1, #0
	add r1, r1, #43
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r1, [r7]
	add r0, r7, #4
	mov r3, #0
	ldrsh r2, [r0, r3]
	asr r3, r2, #4
	add r0, r3, #0
	add r2, r1, #0
	add r1, r1, #42
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r2, [r1]
	ldr r0, [r7]
	add r1, r2, #0
	bl 0x08003870
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	mov r1, #224
	str r1, [r0, #12]
_080449EC:
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08044910

	THUMB_FUNC_START sub_080449F4
sub_080449F4: @ 0x080449F4
	push {r4,r5,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #23]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08044AA8
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #15
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08044A8E
	add r4, r7, #4
	ldr r5, _08044AA4  @ =gUnknown_0813EDC0
	bl 0x0800099C
	mov r1, #3
	and r0, r0, r1
	add r1, r5, r0
	ldrb r0, [r1]
	add r1, r0, #0
	strh r1, [r4]
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	add r2, r7, #4
	ldrh r3, [r2]
	add r2, r3, #0
	ldrb r1, [r1]
	add r2, r2, r1
	add r1, r2, #0
	mov r2, #31
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	add r0, r7, #4
	ldrh r1, [r0]
	cmp r1, #0
	beq _08044A8E
	ldr r0, [r7]
	bl sub_08044BC4
_08044A8E:
	ldr r0, [r7]
	bl 0x08009694
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08044AA2
	ldr r0, [r7]
	bl sub_08044BC4
_08044AA2:
	b _08044AD6
_08044AA4:
	.4byte gUnknown_0813EDC0
_08044AA8:
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
_08044AD6:
	add sp, sp, #8
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080449F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044AE0
sub_08044AE0: @ 0x08044AE0
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #23]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08044B4A
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #42
	ldrb r0, [r1]
	add r1, r0, #2
	add r2, r1, #0
	lsl r0, r2, #24
	lsr r1, r0, #24
	ldr r0, [r7]
	bl 0x08003870
	b _08044B70
_08044B4A:
	ldr r0, [r7]
	ldr r1, [r0, #12]
	cmp r1, #16
	ble _08044B5C
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #12]
	sub r1, r2, #2
	str r1, [r0, #12]
_08044B5C:
	ldr r0, [r7]
	bl 0x08009694
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08044B70
	ldr r0, [r7]
	bl sub_08044BC4
_08044B70:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08044AE0

	THUMB_FUNC_START sub_08044B78
sub_08044B78: @ 0x08044B78
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	cmp r0, #128
	bne _08044BBA
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
_08044BBA:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08044B78

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044BC4
sub_08044BC4: @ 0x08044BC4
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r2, [r1]
	add r0, r2, #0
	bl sub_08043EA4
	add r1, r7, #4
	strb r0, [r1]
	add r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #255
	beq _08044C1A
	add r0, r7, #4
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #42
	ldrb r0, [r0]
	ldrb r1, [r2]
	cmp r0, r1
	beq _08044C1A
	ldr r0, [r7]
	add r1, r7, #4
	add r2, r0, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	add r0, r7, #4
	ldrb r1, [r0]
	ldr r0, [r7]
	bl 0x08003870
_08044C1A:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08044BC4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044C24
sub_08044C24: @ 0x08044C24
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _08044C3C  @ =gUnknown_0813EE1C
	ldr r0, [r7]
	bl 0x08009924
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_08044C3C:
	.4byte gUnknown_0813EE1C
	THUMB_FUNC_END sub_08044C24

	THUMB_FUNC_START sub_08044C40
sub_08044C40: @ 0x08044C40
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08044C64  @ =gUnknown_0813EE38
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_08044C64:
	.4byte gUnknown_0813EE38
	THUMB_FUNC_END sub_08044C40

	THUMB_FUNC_START sub_08044C68
sub_08044C68: @ 0x08044C68
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #69
	ldrb r0, [r1]
	cmp r0, #0
	beq _08044CA6
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #124
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #69
	ldrb r0, [r0]
	ldrb r1, [r2]
	cmp r0, r1
	beq _08044CA6
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	b _08044CAE
_08044CA6:
	ldr r1, _08044CB8  @ =gUnknown_0813EE1C
	ldr r0, [r7]
	bl 0x080098A0
_08044CAE:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08044CB8:
	.4byte gUnknown_0813EE1C
	THUMB_FUNC_END sub_08044C68

	THUMB_FUNC_START sub_08044CBC
sub_08044CBC: @ 0x08044CBC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, _08044D60  @ =gUnknown_0813EF58
	str r1, [r0, #72]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	bl 0x0800099C
	add r1, r0, #0
	ldr r0, [r7]
	add r2, r1, #0
	add r2, r2, #30
	add r1, r2, #0
	mov r2, #60
	and r1, r1, r2
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #69
	add r2, r0, #0
	add r0, r0, #124
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_08044D60:
	.4byte gUnknown_0813EF58
	THUMB_FUNC_END sub_08044CBC

	THUMB_FUNC_START sub_08044D64
sub_08044D64: @ 0x08044D64
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #23]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08044D9E
	b _08044E06
_08044D9E:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #72
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	bl 0x0800099C
	add r1, r0, #0
	ldr r0, [r7]
	mov r2, #24
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	lsr r1, r0, #3
	add r0, r1, #0
	add r1, r0, #1
	add r2, r1, #0
	lsl r0, r2, #24
	lsr r1, r0, #24
	ldr r0, [r7]
	bl 0x08003870
_08044E06:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08044D64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044E10
sub_08044E10: @ 0x08044E10
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #23]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08044E5C
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	cmp r0, #0
	bne _08044E54
	ldr r0, [r7]
	bl 0x08002E64
_08044E54:
	ldr r0, [r7]
	bl 0x08003828
	b _08044ED0
_08044E5C:
	bl 0x0800099C
	mov r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08044EAE
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	sub r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	bl 0x0800099C
	add r1, r0, #0
	ldr r0, [r7]
	add r2, r1, #0
	add r2, r2, #30
	add r1, r2, #0
	mov r2, #60
	and r1, r1, r2
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
	b _08044ED0
_08044EAE:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	mov r1, #5
	bl 0x08003870
_08044ED0:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08044E10

	THUMB_FUNC_START sub_08044ED8
sub_08044ED8: @ 0x08044ED8
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	cmp r0, #0
	beq _08044F5C
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	cmp r0, #1
	bne _08044F22
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _08044F5C
_08044F22:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #120
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #28]
_08044F5C:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08044ED8

	THUMB_FUNC_START sub_08044F64
sub_08044F64: @ 0x08044F64
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r1, #0
	orr r3, r3, r2
	add r2, r3, #0
	strb r2, [r0, #23]
	add r0, r1, #0
	mov r1, #0
	bic r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08044F98
	b _08044FCE
_08044F98:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #1
	ldrb r2, [r0, #20]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	mov r1, #6
	bl 0x08003870
_08044FCE:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08044F64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08044FD8
sub_08044FD8: @ 0x08044FD8
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	cmp r0, #0
	beq _08045060
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	cmp r0, #1
	bne _08045022
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _08045060
_08045022:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	bl 0x0800099C
	add r1, r0, #0
	ldr r0, [r7]
	add r2, r1, #0
	add r2, r2, #30
	add r1, r2, #0
	mov r2, #60
	and r1, r1, r2
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
_08045060:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08044FD8

	THUMB_FUNC_START sub_08045068
sub_08045068: @ 0x08045068
	push {r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #0
	strb r1, [r0]
	mov r0, #3
	bl sub_08012468
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080450B2
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add r1, r7, #0
	add r1, r1, #12
	add r0, r7, #0
	add r0, r0, #12
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_080450B2:
	mov r0, #3
	bl sub_08012468
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08045104
	ldr r0, [r7, #8]
	ldr r1, [r7, #8]
	ldrh r2, [r1, #50]
	sub r1, r2, #6
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7, #8]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add r1, r7, #0
	add r1, r1, #12
	add r0, r7, #0
	add r0, r0, #12
	add r1, r7, #0
	add r1, r1, #12
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
_08045104:
	ldr r1, [r7, #4]
	ldr r2, [r7, #8]
	ldr r0, [r7]
	bl sub_08044198
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #2
	bne _08045126
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	str r1, [r0, #84]
	ldr r0, [r7, #8]
	ldr r1, [r7, #4]
	str r1, [r0, #84]
_08045126:
	ldr r0, [r7]
	ldr r1, [r0, #96]
	cmp r1, #0
	beq _0804515E
	ldr r1, [r7]
	ldr r0, [r1, #96]
	ldr r1, [r7]
	ldr r3, [r1, #96]
	add r2, r3, #0
	add r1, r3, #0
	add r1, r1, #98
	add r2, r7, #0
	add r2, r2, #12
	mov r3, #0
	ldrsb r3, [r2, r3]
	add r2, r3, #0
	ldrh r3, [r1]
	add r1, r2, r3
	add r2, r0, #0
	add r0, r0, #98
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
_0804515E:
	mov r0, #15
	mov r1, #2
	mov r2, #0
	bl sub_0804C8A8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080451BC
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrh r2, [r1, #50]
	sub r1, r2, #4
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1, #54]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #80
	add r2, r0, #0
	add r0, r0, #80
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
_080451BC:
	ldr r0, [r7]
	bl sub_08012540
	add sp, sp, #16
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08045068

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080451CC
sub_080451CC: @ 0x080451CC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #69
	ldrb r0, [r1]
	cmp r0, #0
	bne _080451FC
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	cmp r1, #34
	bhi _080451FC
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #35
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
_080451FC:
	ldr r0, _08045218  @ =gUnknown_0813EF60
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_08045218:
	.4byte gUnknown_0813EF60
	THUMB_FUNC_END sub_080451CC

	THUMB_FUNC_START sub_0804521C
sub_0804521C: @ 0x0804521C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #180
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrh r1, [r0, #50]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #252
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #50]
	ldr r0, [r7]
	ldrh r1, [r0, #54]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #196
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #54]
	ldr r0, [r7]
	ldrh r1, [r0, #58]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldr r3, _0804532C  @ =0x0000FF90
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #58]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #207
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #32
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #94
	ldrb r1, [r0]
	mov r2, #243
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, _08045330  @ =gUnknown_0813F3F8
	str r1, [r0, #72]
	bl 0x0800099C
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #124
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r0
	add r0, r2, #0
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, _08045334  @ =gUnknown_0813EFFC
	ldr r2, _08045338  @ =gUnknown_03006C80
	ldrb r3, [r2, #3]
	add r1, r1, r3
	add r2, r0, #0
	add r0, r0, #69
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #106
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	bl 0x08008D90
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
	bl sub_0803DF84
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804532C:
	.4byte 0x0000FF90
_08045330:
	.4byte gUnknown_0813F3F8
_08045334:
	.4byte gUnknown_0813EFFC
_08045338:
	.4byte gUnknown_03006C80
	THUMB_FUNC_END sub_0804521C

	THUMB_FUNC_START sub_0804533C
sub_0804533C: @ 0x0804533C
	push {r4,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	bl sub_0803DF84
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _0804542E
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #120
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, _080453C4  @ =gUnknown_03000450
	ldr r1, [r7]
	str r1, [r0]
	add r0, r7, #0
	add r0, r0, #8
	mov r1, #0
	strb r1, [r0]
_080453B4:
	add r0, r7, #0
	add r0, r0, #8
	ldr r1, _080453C8  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080453CC
	b _0804542C
_080453C4:
	.4byte gUnknown_03000450
_080453C8:
	.4byte gUnknown_03006C80
_080453CC:
	ldr r0, _08045428  @ =gUnknown_03006A30
	add r2, r7, #0
	add r2, r2, #8
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r0, #0
	add r0, r0, #42
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08045428  @ =gUnknown_03006A30
	add r2, r7, #0
	add r2, r2, #8
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	mov r1, #8
	neg r1, r1
	mov r2, #12
	neg r2, r2
	bl sub_0804CA78
	add r1, r7, #0
	add r1, r1, #8
	add r0, r7, #0
	add r0, r0, #8
	add r1, r7, #0
	add r1, r1, #8
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _080453B4
_08045428:
	.4byte gUnknown_03006A30
_0804542C:
	b _0804551C
_0804542E:
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	cmp r1, #31
	bhi _08045488
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #24]
	add r1, r2, #1
	ldrb r2, [r0, #24]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #24]
	ldr r0, _08045480  @ =gUnknown_03000520
	ldr r1, _08045484  @ =0x0000FFF0
	str r1, [r0, #12]
	ldr r0, _08045480  @ =gUnknown_03000520
	ldrb r1, [r0, #7]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #7]
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	lsr r0, r1, #2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	lsl r1, r0, #4
	add r0, r1, #0
	bl sub_0800C1EC
	ldr r0, _08045480  @ =gUnknown_03000520
	mov r1, #1
	neg r1, r1
	str r1, [r0, #12]
	b _0804551C
_08045480:
	.4byte gUnknown_03000520
_08045484:
	.4byte 0x0000FFF0
_08045488:
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #149
	bhi _0804551C
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #15
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _0804551C
	add r0, r7, #0
	add r0, r0, #8
	mov r1, #0
	strb r1, [r0]
_080454AC:
	add r0, r7, #0
	add r0, r0, #8
	ldr r1, _080454BC  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080454C0
	b _0804551C
_080454BC:
	.4byte gUnknown_03006C80
_080454C0:
	bl 0x0800099C
	mov r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08045502
	bl 0x0800099C
	ldr r1, _08045518  @ =gUnknown_03006A30
	add r3, r7, #0
	add r3, r3, #8
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r3, r1, r2
	ldr r2, [r3]
	mov r3, #6
	add r1, r0, #0
	and r1, r1, r3
	add r3, r2, #0
	add r0, r2, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_08045502:
	add r1, r7, #0
	add r1, r1, #8
	add r0, r7, #0
	add r0, r0, #8
	add r1, r7, #0
	add r1, r1, #8
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _080454AC
_08045518:
	.4byte gUnknown_03006A30
_0804551C:
	add sp, sp, #12
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804533C

	THUMB_FUNC_START sub_08045524
sub_08045524: @ 0x08045524
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	bl sub_0803DF84
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_080660BC
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #56]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r2, r3
	str r1, [r0, #56]
	ldr r0, [r7]
	mov r2, #58
	ldrsh r1, [r0, r2]
	mov r0, #48
	cmn r1, r0
	bne _080455A6
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #21]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #21]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r1, _080455B0  @ =0x00000904
	add r0, r1, #0
	bl sub_0800D67C
_080455A6:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080455B0:
	.4byte 0x00000904
	THUMB_FUNC_END sub_08045524

	THUMB_FUNC_START sub_080455B4
sub_080455B4: @ 0x080455B4
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	bl sub_0803DF84
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_080660BC
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	beq _080455F0
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	b _080456CE
_080455F0:
	ldr r0, [r7]
	ldrb r1, [r0, #21]
	cmp r1, #0
	bne _0804562E
	ldr r0, _08045610  @ =gUnknown_02000010
	ldrb r1, [r0]
	mov r2, #127
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #6
	beq _08045614
	b _080456CE
	.byte 0x00
	.byte 0x00
_08045610:
	.4byte gUnknown_02000010
_08045614:
	bl sub_0800D644
	ldr r0, [r7]
	ldrb r1, [r0, #21]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #21]
	b _080456CE
_0804562E:
	add r0, r7, #4
	mov r1, #0
	strb r1, [r0]
_08045634:
	add r0, r7, #4
	ldr r1, _08045644  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08045648
	b _08045680
	.byte 0x00
	.byte 0x00
_08045644:
	.4byte gUnknown_03006C80
_08045648:
	ldr r0, _0804566C  @ =gUnknown_03000940
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r2, #0
	lsl r2, r1, #1
	add r0, r0, r2
	ldrh r1, [r0]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	beq _08045670
	b _080456CE
	.byte 0x00
	.byte 0x00
_0804566C:
	.4byte gUnknown_03000940
_08045670:
	add r1, r7, #4
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08045634
_08045680:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #5
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r1, _080456D8  @ =0x000001F9
	add r0, r1, #0
	bl sub_0800D24C
	ldr r0, _080456DC  @ =gUnknown_03000520
	ldrb r1, [r0, #7]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #22
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #7]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	bl sub_0800C1EC
_080456CE:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080456D8:
	.4byte 0x000001F9
_080456DC:
	.4byte gUnknown_03000520
	THUMB_FUNC_END sub_080455B4

	THUMB_FUNC_START sub_080456E0
sub_080456E0: @ 0x080456E0
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080456E0

	THUMB_FUNC_START sub_080456F0
sub_080456F0: @ 0x080456F0
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl sub_080660BC
	bl sub_0803DF84
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	beq _08045748
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #4
	bne _0804573C
	ldr r1, _08045740  @ =gUnknown_08143FD8
	add r0, r1, #0
	mov r1, #1
	bl sub_0801484C
	ldr r0, _08045744  @ =gUnknown_0200B310
	mov r1, #0
	str r1, [r0]
_0804573C:
	b _08045778
	.byte 0x00
	.byte 0x00
_08045740:
	.4byte gUnknown_08143FD8
_08045744:
	.4byte gUnknown_0200B310
_08045748:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #62
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	mov r0, #2
	mov r1, #8
	bl sub_0800C0B0
_08045778:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080456F0

	THUMB_FUNC_START sub_08045780
sub_08045780: @ 0x08045780
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	bl sub_0803DF84
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_080660BC
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _080457E2
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #7
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #30
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
_080457E2:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08045780

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080457EC
sub_080457EC: @ 0x080457EC
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	bl sub_0803DF84
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_080660BC
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08045868
	mov r0, #10
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08045868
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	str r1, [r0, #88]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
_08045868:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080457EC

	THUMB_FUNC_START sub_08045870
sub_08045870: @ 0x08045870
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	bl sub_0803DF84
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_080660BC
	ldr r0, [r7]
	ldr r1, [r0, #88]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	cmp r0, #0
	beq _080458F2
	mov r0, #11
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080458F2
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r0, [r7, #4]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	str r1, [r0, #88]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #9
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
_080458F2:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08045870

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080458FC
sub_080458FC: @ 0x080458FC
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	bl sub_0803DF84
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_080660BC
	ldr r0, [r7]
	ldr r1, [r0, #88]
	mov r2, #58
	ldrsh r0, [r1, r2]
	mov r1, #2
	cmn r0, r1
	bge _08045924
	b _08045AB4
_08045924:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #10
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #36
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	add r0, r7, #4
	mov r1, #0
	strb r1, [r0]
_08045952:
	add r0, r7, #4
	ldr r1, _08045960  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08045964
	b _08045AB4
_08045960:
	.4byte gUnknown_03006C80
_08045964:
	ldr r0, _08045A88  @ =gUnknown_03006A30
	add r2, r7, #4
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #12]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #12]
	ldr r0, _08045A88  @ =gUnknown_03006A30
	add r2, r7, #4
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldr r3, _08045A8C  @ =0x000001AB
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #8]
	ldr r0, _08045A88  @ =gUnknown_03006A30
	add r2, r7, #4
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	add r1, r0, #0
	add r0, r0, #56
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #180
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08045A88  @ =gUnknown_03006A30
	add r2, r7, #4
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	add r1, r0, #0
	add r0, r0, #57
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #252
	lsl r0, r0, #1
	mov r1, #224
	lsl r1, r1, #1
	ldr r2, _08045A88  @ =gUnknown_03006A30
	add r4, r7, #4
	ldrb r3, [r4]
	add r5, r3, #0
	lsl r4, r5, #3
	add r4, r4, r3
	lsl r3, r4, #4
	add r2, r2, #40
	add r3, r2, r3
	ldr r4, [r3]
	mov r3, #50
	ldrsh r2, [r4, r3]
	ldr r3, _08045A88  @ =gUnknown_03006A30
	add r5, r7, #4
	ldrb r4, [r5]
	add r6, r4, #0
	lsl r5, r6, #3
	add r5, r5, r4
	lsl r4, r5, #4
	add r3, r3, #40
	add r4, r3, r4
	ldr r5, [r4]
	mov r4, #54
	ldrsh r3, [r5, r4]
	bl 0x08003F54
	ldr r1, _08045A88  @ =gUnknown_03006A30
	add r3, r7, #4
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r1, [r2]
	add r2, r1, #0
	add r1, r1, #43
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, _08045A88  @ =gUnknown_03006A30
	add r2, r7, #4
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldr r1, _08045A88  @ =gUnknown_03006A30
	add r3, r7, #4
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r3, [r2]
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #43
	ldrb r1, [r2]
	cmp r1, #15
	bhi _08045A90
	mov r1, #2
	b _08045A92
	.byte 0x00
	.byte 0x00
_08045A88:
	.4byte gUnknown_03006A30
_08045A8C:
	.4byte 0x000001AB
_08045A90:
	mov r1, #6
_08045A92:
	add r2, r0, #0
	add r0, r0, #42
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add r1, r7, #4
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08045952
_08045AB4:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080458FC

	THUMB_FUNC_START sub_08045ABC
sub_08045ABC: @ 0x08045ABC
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	bl sub_0803DF84
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_080660BC
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08045B94
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #11
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #29]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	ldr r0, [r7]
	ldrb r1, [r0, #31]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #64
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #31]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #94
	ldrb r1, [r0]
	mov r2, #3
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	add r0, r7, #4
	mov r1, #0
	strb r1, [r0]
_08045B48:
	add r0, r7, #4
	ldr r1, _08045B58  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08045B5C
	b _08045B94
	.byte 0x00
	.byte 0x00
_08045B58:
	.4byte gUnknown_03006C80
_08045B5C:
	ldr r0, _08045B90  @ =gUnknown_03006A30
	add r2, r7, #4
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	add r1, r7, #4
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08045B48
	.byte 0x00
	.byte 0x00
_08045B90:
	.4byte gUnknown_03006A30
_08045B94:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08045ABC

	THUMB_FUNC_START sub_08045B9C
sub_08045B9C: @ 0x08045B9C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	bl sub_0803DF84
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_080660BC
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r1, #56]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r2, r3
	str r1, [r0, #56]
	ldr r0, [r7]
	mov r2, #58
	ldrsh r1, [r0, r2]
	mov r0, #4
	cmn r1, r0
	bne _08045C0E
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #30
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08045C0E:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08045B9C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08045C18
sub_08045C18: @ 0x08045C18
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_080660BC
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	beq _08045C50
	b _08045DB8
_08045C50:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #13
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #1
	str r1, [r0, #12]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #29]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #29]
	ldr r0, [r7]
	ldrb r1, [r0, #31]
	mov r2, #63
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #31]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #94
	ldrb r1, [r0]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08045CEC  @ =gUnknown_03000450
	ldr r1, _08045CF0  @ =gUnknown_03006A30
	ldr r3, _08045CF4  @ =gUnknown_03000414
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, #40
	add r2, r1, r2
	ldr r1, [r2]
	str r1, [r0]
	add r0, r7, #4
	mov r1, #0
	strb r1, [r0]
_08045CDE:
	add r0, r7, #4
	ldr r1, _08045CF8  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _08045CFC
	b _08045D94
_08045CEC:
	.4byte gUnknown_03000450
_08045CF0:
	.4byte gUnknown_03006A30
_08045CF4:
	.4byte gUnknown_03000414
_08045CF8:
	.4byte gUnknown_03006C80
_08045CFC:
	ldr r0, _08045D90  @ =gUnknown_03006A30
	add r2, r7, #4
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #8]
	ldr r0, _08045D90  @ =gUnknown_03006A30
	add r2, r7, #4
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	add r1, r0, #0
	add r0, r0, #56
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08045D90  @ =gUnknown_03006A30
	add r2, r7, #4
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #2]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #65
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #2]
	ldr r0, _08045D90  @ =gUnknown_03006A30
	add r2, r7, #4
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	mov r1, #128
	lsl r1, r1, #10
	str r1, [r0, #16]
	add r1, r7, #4
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _08045CDE
_08045D90:
	.4byte gUnknown_03006A30
_08045D94:
	ldr r1, _08045DC0  @ =0x000001AF
	add r0, r1, #0
	bl sub_0800D24C
	ldr r0, _08045DC4  @ =gUnknown_03000420
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	bl sub_0802D97C
	bl sub_0802C8F8
_08045DB8:
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
_08045DC0:
	.4byte 0x000001AF
_08045DC4:
	.4byte gUnknown_03000420
	THUMB_FUNC_END sub_08045C18

	THUMB_FUNC_START sub_08045DC8
sub_08045DC8: @ 0x08045DC8
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	ldrh r1, [r0, #50]
	ldr r2, _08045E50  @ =0xFFFFFE09
	add r0, r1, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #2
	bhi _08045E58
	ldr r0, [r7]
	ldrh r1, [r0, #54]
	ldr r3, _08045E54  @ =0xFFFFFE61
	add r0, r1, r3
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #2
	bhi _08045E58
	ldr r0, [r7]
	ldrh r1, [r0, #50]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #252
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #50]
	ldr r0, [r7]
	ldrh r1, [r0, #54]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #208
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #54]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08045E4E
	ldr r0, [r7]
	bl sub_08046D3C
_08045E4E:
	b _08045E90
_08045E50:
	.4byte 0xFFFFFE09
_08045E54:
	.4byte 0xFFFFFE61
_08045E58:
	ldr r1, [r7]
	mov r2, #50
	ldrsh r0, [r1, r2]
	ldr r2, [r7]
	mov r3, #54
	ldrsh r1, [r2, r3]
	mov r2, #252
	lsl r2, r2, #1
	mov r3, #208
	lsl r3, r3, #1
	bl 0x08003F54
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7]
	bl sub_0803CC20
	ldr r0, [r7]
	bl sub_080660BC
_08045E90:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08045DC8

	THUMB_FUNC_START sub_08045E98
sub_08045E98: @ 0x08045E98
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #1
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08045EF0
	ldr r0, [r7]
	bl sub_08046FB4
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08045EEA
	ldr r0, [r7]
	bl sub_080470C0
	ldr r0, [r7]
	bl sub_08047678
	add r2, r0, #0
	ldr r0, [r7]
	ldr r1, _08045EEC  @ =gUnknown_0813F058
	lsl r3, r2, #24
	lsr r2, r3, #24
	add r3, r2, #0
	lsl r2, r3, #1
	add r1, r1, r2
	ldrh r2, [r1]
	str r2, [r0, #12]
	ldr r0, [r7]
	bl 0x08003828
_08045EEA:
	b _08045EF6
_08045EEC:
	.4byte gUnknown_0813F058
_08045EF0:
	ldr r0, [r7]
	bl 0x08003828
_08045EF6:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08045E98

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08045F00
sub_08045F00: @ 0x08045F00
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	bne _08045F5A
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
_08045F5A:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08045F00

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08045F64
sub_08045F64: @ 0x08045F64
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #15
	bne _08045FD2
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08045FD2
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #17
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #1
	str r1, [r0, #12]
	ldr r0, [r7]
	bl sub_08047174
_08045FD2:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08045F64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08045FDC
sub_08045FDC: @ 0x08045FDC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046018
	ldr r0, [r7]
	bl sub_0804721C
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08046016
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #7
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08046016:
	b _0804604C
_08046018:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #4
	bne _0804604C
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #18
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #20
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
_0804604C:
	ldr r0, [r7]
	bl 0x08003828
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08045FDC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804605C
sub_0804605C: @ 0x0804605C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _080460BE
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #19
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_080460BE:
	ldr r0, [r7]
	bl 0x08003828
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804605C

	THUMB_FUNC_START sub_080460CC
sub_080460CC: @ 0x080460CC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #3
	bne _08046140
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08046140
	ldr r0, [r7]
	ldr r1, _08046150  @ =gUnknown_08137B10
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #113
	ldrb r2, [r3]
	add r3, r2, #2
	add r2, r3, #0
	lsl r3, r2, #2
	add r1, r1, r3
	ldr r2, [r1]
	add r1, r2, #0
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #20
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
_08046140:
	ldr r0, [r7]
	bl 0x08003828
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08046150:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_080460CC

	THUMB_FUNC_START sub_08046154
sub_08046154: @ 0x08046154
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046182
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #21
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
_08046182:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046154

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804618C
sub_0804618C: @ 0x0804618C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #24]
	sub r1, r2, #1
	ldrb r2, [r0, #24]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #24]
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	cmp r1, #0
	beq _080461BE
	ldr r0, [r7]
	bl sub_080470C0
	b _080461EA
_080461BE:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #22
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	mov r1, #4
	bl 0x08003870
_080461EA:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804618C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080461F4
sub_080461F4: @ 0x080461F4
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08046250
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #13
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #1
	str r1, [r0, #12]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
_08046250:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080461F4

	THUMB_FUNC_START sub_08046258
sub_08046258: @ 0x08046258
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _080462D2
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #24
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #114
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #32
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	mov r1, #3
	bl 0x08003870
	mov r0, #178
	bl 0x08003DFC
_080462D2:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046258

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080462DC
sub_080462DC: @ 0x080462DC
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #1
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08046314
	ldr r0, [r7]
	bl sub_080473AC
	ldr r0, [r7]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #11]
	b _08046392
_08046314:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08046392
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #25
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #110
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0]
	ldr r4, [r7]
	bl 0x0800099C
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08046374
	mov r0, #1
	b _08046376
_08046374:
	mov r0, #255
_08046376:
	add r2, r4, #0
	add r1, r4, #0
	add r1, r1, #125
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
_08046392:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080462DC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804639C
sub_0804639C: @ 0x0804639C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_08047538
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _080463EC
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #26
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	bl sub_08047490
_080463EC:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804639C

	THUMB_FUNC_START sub_080463F4
sub_080463F4: @ 0x080463F4
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_08047538
	ldr r0, [r7]
	bl sub_0804721C
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08046424
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046424
	b _08046438
_08046424:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #27
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
_08046438:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080463F4

	THUMB_FUNC_START sub_08046440
sub_08046440: @ 0x08046440
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_08047538
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #110
	ldrh r0, [r1]
	cmp r0, #0
	bne _08046488
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #28
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #30
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
_08046488:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046440

	THUMB_FUNC_START sub_08046490
sub_08046490: @ 0x08046490
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #115
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #125
	ldrb r1, [r1]
	ldrb r2, [r3]
	add r1, r1, r2
	add r2, r0, #0
	add r0, r0, #115
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #110
	ldrh r0, [r1]
	cmp r0, #31
	bhi _08046534
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #110
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #110
	ldrh r3, [r2]
	add r1, r3, #1
	add r2, r0, #0
	add r0, r0, #110
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, _08046530  @ =gUnknown_0813E4CC
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #110
	ldrh r2, [r3]
	add r3, r2, #0
	lsl r2, r3, #1
	add r1, r1, r2
	mov r3, #0
	ldrsh r2, [r1, r3]
	add r1, r2, #0
	lsl r2, r1, #5
	asr r1, r2, #8
	add r2, r1, #0
	mov r3, #32
	sub r1, r3, r2
	add r2, r0, #0
	add r0, r0, #114
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _08046594
_08046530:
	.4byte gUnknown_0813E4CC
_08046534:
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08046594
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #29
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	mov r0, #159
	bl 0x08003DFC
_08046594:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046490

	THUMB_FUNC_START sub_0804659C
sub_0804659C: @ 0x0804659C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08046650
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #24]
	sub r1, r2, #1
	ldrb r2, [r0, #24]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #24]
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	cmp r1, #0
	beq _08046618
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #23
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	b _08046650
_08046618:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #13
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #1
	str r1, [r0, #12]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
_08046650:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804659C

	THUMB_FUNC_START sub_08046658
sub_08046658: @ 0x08046658
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _080466A4
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #31
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #1
	str r1, [r0, #12]
_080466A4:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046658

	THUMB_FUNC_START sub_080466AC
sub_080466AC: @ 0x080466AC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	ldrh r1, [r0, #50]
	ldr r2, _08046734  @ =0xFFFFFE09
	add r0, r1, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #2
	bhi _08046738
	ldr r0, [r7]
	ldrh r1, [r0, #54]
	ldr r3, _08046734  @ =0xFFFFFE09
	add r0, r1, r3
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #2
	bhi _08046738
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #32
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrh r1, [r0, #50]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #252
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #50]
	ldr r0, [r7]
	ldrh r1, [r0, #54]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #252
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #54]
	b _08046790
_08046734:
	.4byte 0xFFFFFE09
_08046738:
	ldr r1, [r7]
	mov r2, #50
	ldrsh r0, [r1, r2]
	ldr r2, [r7]
	mov r3, #54
	ldrsh r1, [r2, r3]
	mov r2, #252
	lsl r2, r2, #1
	mov r3, #252
	lsl r3, r3, #1
	bl 0x08003F54
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, _08046798  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r2, #7
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _08046784
	ldr r0, [r7]
	mov r1, #1
	mov r2, #1
	mov r3, #20
	bl sub_0804CB7C
_08046784:
	ldr r0, [r7]
	bl sub_0803CC20
	ldr r0, [r7]
	bl sub_080660BC
_08046790:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_08046798:
	.4byte gUnknown_03000E20
	THUMB_FUNC_END sub_080466AC

	THUMB_FUNC_START sub_0804679C
sub_0804679C: @ 0x0804679C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _0804681A
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #33
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #210
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	bl 0x0800099C
	add r1, r0, #0
	ldr r0, [r7]
	ldr r2, _08046824  @ =gUnknown_0813F070
	mov r3, #7
	and r1, r1, r3
	add r2, r2, r1
	ldrb r3, [r2]
	add r1, r3, #0
	add r2, r0, #0
	add r0, r0, #110
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
_0804681A:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08046824:
	.4byte gUnknown_0813F070
	THUMB_FUNC_END sub_0804679C

	THUMB_FUNC_START sub_08046828
sub_08046828: @ 0x08046828
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _080468BC
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #110
	ldrh r0, [r1]
	cmp r0, #0
	bne _08046880
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #34
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	bl sub_080475D0
	b _080468BA
_08046880:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #110
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #110
	ldrh r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #110
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #240
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
_080468BA:
	b _0804690E
_080468BC:
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #120
	bne _0804690E
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #110
	ldrh r0, [r1]
	cmp r0, #0
	bne _080468FA
	mov r0, #10
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080468F8
	ldr r0, [r7, #4]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
_080468F8:
	b _0804690E
_080468FA:
	mov r0, #10
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0804690E
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
_0804690E:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046828

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08046918
sub_08046918: @ 0x08046918
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	beq _0804694A
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	b _08046A22
_0804694A:
	ldr r0, _080469C8  @ =gUnknown_03000E20
	ldrh r1, [r0]
	mov r2, #7
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _0804696A
	ldr r0, [r7]
	mov r1, #1
	mov r2, #1
	mov r3, #20
	bl sub_0804CB7C
_0804696A:
	ldr r0, [r7]
	bl sub_0804721C
	add r1, r7, #4
	strb r0, [r1]
	add r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #0
	bne _08046A06
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #24]
	sub r1, r2, #1
	ldrb r2, [r0, #24]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #24]
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	cmp r1, #0
	beq _080469CC
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #32
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	b _08046A04
_080469C8:
	.4byte gUnknown_03000E20
_080469CC:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #13
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #1
	str r1, [r0, #12]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
_08046A04:
	b _08046A22
_08046A06:
	add r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #2
	bne _08046A22
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #30
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
_08046A22:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046918

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08046A2C
sub_08046A2C: @ 0x08046A2C
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #60
	ldrb r0, [r1]
	cmp r0, #0
	beq _08046A7A
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #60
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #180
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	bl sub_0802D970
	bl sub_0802C8E4
	ldr r1, _08046AC4  @ =0x80010000
	add r0, r1, #0
	bl sub_0800D24C
	mov r0, #46
	bl sub_0800D24C
_08046A7A:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #28]
	lsl r3, r2, #30
	lsr r1, r3, #30
	mov r2, #1
	eor r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #28]
	mov r3, #252
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	beq _08046AC8
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	b _08046C74
_08046AC4:
	.4byte 0x80010000
_08046AC8:
	mov r0, #0
	str r0, [r7, #4]
_08046ACC:
	ldr r0, _08046AD8  @ =gUnknown_03006C80
	ldrb r1, [r0]
	ldr r0, [r7, #4]
	cmp r0, r1
	bcc _08046ADC
	b _08046B46
_08046AD8:
	.4byte gUnknown_03006C80
_08046ADC:
	ldr r0, _08046B38  @ =gUnknown_03006A30
	ldr r1, [r7, #4]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrh r1, [r0, #54]
	mov r2, #1
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #0
	bne _08046B3C
	ldr r0, _08046B38  @ =gUnknown_03006A30
	ldr r1, [r7, #4]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r2, r0, r1
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #60
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046B3C
	ldr r0, _08046B38  @ =gUnknown_03006A30
	ldr r1, [r7, #4]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	add r1, r2, #0
	add r1, r1, #69
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046B3E
	b _08046B3C
	.byte 0x00
	.byte 0x00
_08046B38:
	.4byte gUnknown_03006A30
_08046B3C:
	b _08046C74
_08046B3E:
	ldr r0, [r7, #4]
	add r1, r0, #1
	str r1, [r7, #4]
	b _08046ACC
_08046B46:
	mov r0, #0
	str r0, [r7, #4]
_08046B4A:
	ldr r0, _08046B58  @ =gUnknown_03006C80
	ldrb r1, [r0]
	ldr r0, [r7, #4]
	cmp r0, r1
	bcc _08046B5C
	b _08046C34
	.byte 0x00
	.byte 0x00
_08046B58:
	.4byte gUnknown_03006C80
_08046B5C:
	ldr r0, _08046C2C  @ =gUnknown_03006A30
	ldr r1, [r7, #4]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	ldrh r1, [r0, #58]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strh r2, [r0, #58]
	ldr r0, _08046C2C  @ =gUnknown_03006A30
	ldr r1, [r7, #4]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	mov r1, #0
	str r1, [r0, #16]
	ldr r0, _08046C2C  @ =gUnknown_03006A30
	ldr r1, [r7, #4]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08046C2C  @ =gUnknown_03006A30
	ldr r1, [r7, #4]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r0, [r1]
	add r1, r0, #0
	add r0, r0, #61
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #136
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, _08046C2C  @ =gUnknown_03006A30
	ldr r1, [r7, #4]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldr r1, _08046C2C  @ =gUnknown_03006A30
	ldr r2, [r7, #4]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #4
	add r1, r1, r2
	ldrh r2, [r1, #54]
	ldr r3, _08046C30  @ =0x0000F3FF
	add r1, r2, #0
	and r1, r1, r3
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	ldr r0, _08046C2C  @ =gUnknown_03006A30
	ldr r1, [r7, #4]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, #40
	add r1, r0, r1
	ldr r2, [r1]
	add r0, r2, #0
	bl 0x080012F4
	ldr r0, [r7, #4]
	add r1, r0, #1
	str r1, [r7, #4]
	b _08046B4A
	.byte 0x00
	.byte 0x00
_08046C2C:
	.4byte gUnknown_03006A30
_08046C30:
	.4byte 0x0000F3FF
_08046C34:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #36
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #32
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
	mov r0, #3
	mov r1, #16
	bl sub_0800C0B0
	bl sub_0800D644
	bl sub_080476DC
_08046C74:
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046A2C

	THUMB_FUNC_START sub_08046C7C
sub_08046C7C: @ 0x08046C7C
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #28]
	lsl r3, r2, #30
	lsr r1, r3, #30
	mov r2, #1
	eor r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #28]
	mov r3, #252
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
	bl sub_080476DC
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	beq _08046CD8
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	b _08046D1A
_08046CD8:
	mov r0, #105
	mov r1, #0
	mov r2, #0
	bl sub_0804C8A8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08046CEC
	b _08046D1A
_08046CEC:
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #37
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
_08046D1A:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046C7C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08046D24
sub_08046D24: @ 0x08046D24
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046D24

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08046D3C
sub_08046D3C: @ 0x08046D3C
	push {r4,r5,r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	add r0, r7, #4
	add r1, r7, #4
	add r2, r7, #4
	add r3, r7, #4
	ldrb r4, [r3, #3]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	strb r5, [r3, #3]
	ldrb r3, [r2, #2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	strb r4, [r2, #2]
	ldrb r2, [r1, #1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	strb r3, [r1, #1]
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	add r0, r7, #4
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #124
	ldrb r1, [r2]
	mov r2, #3
	and r1, r1, r2
	add r2, r1, #0
	lsl r1, r2, #24
	lsr r2, r1, #24
	add r1, r0, r2
	add r0, r7, #4
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #124
	ldrb r1, [r2]
	mov r2, #3
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	add r0, r0, r1
	add r1, r7, #4
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #124
	ldrb r2, [r3]
	mov r3, #3
	and r2, r2, r3
	add r4, r2, #0
	lsl r3, r4, #24
	lsr r2, r3, #24
	add r1, r1, r2
	ldrb r2, [r1]
	add r1, r2, #1
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	add r0, r7, #4
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #124
	ldrb r1, [r2]
	lsr r2, r1, #2
	add r1, r2, #0
	mov r2, #3
	and r1, r1, r2
	add r2, r1, #0
	lsl r1, r2, #24
	lsr r2, r1, #24
	add r1, r0, r2
	add r0, r7, #4
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #124
	ldrb r1, [r2]
	lsr r2, r1, #2
	add r1, r2, #0
	mov r2, #3
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	add r0, r0, r1
	add r1, r7, #4
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #124
	ldrb r2, [r3]
	lsr r3, r2, #2
	add r2, r3, #0
	mov r3, #3
	and r2, r2, r3
	add r4, r2, #0
	lsl r3, r4, #24
	lsr r2, r3, #24
	add r1, r1, r2
	ldrb r2, [r1]
	add r1, r2, #1
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	add r0, r7, #4
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #124
	ldrb r1, [r2]
	lsr r2, r1, #4
	add r1, r2, #0
	mov r2, #3
	and r1, r1, r2
	add r2, r1, #0
	lsl r1, r2, #24
	lsr r2, r1, #24
	add r1, r0, r2
	add r0, r7, #4
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #124
	ldrb r1, [r2]
	lsr r2, r1, #4
	add r1, r2, #0
	mov r2, #3
	and r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	add r0, r0, r1
	add r1, r7, #4
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #124
	ldrb r2, [r3]
	lsr r3, r2, #4
	add r2, r3, #0
	mov r3, #3
	and r2, r2, r3
	add r4, r2, #0
	lsl r3, r4, #24
	lsr r2, r3, #24
	add r1, r1, r2
	ldrb r2, [r1]
	add r1, r2, #1
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	add r0, r7, #4
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _08046EA0
	add r0, r7, #0
	add r0, r0, #8
	mov r1, #0
	strb r1, [r0]
	b _08046EDA
_08046EA0:
	add r0, r7, #4
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _08046EB2
	add r0, r7, #0
	add r0, r0, #8
	mov r1, #1
	strb r1, [r0]
	b _08046EDA
_08046EB2:
	add r0, r7, #4
	ldrb r1, [r0, #3]
	cmp r1, #0
	bne _08046EC4
	add r0, r7, #0
	add r0, r0, #8
	mov r1, #2
	strb r1, [r0]
	b _08046EDA
_08046EC4:
	add r4, r7, #0
	add r4, r4, #8
	bl 0x0800099C
	add r1, r0, #0
	add r0, r1, #0
	mov r1, #3
	bl __umodsi3
	add r1, r0, #0
	strb r1, [r4]
_08046EDA:
	add r1, r7, #0
	add r1, r1, #8
	ldrb r0, [r1]
	cmp r0, #1
	beq _08046F18
	cmp r0, #1
	bgt _08046EEE
	cmp r0, #0
	beq _08046EF4
	b _08046F6C
_08046EEE:
	cmp r0, #2
	beq _08046F42
	b _08046F6C
_08046EF4:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #14
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	mov r1, #1
	bl 0x08003870
	mov r0, #178
	bl 0x08003DFC
	b _08046F6C
_08046F18:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #23
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	b _08046F6C
_08046F42:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #30
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	b _08046F6C
_08046F6C:
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #124
	ldrb r3, [r2]
	lsl r1, r3, #2
	add r2, r7, #0
	add r2, r2, #8
	ldrb r3, [r2]
	add r2, r3, #1
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #124
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #24]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #24]
	add sp, sp, #12
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08046D3C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08046FB4
sub_08046FB4: @ 0x08046FB4
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	bl sub_080123E8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080470B4
	ldr r1, [r7, #4]
	add r0, r1, #0
	bl sub_08012410
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _080470B4
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #48
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #48
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #160
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #8]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #96
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	str r1, [r0, #88]
	ldr r0, [r7, #8]
	ldr r1, [r7, #4]
	str r1, [r0, #88]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r1, [r7, #8]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r1, [r7, #4]
	mov r0, #4
	bl sub_08012728
	ldr r1, [r7, #8]
	mov r0, #4
	bl sub_08012728
	mov r0, #1
	b _080470B8
_080470B4:
	mov r0, #0
	b _080470B8
_080470B8:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08046FB4

	THUMB_FUNC_START sub_080470C0
sub_080470C0: @ 0x080470C0
	push {r4,r5,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	bl 0x0800099C
	add r1, r0, #0
	ldr r0, [r7]
	ldr r2, _0804716C  @ =gUnknown_084287A4
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #113
	ldrb r5, [r4]
	lsl r3, r5, #3
	mov r4, #7
	and r1, r1, r4
	add r3, r3, r1
	add r1, r2, r3
	add r2, r0, #0
	add r0, r0, #113
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #113
	ldrb r0, [r1]
	cmp r0, #255
	bne _0804713A
	bl 0x0800099C
	add r1, r0, #0
	ldr r0, [r7]
	mov r2, #1
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #113
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_0804713A:
	ldr r0, [r7]
	ldr r1, _08047170  @ =gUnknown_08137B10
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #113
	ldrb r2, [r3]
	add r3, r2, #0
	lsl r2, r3, #2
	add r1, r1, r2
	ldr r2, [r1]
	add r1, r2, #0
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add sp, sp, #4
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804716C:
	.4byte gUnknown_084287A4
_08047170:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_080470C0

	THUMB_FUNC_START sub_08047174
sub_08047174: @ 0x08047174
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	bl 0x0800099C
	add r2, r0, #0
	ldr r0, [r7]
	ldr r1, _08047218  @ =gUnknown_0813F0F8
	mov r3, #3
	and r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #2
	add r1, r1, r2
	ldr r2, [r1]
	str r2, [r0, #116]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r4, [r2, #116]
	add r2, r4, #2
	str r2, [r1, #116]
	add r1, r0, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldrh r1, [r4]
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r5, [r2, #116]
	add r2, r5, #2
	str r2, [r1, #116]
	add r1, r0, #0
	add r0, r0, #122
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldrh r1, [r5]
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r6, [r2, #116]
	add r2, r6, #2
	str r2, [r1, #116]
	ldrh r2, [r6]
	add r1, r2, #0
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #126
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08047218:
	.4byte gUnknown_0813F0F8
	THUMB_FUNC_END sub_08047174

	THUMB_FUNC_START sub_0804721C
sub_0804721C: @ 0x0804721C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #126
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804725A
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #126
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #126
	ldrb r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #126
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_0804725A:
	ldr r0, _08047310  @ =gUnknown_0813F10C
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #126
	ldrb r1, [r2]
	lsr r2, r1, #4
	add r1, r2, #0
	lsl r2, r1, #24
	lsr r1, r2, #24
	add r2, r0, r1
	ldrb r0, [r2]
	ldr r1, _08047314  @ =gUnknown_03000E20
	ldrh r2, [r1]
	and r0, r0, r2
	cmp r0, #0
	bne _080472BC
	ldr r1, [r7]
	mov r2, #50
	ldrsh r0, [r1, r2]
	ldr r2, [r7]
	mov r3, #54
	ldrsh r1, [r2, r3]
	ldr r3, [r7]
	add r2, r3, #0
	add r2, r3, #0
	add r2, r2, #120
	str r2, [r7, #4]
	ldr r3, [r7, #4]
	mov r2, #0
	ldrsh r3, [r3, r2]
	str r3, [r7, #8]
	ldr r3, [r7]
	mov r8, r3
	mov r3, r8
	mov r2, #122
	add r8, r8, r2
	mov r3, r8
	mov r2, #0
	ldrsh r3, [r3, r2]
	str r3, [r7, #4]
	ldr r2, [r7, #8]
	ldr r3, [r7, #4]
	bl 0x08003F54
	lsl r2, r0, #24
	lsr r1, r2, #24
	ldr r0, [r7]
	bl 0x080040C4
_080472BC:
	ldr r0, [r7]
	bl sub_0803CC20
	ldr r0, [r7]
	bl sub_080660BC
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #120
	ldr r0, [r7]
	ldrh r1, [r1]
	ldrh r0, [r0, #50]
	sub r1, r1, r0
	add r0, r1, #0
	add r1, r0, #2
	add r0, r1, #0
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #4
	bhi _0804739A
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #122
	ldr r0, [r7]
	ldrh r1, [r1]
	ldrh r0, [r0, #54]
	sub r1, r1, r0
	add r0, r1, #0
	add r1, r0, #2
	add r0, r1, #0
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #4
	bhi _0804739A
	ldr r0, [r7]
	ldr r1, [r0, #116]
	ldrh r0, [r1]
	ldr r1, _08047318  @ =0x0000FFFF
	cmp r0, r1
	bne _0804731C
	mov r0, #0
	b _0804739E
_08047310:
	.4byte gUnknown_0813F10C
_08047314:
	.4byte gUnknown_03000E20
_08047318:
	.4byte 0x0000FFFF
_0804731C:
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r4, [r2, #116]
	add r2, r4, #2
	str r2, [r1, #116]
	add r1, r0, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldrh r1, [r4]
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r5, [r2, #116]
	add r2, r5, #2
	str r2, [r1, #116]
	add r1, r0, #0
	add r0, r0, #122
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldrh r1, [r5]
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r6, [r2, #116]
	add r2, r6, #2
	str r2, [r1, #116]
	ldrh r2, [r6]
	add r1, r2, #0
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #126
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #2
	b _0804739E
_0804739A:
	mov r0, #1
	b _0804739E
_0804739E:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804721C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080473AC
sub_080473AC: @ 0x080473AC
	push {r4,r7,lr}
	sub sp, sp, #16
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl sub_08047678
	add r4, r0, #0
	bl 0x0800099C
	lsl r2, r4, #24
	lsr r1, r2, #24
	add r2, r1, #0
	lsl r4, r2, #2
	mov r1, #3
	bl __umodsi3
	add r1, r4, r0
	ldr r0, _080473EC  @ =gUnknown_0813F11C
	add r1, r0, r1
	str r1, [r7, #8]
	add r0, r7, #0
	add r0, r0, #12
	mov r1, #0
	strh r1, [r0]
_080473DE:
	add r0, r7, #0
	add r0, r0, #12
	ldrh r1, [r0]
	cmp r1, #7
	bls _080473F0
	b _08047488
	.byte 0x00
	.byte 0x00
_080473EC:
	.4byte gUnknown_0813F11C
_080473F0:
	mov r0, #16
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08047472
	ldr r4, [r7, #4]
	ldr r0, [r7, #8]
	add r1, r7, #0
	add r1, r1, #12
	ldrh r2, [r1]
	add r1, r2, #0
	bl 0x08000AAC
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08047434
	bl 0x0800099C
	ldr r1, _08047430  @ =gUnknown_03006C80
	ldrb r2, [r1]
	add r1, r2, #0
	bl __umodsi3
	add r1, r0, #0
	add r0, r1, #0
	add r1, r0, #1
	add r0, r1, #0
	b _08047436
	.byte 0x00
	.byte 0x00
_08047430:
	.4byte gUnknown_03006C80
_08047434:
	mov r0, #0
_08047436:
	ldrb r1, [r4, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	orr r0, r0, r2
	add r1, r0, #0
	strb r1, [r4, #10]
	ldr r0, [r7, #4]
	add r1, r7, #0
	add r1, r1, #12
	ldrh r3, [r1]
	add r2, r3, #0
	lsl r1, r2, #5
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
_08047472:
	add r1, r7, #0
	add r1, r1, #12
	add r0, r7, #0
	add r0, r0, #12
	add r1, r7, #0
	add r1, r1, #12
	ldrh r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strh r2, [r0]
	b _080473DE
_08047488:
	add sp, sp, #16
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080473AC

	THUMB_FUNC_START sub_08047490
sub_08047490: @ 0x08047490
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	bl 0x0800099C
	add r2, r0, #0
	ldr r0, [r7]
	ldr r1, _08047534  @ =gUnknown_0813F164
	mov r3, #1
	and r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #2
	add r1, r1, r2
	ldr r2, [r1]
	str r2, [r0, #116]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r4, [r2, #116]
	add r2, r4, #2
	str r2, [r1, #116]
	add r1, r0, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldrh r1, [r4]
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r5, [r2, #116]
	add r2, r5, #2
	str r2, [r1, #116]
	add r1, r0, #0
	add r0, r0, #122
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldrh r1, [r5]
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r6, [r2, #116]
	add r2, r6, #2
	str r2, [r1, #116]
	ldrh r2, [r6]
	add r1, r2, #0
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #126
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08047534:
	.4byte gUnknown_0813F164
	THUMB_FUNC_END sub_08047490

	THUMB_FUNC_START sub_08047538
sub_08047538: @ 0x08047538
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #115
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #125
	ldrb r1, [r1]
	ldrb r2, [r3]
	add r1, r1, r2
	add r2, r0, #0
	add r0, r0, #115
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, _080475CC  @ =gUnknown_0813E4CC
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #110
	ldrh r2, [r3]
	add r3, r2, #0
	lsl r2, r3, #1
	add r1, r1, r2
	mov r3, #0
	ldrsh r2, [r1, r3]
	add r1, r2, #0
	lsl r2, r1, #5
	asr r1, r2, #8
	add r2, r1, #0
	add r1, r2, #0
	add r1, r1, #32
	add r2, r0, #0
	add r0, r0, #114
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #110
	ldrh r1, [r2]
	add r2, r1, #1
	add r1, r2, #0
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #110
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_080475CC:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_08047538

	THUMB_FUNC_START sub_080475D0
sub_080475D0: @ 0x080475D0
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	bl 0x0800099C
	add r2, r0, #0
	ldr r0, [r7]
	ldr r1, _08047674  @ =gUnknown_0813F1F4
	mov r3, #3
	and r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #2
	add r1, r1, r2
	ldr r2, [r1]
	str r2, [r0, #116]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r4, [r2, #116]
	add r2, r4, #2
	str r2, [r1, #116]
	add r1, r0, #0
	add r0, r0, #120
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldrh r1, [r4]
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r5, [r2, #116]
	add r2, r5, #2
	str r2, [r1, #116]
	add r1, r0, #0
	add r0, r0, #122
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldrh r1, [r5]
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, [r7]
	ldr r6, [r2, #116]
	add r2, r6, #2
	str r2, [r1, #116]
	ldrh r2, [r6]
	add r1, r2, #0
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #126
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08047674:
	.4byte gUnknown_0813F1F4
	THUMB_FUNC_END sub_080475D0

	THUMB_FUNC_START sub_08047678
sub_08047678: @ 0x08047678
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	add r0, r7, #4
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080476CC  @ =gUnknown_0813F208
	ldr r1, _080476D0  @ =gUnknown_03006C80
	ldrb r2, [r1, #3]
	lsl r1, r2, #1
	add r0, r0, r1
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #69
	ldrb r0, [r0]
	ldrb r1, [r2]
	cmp r0, r1
	bls _080476C4
	add r0, r7, #4
	mov r1, #1
	strb r1, [r0]
	ldr r0, _080476CC  @ =gUnknown_0813F208
	ldr r1, _080476D0  @ =gUnknown_03006C80
	ldrb r2, [r1, #3]
	lsl r1, r2, #1
	add r2, r1, #1
	add r0, r0, r2
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #69
	ldrb r0, [r0]
	ldrb r1, [r2]
	cmp r0, r1
	bls _080476C4
	add r0, r7, #4
	mov r1, #2
	strb r1, [r0]
_080476C4:
	add r0, r7, #4
	ldrb r1, [r0]
	add r0, r1, #0
	b _080476D4
_080476CC:
	.4byte gUnknown_0813F208
_080476D0:
	.4byte gUnknown_03006C80
_080476D4:
	add sp, sp, #8
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08047678

	THUMB_FUNC_START sub_080476DC
sub_080476DC: @ 0x080476DC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	add r0, r7, #0
	mov r1, #0
	strb r1, [r0]
_080476E8:
	add r0, r7, #0
	ldr r1, _080476F8  @ =gUnknown_03006C80
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080476FC
	b _08047734
	.byte 0x00
	.byte 0x00
_080476F8:
	.4byte gUnknown_03006C80
_080476FC:
	ldr r0, _08047730  @ =gUnknown_03006A30
	add r2, r7, #0
	ldrb r1, [r2]
	add r3, r1, #0
	lsl r2, r3, #3
	add r2, r2, r1
	lsl r1, r2, #4
	add r0, r0, r1
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	add r1, r7, #0
	add r0, r7, #0
	add r1, r7, #0
	ldrb r2, [r1]
	add r1, r2, #1
	add r2, r1, #0
	strb r2, [r0]
	b _080476E8
	.byte 0x00
	.byte 0x00
_08047730:
	.4byte gUnknown_03006A30
_08047734:
	bl sub_0803DF84
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080476DC

	THUMB_FUNC_START sub_08047740
sub_08047740: @ 0x08047740
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08047774  @ =gUnknown_0813F400
	ldr r1, [r7]
	ldrb r2, [r1, #10]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	ldr r0, [r7]
	ldr r1, [r0, #84]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #255
	bne _08047778
	ldr r0, [r7]
	bl sub_08012540
	b _080477DE
	.byte 0x00
	.byte 0x00
_08047774:
	.4byte gUnknown_0813F400
_08047778:
	ldr r0, [r7]
	ldr r1, _08047800  @ =gUnknown_0813F410
	ldr r2, [r7]
	ldr r3, [r2, #84]
	add r2, r3, #0
	add r3, r3, #41
	ldrb r2, [r3]
	mov r3, #112
	and r2, r2, r3
	add r4, r2, #0
	lsl r3, r4, #24
	lsr r2, r3, #24
	lsr r3, r2, #4
	add r2, r3, #0
	lsl r3, r2, #24
	lsr r2, r3, #24
	add r1, r1, r2
	mov r2, #0
	ldrsb r2, [r1, r2]
	add r1, r2, #0
	ldrh r2, [r0, #58]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #58]
	ldr r0, [r7]
	ldr r1, [r0, #84]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	cmp r0, #255
	bne _080477DE
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r3, [r1, #84]
	add r2, r3, #0
	add r1, r3, #0
	add r1, r1, #61
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_080477DE:
	ldr r0, [r7]
	ldr r1, [r0, #84]
	add r0, r1, #0
	add r1, r1, #69
	ldrb r0, [r1]
	cmp r0, #0
	bne _080477F8
	ldr r0, [r7]
	bl sub_0804CA20
	ldr r0, [r7]
	bl sub_08012540
_080477F8:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
_08047800:
	.4byte gUnknown_0813F410
	THUMB_FUNC_END sub_08047740

	THUMB_FUNC_START sub_08047804
sub_08047804: @ 0x08047804
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _080478A4  @ =gUnknown_0813F420
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	ldr r0, [r7]
	ldr r2, [r7]
	ldr r1, [r2, #84]
	ldr r2, _080478A8  @ =gUnknown_0813E4CC
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #43
	ldrb r3, [r4]
	add r4, r3, #0
	lsl r3, r4, #1
	add r2, r2, r3
	mov r4, #0
	ldrsh r3, [r2, r4]
	mov r4, #44
	add r2, r3, #0
	mul r2, r4, r2
	asr r3, r2, #8
	ldrh r1, [r1, #50]
	add r2, r3, #0
	add r1, r1, r2
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7]
	ldr r2, [r7]
	ldr r1, [r2, #84]
	ldr r2, _080478A8  @ =gUnknown_0813E4CC
	ldr r4, [r7]
	add r3, r4, #0
	add r4, r4, #43
	ldrb r3, [r4]
	add r4, r3, #0
	add r4, r4, #64
	add r3, r4, #0
	lsl r4, r3, #1
	add r3, r2, r4
	mov r4, #0
	ldrsh r2, [r3, r4]
	add r4, r2, #0
	lsl r3, r4, #3
	add r3, r3, r2
	lsl r2, r3, #2
	asr r3, r2, #8
	ldrh r1, [r1, #54]
	add r2, r3, #0
	sub r1, r1, r2
	add r2, r1, #0
	sub r1, r2, #4
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080478A4:
	.4byte gUnknown_0813F420
_080478A8:
	.4byte gUnknown_0813E4CC
	THUMB_FUNC_END sub_08047804

	THUMB_FUNC_START sub_080478AC
sub_080478AC: @ 0x080478AC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl sub_0804871C
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _080478C4
	b _0804798E
_080478C4:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #120
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #94
	ldrb r1, [r0]
	mov r2, #12
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, _08047998  @ =gUnknown_0813F53C
	str r1, [r0, #72]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #114
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
_0804798E:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08047998:
	.4byte gUnknown_0813F53C
	THUMB_FUNC_END sub_080478AC

	THUMB_FUNC_START sub_0804799C
sub_0804799C: @ 0x0804799C
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08047A74
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #43
	ldrb r1, [r2]
	cmp r1, #128
	bls _080479D8
	mov r1, #1
	b _080479DA
_080479D8:
	mov r1, #255
_080479DA:
	add r2, r0, #0
	add r0, r0, #113
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	bl 0x0800099C
	ldr r4, [r7]
	ldr r1, _08047A54  @ =gUnknown_084287B4
	ldr r2, _08047A58  @ =gUnknown_03006C80
	ldrb r3, [r2]
	sub r2, r3, #2
	add r1, r1, r2
	ldrb r2, [r1]
	add r1, r2, #0
	bl __umodsi3
	add r2, r0, #0
	lsl r1, r2, #1
	add r2, r4, #0
	add r0, r4, #0
	add r0, r0, #115
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, _08047A5C  @ =gUnknown_08137B10
	ldr r1, [r7]
	ldrb r2, [r1, #11]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r7]
	ldr r2, [r1, #84]
	add r1, r2, #0
	add r2, r2, #112
	ldrb r1, [r2]
	ldr r2, [r0]
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08047A60
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	b _08047A74
_08047A54:
	.4byte gUnknown_084287B4
_08047A58:
	.4byte gUnknown_03006C80
_08047A5C:
	.4byte gUnknown_08137B10
_08047A60:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #5
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
_08047A74:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804799C

	THUMB_FUNC_START sub_08047A7C
sub_08047A7C: @ 0x08047A7C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #1
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08047AE2
	ldr r0, [r7]
	bl sub_08048850
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08047AE0
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #90
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_08047AE0:
	b _08047AE8
_08047AE2:
	ldr r0, [r7]
	bl 0x08003828
_08047AE8:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08047A7C

	THUMB_FUNC_START sub_08047AF0
sub_08047AF0: @ 0x08047AF0
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	bl 0x08003828
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	bl 0x08003828
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrb r2, [r1, #23]
	sub r1, r2, #1
	ldrb r2, [r0, #23]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #23]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	cmp r1, #0
	bne _08047B68
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	mov r1, #1
	bl 0x08003870
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	mov r1, #4
	bl 0x08003870
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	mov r1, #5
	bl 0x08003870
_08047B68:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08047AF0

	THUMB_FUNC_START sub_08047B70
sub_08047B70: @ 0x08047B70
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	bl 0x08003828
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	bl 0x08003828
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08047C04
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #5
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r2, [r0, #84]
	add r1, r2, #0
	add r0, r2, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	bl sub_08012540
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	bl sub_08012540
_08047C04:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08047B70

	THUMB_FUNC_START sub_08047C0C
sub_08047C0C: @ 0x08047C0C
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #84]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	mov r1, #3
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #3
	beq _08047C2E
	b _08047CDC
_08047C2E:
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #113
	ldrb r1, [r1]
	ldrb r2, [r3]
	add r1, r1, r2
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	mov r1, #63
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _08047CDC
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #6
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #114
	ldrb r1, [r2]
	mov r2, #254
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #114
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #84]
	ldr r1, [r7]
	ldr r3, [r1, #84]
	add r2, r3, #0
	add r1, r3, #0
	add r1, r1, #112
	ldr r2, _08047CE4  @ =gUnknown_08137B10
	ldr r3, [r7]
	ldrb r4, [r3, #11]
	add r3, r4, #2
	add r4, r3, #0
	lsl r3, r4, #2
	add r2, r2, r3
	ldr r3, [r2]
	add r2, r3, #0
	ldrb r3, [r1]
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_08047CDC:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
_08047CE4:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_08047C0C

	THUMB_FUNC_START sub_08047CE8
sub_08047CE8: @ 0x08047CE8
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #84]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	bne _08047D2A
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #7
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #113
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08047D2A:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08047CE8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08047D34
sub_08047D34: @ 0x08047D34
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #113
	ldrb r1, [r1]
	ldrb r2, [r3]
	add r1, r1, r2
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r0, #84]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	bne _08047D74
	b _08047E96
_08047D74:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	cmp r0, #192
	bne _08047E04
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #113
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #114
	ldrb r1, [r2]
	mov r2, #1
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #114
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #84]
	ldr r1, [r7]
	ldr r3, [r1, #84]
	add r2, r3, #0
	add r1, r3, #0
	add r1, r1, #112
	ldr r2, _08047E00  @ =gUnknown_08137B10
	ldr r3, [r7]
	ldrb r4, [r3, #11]
	add r3, r4, #0
	lsl r4, r3, #2
	add r2, r2, r4
	ldr r3, [r2]
	add r2, r3, #0
	ldrb r3, [r1]
	add r1, r2, #0
	eor r1, r1, r3
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _08047E96
_08047E00:
	.4byte gUnknown_08137B10
_08047E04:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	cmp r0, #64
	bne _08047E96
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #113
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #114
	ldrb r1, [r2]
	mov r2, #1
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #114
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #84]
	ldr r1, [r7]
	ldr r3, [r1, #84]
	add r2, r3, #0
	add r1, r3, #0
	add r1, r1, #112
	ldr r2, _08047EA0  @ =gUnknown_08137B10
	ldr r3, [r7]
	ldrb r4, [r3, #11]
	add r3, r4, #0
	lsl r4, r3, #2
	add r2, r2, r4
	ldr r3, [r2]
	add r2, r3, #0
	ldrb r3, [r1]
	add r1, r2, #0
	eor r1, r1, r3
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_08047E96:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08047EA0:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_08047D34

	THUMB_FUNC_START sub_08047EA4
sub_08047EA4: @ 0x08047EA4
	push {r4,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #84]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	mov r1, #4
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08047EC6
	b _08047FEE
_08047EC6:
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #113
	ldrb r1, [r1]
	ldrb r2, [r3]
	add r1, r1, r2
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #113
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08047F78
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	cmp r0, #88
	bne _08047F72
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #96
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #9
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r1, [r7]
	ldr r0, [r1, #84]
	ldr r1, [r7]
	ldr r3, [r1, #84]
	add r2, r3, #0
	add r1, r3, #0
	add r1, r1, #112
	ldr r2, _08047F74  @ =gUnknown_08137B10
	ldr r3, [r7]
	ldrb r4, [r3, #11]
	add r3, r4, #0
	lsl r4, r3, #2
	add r2, r2, r4
	ldr r3, [r2]
	add r2, r3, #0
	ldrb r3, [r1]
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	mov r0, #158
	bl 0x08003DFC
_08047F72:
	b _08047FEE
_08047F74:
	.4byte gUnknown_08137B10
_08047F78:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	cmp r0, #168
	bne _08047FEE
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #160
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #9
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r1, [r7]
	ldr r0, [r1, #84]
	ldr r1, [r7]
	ldr r3, [r1, #84]
	add r2, r3, #0
	add r1, r3, #0
	add r1, r1, #112
	ldr r2, _08047FF8  @ =gUnknown_08137B10
	ldr r3, [r7]
	ldrb r4, [r3, #11]
	add r3, r4, #0
	lsl r4, r3, #2
	add r2, r2, r4
	ldr r3, [r2]
	add r2, r3, #0
	ldrb r3, [r1]
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	mov r0, #158
	bl 0x08003DFC
_08047FEE:
	add sp, sp, #4
	pop {r4,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08047FF8:
	.4byte gUnknown_08137B10
	THUMB_FUNC_END sub_08047EA4

	THUMB_FUNC_START sub_08047FFC
sub_08047FFC: @ 0x08047FFC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #84]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	mov r1, #3
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _0804806C
	ldr r0, _08048054  @ =gUnknown_08137B10
	ldr r1, [r7]
	ldrb r2, [r1, #11]
	add r1, r2, #2
	add r2, r1, #0
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r1, [r7]
	ldr r2, [r1, #84]
	add r1, r2, #0
	add r2, r2, #112
	ldrb r1, [r2]
	ldr r2, [r0]
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08048058
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #10
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	b _0804806C
_08048054:
	.4byte gUnknown_08137B10
_08048058:
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #13
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
_0804806C:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08047FFC

	THUMB_FUNC_START sub_08048074
sub_08048074: @ 0x08048074
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #1
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _080480E0
	ldr r0, [r7]
	bl sub_08048850
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _080480DE
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #11
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #118
	ldrh r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #150
	lsl r3, r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #116
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_080480DE:
	b _080480E6
_080480E0:
	ldr r0, [r7]
	bl 0x08003828
_080480E6:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08048074

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080480F0
sub_080480F0: @ 0x080480F0
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #118
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #118
	ldrh r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #118
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #118
	ldrh r0, [r1]
	cmp r0, #90
	bls _080481B8
	ldr r0, [r7]
	bl sub_080489B0
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	cmp r0, #0
	bne _08048150
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	bl 0x08003828
	b _08048176
_08048150:
	ldr r1, [r7]
	ldr r0, [r1, #120]
	ldr r1, [r7]
	ldr r2, [r1, #120]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_08048176:
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	cmp r0, #0
	bne _08048190
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	bl 0x08003828
	b _080481B6
_08048190:
	ldr r1, [r7]
	ldr r0, [r1, #124]
	ldr r1, [r7]
	ldr r2, [r1, #124]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_080481B6:
	b _08048312
_080481B8:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #118
	ldrh r0, [r1]
	cmp r0, #30
	bls _08048226
	ldr r1, [r7]
	ldr r0, [r1, #120]
	ldr r1, [r7]
	ldr r2, [r1, #120]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #124]
	ldr r1, [r7]
	ldr r2, [r1, #124]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	bl 0x08003828
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	bl 0x08003828
	b _08048312
_08048226:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #118
	ldrh r0, [r1]
	cmp r0, #30
	bne _08048286
	ldr r0, [r7]
	bl sub_08048BF4
	ldr r1, [r7]
	ldr r0, [r1, #120]
	ldr r1, [r7]
	ldr r2, [r1, #120]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #124]
	ldr r1, [r7]
	ldr r2, [r1, #124]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _08048312
_08048286:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #118
	ldrh r0, [r1]
	cmp r0, #0
	bne _08048312
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r1, [r7]
	ldr r0, [r1, #120]
	ldr r1, [r7]
	ldr r2, [r1, #120]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #124]
	ldr r1, [r7]
	ldr r2, [r1, #124]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #127
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	mov r1, #1
	bl 0x08003870
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	mov r1, #4
	bl 0x08003870
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	mov r1, #5
	bl 0x08003870
_08048312:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080480F0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804831C
sub_0804831C: @ 0x0804831C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	bl 0x08003828
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	bl 0x08003828
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08048398
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #13
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldr r2, [r0, #84]
	add r1, r2, #0
	add r0, r2, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	bl sub_08012540
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	bl sub_08012540
_08048398:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804831C

	THUMB_FUNC_START sub_080483A0
sub_080483A0: @ 0x080483A0
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #84]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	mov r1, #3
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _080483E8
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #23]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #60
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #23]
_080483E8:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080483A0

	THUMB_FUNC_START sub_080483F0
sub_080483F0: @ 0x080483F0
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	cmp r1, #0
	bne _0804843C
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldr r1, _08048490  @ =gUnknown_0813F54C
	str r1, [r0, #72]
	ldr r0, [r7]
	mov r1, #2
	bl 0x08003870
	ldr r0, [r7]
	bl sub_0804894C
_0804843C:
	ldr r0, [r7]
	ldr r1, [r0, #88]
	add r0, r1, #0
	ldr r1, [r7]
	mov r2, #0
	mov r3, #1
	bl sub_0803D4A4
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #41
	ldrb r0, [r1]
	mov r1, #2
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08048494
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #112
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804848C
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	mov r0, #156
	bl 0x08003DFC
_0804848C:
	b _080484A4
	.byte 0x00
	.byte 0x00
_08048490:
	.4byte gUnknown_0813F54C
_08048494:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #112
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_080484A4:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080483F0

	THUMB_FUNC_START sub_080484AC
sub_080484AC: @ 0x080484AC
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	cmp r1, #0
	bne _080484F8
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	ldr r1, _08048510  @ =gUnknown_0813F554
	str r1, [r0, #72]
	ldr r0, [r7]
	mov r1, #3
	bl 0x08003870
	ldr r0, [r7]
	bl sub_0804894C
_080484F8:
	ldr r0, [r7]
	ldr r1, [r0, #88]
	add r0, r1, #0
	ldr r1, [r7]
	mov r2, #0
	mov r3, #1
	bl sub_0803D4A4
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_08048510:
	.4byte gUnknown_0813F554
	THUMB_FUNC_END sub_080484AC

	THUMB_FUNC_START sub_08048514
sub_08048514: @ 0x08048514
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	cmp r1, #0
	bne _080485A4
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #8
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #94
	ldrb r1, [r0]
	mov r2, #12
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #60
	ldrb r1, [r2]
	mov r2, #128
	orr r1, r1, r2
	add r2, r0, #0
	add r0, r0, #60
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, _08048664  @ =gUnknown_0813F544
	str r1, [r0, #72]
	ldr r0, [r7]
	mov r1, #6
	bl 0x08003870
_080485A4:
	ldr r0, [r7]
	bl 0x08003828
	ldr r1, [r7]
	ldr r0, [r1, #88]
	ldr r1, [r7]
	ldr r2, [r1, #84]
	ldr r0, [r0, #48]
	ldr r1, [r2, #48]
	sub r0, r0, r1
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	asr r1, r0, #2
	str r1, [r7, #4]
	ldr r0, [r7]
	ldr r2, [r7]
	ldr r1, [r2, #84]
	ldr r2, [r7]
	ldrb r3, [r2, #11]
	ldr r4, [r7, #4]
	add r2, r3, #0
	mul r2, r4, r2
	ldr r1, [r1, #48]
	add r2, r1, r2
	str r2, [r0, #48]
	ldr r1, [r7]
	ldr r0, [r1, #88]
	ldr r1, [r7]
	ldr r2, [r1, #84]
	ldr r0, [r0, #52]
	ldr r1, [r2, #52]
	sub r0, r0, r1
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	asr r1, r0, #2
	str r1, [r7, #4]
	ldr r0, [r7]
	ldr r2, [r7]
	ldr r1, [r2, #84]
	ldr r2, [r7]
	ldrb r3, [r2, #11]
	ldr r4, [r7, #4]
	add r2, r3, #0
	mul r2, r4, r2
	ldr r1, [r1, #52]
	add r2, r1, r2
	str r2, [r0, #52]
	ldr r0, [r7]
	ldr r1, [r0, #88]
	add r0, r1, #0
	add r1, r1, #114
	ldrb r0, [r1]
	mov r1, #1
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	bne _0804861C
	b _08048712
_0804861C:
	ldr r0, [r7]
	ldr r1, [r0, #88]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	cmp r0, #96
	bne _0804869A
	ldr r0, [r7]
	ldrb r1, [r0, #11]
	cmp r1, #2
	bne _08048668
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #50]
	add r1, r2, #2
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #54]
	sub r1, r2, #4
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	b _08048698
_08048664:
	.4byte gUnknown_0813F544
_08048668:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #50]
	add r1, r2, #4
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #54]
	sub r1, r2, #6
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
_08048698:
	b _08048712
_0804869A:
	ldr r0, [r7]
	ldr r1, [r0, #88]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	cmp r0, #160
	bne _08048712
	ldr r0, [r7]
	ldrb r1, [r0, #11]
	cmp r1, #2
	bne _080486E2
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #50]
	sub r1, r2, #2
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #54]
	sub r1, r2, #4
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
	b _08048712
_080486E2:
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #50]
	sub r1, r2, #4
	ldrh r2, [r0, #50]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #50]
	ldr r0, [r7]
	ldr r1, [r7]
	ldrh r2, [r1, #54]
	sub r1, r2, #6
	ldrh r2, [r0, #54]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0, #54]
_08048712:
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08048514

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804871C
sub_0804871C: @ 0x0804871C
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	bl sub_080123E8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08048732
	b _08048842
_08048732:
	ldr r1, [r7, #4]
	add r0, r1, #0
	bl sub_08012410
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _08048744
	b _08048842
_08048744:
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #48
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #48
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #84]
	str r2, [r0, #84]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #84]
	str r2, [r0, #84]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #88]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	str r1, [r0, #88]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	add r2, r0, #0
	add r0, r0, #112
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r1, [r7, #8]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r1, [r7, #4]
	mov r0, #4
	bl sub_08012728
	ldr r1, [r7, #8]
	mov r0, #4
	bl sub_08012728
	mov r0, #1
	b _08048846
_08048842:
	mov r0, #0
	b _08048846
_08048846:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804871C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048850
sub_08048850: @ 0x08048850
	push {r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	bl sub_080123E8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _0804893E
	ldr r1, [r7, #4]
	add r0, r1, #0
	bl sub_08012410
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0804893E
	ldr r0, [r7, #4]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #8]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #8]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #48
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #9]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #48
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #9]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #8]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldr r2, [r1, #84]
	str r2, [r0, #84]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	ldr r2, [r1, #84]
	str r2, [r0, #84]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #88]
	ldr r0, [r7, #8]
	ldr r1, [r7]
	str r1, [r0, #88]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r1, [r7, #8]
	ldr r0, [r7]
	bl sub_0803D3D0
	ldr r1, [r7, #4]
	mov r0, #4
	bl sub_08012728
	ldr r1, [r7, #8]
	mov r0, #4
	bl sub_08012728
	ldr r0, [r7]
	ldr r1, [r7, #4]
	str r1, [r0, #120]
	ldr r0, [r7]
	ldr r1, [r7, #8]
	str r1, [r0, #124]
	mov r0, #162
	bl 0x08003DFC
	mov r0, #1
	b _08048942
_0804893E:
	mov r0, #0
	b _08048942
_08048942:
	add sp, sp, #12
	pop {r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08048850

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804894C
sub_0804894C: @ 0x0804894C
	push {r4,r5,r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r7]
	ldr r2, _080489AC  @ =gUnknown_084287B7
	ldr r3, [r7]
	ldr r4, [r3, #88]
	add r3, r4, #0
	add r4, r4, #115
	ldrb r3, [r4]
	ldr r4, [r7]
	ldrb r5, [r4, #10]
	add r3, r3, r5
	sub r4, r3, #1
	add r3, r2, r4
	ldrb r2, [r3]
	add r4, r2, #0
	lsl r3, r4, #4
	ldrb r4, [r1, #30]
	mov r5, #15
	and r4, r4, r5
	add r5, r4, #0
	add r4, r5, #0
	orr r4, r4, r3
	add r3, r4, #0
	strb r3, [r1, #30]
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	mov r3, #15
	add r1, r2, #0
	and r1, r1, r3
	ldrb r2, [r0, #30]
	mov r3, #240
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #30]
	add sp, sp, #4
	pop {r4,r5,r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080489AC:
	.4byte gUnknown_084287B7
	THUMB_FUNC_END sub_0804894C

	THUMB_FUNC_START sub_080489B0
sub_080489B0: @ 0x080489B0
	push {r4,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	add r0, r7, #4
	mov r1, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08048A28
	ldr r0, [r7]
	ldr r1, [r0, #120]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r2, [r1]
	add r0, r2, #0
	add r1, r0, #0
	sub r1, r1, #132
	add r0, r1, #0
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #159
	bhi _08048A28
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, [r0, #120]
	ldrb r0, [r1, #30]
	lsl r2, r0, #24
	lsr r1, r2, #28
	sub r0, r1, #7
	ldr r1, [r7]
	ldr r2, [r1, #120]
	ldr r1, [r2, #76]
	ldrb r2, [r1, #10]
	cmp r0, r2
	bne _08048A28
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08048A28:
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	mov r1, #128
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08048A92
	ldr r0, [r7]
	ldr r1, [r0, #124]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r2, [r1]
	add r0, r2, #0
	add r1, r0, #0
	sub r1, r1, #132
	add r0, r1, #0
	lsl r1, r0, #16
	lsr r0, r1, #16
	cmp r0, #159
	bhi _08048A92
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	mov r3, #32
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, [r0, #124]
	ldrb r0, [r1, #30]
	lsl r2, r0, #24
	lsr r1, r2, #28
	sub r0, r1, #7
	ldr r1, [r7]
	ldr r2, [r1, #124]
	ldr r1, [r2, #76]
	ldrb r2, [r1, #10]
	cmp r0, r2
	bne _08048A92
	add r0, r7, #4
	add r1, r7, #4
	ldrb r2, [r1]
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
_08048A92:
	add r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #0
	bne _08048A9C
	b _08048BEC
_08048A9C:
	add r0, r7, #4
	ldrb r1, [r0]
	mov r2, #3
	add r0, r1, #0
	and r0, r0, r2
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #3
	beq _08048AB2
	b _08048BEC
_08048AB2:
	ldr r0, [r7]
	ldr r2, [r0, #84]
	add r1, r2, #0
	add r0, r2, #0
	add r0, r0, #65
	ldrb r1, [r0]
	mov r2, #255
	orr r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #84]
	ldr r1, [r7]
	ldr r2, [r1, #120]
	ldr r3, [r2, #76]
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #70
	mov r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	bge _08048AF8
	ldr r1, [r7]
	ldr r2, [r1, #120]
	ldr r3, [r2, #76]
	add r1, r3, #0
	add r2, r3, #0
	add r2, r2, #70
	ldrb r1, [r2]
	neg r2, r1
	add r1, r2, #0
	add r2, r1, #0
	sub r2, r2, #16
	add r1, r2, #0
	b _08048B0C
_08048AF8:
	ldr r2, [r7]
	ldr r3, [r2, #120]
	ldr r4, [r3, #76]
	add r2, r4, #0
	add r3, r4, #0
	add r3, r3, #70
	ldrb r2, [r3]
	add r3, r2, #0
	add r3, r3, #16
	add r1, r3, #0
_08048B0C:
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #88]
	ldr r1, [r7]
	ldr r3, [r1, #84]
	add r2, r3, #0
	add r1, r3, #0
	add r1, r1, #61
	add r2, r0, #0
	add r0, r0, #61
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	add r0, r7, #5
	ldr r1, [r7]
	ldr r2, [r1, #120]
	ldr r1, [r2, #76]
	add r2, r1, #0
	add r1, r1, #68
	ldr r2, [r7]
	ldr r3, [r2, #124]
	ldr r4, [r3, #76]
	add r2, r4, #0
	add r3, r4, #0
	add r3, r3, #68
	ldrb r2, [r3]
	lsl r4, r2, #24
	lsr r3, r4, #24
	ldrb r4, [r1]
	cmp r3, r4
	bcs _08048B68
	ldrb r2, [r1]
_08048B68:
	strb r2, [r0]
	ldr r0, [r7]
	ldr r1, [r0, #84]
	add r0, r1, #0
	add r1, r1, #69
	add r0, r7, #5
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bls _08048BA6
	ldr r1, [r7]
	ldr r0, [r1, #84]
	ldr r1, [r7]
	ldr r2, [r1, #84]
	add r1, r2, #0
	add r2, r2, #69
	add r1, r7, #5
	ldrb r2, [r2]
	ldrb r3, [r1]
	sub r1, r2, r3
	add r2, r0, #0
	add r0, r0, #69
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	b _08048BBA
_08048BA6:
	ldr r0, [r7]
	ldr r2, [r0, #84]
	add r1, r2, #0
	add r0, r2, #0
	add r0, r0, #69
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
_08048BBA:
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #62
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #116
	ldrb r1, [r0]
	add r2, r1, #1
	add r3, r2, #0
	strb r3, [r0]
	lsl r0, r1, #24
	lsr r1, r0, #24
	ldr r0, [r7]
	mov r2, #0
	mov r3, #8
	bl sub_0804469C
	mov r0, #45
	bl 0x08003DFC
_08048BEC:
	add sp, sp, #8
	pop {r4,r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080489B0

	THUMB_FUNC_START sub_08048BF4
sub_08048BF4: @ 0x08048BF4
	push {r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	bl 0x0800099C
	add r1, r0, #0
	add r0, r1, #0
	mov r1, #3
	bl __umodsi3
	cmp r0, #1
	bne _08048C10
	b _08048D40
_08048C10:
	cmp r0, #1
	bcc _08048C1C
	cmp r0, #2
	bne _08048C1A
	b _08048E56
_08048C1A:
	b _08048F66
_08048C1C:
	mov r0, #5
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08048C78
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
_08048C78:
	mov r0, #5
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08048CD8
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r1, [r7, #4]
	ldr r2, _08048D3C  @ =0xFFF40000
	ldr r0, [r7]
	mov r3, #0
	bl sub_0803D4A4
_08048CD8:
	mov r0, #5
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08048D3A
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #2
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r1, [r7, #4]
	mov r2, #192
	lsl r2, r2, #12
	ldr r0, [r7]
	mov r3, #0
	bl sub_0803D4A4
_08048D3A:
	b _08048F66
_08048D3C:
	.4byte 0xFFF40000
_08048D40:
	mov r0, #5
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08048D9C
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
_08048D9C:
	mov r0, #5
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08048DF8
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #13
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
_08048DF8:
	mov r0, #5
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08048E54
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #3
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	ldrb r1, [r0, #11]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #11]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #19
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	str r1, [r0, #84]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
_08048E54:
	b _08048F66
_08048E56:
	mov r0, #11
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08048E98
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #20
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
_08048E98:
	mov r0, #11
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08048EDA
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #18
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
_08048EDA:
	mov r0, #11
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08048F1C
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #14
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
_08048F1C:
	mov r0, #11
	bl sub_08012494
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _08048F5E
	ldr r0, [r7, #4]
	ldrb r1, [r0, #10]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #10]
	ldr r0, [r7, #4]
	add r1, r0, #0
	add r0, r0, #43
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #12
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
_08048F5E:
	mov r0, #159
	bl 0x08003DFC
	b _08048F66
_08048F66:
	add sp, sp, #8
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08048BF4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08048F70
sub_08048F70: @ 0x08048F70
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, _08048F88  @ =gUnknown_0813F55C
	ldr r0, [r7]
	bl 0x08009924
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_08048F88:
	.4byte gUnknown_0813F55C
	THUMB_FUNC_END sub_08048F70

	THUMB_FUNC_START sub_08048F8C
sub_08048F8C: @ 0x08048F8C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _08048FB0  @ =gUnknown_0813F578
	ldr r1, [r7]
	ldrb r2, [r1, #20]
	add r1, r2, #0
	lsl r2, r1, #2
	add r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r7]
	bl _call_via_r1
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
_08048FB0:
	.4byte gUnknown_0813F578
	THUMB_FUNC_END sub_08048F8C

	THUMB_FUNC_START sub_08048FB4
sub_08048FB4: @ 0x08048FB4
	push {r4-r7,lr}
	sub sp, sp, #12
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	add r1, r0, #0
	add r1, r1, #124
	add r0, r1, #0
	lsl r1, r0, #24
	lsr r0, r1, #24
	cmp r0, #158
	bls _08048FD4
	b _080490C8
_08048FD4:
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #62
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrb r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	mov r1, #15
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _0804903C
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #43
	ldrb r1, [r2]
	lsr r2, r1, #4
	add r1, r2, #0
	mov r2, #1
	eor r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #2
	ldrb r2, [r0, #28]
	mov r3, #251
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
_0804903C:
	ldr r0, [r7]
	mov r1, #144
	lsl r1, r1, #3
	str r1, [r0, #12]
	ldr r0, [r7]
	ldrb r1, [r0, #10]
	cmp r1, #0
	bne _08049068
	add r5, r7, #0
	add r5, r5, #8
	ldr r6, _08049064  @ =gUnknown_0813F584
	bl 0x0800099C
	mov r1, #15
	and r0, r0, r1
	add r1, r6, r0
	ldrb r0, [r1]
	strb r0, [r5]
	b _0804907A
	.byte 0x00
	.byte 0x00
_08049064:
	.4byte gUnknown_0813F584
_08049068:
	add r0, r7, #0
	add r0, r0, #8
	ldr r1, _080490C4  @ =gUnknown_0813F594
	ldr r2, [r7]
	ldrb r3, [r2, #10]
	sub r2, r3, #1
	add r1, r1, r2
	ldrb r2, [r1]
	strb r2, [r0]
_0804907A:
	add r0, r7, #0
	add r0, r0, #8
	ldrb r1, [r0]
	mov r0, #0
	mov r2, #1
	bl sub_0804C8A8
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _080490C2
	ldr r0, [r7, #4]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #43
	ldrb r1, [r2]
	mov r2, #16
	eor r1, r1, r2
	add r2, r1, #0
	mov r3, #128
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl sub_0803D3D0
_080490C2:
	b _0804912A
_080490C4:
	.4byte gUnknown_0813F594
_080490C8:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #65
	ldrb r0, [r1]
	cmp r0, #128
	bne _0804912A
	ldr r5, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r4, [r1]
	bl 0x0800099C
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080490F0
	add r1, r4, #2
	add r0, r1, #0
	b _080490F4
_080490F0:
	sub r1, r4, #2
	add r0, r1, #0
_080490F4:
	add r2, r5, #0
	add r1, r5, #0
	add r1, r1, #43
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #43
	ldrb r1, [r2]
	mov r2, #31
	and r1, r1, r2
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
_0804912A:
	ldr r1, _0804913C  @ =gUnknown_0813F55C
	ldr r0, [r7]
	bl 0x080098A0
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804913C:
	.4byte gUnknown_0813F55C
	THUMB_FUNC_END sub_08048FB4

	THUMB_FUNC_START sub_08049140
sub_08049140: @ 0x08049140
	push {r4-r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0, #20]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #20]
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #252
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
	ldr r0, [r7]
	add r1, r0, #0
	add r0, r0, #46
	ldrb r1, [r0]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #4
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0]
	ldr r0, [r7]
	ldrh r1, [r0, #58]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldr r3, _080492A8  @ =0x0000FFFE
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #58]
	ldr r0, [r7]
	ldr r1, _080492AC  @ =gUnknown_0813F5FC
	str r1, [r0, #72]
	ldr r0, [r7]
	ldrb r1, [r0, #10]
	cmp r1, #0
	beq _080491BE
	ldr r0, [r7]
	ldrb r1, [r0, #28]
	mov r2, #207
	and r1, r1, r2
	add r2, r1, #0
	mov r3, #16
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strb r2, [r0, #28]
_080491BE:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	cmp r0, #255
	bne _08049228
	ldr r0, [r7]
	mov r1, #50
	ldrsh r4, [r0, r1]
	ldr r0, [r7]
	mov r2, #54
	ldrsh r5, [r0, r2]
	bl 0x0800099C
	add r1, r0, #0
	mov r2, #31
	add r0, r1, #0
	and r0, r0, r2
	add r1, r0, #0
	mov r2, #236
	lsl r2, r2, #1
	add r0, r1, r2
	add r1, r0, #0
	lsl r0, r1, #16
	asr r6, r0, #16
	bl 0x0800099C
	add r1, r0, #0
	mov r2, #31
	add r0, r1, #0
	and r0, r0, r2
	add r1, r0, #0
	mov r2, #244
	lsl r2, r2, #1
	add r0, r1, r2
	add r1, r0, #0
	lsl r0, r1, #16
	asr r3, r0, #16
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl 0x08003F54
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
_08049228:
	ldr r0, [r7]
	ldr r1, [r0, #12]
	cmp r1, #0
	bne _08049248
	bl 0x0800099C
	add r2, r0, #0
	ldr r0, [r7]
	ldr r1, _080492B0  @ =gUnknown_0813F5A4
	mov r3, #3
	and r2, r2, r3
	add r3, r2, #0
	lsl r2, r3, #1
	add r1, r1, r2
	ldrh r2, [r1]
	str r2, [r0, #12]
_08049248:
	ldr r0, [r7]
	bl sub_080496DC
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #43
	ldrb r0, [r1]
	mov r1, #15
	and r0, r0, r1
	add r2, r0, #0
	lsl r1, r2, #24
	lsr r0, r1, #24
	cmp r0, #0
	beq _08049298
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #43
	ldrb r1, [r2]
	lsr r2, r1, #4
	add r1, r2, #0
	mov r2, #1
	eor r1, r1, r2
	add r3, r1, #0
	lsl r2, r3, #24
	lsr r1, r2, #24
	add r2, r1, #0
	mov r3, #1
	add r1, r2, #0
	and r1, r1, r3
	add r2, r1, #0
	lsl r1, r2, #2
	ldrb r2, [r0, #28]
	mov r3, #251
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0, #28]
_08049298:
	ldr r0, [r7]
	mov r1, #0
	bl 0x08003870
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_080492A8:
	.4byte 0x0000FFFE
_080492AC:
	.4byte gUnknown_0813F5FC
_080492B0:
	.4byte gUnknown_0813F5A4
	THUMB_FUNC_END sub_08049140

	THUMB_FUNC_START sub_080492B4
sub_080492B4: @ 0x080492B4
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	bl 0x08003828
	ldr r0, [r7]
	bl sub_0804930C
	ldr r0, [r7]
	ldrh r1, [r0, #50]
	ldr r2, _080492F0  @ =0xFFFFFE98
	add r0, r1, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	ldr r1, _080492F4  @ =0x0000011F
	cmp r0, r1
	bhi _080492FC
	ldr r0, [r7]
	ldrh r1, [r0, #54]
	ldr r2, _080492F8  @ =0xFFFFFE70
	add r0, r1, r2
	add r2, r0, #0
	lsl r1, r2, #16
	lsr r0, r1, #16
	cmp r0, #207
	bhi _080492FC
	b _08049302
_080492F0:
	.4byte 0xFFFFFE98
_080492F4:
	.4byte 0x0000011F
_080492F8:
	.4byte 0xFFFFFE70
_080492FC:
	ldr r0, [r7]
	bl sub_08012540
_08049302:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080492B4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804930C
sub_0804930C: @ 0x0804930C
	push {r7,lr}
	sub sp, sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #116
	ldrb r0, [r1]
	cmp r0, #1
	beq _08049378
	cmp r0, #1
	bgt _0804932A
	cmp r0, #0
	beq _08049338
	b _080494AE
_0804932A:
	cmp r0, #2
	bne _08049330
	b _08049438
_08049330:
	cmp r0, #3
	bne _08049336
	b _08049474
_08049336:
	b _080494AE
_08049338:
	ldr r0, [r7]
	bl sub_0803CC20
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #120
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #120
	ldrh r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #120
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #120
	ldrh r0, [r1]
	cmp r0, #0
	bne _08049376
	ldr r0, [r7]
	bl sub_080494B8
_08049376:
	b _080494AE
_08049378:
	ldr r0, [r7]
	bl sub_0803CC20
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #120
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #120
	ldrh r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #120
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #120
	ldrh r0, [r1]
	cmp r0, #0
	bne _08049436
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #122
	add r2, r0, #0
	add r0, r0, #120
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	ldrh r1, [r1]
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldr r1, [r7]
	add r2, r1, #0
	add r1, r1, #43
	ldr r3, [r7]
	add r2, r3, #0
	add r3, r3, #117
	ldrb r1, [r1]
	ldrb r2, [r3]
	add r1, r1, r2
	add r2, r1, #0
	mov r3, #31
	add r1, r2, #0
	and r1, r1, r3
	add r2, r0, #0
	add r0, r0, #43
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #118
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #118
	ldrb r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #118
	ldrb r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strb r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #118
	ldrb r0, [r1]
	cmp r0, #0
	bne _08049436
	ldr r0, [r7]
	bl sub_080494B8
_08049436:
	b _080494AE
_08049438:
	ldr r0, [r7]
	bl sub_0803CC20
	mov r1, #128
	lsl r1, r1, #6
	ldr r0, [r7]
	bl 0x08003594
	ldr r0, [r7]
	mov r2, #58
	ldrsh r1, [r0, r2]
	mov r0, #2
	cmn r1, r0
	blt _0804946E
	ldr r0, [r7]
	ldrh r1, [r0, #58]
	mov r2, #0
	and r1, r1, r2
	add r2, r1, #0
	ldr r3, _08049470  @ =0x0000FFFE
	add r1, r2, #0
	orr r1, r1, r3
	add r2, r1, #0
	strh r2, [r0, #58]
	ldr r0, [r7]
	bl sub_080494B8
_0804946E:
	b _080494AE
_08049470:
	.4byte 0x0000FFFE
_08049474:
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #120
	ldr r0, [r7]
	ldr r2, [r7]
	add r1, r2, #0
	add r2, r2, #120
	ldrh r3, [r2]
	sub r1, r3, #1
	add r2, r0, #0
	add r0, r0, #120
	ldrh r2, [r0]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	add r2, r3, #0
	orr r2, r2, r1
	add r1, r2, #0
	strh r1, [r0]
	ldr r1, [r7]
	add r0, r1, #0
	add r1, r1, #120
	ldrh r0, [r1]
	cmp r0, #0
	bne _080494AC
	ldr r0, [r7]
	bl sub_080494B8
_080494AC:
	b _080494AE
_080494AE:
	add sp, sp, #4
	pop {r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804930C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080494B8
sub_080494B8: @ 0x080494B8
	push {r4,r5,r7,lr}
	sub sp, sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, [r0, #112]
	str r1, [r7, #4]
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	ldr r0, _080494D4  @ =0x0000FFFF
	cmp r1, r0
	bne _080494D8
	b _080496D2
	.byte 0x00
	.byte 0x00
_080494D4:
	.4byte 0x0000FFFF
_080494D8:
	ldr r1, [r7]
	ldr r0, [r7, #4]
	ldrh r2, [r0]
	add r0, r2, #0
	add r2, r1, #0
	add r1, r1, #116
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
	add r1, r7, #4
	ldr r2, [r1]
	ldrh r0, [r2]
	add r2, r2, #2
	str r2, [r1]
	cmp r0, #1
	beq _08049580
	cmp r0, #1
	bgt _0804950A
	cmp r0, #0
	beq _08049518
	b _080496CC
_0804950A:
	cmp r0, #2
	bne _08049510
	b _0804964C
_08049510:
	cmp r0, #3
	bne _08049516
	b _080496AC
_08049516:
	b _080496CC
_08049518:
	ldr r2, [r7]
	add r0, r7, #4
	ldr r1, [r0]
	add r3, r2, #0
	add r2, r2, #120
	ldrh r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	ldrh r3, [r1]
	orr r4, r4, r3
	add r3, r4, #0
	strh r3, [r2]
	add r1, r1, #2
	str r1, [r0]
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	ldr r0, _0804957C  @ =0x0000FFFF
	cmp r1, r0
	beq _08049548
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrh r2, [r1]
	str r2, [r0, #12]
_08049548:
	ldr r0, [r7, #4]
	add r1, r0, #2
	str r1, [r7, #4]
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	ldr r0, _0804957C  @ =0x0000FFFF
	cmp r1, r0
	beq _08049572
	ldr r1, [r7]
	ldr r0, [r7, #4]
	ldrh r2, [r0]
	add r0, r2, #0
	add r2, r1, #0
	add r1, r1, #43
	ldrb r2, [r1]
	mov r3, #0
	and r2, r2, r3
	add r3, r2, #0
	orr r0, r0, r3
	add r2, r0, #0
	strb r2, [r1]
_08049572:
	ldr r0, [r7, #4]
	add r1, r0, #2
	str r1, [r7, #4]
	b _080496CC
	.byte 0x00
	.byte 0x00
_0804957C:
	.4byte 0x0000FFFF
_08049580:
	ldr r2, [r7]
	add r0, r7, #4
	ldr r1, [r0]
	add r3, r2, #0
	add r2, r2, #122
	ldrh r3, [r2]
	mov r4, #0
	and r3, r3, r4
	add r4, r3, #0
	ldrh r3, [r1]
	orr r4, r4, r3
	add r3, r4, #0
	strh r3, [r2]
	add r1, r1, #2
	str r1, [r0]
	ldr r0, [r7, #4]
	ldrh r1, [r0]
	ldr r0, _08049648  @ =0x0000FFFF
	cmp r1, r0
	beq _080495B0
	ldr r0, [r7]
	ldr r1, [r7, #4]
	ldrh r2, [r1]
	str r2, [r0, #12]
_080495B0:
	ldr r0, [r7, #4]
	add r1, r0, #2
	str r1, [r7, #4]
	ldr r3, [r7]
	add r0, r7, #4
	ldr r1, [r0]
	ldrh r4, [r1]
	add r2, r4, #0
	add r4, r3, #0
	add r3, r3, #117
	ldrb r4, [r3]
	mov r5, #0
	and r4, r4, r5
	add r5, r4, #0
	orr r2, r2, r5
	add r4, r2, #0
	strb r4, [r3]
	add r1, r1, #2
	str r1, [r0]
	ldr r3, [r7]
	add r0, r7, #4
	ldr r1, [r0]
	ldrh r4, [r1]
	add r2, r4, #0
_08049648: