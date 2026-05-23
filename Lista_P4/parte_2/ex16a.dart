// 16.b Crie uma função que receba um número inteiro `n` e retorne seu termo na sequência de Fibonacci.

int gerarNumeroDeFibonacci(numero) {
  if (numero == 1 || numero == 2) {
    return 1;
  }

  return gerarNumeroDeFibonacci(numero - 1) +
      gerarNumeroDeFibonacci(numero - 2);
}

void main(List<String> args) {
  int numero = 8;

  print('O ${numero} número de Fibonacci é ${gerarNumeroDeFibonacci(numero)}');
}
