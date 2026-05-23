/*
4. Crie uma função chamada `calcularErroMedioQuadratico` que receba duas listas de `double`: uma lista com valores reais e outra lista com valores previstos por um modelo. A função deve calcular o Erro Médio Quadrático, também conhecido como MSE (*Mean Squared Error*).

Esse cálculo é muito usado em Inteligência Artificial e Aprendizado de Máquina para medir o quanto as previsões de um modelo estão distantes dos valores corretos. Quanto menor o erro médio quadrático, melhor tende a ser o desempenho do modelo naquele conjunto de dados.

A fórmula do erro médio quadrático é:

```text
MSE = soma((valorReal - valorPrevisto)^2) / quantidadeDeValores
```

A função deve:
- receber duas listas de `double`;
- verificar se as duas listas possuem o mesmo tamanho;
- lançar uma exceção caso as listas tenham tamanhos diferentes;
- lançar uma exceção caso as listas estejam vazias;
- calcular a diferença entre cada valor real e seu respectivo valor previsto;
- elevar cada diferença ao quadrado;
- retornar a média desses erros quadráticos.

Exemplo esperado:

```dart
final valoresReais = [10.0, 20.0, 30.0];
final valoresPrevistos = [12.0, 18.0, 33.0];

final mse = calcularErroMedioQuadratico(valoresReais, valoresPrevistos);

print(mse); // 5.666...
```

Depois, explique em um comentário no código por que elevar o erro ao quadrado evita que erros positivos e negativos se anulem.
*/

import 'dart:math';

double calcularErroMedioQuadratico(
  List<double> valoresReais,
  List<double> valoresPrevistos,
) {
  if (valoresReais.length != valoresPrevistos.length ||
      valoresReais.isEmpty ||
      valoresPrevistos.isEmpty) {
    throw ArgumentError(
      'As listas precisam do mesmo tamanho igual e preenchidas',
    );
  }

  double MSE = 0;

  for (var i = 0; i < valoresReais.length; i++) {
    MSE += pow((valoresReais[i] - valoresPrevistos[i]), 2);
  }

  return MSE / valoresPrevistos.length;
}

void main(List<String> args) {
  final valoresReais = [10.0, 20.0, 30.0];
  final valoresPrevistos = [12.0, 18.0, 33.0];

  final mse = calcularErroMedioQuadratico(valoresReais, valoresPrevistos);

  print(mse); // 5.666...
}
