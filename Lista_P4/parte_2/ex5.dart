// 5. Escreva um programa que receba uma lista de nomes e retorne uma nova lista ordenada em ordem alfabética.

List<String> ordenarEmOrdemAlfabeticaComBiblioteca(List<String> listaNomes) {
  if (listaNomes.length < 1) {
    throw ArgumentError('Lista vazia');
  }

  List<String> listaAlfabetica = [];

  for (int i = 0; i < listaNomes.length; i++) {
    listaNomes[i] = listaNomes[i].toLowerCase();
    listaAlfabetica.add(listaNomes[i]);
  }

  listaAlfabetica.sort((a, b) => a.compareTo(b));

  //a<b = -1
  //a==b = 0
  //a>b = 1

  return listaAlfabetica;
}

List<String> ordenarEmOrdemAlfabeticaSemBiblioteca(List<String> listaNomes) {
  if (listaNomes.length < 1) {
    throw ArgumentError('Lista vazia');
  }

  List<String> listaAlfabetica = [];

  for (String nome in listaNomes) {
    String nomeMinusculo = nome.toLowerCase();
    int posicao = 0;

    while (posicao < listaAlfabetica.length &&
        listaAlfabetica[posicao].compareTo(nomeMinusculo) < 0) {
      posicao++;
    }

    listaAlfabetica.insert(posicao, nomeMinusculo);
  }

  return listaAlfabetica;
}

void main(List<String> args) {
  List<String> listaNomes = ['Lucas', 'Sofia', 'Gustavo', 'Ana', 'Davi'];

  print(
    'A lista de nomes em ordem alfabética é: ${ordenarEmOrdemAlfabeticaComBiblioteca(listaNomes)}',
  );
}
