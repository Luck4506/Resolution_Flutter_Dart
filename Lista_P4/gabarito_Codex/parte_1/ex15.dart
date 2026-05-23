class Produto {
  String nome;
  double preco;
  int quantidadeEmEstoque;

  Produto(this.nome, this.preco, this.quantidadeEmEstoque);

  double valorTotalEmEstoque() {
    return preco * quantidadeEmEstoque;
  }
}

void main() {
  Produto produto = Produto('Caderno', 20.0, 15);

  print('Valor total em estoque: R\$ ${produto.valorTotalEmEstoque()}');
}
