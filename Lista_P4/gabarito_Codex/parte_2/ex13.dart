List<int> removerRepetidos(List<int> numeros) {
  List<int> resultado = [];

  for (int numero in numeros) {
    if (!resultado.contains(numero)) {
      resultado.add(numero);
    }
  }

  return resultado;
}

void main() {
  print(removerRepetidos([1, 2, 2, 3, 4, 4, 5]));
}
