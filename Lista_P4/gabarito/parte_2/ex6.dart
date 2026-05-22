String maiorPalavra(List<String> palavras) {
  if (palavras.isEmpty) {
    return '';
  }

  String maior = palavras[0];

  for (String palavra in palavras) {
    if (palavra.length > maior.length) {
      maior = palavra;
    }
  }

  return maior;
}

void main() {
  print(maiorPalavra(['Dart', 'Flutter', 'Programacao']));
}
