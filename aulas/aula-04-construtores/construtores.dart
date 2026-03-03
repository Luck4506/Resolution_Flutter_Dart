// construtor é um método especial que define quais dados são inseridos no
//momento da instanciação.

//O COSNTRUTOR É UM MÉTODO e ele tem o MESMO NOME DA CLASSE;

class Carro {
  //Atributos
  String modelo;
  int ano;
  String? marca;

  // Construtor [Endereçador]
  Carro(this.modelo, this.ano);
  //this = ao atributo desta classe
  //O CONSTRUTOR NÃO DEVE IMPEDIR A CONSTRUÇÃO REAL DO OBJETO, MESMO QUE TENHA LIXO,
  //POIS É RESPONSÁVEL APENAS RESPONSAVEL POR ENDEREÇAR OS DADOS PARA OS ATRIBUTOS DA CLASSE.
  //A VALIDAÇÃO DOS DADOS DEVE SER FEITA EM OUTRO MÉTODO.

  //Demais métodos
  void imprimir() {
    print('Modelo: $modelo');
    print('Ano: $ano');
    //Para acessar o atributo marca, que é opcional, precisamos verificar se ele é nulo ou não, ou seja, se ele foi preenchido ou não.
    if (marca != null) {
      print('Marca: $marca');
    } else {
      print('Marca: Não informada');
    }
  }

  //Toda classe tem um costrutor default. Esse construtor padrão não endreça
  //nada, apenas serve para instanciar.
  //É um construtor sem parâmetros, mas quando criamos um construtor
  //personalizado, o construtor default é sobrescrito e não pode mais ser utilizado.
}

//Para que serve um construtor?
//Para criar instancias com alguns dados imadiatos e evitar que o objeto seja
//criado sem esses dados, ou seja, sem um estado inicial.

void main() {
  Carro c1 = Carro("Fusca", 1974);
  c1.imprimir();

  //Construtor não garante que os dados sejam válidos, ou seja, que o ano seja um número positivo, ou que o modelo seja uma string não vazia.
  //Exemplo:
  // Carro c2 = Carro("", -2020);
  // c2.imprimir();

  //Podemos criar um construtor personalizado que valide os dados, ou seja, que verifique se o modelo é uma string não vazia e se o ano é um número positivo.
}
