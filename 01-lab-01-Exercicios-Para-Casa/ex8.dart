void main() {
  var lista = [4, 6, 8];

  var tamanho = lista.length;
  var soma = 0;

  for (var i = 0; i < tamanho; i++) {
    soma += lista[i];
  }

  print("A soma da lista é ${soma}");
}
