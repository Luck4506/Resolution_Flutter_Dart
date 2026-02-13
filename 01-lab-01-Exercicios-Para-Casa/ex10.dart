void main() {
  final List<String> palavras = ['Bom', 'dia', 'mundo', 'Adoro', 'Dart'];
  var maiorPalavra = '';

  for (final palavra in palavras) {
    if (palavra.length > maiorPalavra.length) {
      maiorPalavra = palavra;
    }
  }
  print('A maior palavra é: $maiorPalavra e a lista contém ${palavras.length} palavras.');
}