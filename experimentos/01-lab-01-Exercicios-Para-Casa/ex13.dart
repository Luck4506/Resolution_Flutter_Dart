bool ehPrimo(int n) {
  int numeroDeDivisores = 0;
  for (var i = 1; i < n + 1; i++) {
    if (n % i == 0) {
      numeroDeDivisores += 1;
    }
  }
  if (numeroDeDivisores == 2) {
    return true;
  }
  return false;
}

void main() {
  int numero = 6;
  print('O número $numero é primo: ${ehPrimo(numero)}');
}
