import 'package:my_dart/editar_nomes.dart' as edit_name;
import 'package:my_dart/editar_documento.dart' as edit_doc;
import 'dart:convert';
import 'dart:io';

void editarNomes() {
  stdout.write('Escreva um nome: ');
  String? nome = stdin.readLineSync(encoding: utf8);
  String newName = edit_name.EditarNomes.toUpperFirst(nome);
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
    String newName = edit_name.EditarNomes.toUpperFirst(exemple);
    i++;
    int j = i;
    String num = j.toString().padLeft(2, '0');
    print("Nome $num: $newName.");
  }
}

void editarCpf() {
  stdout.write('Escreva um CPF: ');
  String? cpf = stdin.readLineSync(encoding: utf8);
  String newCpf = edit_doc.EditarDocumento.formatCpf(cpf);
  print('CPF escolhido: $newCpf.');
}

void editarCnpj() {
  stdout.write('Escreva um CNPJ: ');
  String? cnpj = stdin.readLineSync(encoding: utf8);
  String newCnpj = edit_doc.EditarDocumento.formatCnpj(cnpj);
  print('CNPJ escolhido: $newCnpj.');
}

void main() {
  // editarNomes();
  // editarCpf();
  editarCnpj();
}
