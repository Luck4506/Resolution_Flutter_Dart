//Uma classe que representa uma entidade do mundo real, dizemos que é uma "Entity class";
//Uma classe que representa um conceito, uma ideia, dizemos que é uma "Concept class";
//Em Dart, as classes são "Concept classes", ou seja, elas representam um conceito, uma ideia, e não uma entidade do mundo real.

class Pessoa {
  //opicional (?)
  String? nome;
  String? dataNascimento;
  double? peso;
  double? altura;

  void imprimir() {
    //método.
    //Não precisa de parâmetros, pois ele já tem acesso aos atributos da classe.
    print('\nNome: ${nome}');
    print('Data de Nascimento: ${dataNascimento}');
    print('Peso: ${peso}');
    print('Altura: ${altura}');
  }
}

class Estudante extends Pessoa {
  String? registroAcademico;

  @override
  //modificação de método
  imprimir() {
    super.imprimir(); //Chama a função imprimir original
    print('Registro Acadêmico: ${registroAcademico}');
  }
}

void main() {
  Pessoa p1 = Pessoa();
  var p2 = Pessoa();

  p1.nome = 'Lucas';
  p1.dataNascimento = '2006-05-28';
  p1.altura = 1.71;
  p1.peso = 70;

  p2.nome = 'Ana';
  p2.dataNascimento = '2006-07-23';
  p2.altura = 1.60;
  p2.peso = 60;

  p1.imprimir();
  p2.imprimir();

  Estudante e1 = Estudante();
  e1.nome = 'Sofia';
  e1.dataNascimento = '2007-07-27';
  e1.altura = 1.70;
  e1.peso = 50;
  e1.registroAcademico = '250001';

  // imprimirPessoa(e1)
  //Não funciona, pois essa função espera um objeto do tipo Pessoa, e e1 é um objeto do tipo Estudante.

  e1.imprimir();
}
