// 13. Crie uma função que receba uma lista de números inteiros e retorne uma nova lista sem valores repetidos.

List<int> listaSemValoresRepetidos(List<int> listaCheia) {
  if (listaCheia.length < 1) {
    throw ArgumentError('A lista cheia precisa estar preenchida');
  }

  List<int> listaSemRepeticao = [];

  for (var element in listaCheia) {
    if (!listaSemRepeticao.contains(element)) {
      listaSemRepeticao.add(element);
    }
  }

  return listaSemRepeticao;
}

void main(List<String> args) {
  List<int> listaDeValores = [1, 1, 2, 4, 6, 7, 8, 8, 9, 0, 0, 1, 3, 5, 6];

  print('Lista de valores inteira ${listaDeValores}');

  print(
    'Lista de valores não repetidos ${listaSemValoresRepetidos(listaDeValores)}',
  );
}
