List<int> filtrarPares(List<int> numeros) {
  List<int> pares = [];

  for (int numero in numeros) {
    if (numero % 2 == 0) {
      pares.add(numero);
    }
  }

  return pares;
}

void main() {
  print(filtrarPares([1, 2, 3, 4, 5, 6]));
}
