.global _start
.section .data
msg:
    .ascii "Hello, world!\n"
    len = . - msg

.section .text
_start:
    mov x0, #1          
    ldr x1, =msg       
    ldr x2, =len        
    mov x8, #64         
    svc #0              

    mov x0, #0          
    mov x8, #93         
    svc #0
