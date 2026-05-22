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
