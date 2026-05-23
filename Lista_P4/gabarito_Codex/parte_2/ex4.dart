int segundoMaior(List<int> numeros) {
  if (numeros.length < 2) {
    throw ArgumentError('A lista precisa ter pelo menos dois numeros.');
  }

  numeros.sort();

  return numeros[numeros.length - 2];
}

void main() {
  List<int> numeros = [10, 5, 20, 8];

  print('Segundo maior: ${segundoMaior(numeros)}');
}
