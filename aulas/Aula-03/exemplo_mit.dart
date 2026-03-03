abstract class Animal {
  // classe abstrata, não pode ser instanciada, mas pode ser herdada. Não faz sentido ter um objeto do tipo Animal, pois ele é um conceito, uma ideia, e não uma entidade do mundo real.
  void show() {
    print('Tocar música.. Tabores...');
  }

  void hide() {
    print('Fumaçinha... puufff... sumiu....');
  }
}

class Dog extends Animal {
  @override // @override é uma anotação que indica que o método está sendo sobrescrito.
  void show() {
    super.show();
    print('Cachorro se desloca at;e o centro da tela');
  }

  void bark() {
    print('Au Au...');
  }
}

class Cat extends Animal {
  @override
  void show() {
    super.show();
    print('Gato vem pulando pelas árvores até o chão');
  }

  void meow() {
    print('Meeeeooooow...');
  }
}

class Horse extends Animal {
  void show() {
    print('Pocotó... Pocotó');
  }

  void relinchar() {
    print('Relincha... Relinha');
  }
}

void main() {
  print('JOGO INICIADO');

  Cat c1 = Cat();

  c1.show();
  c1.meow();
  c1.hide();
  print('Quiz de palavras');

  Dog d1 = Dog();

  d1.show();
  d1.bark();
  d1.hide();

  print('Quiz de palavras');

  print('FIM DO JOGO...');
}
