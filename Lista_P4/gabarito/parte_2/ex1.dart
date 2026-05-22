bool ehPalindromo(String palavra) {
  String normalizada = palavra.toLowerCase();
  String invertida = normalizada.split('').reversed.join();

  return normalizada == invertida;
}

void main() {
  String palavra = 'radar';

  if (ehPalindromo(palavra)) {
    print('$palavra eh palindromo');
  } else {
    print('$palavra nao eh palindromo');
  }
}
