/*
3. Crie uma função chamada `calcularSimilaridadeCosseno` que receba dois vetores numéricos representados por listas de `double` e retorne a similaridade entre eles usando a fórmula da similaridade do cosseno.

Esse tipo de cálculo é muito usado em aplicações modernas de Inteligência Artificial, especialmente em sistemas de recomendação, busca semântica, comparação de textos por embeddings e recuperação de informações. A ideia é comparar a direção de dois vetores, e não apenas a distância direta entre eles.

A fórmula da similaridade do cosseno é:

```text
similaridade = produtoEscalar(vetorA, vetorB) / (modulo(vetorA) * modulo(vetorB))
```

A função deve:
- receber duas listas de `double`;
- verificar se as duas listas possuem o mesmo tamanho;
- lançar uma exceção caso os vetores tenham tamanhos diferentes;
- calcular o produto escalar entre os dois vetores;
- calcular o módulo de cada vetor;
- retornar um valor `double` representando a similaridade;
- tratar o caso em que algum vetor tenha módulo igual a zero.

Exemplo esperado:

```dart
final textoA = [1.0, 2.0, 3.0];
final textoB = [2.0, 4.0, 6.0];

final similaridade = calcularSimilaridadeCosseno(textoA, textoB);

print(similaridade); // valor próximo de 1.0
```

Depois, explique em um comentário no código por que valores próximos de `1.0` indicam vetores muito parecidos, valores próximos de `0.0` indicam pouca relação e valores negativos indicam direções opostas.
*/

import 'dart:math';

double calcularSimilaridadeCosseno(List<double> vetor1, List<double> vetor2) {
  if (vetor1.length != vetor2.length || vetor1.isEmpty || vetor2.isEmpty) {
    throw ArgumentError(
      'Os dois vetores precisam estar preenchidos e com o mesmo tamanho',
    );
  }

  calcularProdutoEscalar(vetor1, vetor2);

  double moduloVetor1 = calcularmoduloVetor(vetor1);

  double moduloVetor2 = calcularmoduloVetor(vetor2);

  if (moduloVetor1 == 0 || moduloVetor2 == 0) {
    throw ArgumentError('Os módulos dos vetores não podem ser 0');
  }

  return calcularProdutoEscalar(vetor1, vetor2) / (moduloVetor1 * moduloVetor2);
}

double calcularProdutoEscalar(List<double> vetor1, List<double> vetor2) {
  if (vetor1.length != vetor2.length || vetor1.isEmpty || vetor2.isEmpty) {
    throw ArgumentError(
      'Os dois vetores precisam estar preenchidos e com o mesmo tamanho',
    );
  }

  double produtoEscalar = 0;

  for (var i = 0; i < vetor1.length; i++) {
    produtoEscalar += vetor1[i] * vetor2[i];
  }

  return produtoEscalar;
}

double calcularmoduloVetor(List<double> vetor) {
  if (vetor.isEmpty) {
    throw ArgumentError('O vetor precisam estar preenchido');
  }

  double moduloVetor = 0;

  for (var atributo in vetor) {
    moduloVetor += pow(atributo, 2);
  }

  return sqrt(moduloVetor);
}

void main(List<String> args) {
  final textoA = [1.0, 2.0, 3.0];
  final textoB = [2.0, 4.0, 6.0];

  final similaridade = calcularSimilaridadeCosseno(textoA, textoB);

  print(similaridade); // valor próximo de 1.0
}
