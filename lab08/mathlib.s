;mathlib.s

	global mathlib

	section .text

mathlib:

	xor	rax, rax	 ; zero out the return register
	xor	r10, r10	 ; zero out the counter i
start:	
	cmp	r10, rsi	 ; does i == n?
	je	done		 ; if so, we are done with the loop
	add	rax, rdi	 ; add a[i] to rax
	inc	r10		 	 ; increment our counter i
	jmp	start		 ; we are done with this loop iteration
done:	
	ret
