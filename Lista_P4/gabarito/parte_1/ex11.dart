void main() {
  List<double> precos = [100.0, 50.0, 30.0, 250.0];
  List<double> precosComDesconto = [];

  for (double preco in precos) {
    precosComDesconto.add(preco * 0.9);
  }

  print(precosComDesconto);
}
