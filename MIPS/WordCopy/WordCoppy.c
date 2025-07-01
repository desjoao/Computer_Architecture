#include <stdio.h>

int copia_palavras(int *origem, int *destino, int tamanho){
	
	int contador = 0;
	while(contador < tamanho){
		*destino = *origem;
		origem ++;
		destino ++;
		contador ++;
	}
	return contador - 1;

}

int main(){
	int origem[] = {1, 2, 3, 4};
	int destino[4];
	int tamanho = sizeof(origem)/sizeof(origem[0]);

	int contador = copia_palavras(origem, destino, tamanho);
	printf("número de palavras copiadas: %d\n", contador + 1);
	for (int i = 0; i < tamanho; i++){
		printf("%d ; ", destino[i]);
	}

	return 0;
}