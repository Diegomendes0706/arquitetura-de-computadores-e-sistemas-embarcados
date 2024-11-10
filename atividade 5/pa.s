// an = a1 + (n - 1)*r

.data
    X: .word 0x496
    
.text
.global _start
_start:
    
    ldr r0, =X
    ldr r1, [r0]        // endereço de a1
    ldr r2, [r0, #4]    // endereço da razão
    ldr r3, [r0, #8]    // endereço do número de elementos
    ldr r4, [r0, #12]   // endereço de an
    
    subs r3, r3, #1     // Calcula (n - 1)
    mul r4, r3, r2      // Calcula (n - 1) * razao
    add r4, r4, r1      // Soma a1 para obter an
    
    swi 0 