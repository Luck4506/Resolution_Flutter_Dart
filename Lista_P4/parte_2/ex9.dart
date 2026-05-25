// 9. Crie uma função que receba duas listas de números (mesma quantidade) e retorne uma lista que represente a diferença entre os números. Se as listas passadas não tiverem a mesma quantidade de números, lançar uma exceção ArgumentException.

List<int> diferencaListas(List<int> lista1, List<int> lista2) {
  if (lista1.length != lista2.length) {
    throw ArgumentError('As listas precisam ser do mesmo tamanho');
  }

  if (lista1.length < 1 || lista2.length < 1) {
    throw ArgumentError('As listas precisam estar preenchidas');
  }

  List<int> listaDiferenca = [];

  for (var i = 0; i < lista1.length; i++) {
    listaDiferenca.add(lista1[i] - lista2[i]);
  }

  return listaDiferenca;
}

void main(List<String> args) {
  List<int> listaDeNumeros1 = [5, 7, 9, 11, 13, 14, 7, 54, 45, 54];
  List<int> listaDeNumeros2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print(diferencaListas(listaDeNumeros1, listaDeNumeros2));
}
