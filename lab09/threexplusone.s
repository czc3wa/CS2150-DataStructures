;threexplusone.s

	global threexplusone

	section .text

threexplusone:

	xor	rax, rax	 ; zero out the return register
	xor r10, r10     ; zero out the counter
start:
	cmp	rdi, 1	     ; does n == 1?
	je	done		 ; if so, we are done with the loop
	mov r11, rdi     ; copy rdi into r11
	and r11, 1       ; if 1, rdi is odd, else even
	cmp r11, 1       ; check if and of r11 and 1 is odd. 1`
	je  odd          ;jump if odd
	idiv rdi 2       ; if even divide by 2
	inc r10          ; increment counter
	jmp start        ; repeat untol rdi  = 1

odd:
	imul rdi 3       ; multiple rdi by 3
	add rdi 1	     ; add 1 to rdi
	inc r10          ; increment counter
	jmp	start		 ; repeat untol rdi  = 1
done:
	mov rax, r10	 
	ret

	


timer