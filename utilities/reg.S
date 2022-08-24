.thumb

@ Loops until the value at address (r1) AND mask (r2) != mask
@ r1 = address, r2 = bit mask
.type waitForBitLow, %function
waitForBitLow:
	ldr r0, [r1]				@ Load data.
	tst r0, r2					@ AND Test
	bne waitForBitLow			@ Conditional branch, if not equal
	bx lr						@ Return to caller

@ Loops until the value at address (r1) AND mask (r2) == mask
@ r1 = address, r2 = bit mask
.type waitForBitHigh, %function
waitForBitHigh:
	ldr r0, [r1]				@ Load data.
	tst r0, r2					@ AND Test
	beq waitForBitHigh			@ Conditional branch, if equal
	bx lr						@ Return to caller

@ Loops until the value at address (r1) AND mask (r2) == value (r3)
@ r1 = address, r2 = bit mask, r3 = value to wait for
.type waitUntil, %function
waitUntil:
	ldr r0, [r1]				@ Load data
	bics r0, r0, r2				@ Clear bits using mask
	cmp r0, r3					@ Compare
	beq waitUntil				@ Conditional branch
	bx lr						@ Return

@ Read-modify-write using a clear mask.
@ r1 = address, r2 = clear mask, r3 = set bits
.type modifyReg, %function
modifyReg:
	ldr r0, [r1]				@ Load data from address
	bics r0, r0, r2				@ Clear bits
	orrs r0, r0, r3				@ Or bits
	str r0, [r1]				@ Store
	bx lr						@ Return

@ Read-modify-write
@ r1 = address, r2 = set bits
.type setBits, %function
setBits:
	ldr r0, [r1]				@ Load data from address
	orrs r0, r0, r2				@ Or bits
	str r0, [r1]				@ Store
	bx lr						@ Return
