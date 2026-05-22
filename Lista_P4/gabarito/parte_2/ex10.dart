class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);
}

void main() {
  List<Produto> carrinho = [
    Produto('Camiseta', 50.0),
    Produto('Tenis', 200.0),
    Produto('Bone', 35.0),
  ];

  double total = 0;

  for (Produto produto in carrinho) {
    total += produto.preco;
  }

  print('Valor total da compra: R\$ $total');
}
