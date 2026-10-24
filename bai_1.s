.section .data
msg: .string "NT200UIT" # Chuỗi msg? đề bài cho
len = . -msg            # Tính độ dài của chuỗi msg

.section .bss
.lcomm out, 2 # Biến 2 bytes lưu kí tự ASCII của độ dài và kí tự xuống dòng

.section .text
   .globl _start
_start:
    # chuyển số thành kí tự ASCII
    movl $len, %eax # Lấy độ dài của msg (có null ở cuối)
    subl $1, %eax # Trừ đi 1 để lấy độ dài thực tế
    addl $48, %eax # Cộng thêm 48 để chuyển thành kí tự ASCII

    # Lưu kí tự vào biến out
    movb %al, out
    movb $10, out+1 # Thêm kí tự xuống dòng
    
    # In độ dài ra màn hình (sys_write)
    movl $4, %eax
    movl $1, %ebx
    movl $out, %ecx
    movl $2, %edx # in ra 2 byte (1 byte là độ dài, 1 byte là kí tự xuống dòng)
    int $0x80

    # exit chương trình (sys_exit)
    movl $1, %eax
    movl $0, %ebx
    int $0x80

