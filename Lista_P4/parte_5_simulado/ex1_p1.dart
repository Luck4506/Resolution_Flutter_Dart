import 'dart:math';

double calcularSimilaridadeCosseno(List<double> vetor1, List<double> vetor2) {
  if (vetor1.length != vetor2.length) {
    throw new ArgumentError('Vetores precisam ser iguais');
  }

  double produtoEscalar = calcularProdutoEscalar(vetor1, vetor2);

  double similaridade = produtoEscalar / (modulo(vetor1) * modulo(vetor2));

  return similaridade;
}

double calcularProdutoEscalar(List<double> vetor1, List<double> vetor2) {
  if (vetor1.length != vetor2.length) {
    throw new ArgumentError('Vetores precisam ser iguais');
  }

  double soma = 0;

  for (var i = 0; i < vetor1.length; i++) {
    soma += (vetor1[i] * vetor2[i]);
  }

  return soma;
}

double modulo(List<double> vetor) {
  if (vetor.isEmpty) {
    throw new ArgumentError('Vetor precisa estar preenchido');
  }

  double somaModulo = 0;

  for (var element in vetor) {
    somaModulo += pow(element, 2);
  }

  return sqrt(somaModulo);
}
