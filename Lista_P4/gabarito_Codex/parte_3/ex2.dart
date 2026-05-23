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

  return (a * b).abs() ~/ calcularMDC(a, b);
}

class Fracao {
  int numerador;
  int denominador;

  Fracao(this.numerador, this.denominador) {
    if (denominador == 0) {
      throw ArgumentError('O denominador nao pode ser zero.');
    }
  }

  Fracao somar(Fracao outra) {
    int denominadorComum = calcularMMC(denominador, outra.denominador);

    int novoNumerador =
        (numerador * (denominadorComum ~/ denominador)) +
        (outra.numerador * (denominadorComum ~/ outra.denominador));

    return Fracao(novoNumerador, denominadorComum);
  }

  @override
  String toString() {
    return '$numerador/$denominador';
  }
}

void main() {
  Fracao f1 = Fracao(1, 2);
  Fracao f2 = Fracao(1, 3);

  Fracao resultado = f1.somar(f2);

  print(resultado);
}
