void main() {
  var lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var listaPares = [];
  var tam = lista.length;

  for (var i = 0; i < tam; i++) {
    if (lista[i] % 2 == 0) {
      listaPares.add(lista[i]);
    }
  }
  for (var i = 0; i < tam; i++) {
    if (lista[i] % 2 == 0) {
      listaPares.add(lista[i]);
    }
  }
}
