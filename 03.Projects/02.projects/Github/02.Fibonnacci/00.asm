section .data
  msg db "%lld ", 0
  newline db "", 10

section .bss
  fib resq 20
  num_str resb 20

section .text
  global _start

_start:
  ; 初期値
  mov qword [fib], 0
  mov qword [fib + 8], 1

  ; フィボナッチ数列の計算 (最初の10項)
  mov rcx, 2              ; カウンタ(2から開始)
  mov rbx, fib + 16       ; 3番目の要素のアドレス

calculate_loop:
  cmp rcx, 10             ; 10 項まで計算
  jg print_loop

  mov rax, [rbx - 8]
  add rax, [rbx - 16]
  mov [rbx], rax

  add rbx, 8
  inc rcx
  jmp calculate_loop

print_loop:
  mov rcx, 0            ; カウンタ(0から開始)
  mov rsi, fib          ; 最初の要素のアドレス

print_num_loop:
  cmp rcx, 10           ; 10項まで出力
  jg exit

  ; 数値を文字列に変換
  mov rax, [rsi]
  mov rdi, num_str + 19
  mov byte [rdi], 0
  mov r9, 10
convert_num:
  mov rdx, 0
  div r9
  add dl, '0'
  dec rdi
  mov [rdi], dl
  cmp rax, 0
  jnz convert_num

  ; 出力
  mov rdx, num_str + 20 - rdi - 1
  mov rsi, rdi + 1
  mov rdi, 1
  mov rax, 1
  syscall

  ; スペースを出力
  mov rax, 1
  mov rdi, 1
  mov rsi, msg + 3
  mov rdx, 1
  syscall

  add rsi, 8
  inc rcx
  jmp print_num_loop

exit:
  ; 改行を出力
  mov rax, 1
  mov rdi, 1
  mov rsi, newline
  mov rdx, 1
  syscall

  mov rax, 60
  xor rdi, rdi
  syscall
