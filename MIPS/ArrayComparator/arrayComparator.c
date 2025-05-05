#include <stdio.h>
#include <stdlib.h>


int palavras_iguais(int tamanho_a, int tamanho_b, int *a, int *b){
	// Inicializa uma variável para receber a contagem de palavras iguais
	int contador = 0;
	
    // Loop aninhado para comparar palavra à palavra
	for(int i = 0; i < tamanho_a; i++){
		for(int j = 0; j < tamanho_b; j++){
			if (a[i] == b[j]){
				contador ++;
			}
		}
	}
	return contador;
}

int main()
{
    int contador = 0;
    int tamanho_a, tamanho_b;
    printf("Insira o valor do tamanho do primeiro vetor:\n");
    scanf("%d", &tamanho_a);
    printf("Insira o valor do tamanho do segundo vetor:\n");
    scanf("%d", &tamanho_b);

    int a[tamanho_a], b[tamanho_b]; // Vetores com o tamanho entrado

    printf("Insira os elementos (apenas números inteiros) presentes no primeiro vetor:\n");
    for(int i = 0; i < tamanho_a; i++){
    	scanf("%d", &a[i]);
    }

    printf("Insira os elementos (apenas números inteiros) presentes no segundo vetor:\n");
    for(int i = 0; i < tamanho_b; i++){
    	scanf("%d", &b[i]);
    }

    contador = palavras_iguais(tamanho_a, tamanho_b, a, b);
    printf("O número de palavras iguais entre os dois vetores é: %d \n", contador);
    
}
