.section .bss
.globl ram
.lcomm ram, 256     # Reserve 256 bytes of RAM (uninitialized)

.section .text
.globl fill_ram     # Make function visible to C program

fill_ram:
    mov $ram, %edi          # Address of RAM
    add $0x50, %edi         # edi &ram[0x50]

    movb $0xFF, (%edi)      #ram[0x50]
    inc %edi
    movb $0xFF, (%edi)      #ram[0x51]
    inc %edi
    movb $0xFF, (%edi)      #ram[0x52]
    inc %edi
    movb $0xFF, (%edi)      #ram[0x53]
    inc %edi
    movb $0xFF, (%edi)      #ram[0x54]
    inc %edi
    movb $0xFF, (%edi)      #ram[0x55]
    inc %edi
    movb $0xFF, (%edi)      #ram[0x56]
    inc %edi
    movb $0xFF, (%edi)      #ram[0x57]
    inc %edi
    movb $0xFF, (%edi)      #ram[0x58]
    inc %edi

    ret             # Return control back to C program

.section .note.GNU-stack,"",@progbits
