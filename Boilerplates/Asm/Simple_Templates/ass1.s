.global _start
.intel_syntax noprefix

_start:

        // system_exit
        mov rax, 60
        mov rdi, 0
        syscall


