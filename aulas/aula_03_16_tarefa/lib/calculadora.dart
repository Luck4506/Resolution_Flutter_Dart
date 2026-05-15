class Calculadora {
  int somar(int a, int b) {
    return a + b;
  }

  int subtrair(int a, int b) {
    return a - b;
  }

  double dividir(double a, double b) {
    if (b == 0) {
      throw ArgumentError('O divisor nao pode ser zero.');
    }
    return a / b;
  }
}
