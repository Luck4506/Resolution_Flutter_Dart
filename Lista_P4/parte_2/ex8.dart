// 8. Crie uma função que receba uma lista de números e retorne `true` caso todos os números sejam positivos.

bool todosNumerosPositivos(List<int> lista) {
  for (var numero in lista) {
    if (numero < 0) {
      return false;
    }
  }

  return true;
}

void main(List<String> args) {
  List<int> listaNumeros = [-1, 1, 2, 3, 4, 5, 6, 7, 8];

  todosNumerosPositivos(listaNumeros)
      ? print('Todos os números da lista são positivos')
      : print('Nem todos os números da lista são positivos');
}
