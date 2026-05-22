// 4. Crie uma função que receba uma lista de números inteiros e retorne o segundo maior número da lista.

int achar2Maior(List<int> listaNumeros) {

  if (listaNumeros.length < 2) {

    throw ArgumentError('A lista precisa ter pelo menos 2 números.');

  }

  int maior = listaNumeros[0];
  int segundoMaior = listaNumeros[0];

  for (var numero in listaNumeros) {
    if (numero > maior) {
      segundoMaior = maior;
      maior = numero;
    }
  }

  return segundoMaior;
}

void main(List<String> args) {
  List<int> listaDeNumeros = [
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
