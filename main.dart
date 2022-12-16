// import 'lib/EditarNomes.dart';
import 'dart:convert';
import 'dart:io';

String toUpperFirst(String? name) {
	if (name == null) {
		return 'Nome inválido';
	}

	name = name.trim();
	String newStr = '';
	String newName = name.replaceAll(RegExp(r'\s+'), ' ');
	final arrStr = newName.split(' ');
	final prepositions = [
		'di', 'da', 'das', 'do', 'dos', 'de', 'e', 'von', 'van',
		'le', 'la', 'du', 'des', 'der', 'die', 'del', 'della'
	];
	final regToCompare = RegExp(r'(mac|mc)([^aeiouAEIOU\W0-9]{1})');

	for (final item in arrStr) {
		if (prepositions.contains(item.toLowerCase())) {
			newStr += item.toLowerCase();
		} else {
			if (item.substring(0, 2).toUpperCase() == 'O\'') {
				newStr += item.substring(0, 3).toUpperCase() + item.substring(3).toLowerCase();
			} else if (item.length > 3 && regToCompare.hasMatch(item.substring(0, 3).toLowerCase())) {
				newStr += item[0].toUpperCase() + item[1].toLowerCase() + item[2].toUpperCase() + item.substring(3).toLowerCase();
			} else if (item.length > 4 && regToCompare.hasMatch(item.substring(0, 4).toLowerCase())) {
				newStr += item[0].toUpperCase() + item.substring(1, 3).toLowerCase() + item[3].toUpperCase() + item.substring(4).toLowerCase();
			} else {
				newStr += item[0].toUpperCase() + item.substring(1).toLowerCase();
			}
		}

		newStr += arrStr.last == item ? '' : ' ';
	}

	return newStr;
}

void main() {
	// final exemples = [
	//   '   ZÉ NETO   e CRIstiANO',
	//   ' vincént VAN gogh',
	//   ' diogo dE lIMA SCARMAGNANI',
	//   ' edwin     VAN DER SAR     ',
	//   ' luiz philippe de orleans e bragança',
	//   ' roBERt o\'doNNElL ',
	//   'affonso   deLLA    mÔnica    ',
	//   'randall mccoy',
	//   'charles de gaulle',
	//   '   leonardo  di caprio'
	// ];

	stdout.write('Escreva um nome: ');
	String? nome = stdin.readLineSync(encoding: utf8);
	print('Nome escolhido: ${toUpperFirst(nome)}.');

	// print('\nOutros exemplos de nomes:');
	// int i = 0;
	// for (String exemple in exemples) {
	//   i++;
	//   print("Nome $i: ${toUpperFirst(exemple)}.");
	// }
}