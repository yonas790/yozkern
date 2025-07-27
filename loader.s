global loader          ; the entry symbol for ELF

MAGIC_NUMBER equ 0x1BADB002
FLAGS        equ 0x0
CHECKSUM     equ -MAGIC_NUMBER    ; checksum so that MAGIC_NUMBER + FLAGS + CHECKSUM = 0

section .text
align 4

dd MAGIC_NUMBER           ; write the magic number
dd FLAGS                  ; write the flags
dd CHECKSUM               ; write the checksum

loader:
    mov eax, 0xCAFEBABE   ; put 0xCAFEBABE into eax register

.loop:
    jmp .loop             ; infinite loop
