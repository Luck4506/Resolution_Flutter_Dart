List<int> fibonacci(int n) {
  List<int> sequencia = [];

  for (int i = 0; i < n; i++) {
    if (i == 0) {
      sequencia.add(0);
    } else if (i == 1) {
      sequencia.add(1);
    } else {
      int proximo = sequencia[i - 1] + sequencia[i - 2];
      sequencia.add(proximo);
    }
  }

  return sequencia;
}

void main() {
  print(fibonacci(8));
}
