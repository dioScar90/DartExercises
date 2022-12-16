import '../lib/EditarNomes.dart' as editar;
import 'dart:convert';
import 'dart:io';

void main() {
	final exemples = [
	  '   ZÉ NETO   e CRIstiANO',
	  ' vincént VAN gogh',
	  ' diogo dE lIMA SCARMAGNANI',
	  ' edwin     VAN DER SAR     ',
	  ' luiz philippe de orleans e bragança',
	  ' roBERt o\'doNNElL ',
	  'affonso   deLLA    mÔnica    ',
	  'randall mccoy',
	  'charles de gaulle',
	  '   leonardo  di caprio'
	];
  
	print('\nOutros exemplos de nomes:');
	int i = 0;
	for (String exemple in exemples) {
	  i++;
	  print("Nome $i: ${editar.EditarNomes.toUpperFirst(exemple)}.");
	}

	// stdout.write('Escreva um nome: ');
	// String? nome = stdin.readLineSync(encoding: utf8);
	// print('Nome escolhido: ${editar.EditarNomes.toUpperFirst(nome)}.');
}