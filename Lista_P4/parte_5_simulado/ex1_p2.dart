// // Questão 1. Implemente, em Dart, a função calcularMediaMovel. Ela deve receber uma lista de
// // double e o tamanho da janela, retornando a lista de médias conforme as regras do texto.

// double calcularMediaMovel(List<double> listaValores, int tamanhoJanela) {
//   if (tamanhoJanela <= 0) {
//     throw ArgumentError('O tamanho da janela precisa ser maior que 0');
//   }

//   List<double> mediaMovel = [];

//   if (tamanhoJanela == 0) {
//     mediaMovel.add(listaValores[0]);
//   } else if (tamanhoJanela == 1) {
//     mediaMovel.add(listaValores[0]);
//     mediaMovel.add(listaValores[1]);
//   } else if (tamanhoJanela == 2) {
//     mediaMovel.add(listaValores[0]);
//     mediaMovel.add(listaValores[1]);
//     mediaMovel.add(listaValores[2]);
//   } else {
//     for (var i = 0; i < 3; i++) {
//       mediaMovel.add(listaValores[listaValores.length - 1 - i]);
//     }
//   }

//   double soma = 0;

//   for (var media in mediaMovel) {}
// }
