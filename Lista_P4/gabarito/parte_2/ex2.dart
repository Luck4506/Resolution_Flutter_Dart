int contarVogais(String frase) {
  int quantidade = 0;
  String vogais = 'aeiouAEIOU';

  for (int i = 0; i < frase.length; i++) {
    if (vogais.contains(frase[i])) {
      quantidade++;
    }
  }

  return quantidade;
}

void main() {
  print(contarVogais('Programar em Dart'));
}
