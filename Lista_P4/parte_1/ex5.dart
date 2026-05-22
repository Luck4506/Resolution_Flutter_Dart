// 5. Crie um programa que percorra uma lista de números inteiros e exiba apenas os números positivos.

void main(List<String> args) {
  List<int> numeros = [
    12, -5, 7, -18, 33, -1, 0, 24, -9, 45,
    -30, 6, -2, 19, -11, 28, -4, 51, -22, 3,
    17, -14, 8, -7, 40, -16, 2, -20, 13, -25
  ];

  for (var numero in numeros) {
    if (numero > 0) {
      print(numero);
    }
  }
}
