// an = a1 + (n - 1)*r

.data
	a1:     .word 498          // Primeiro termo da PA
	razao:  .word 4            // Razão da PA
	an:     .word 8            // Posição do termo que queremos calcular
	result: .word 0            // Onde o resultado será armazenado

.text
.global _start
_start:
    ldr r0, =a1             // Carrega 'a1' em r1
    ldr r1, [r0]
    bic r1, r1, #3          // Limpa os 3 bits mais baixos de 'a1'

    ldr r0, =razao          // Carrega 'razao' em r2
    ldr r2, [r0]

    ldr r0, =an             // Carrega 'n' em r3
    ldr r3, [r0]

    subs r3, r3, #1         // Calcula (n - 1)
    mul r4, r3, r2          // Calcula (n - 1) * razao
    add r4, r4, r1          // Soma a1 para obter an

    ldr r0, =result         // Armazena o resultado em 'result'
    str r4, [r0]

    swi 0