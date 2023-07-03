	bits 64
	global primes
	;; this function generates a list of the first N prime numbers
primes:	mov ebx, 2
	mov [rsi], ebx
	mov ecx, 1
	; ebx will contain our next prime
	; rcx - number of primes obtained
gen_prime:
	inc ebx
	; travel buffer, checking if a prime divides ebx
	mov r8, rcx
check_prime:
	dec r8
	mov eax, ebx
	mov edx, 0
	div dword [rsi+r8*4]
				; if it divides, try next number for primality
	cmp edx, 0
	je no_prime
	
	cmp r8, 0
	jne check_prime		; try the next prime
	; if we reach this point, ebx is a prime
	mov [rsi+rcx*4], ebx
	inc rcx
no_prime:	
	cmp ecx, edi
	jne gen_prime
	ret
