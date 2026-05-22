int maiorNumero(int a, int b, int c) {
  int maior = a;

  if (b > maior) {
    maior = b;
  }

  if (c > maior) {
    maior = c;
  }

  return maior;
}

void main() {
  print(maiorNumero(10, 4, 18));
}
