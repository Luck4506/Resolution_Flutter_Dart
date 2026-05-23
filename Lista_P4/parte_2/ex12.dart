// 12. Escreva um programa que receba uma lista de notas e remova todas as notas inválidas. Considere inválidas as notas menores que 0 ou maiores que 10.

tirarNotasInvalidasDaLista(List<int> listaNotas) {
  for (var i = 0; i < listaNotas.length;) {
    if (listaNotas[i] < 0 || listaNotas[i] > 10) {
      listaNotas.removeAt(i);
    } else {
      i++;
    }
  }
}

tirarNotasInvalidasDaListaComWhere(List<int> listaNotas) {
  listaNotas.removeWhere((item) => item < 0 || item > 10);
}

void main(List<String> args) {
  List<int> listaDeNotas = [
    -3,
    -2,
    -1,
    0,
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
  ];

  print('Lista com todas notas: ${listaDeNotas}');

  tirarNotasInvalidasDaLista(listaDeNotas);

  print('Lista apenas com notas válidas: ${listaDeNotas}');
}
