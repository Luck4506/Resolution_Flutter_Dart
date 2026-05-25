// 4. Crie uma função que receba uma lista de números inteiros e retorne o segundo maior número da lista.

int achar2Maior(List<int> listaNumeros) {
  if (listaNumeros.length < 2) {
    throw ArgumentError('A lista precisa ter pelo menos 2 números.');
  }

  num maior = double.negativeInfinity;
  num segundoMaior = double.negativeInfinity;

  for (var numero in listaNumeros) {
    if (numero > maior) {
      segundoMaior = maior;
      maior = numero;
    } else if (numero > segundoMaior) {
      segundoMaior = numero;
    }
  }

  return segundoMaior.toInt();
}

void main(List<String> args) {
  List<int> listaDeNumeros = [
    20,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
  ];

  print('Segundo maior número: ${achar2Maior(listaDeNumeros)}');
}
