List<num> calcularDiferencas(List<num> listaA, List<num> listaB) {
  if (listaA.length != listaB.length) {
    throw ArgumentError(
      'As listas precisam ter a mesma quantidade de numeros.',
    );
  }

  List<num> diferencas = [];

  for (int i = 0; i < listaA.length; i++) {
    diferencas.add(listaA[i] - listaB[i]);
  }

  return diferencas;
}

void main() {
  print(calcularDiferencas([10, 20, 30], [3, 5, 8]));
}
