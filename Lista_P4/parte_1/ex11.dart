// 11. Escreva um programa que receba uma lista de preços e aplique 10% de desconto em todos os valores. Ao final, exiba a nova lista de preços.

void main(List<String> args) {
  List<double> precos = [45.54, 545.35, 45.34, 76.89, 235.6];
  List<double> novosPrecos = [];
  for (var preco in precos) {
    novosPrecos.add(double.parse((preco * 0.9).toStringAsFixed(2)));
  }

  print('Nova lista:');

  for (var preco in novosPrecos) {
    print(preco);
  }
}
