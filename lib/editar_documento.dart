class EditarDocumento {
  static String formatCpf(String? notFormattedCpf) {
    if (notFormattedCpf == null || notFormattedCpf == '' || notFormattedCpf.length < 3) {
      return 'CPF inválido';
    }

    String cpfWithoutExtraSpaces = notFormattedCpf.replaceAll(" ", "");
    String cpfAux = "";
    String formattedCpf = "";

    for (int i = cpfWithoutExtraSpaces.length - 1, j = 0;
        i >= 0 && j < 11;
        i--) {
      int num;
      if (int.tryParse(cpfWithoutExtraSpaces[i]) != null) {
        cpfAux = "${cpfWithoutExtraSpaces[i]}$cpfAux";
        j++;
      }
    }

    cpfAux = cpfAux.padLeft(11, '0');
    formattedCpf =
        "${cpfAux.substring(0, 3)}.${cpfAux.substring(3, 6)}.${cpfAux.substring(6, 9)}-${cpfAux.substring(9)}";

    return formattedCpf;
  }

  static String formatCnpj(String? notFormattedCnpj) {
    if (notFormattedCnpj == null || notFormattedCnpj == '' || notFormattedCnpj.length < 7) {
      return 'CNPJ inválido';
    }
    String cnpjWithoutExtraSpaces = notFormattedCnpj.replaceAll(" ", "");
    String cnpjAux = "";
    String formattedCnpj = "";

    for (int i = cnpjWithoutExtraSpaces.length - 1, j = 0;
        i >= 0 && j < 14;
        i--) {
      int num;
      if (int.tryParse(cnpjWithoutExtraSpaces[i]) != null) {
        cnpjAux = "${cnpjWithoutExtraSpaces[i]}$cnpjAux";
        j++;
      }
    }

    cnpjAux = cnpjAux.padLeft(14, '0');
    formattedCnpj =
        "${cnpjAux.substring(0, 2)}.${cnpjAux.substring(2, 5)}.${cnpjAux.substring(5, 8)}/${cnpjAux.substring(8, 12)}-${cnpjAux.substring(12)}";

    return formattedCnpj;
  }
}
