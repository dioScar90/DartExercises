print('Hello, world!');

import 'dart:io';
import 'dart:math';

int menu() {
	print('\nMenu de cálculos');
	print('1. Número ao quadrado');
	print('2. Número ao cubo');
	print('3. Raiz do número');
	print('4. Raiz cúbica do número');
	print('5. Sair');
	print('Qual é a opção desejada? ');
	int op = int.parse(stdin.readLineSync());
	return op;
}

int calcularQuadrado(int num) {
	return pow(num,2);
}
 
int calcularCubo(int num) {
	return pow(num,3);
}

void main() {
	int opcao = menu();
	int numero;

	if ([1,2,3,4].contains(opcao)) {
		stdout.write('Informe um número: ');
		numero = int.parse(stdin.readLineSync());
	}

	switch (opcao) {
		case 1:
			final quadrado = calcularQuadrado(numero);
			print('O quadrado do número $numero é: $quadrado.');
			break;
		case 2:
			final cubo = calcularCubo(numero);
			print('O cubo do número $numero é: $cubo.');
			break;
		default:
			exit(0);
	}
	
	main();
}