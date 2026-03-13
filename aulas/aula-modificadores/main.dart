import 'dart:io';

class Pessoa {
  final String nome;
  double altura;
  double peso;
  double? _imc; // Não adianta _imc ser privado, pois a classe está no mesmo 
  //arquivo que a main, então ele é acessível normalmente, mesmo com o modificador de acesso privado.

  Pessoa(this.nome, this.altura, this.peso) {
    this._calcularIMC();
  }

  //Atributos e métodos podem ser públicos ou privados. A título de curiosidade,
  // em java existem 4 modificadores de acesso (public, private, protected e package)

  void _calcularIMC() {
    this._imc = this.peso / (this.altura * this.altura);
  }

  //Técnica:
  //Para os modificadores funcionarem, eu preciso separar os artefatos
  // em arquivos diferentes. Se eu colocar tudo no mesmo arquivo, 
  //o modificador de acesso não tem efeito, pois o escopo é o mesmo.
  //SEPARO ARTEFATOS EM ARQUIVOS DIFERENTES

  //Como separar artefatos?
  //Coloque cada classe em um arquivo único, MAS NEM SEMPRE ISSO É O IDEAL.
  //A função main deve ficar em um arquivo main.dart

  //Modificador privado, só é privado, se o artefato estiver em um arquivo 
  //diferente do que o utiliza. Se estiver no mesmo arquivo, ele é acessível
  // normalmente, mesmo com o modificador de acesso privado.

  //Como distingur atributos e métodos privados dos públicos:
  // Todo atributo ou método que começa com _ é privado, ou seja, só pode
  // ser acessado dentro do mesmo arquivo.
  // Todo atributo ou método que não começa com _ é público.
}

void main() {
  stdout.write("Digite o nome: ");
  String nome = stdin.readLineSync()!;
  stdout.write("Digite a altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  stdout.write("Digite o peso: ");
  double peso = double.parse(stdin.readLineSync()!);

  Pessoa p1 = Pessoa(nome, altura, peso);
  print("O IMC de ${p1.nome} é ${p1._imc}");
}
