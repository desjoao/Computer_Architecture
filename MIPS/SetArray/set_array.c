# include <stdio.h>

int i;
int array[10];

void set_array(int num){
	for(i=0; i<10; i++){
		array[i] = compare(num, i);
	}
}

int compare(int a, int b){
	if(sub(a,b) >= 0)
		return 1;
	else
		return 0;
}

int sub(int a, int b){
	return a-b;
}

int print_array(int *array, int lenght){
	for (i = 0; i < lenght; i++){
		printf("%d", array[i]);
	}
	printf("\n");
}

int main(){
	set_array(4);
	print_array(array, sizeof(array)/sizeof(array[0]));
	return 0;
}