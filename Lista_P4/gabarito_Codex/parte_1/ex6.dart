int somarLista(List<int> numeros) {
  int soma = 0;

  for (int numero in numeros) {
    soma += numero;
  }

  return soma;
}

void main() {
  List<int> valores = [2, 4, 6, 8];
  print('Soma: ${somarLista(valores)}');
}
