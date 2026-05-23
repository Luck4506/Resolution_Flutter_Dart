int calcularMDC(int a, int b) {
  a = a.abs();
  b = b.abs();

  while (b != 0) {
    int resto = a % b;
    a = b;
    b = resto;
  }

  return a;
}

int calcularMMC(int a, int b) {
  if (a == 0 || b == 0) {
    throw ArgumentError('Os denominadores nao podem ser zero.');
  }

  int mdc = calcularMDC(a, b);
  int mmc = (a * b).abs() ~/ mdc;

  return mmc;
}

void main() {
  print(calcularMMC(2, 3));
  print(calcularMMC(4, 6));
  print(calcularMMC(8, 12));
  print(calcularMMC(-5, 10));
}
