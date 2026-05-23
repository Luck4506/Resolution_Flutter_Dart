// 15. Crie uma função que receba um número inteiro e retorne o seu fatorial.

int calcularFatorial(int numero) {
  if (numero == 1 || numero == 0) {
    return 1;
  }

  return numero * calcularFatorial(numero - 1);
}

void main(List<String> args) {
  int numero = 9;

  print('O fatorial de ${numero} é ${calcularFatorial(numero)}');
}
