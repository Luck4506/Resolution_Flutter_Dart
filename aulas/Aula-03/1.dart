//Uma classe que representa uma entidade do mundo real, dizemos que é uma "Entity class";
//Uma classe que representa um conceito, uma ideia, dizemos que é uma "Concept class";
//Em Dart, as classes são "Concept classes", ou seja, elas representam um conceito, uma ideia, e não uma entidade do mundo real.

class Pessoa {
  //opicional (?)
  String? nome;
  String? dataNascimento;
  double? peso;
  double? altura;
}

class Estudante extends Pessoa {
  String? registroAcademico;
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

  p2 = p1;

  //Ao mudar o nome de p2, estamos mudando o nome de p1, pois p1 e p2 apontam para o mesmo objeto na memória;
  p2.nome = 'Henrique';
  print(p1.nome);
  //Se eu der free na memória para p2, p1 ainda vai existir, pois p1 e p2 são referências para o mesmo objeto na memória, ou seja, eles apontam para o mesmo espaço na memória, mas os dados serão perdidos, pois o objeto na memória foi liberado, ou seja, ele não existe mais, mas p1 e p2 ainda existem, pois eles são referências para o mesmo objeto na memória, ou seja, eles apontam para o mesmo espaço na memória, mas os dados foram perdidos, pois o objeto na memória foi liberado;

  //Comparar instâncias é diferente de comparar conteúdos;
  //Comparar instâncias é comparar se os objetos são o mesmo objeto na memória, ou seja, se eles ocupam o mesmo espaço na memória;
  if (p1 == p2) {
    print('São Iguais!');
  } else {
    print('São Diferentes!');
  }

  print(p1.nome);
}
