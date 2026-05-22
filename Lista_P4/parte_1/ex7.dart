// 7. Crie uma função chamada `calcularMedia` que receba uma lista de números decimais e retorne a média dos valores. Caso a lista esteja vazia, a função deve retornar `0`.

double calcularMedia(List<double> listaDeNumeros) {
  int tam = listaDeNumeros.length;
  if (tam < 1) {
    return 0;
  }

  double soma = 0;

  for (var num in listaDeNumeros) {
    soma += num;
  }

  return soma / tam;
}

void main() {
  final numeros = [6.5, 7.0, 8.5, 9.0];
  final media = calcularMedia(numeros);
  print('Média: $media');
}
