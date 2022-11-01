import 'package:DartToPractice/DartToPractice.dart' as DartToPractice;
import 'package:DartToPractice/Banda.dart' as BandaClass;

void main(List<String> arguments) {
  var nome = 'System of a Down';
  var integrantes = 4;
  var nomes = [
    'Serj Tankian',
    'Daron Malakian',
    'Shavo Odadjian',
    'John Dolmayan'
  ];

  var b1 = BandaClass.Bandaaa();
  b1
    ..Nome = nome
    ..QtdeIntegrantes = integrantes
    ..NomesIntegrantes = nomes;

  print('Hello world: ${DartToPractice.calculate()}!');
  print('Banda: ${b1.Nome}.');
  print('Quantidade de integrantes: ${b1.QtdeIntegrantes}.');
  print(b1.NomesIntegrantes.length);
}
