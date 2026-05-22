double calcularErroMedioQuadratico(
  List<double> valoresReais,
  List<double> valoresPrevistos,
) {
  if (valoresReais.length != valoresPrevistos.length) {
    throw ArgumentError('As listas precisam ter o mesmo tamanho.');
  }

  if (valoresReais.isEmpty) {
    throw ArgumentError('As listas nao podem estar vazias.');
  }

  double somaErrosQuadraticos = 0;

  for (int i = 0; i < valoresReais.length; i++) {
    double erro = valoresReais[i] - valoresPrevistos[i];
    somaErrosQuadraticos += erro * erro;
  }

  return somaErrosQuadraticos / valoresReais.length;
}

void main() {
  List<double> valoresReais = [10.0, 20.0, 30.0];
  List<double> valoresPrevistos = [12.0, 18.0, 33.0];

  double mse = calcularErroMedioQuadratico(valoresReais, valoresPrevistos);

  print(mse);

  // Elevar o erro ao quadrado evita que erros positivos e negativos se anulem.
  // Por exemplo, um erro de 2 e outro de -2 viram 4 e 4.
}
