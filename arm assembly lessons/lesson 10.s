.global _start
_start:
	
	mov r0, #1 
	mov r1, #2
	
	push {r0, r1}
	bl add_nums
	mov r2, r0
	pop {r0, r1}
		
add_nums:
	add r0, r0, r1
	bx lr