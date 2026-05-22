double calcularMedia(List<double> numeros) {
  if (numeros.isEmpty) {
    return 0;
  }

  double soma = 0;

  for (double numero in numeros) {
    soma += numero;
  }

  return soma / numeros.length;
}

void main() {
  print(calcularMedia([7.5, 8.0, 9.0]));
  print(calcularMedia([]));
}
