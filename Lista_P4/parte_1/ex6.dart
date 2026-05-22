// 6. Crie uma função chamada `somarLista` que receba uma lista de números inteiros e retorne a soma de todos os elementos.

int somarListas(List<int> listaDeNumeros) {
  if (listaDeNumeros.length < 1) {
    return 0;
  }

  int soma = 0;

  for (var num in listaDeNumeros) {
    soma += num;
  }
  return soma;
}

void main(List<String> args) {
  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  print('A soma de números da lista é ${somarListas(lista)}');
}
