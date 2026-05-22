// 3. Crie uma função que receba uma lista de números inteiros e retorne uma nova lista contendo apenas os números pares.

List<int> listaPares(List<int> listaNumeros) {
  List<int> listaPares = [];

  for (var numero in listaNumeros) {
    if (numero % 2 == 0) {
      listaPares.add(numero);
    }
  }

  return listaPares;
}

void main(List<String> args) {
  List<int> listaDeNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  print('Lista com os números pares: ${listaPares(listaDeNumeros)}');
}
