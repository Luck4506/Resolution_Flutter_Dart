// 2. Escreva uma função que receba uma frase e retorne a quantidade de vogais existentes nela.

int contarVogais(String palavra) {
  String palavraAnalisada = palavra.toLowerCase();
  int somaVogais = 0;

  for (var i = 0; i < palavraAnalisada.length; i++) {
    if (palavraAnalisada[i] == 'a' ||
        palavraAnalisada[i] == 'e' ||
        palavraAnalisada[i] == 'i' ||
        palavraAnalisada[i] == 'o' ||
        palavraAnalisada[i] == 'u') {
      somaVogais++;
    }
  }
  return somaVogais;
}

void main(List<String> args) {
  String palavra = 'Computador';

  print('A palavra ${palavra} tem ${contarVogais(palavra)} vogais');
}
