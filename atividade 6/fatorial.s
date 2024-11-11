.global factorial
.global _start

factorial:
    str r0, [sp, #-4]!		// Armazena r0 (n) na pilha
    str lr, [sp, #-4]!      // Armazena lr (link register) na pilha
    
    cmp r0, #1              // Compara r0 com 1
    ble base_case           // Se r0 <= 1, vai para base_case

    sub r0, r0, #1          // r0 = r0 - 1 (n - 1)
    bl factorial            // Chamada recursiva para factorial com (n - 1)
    
    ldr r1, [sp, #4]        // Carrega o valor original de r0 (n) da pilha para r1
    mul r0, r0, r1          // r0 = r0 * r1 (resultado do fatorial)
    
    add sp, sp, #8          // Limpa a pilha (remove n e lr)
    mov pc, lr              // Retorna para a função chamadora

base_case:
    mov r0, #1              // Se n <= 1, factorial(n) = 1
    add sp, sp, #8          // Limpa a pilha
    mov pc, lr              // Retorna para a função chamadora

_start:
    mov r0, #5              // Exemplo de entrada: Calcula factorial(5)
    bl factorial            // Chama a função factorial
    
	swi 0