// 15. Crie uma classe chamada `Produto` com os atributos `nome`, `preco` e `quantidadeEmEstoque`. Adicione um método chamado `valorTotalEmEstoque`, que retorne o valor total daquele produto no estoque.

class Produto {
  String nome;
  double preco;
  int quantidadeEmEstoque;

  Produto(this.nome, this.preco, this.quantidadeEmEstoque);

  double valorTotalEmEstoque() {
    return preco * quantidadeEmEstoque;
  }
}

void main(List<String> args) {
  Produto produto1 = Produto('PC', 16567.99, 34);

  print('Valor total em estoque: ${produto1.valorTotalEmEstoque()}');
}
