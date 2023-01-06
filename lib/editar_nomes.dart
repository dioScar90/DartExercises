class EditarNomes {
  	static String toUpperFirst(String? fullName) {
		if (fullName == null) {
			return 'Nome inválido';
		}

    if (fullName.length < 3) {
      return 'Nome muito curto';
    }
		
		fullName = fullName.trim().replaceAll(RegExp(r'\s+'), ' ');
		final namesList = fullName.split(' ');
		final prepositions = [ 'di', 'da', 'das', 'do', 'dos', 'de', 'e', 'von', 'van', 'le', 'la', 'du', 'des', 'del', 'della', 'der' ];
		final vowels = [ 'a', 'e', 'i', 'o', 'u' ];
		
		String newFullName = '';
		for (String name in namesList) {
			name = name.toLowerCase();

			if (prepositions.contains(name)) {
				newFullName += name;
			}
			else {
				if (name.substring(0, 2) == 'o\'') {
					newFullName += name.substring(0, 3).toUpperCase() + name.substring(3);
				}
				else if (name.length > 3 && name.startsWith('mc') && vowels.contains(name[3])) {
					newFullName += name[0].toUpperCase() + name[1] + name[2].toUpperCase() + name.substring(3);
				}
				else if (name.length > 4 && name.startsWith('mac') && vowels.contains(name[4])) {
					newFullName += name[0].toUpperCase() + name.substring(1, 3) + name[3].toUpperCase() + name.substring(4);
				}
				else {
					newFullName += name[0].toUpperCase() + name.substring(1);
				}
			}

			newFullName += namesList.last.toLowerCase() == name ? '' : ' ';
		}

		return newFullName;
  	}
}