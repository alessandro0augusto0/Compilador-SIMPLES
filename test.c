#include <stdio.h>
#include <stdlib.h>


int calcula_dobro()     {
        printf("--- Dentro da funcao calcula_dobro ---\n");
        printf("Esta funcao vai retornar 100");
        printf("\n");
    }
int main() {
    int a;
    int b = 10;
    float c;
    int i;
    int meu_vetor[5];
    printf("Projeto Final de Compiladores!\n");
    printf("==============================\n");
    printf("Digite um valor inteiro para 'a': ");
    scanf("%d", &a);
    printf("Digite um valor flutuante para 'c': ");
    scanf("%f", &c);
    printf("--- Testando Atribuicoes e Vetores ---\n");
    meu_vetor[0] = a;
    meu_vetor[1] = b;
    meu_vetor[4] = meu_vetor[0] + meu_vetor[1];
    printf("Valor em meu_vetor[4] (a+b): ");
    printf("%d\n", meu_vetor[4]);
    printf("--- Testando FOR com passo positivo ---\n");
    for(i = 0; i <= 4; i += 1)     {
        printf("vetor[");
        printf("%d", i);
        printf("]: ");
        printf("%d\n", meu_vetor[i]);
    }
    printf("--- Testando FOR com passo negativo ---\n");
    for(i = 4; i >= 0; i += -1)     {
        printf("%d\n", i);
    }
    printf("--- Testando IF/ELSE ---\n");
    if (a > 10)     {
        printf("A variavel 'a' e maior que 10.\n");
    } else     {
        printf("A variavel 'a' nao e maior que 10.\n");
    }
    printf("--- Testando WHILE ---\n");
    b = 3;
    while (b > 0)     {
        printf("%d\n", b);
        b = b - 1;
    }
    printf("Fim do programa.\n");
    return 0;
}
