class EditarNomes {
  	static String toUpperFirst(String? name) {
		if (name == null) {
			return 'Nome inválido';
		}

		name = name.trim();
		String newStr = '';
		String newName = name.replaceAll(RegExp(r'\s+'), ' ');
		final arrStr = newName.split(' ');
		final prepositions = [ 'di', 'da', 'das', 'do', 'dos', 'de', 'e', 'von', 'van', 'le', 'la', 'du', 'des', 'del', 'della', 'der' ];
		final vowels = [ 'a', 'e', 'i', 'o', 'u' ];
		
		for (String item in arrStr) {
			item = item.toLowerCase();
			if (prepositions.contains(item)) {
				newStr += item;
			}
			else {
				if (item.substring(0, 2) == 'o\'') {
					newStr += item.substring(0, 3).toUpperCase() + item.substring(3).toLowerCase();
				}
				else if (item.length > 3 && item.startsWith('mc') && vowels.contains(item[3])) {
					newStr += item[0].toUpperCase() + item[1].toLowerCase() + item[2].toUpperCase() + item.substring(3).toLowerCase();
				}
				else if (item.length > 4 && item.startsWith('mac') && vowels.contains(item[4])) {
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
}