// 1. Crie um programa que receba uma palavra e informe se ela é um palíndromo. Uma palavra é palíndromo quando pode ser lida da mesma forma da esquerda para a direita e da direita para a esquerda.

bool ehPalindromo(String palavra) {
  String palavraAnalisada = palavra.toLowerCase();

  for (int i = 0; i < palavraAnalisada.length; i++) {
    if (palavraAnalisada[i] !=
        palavraAnalisada[(palavraAnalisada.length) - (i + 1)]) {
          return false;
    }
  }
  return true;
}

void main(List<String> args) {
  String palavra1 = 'Arara';
  String palavra2 = 'Lucas';

  ehPalindromo(palavra1)
      ? print('A palavra ${palavra1} é um palíndromo')
      : print('A palavra ${palavra1} não é um palíndromo');

  ehPalindromo(palavra2)
      ? print('A palavra ${palavra2} é um palíndromo')
      : print('A palavra ${palavra2} não é um palíndromo');
}
