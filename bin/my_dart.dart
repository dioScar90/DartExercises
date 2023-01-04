import 'package:my_dart/editar_nomes.dart' as editar;
import 'dart:convert';
import 'dart:io';

void main() {
	stdout.write('Escreva um nome: ');
	String? nome = stdin.readLineSync(encoding: utf8);
	String newName = editar.EditarNomes.toUpperFirst(nome);
	print('Nome escolhido: $newName.');

	List<String> exemples = [
		'   ZÉ NETO   e CRIstiANO',
		' vincént VAN gogh',
		' diogo dE lIMA SCARMAGNANI',
		' edwin     VAN DER SAR     ',
		' luiz philippe de orleans e bragança',
		' roBERt o\'doNNElL ',
		'affonso   deLLA    mÔnica    ',
		'randall mccoy',
		'   bRUCe     MCLAReN',
		' MARY   MaCLAREN      ',
		'charles de gaulle',
		'   leonardo  di caprio'
	];
  
	print('\nOutros exemplos de nomes:');
	int i = 0;
	for (String exemple in exemples) {
		String newName = editar.EditarNomes.toUpperFirst(exemple);
		i++;
		print("Nome $i: $newName.");
	}
}