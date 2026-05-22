// 4. Escreva uma função chamada `maiorNumero` que receba três
//números inteiros e retorne o maior deles.

void maiorNumero(int n1, int n2, int n3) {
  if (n1 > n2 && n1 > n3) {
    print('O maior número é ${n1}');
  } else if (n2 > n1 && n2 > n3) {
    print('O maior número é ${n2}');
  } else if (n3 > n1 && n3 > n2) {
    print('O maior número é ${n3}');
  } else {
    print('Não existe um número maior entre os três!');
  }
}

void main(List<String> args) {
  int n1 = 23;
  int n2 = 65;
  int n3 = 32;

  maiorNumero(n1, n2, n3);
}
