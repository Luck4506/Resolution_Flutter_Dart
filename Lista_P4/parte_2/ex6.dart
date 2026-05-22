// 6. Crie uma função que receba uma lista de palavras e retorne a maior palavra encontrada.

String acharMaiorPalavra(List<String> listaPalavras) {
  String maiorPalavra = '';

  for (var palavra in listaPalavras) {
    if (palavra.length > maiorPalavra.length) {
      maiorPalavra = palavra;
    }
  }
  return maiorPalavra;
}

void main(List<String> args) {
  List<String> listapalavras = ['Computador', 'Armário', 'Ovo'];

  print("A maior palavra da lista é ${acharMaiorPalavra(listapalavras)}");
}
