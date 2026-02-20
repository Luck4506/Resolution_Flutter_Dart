class Produto {
  String nome; //Nome é um atributo da classe Produto que representa o nome do produto.
  double preco; //Preco é um atributo da classe Produto que representa o preço do produto.

  Produto(this.nome, this.preco);

  String etiqueta() { //Etiqueta é um método da classe Produto que retorna uma string formatada com o nome e o preço do produto.
    return "${nome} - R\$ ${preco}"; 
  }
}

void main() {
  Produto produto1 = Produto("Notebook", 2500.00); //Instanciando um objeto da classe Produto com o nome "Notebook" e o preço 2500.00.
  Produto produto2 = Produto("Mouse", 50.00); //Instanciando um objeto da classe Produto com o nome "Mouse" e o preço 50.00.

  //Ou seja, produto1 e produto2 são objetos da classe Produto, cada um com seus próprios valores para os atributos nome e preco.

  print(produto1.etiqueta()); //Chamando o método etiqueta do objeto produto1 e imprimindo o resultado.
  print(produto2.etiqueta()); //Chamando o método etiqueta do objeto produto2 e imprimindo o resultado.
}
