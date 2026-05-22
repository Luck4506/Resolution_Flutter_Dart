import 'dart:math';

double calcularSimilaridadeCosseno(List<double> vetorA, List<double> vetorB) {
  if (vetorA.length != vetorB.length) {
    throw ArgumentError('Os vetores precisam ter o mesmo tamanho.');
  }

  double produtoEscalar = 0;
  double somaQuadradosA = 0;
  double somaQuadradosB = 0;

  for (int i = 0; i < vetorA.length; i++) {
    produtoEscalar += vetorA[i] * vetorB[i];
    somaQuadradosA += vetorA[i] * vetorA[i];
    somaQuadradosB += vetorB[i] * vetorB[i];
  }

  double moduloA = sqrt(somaQuadradosA);
  double moduloB = sqrt(somaQuadradosB);

  if (moduloA == 0 || moduloB == 0) {
    throw ArgumentError('Nenhum vetor pode ter modulo igual a zero.');
  }

  return produtoEscalar / (moduloA * moduloB);
}

void main() {
  List<double> textoA = [1.0, 2.0, 3.0];
  List<double> textoB = [2.0, 4.0, 6.0];

  double similaridade = calcularSimilaridadeCosseno(textoA, textoB);

  print(similaridade);

  // Valores proximos de 1.0 indicam vetores na mesma direcao, ou seja, muito parecidos.
  // Valores proximos de 0.0 indicam pouca relacao entre os vetores.
  // Valores negativos indicam que os vetores apontam para direcoes opostas.
}
