bits 64

global string_length
;;; Calculate length of a null-terminated string, in bytes.
;; @param rdi The string whose length will be calculated.
string_length:
    mov rax, 0
    mov rsi, rdi
length_loop:
    cmp [rsi+rax], byte 0
    je length_end
    inc rax
    jmp length_loop
length_end:
    ret

global utf8_get_chr
;;; Returns the first UTF8 character of a null terminated
;;  string, storing a pointer to the next character in the
;;  pointer referred to in it's second argument. The character
;;  is returned as a 32 bit integer.
utf8_get_chr:
    mov eax, 0
    ;; TODO
    ret
