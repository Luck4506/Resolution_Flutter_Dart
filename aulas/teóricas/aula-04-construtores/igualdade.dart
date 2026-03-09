class Pessoa {
  String nome;
  Pessoa(this.nome);
}

void main() {
  String a = 'Oi';
  String b = 'Oi';

  if (a == b) {
    print('Mesma instância');
  } else {
    print('Não é mesma instância');
  }
  //String interning: o Dart otimiza a memória para strings literais,
  // então 'Oi' é armazenado apenas uma vez.

  // bool c = true;
  // bool d = true;
  //nesse caso, o Dart otimiza a memória para booleanos literais, então true é armazenado apenas uma vez.

  Pessoa p1 = Pessoa('Lucas');
  Pessoa p2 = Pessoa('Lucas');
  // os conteúdos são os mesmos.

  if (p1 == p2) {
    print('Mesmas instancias');
  } else {
    print('O conteúdo pode ser igual, mas não são as mesmas instancias');
  }

  if(p1.nome == p2.nome) {
    print('O conteúdo é igual');
  } else {
    print('O conteúdo é diferente');
  }

  print(identical(p1, p2));
  //Identical é uma função que verifica se duas variáveis apontam para a mesma instância na memória.
}
