void main() {
  List<double> notas = [8.0, -1.0, 7.5, 11.0, 5.0];
  List<double> notasValidas = [];

  for (double nota in notas) {
    if (nota >= 0 && nota <= 10) {
      notasValidas.add(nota);
    }
  }

  print(notasValidas);
}
