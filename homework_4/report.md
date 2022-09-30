# Домашняя работа №4
#### Консольный ввод-вывод. Разработка разветвляющихся и циклических програм
##### Абушахманов Ирлан БПИ216 <ikhabushakhmanov@edu.hse.ru>

<br>
<br>

#### Определяющая максимальное значение аргумента, не выходящее за 64x слово

```assembly
%include "io64.inc"
section .text
global CMAIN
CMAIN:
    mov rax, 1
    mov rcx, 1
    .for:
        mul rcx
        inc rcx
        cmp rax, 0
        jg .for
    
    dec rcx
    PRINT_DEC 8, rcx
    xor rax, rax
    ret
```
<br>
<br>

#### Программа, вычисляющая факториал числа

```assembly
%include "io64.inc"
section .text
global CMAIN
CMAIN:
    mov rax, 1
    mov rcx, 1
    GET_DEC 8, rbx
    .for:
        mul rcx
        inc rcx
        cmp rcx, rbx
        jne .for
    
    PRINT_DEC 8, rax
    xor rax, rax
    ret
```


<br>

## Большое спасибо!
