bool ehPar(int numero) {
  return numero % 2 == 0;
}

void main() {
  List<int> numeros = [2, 7, 10, 15, 22];

  for (int numero in numeros) {
    print('$numero eh par? ${ehPar(numero)}');
  }
}
