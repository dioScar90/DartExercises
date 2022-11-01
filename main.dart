import 'dart:io';
import 'dart:math';

String ToUpperFirst(String name) {
  name = name.trim();
  String newStr = '';
  String newName = name.replaceAll(RegExp(r'\s+'), ' ');
  final arrStr = newName.split(' ');
  final prepositions = ['di', 'da', 'das', 'do', 'dos', 'de', 'e', 'von', 'van', 'le', 'la', 'du', 'des', 'del', 'della', 'der'];
  
  for (final item in arrStr) {
    if (prepositions.contains(item.toLowerCase())) {
      newStr += item.toLowerCase();
    }
    else {
      if (item.substring(0, 2).toUpperCase() == "O'") {
        newStr += item.substring(0, 3).toUpperCase() + item.substring(3).toLowerCase();
      }
      else if (item.length > 3 && item.substring(0, 3).toLowerCase() == "mc" + RegExp("[a-z]")) {
        newStr += item[0].toUpperCase() + item[1].toLowerCase() + item[2].toUpperCase() + item.substring(3).toLowerCase();
      }
      else if (item.length > 4 && item.substring(0, 4).toLowerCase() == "macc") {
        newStr += item[0].toUpperCase() + item.substring(1, 3).toLowerCase() + item[3].toUpperCase() + item.substring(4).toLowerCase();
      }
      else {
        newStr += item[0].toUpperCase() + item.substring(1).toLowerCase();
      }
    }
    
    newStr += arrStr.last == item ? '' : ' ';
  }
  
  return newStr;
}

void main() {
  final nomes = [
    " vincent VAN gogh",
    " diogo dE lIMA SCARMAGNANI",
    " edwin     VAN DER SAR     ",
    " luiz philippe de orleans e bragança",
    " roBERt o'doNNElL ",
    "affonso   deLLA    mÔnica    ",
    "randall mccoy",
    "charles de gaulle",
    "   leonardo  di caprio"
  ];
  
  int i = 0;
  for (final nome in nomes) {
    i++;
    print ("Nome $i: ${ToUpperFirst(nome)}.");
  }
}