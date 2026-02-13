void main() {
  final String texto = 'microcomputador';

  final int tamanho = texto.length;

  var frequencia = <String, int>{};

  for (int i = 0; i < tamanho; i++) {
    if (frequencia.containsKey(texto[i])) {
      frequencia[texto[i]] = frequencia[texto[i]]! + 1;
      //Precisa do ! que me garante que não é nulo
    } else {
      frequencia[texto[i]] = 1;
    }
  }

  print("Frequência:");
  for (final entry in frequencia.entries) {
    print('${entry.key}: ${entry.value}');
  }
  print('');

  //Outra forma de fazer seria usando o update
  for (int i = 0; i < tamanho; i++) {
    frequencia.update(texto[i], (v) => v + 1, ifAbsent: () => 1);
  }

  // 1) key: a chave que você quer atualizar (a letra atual)
  // 2) update: função que recebe o valor atual (v) e devolve o novo valor
  // pega o valor atual e soma 1 
  // 3) ifAbsent (parâmetro nomeado): função chamada SE a chave não existir no Map
  //    - ela deve devolver o valor inicial que será inserido no Map
  //    - aqui: se a letra ainda não apareceu, começa com 1


  print("Frequência:");
  for (final entry in frequencia.entries) {
    print('${entry.key}: ${entry.value}');
  }
  print('');

}
