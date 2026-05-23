// 10. Escreva um programa que simule um carrinho de compras. Cada produto deve ter nome e preço. Ao final, exiba o valor total da compra.

void main(List<String> args) {
  Map<String, double> carrinhoDeCompras = {
    'Arroz': 12.50,
    'Feijão': 7.80,
    'Macarrão': 4.20,
    'Óleo': 6.30,
    'Açúcar': 5.10,
  };
  double total = 0;
  for (var compra in carrinhoDeCompras.values) {
    total += compra;
  }

  print('O valor total do seu carrinho é R\$ ${total}');
}
