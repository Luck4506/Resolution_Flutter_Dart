void main() {
  List<String> palavras = ['dart', 'flutter', 'dart', 'codigo', 'dart'];
  Map<String, int> contagem = {};

  for (String palavra in palavras) {
    if (contagem.containsKey(palavra)) {
      contagem[palavra] = contagem[palavra]! + 1;
    } else {
      contagem[palavra] = 1;
    }
  }

  print(contagem);
}
