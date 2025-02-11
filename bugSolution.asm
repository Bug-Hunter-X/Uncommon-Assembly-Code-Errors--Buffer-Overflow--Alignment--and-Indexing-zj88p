section .data
    array DWORD 10, 20, 30, 40, 50 ; 5 DWORD elements
    arraySize EQU ($ - array) / 4 ; Calculate the number of elements

section .bss
    result resd 1 ; Reserve space for the result

section .text
    global _start

_start:
    ; Get array index from somewhere (assume it is in ecx)
    mov ecx, 2 ;Example index (ecx holds the index)

    ;Bounds check
    cmp ecx, arraySize ; Check if ecx is within bounds
    jge out_of_bounds_error ; Jump if out of bounds

    ;Calculate Address (safe indexing)
    mov eax, array ; base address
    mov ebx, ecx ; index
    mov edi, 4 ; size of each element
    mul edi ;Multiply index with element size
    add eax,ebx ; add the result to base address

    mov edx, [eax];Access the array element safely
    mov [result], edx;Store result

    ;Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80

out_of_bounds_error:
    ;Handle out of bounds error (e.g., exit with error code)
    mov eax, 1
    mov ebx, 1 ; Error code
    int 0x80