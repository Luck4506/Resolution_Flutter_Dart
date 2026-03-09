#include <stdio.h>

int main() {
    int a = 100;
    int n = 200;

    printf("Valor de a: %d\n", a);
    printf("Valor de n: %d\n", n);

    a = n; // Atribuição: a recebe o valor de n

    printf("Valor de a após atribuição: %d\n", a);
    printf("Valor de n após atribuição: %d\n", n);

    n = 300; // Modificando n para mostrar que a não é afetada

    printf("Valor de a após modificação de n: %d\n", a);
    printf("Valor de n após modificação: %d\n", n);

    // Referência por ponteiro
    int *ptr_a = &a;
    int *ptr_n = &n;

    *ptr_a = *ptr_n; // Atribuição de ponteiro: ptr_a agora aponta para o mesmo endereço que ptr_n

    printf("\nValor de a via ponteiro: %d\n", *ptr_a);
    printf("Valor de n via ponteiro: %d\n", *ptr_n);

    *ptr_a = 500; // Modificando a através do ponteiro

    printf("Valor de a após modificação via ponteiro: %d\n", a);
    printf("Endereço de a: %p\n", (void*)&a);
    printf("Endereço de n: %p\n", (void*)&n);

    return 0;
}