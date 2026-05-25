// 16.b Crie uma função que receba um número inteiro `n` e retorne uma lista com os `n` primeiros números da sequência de Fibonacci.

List<int> listarSequenciaDeFibonacci(numero) {
  if (numero <= 0) {
    throw new ArgumentError('O numero não pode ser 0 ou negativo');
  }

  if (numero == 1) {
    return [1];
  } else if (numero == 2) {
    return [1, 1];
  } else {
    List<int> sequenciaFibonacci = [1, 1];
    for (var i = 2; i < numero; i++) {
      sequenciaFibonacci.add(
        sequenciaFibonacci[i - 1] + sequenciaFibonacci[i - 2],
      );
    }
    return sequenciaFibonacci;
  }
}

void main(List<String> args) {
  int numero = 10;

  print(
    'A lista com os ${numero} primeiros números de Fibonacci é ${listarSequenciaDeFibonacci(numero)}',
  );
}
