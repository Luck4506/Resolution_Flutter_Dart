class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  String etiqueta() {
    return "${nome} - R\$ ${preco}"; // O método etiqueta retorna uma string formatada com o nome e o preço do produto.
  }
}

void main() {
  Produto produto1 = Produto("Notebook", 2500.00);
  Produto produto2 = Produto("Mouse", 50.00);

  print(produto1.etiqueta());
  print(produto2.etiqueta());
}
