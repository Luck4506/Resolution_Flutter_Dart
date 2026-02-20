class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);


}

class Carrinho {
  final List <Produto> produtos = [];

  void adicionar(Produto p) {
    produtos.add(p);
  }

  double total() {
    double soma = 0;
    for (Produto p in produtos) {
      soma += p.preco;
    }
    return soma;
  }
}

void main() {
  Produto produto1 = Produto("PC", 5000.00);
  Produto produto2 = Produto("Teclado", 500.00);

  Carrinho carrinho_de_compras = Carrinho(); //Carrinho_de_compras é uma variável do tipo Carrinho que guarda uma instância (objeto) de Carrinho
  carrinho_de_compras.adicionar(produto1);
  carrinho_de_compras.adicionar(produto2);

  print("\nTotal do carrinho: R\$ ${carrinho_de_compras.total()}");
}
