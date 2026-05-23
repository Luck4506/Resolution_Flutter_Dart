// 19. Crie uma classe chamada `Livro` com título, autor e ano de publicação. Depois, escreva uma função que receba uma lista de livros e retorne apenas os livros publicados depois de 2020.

class Livro {
  String titulo;
  String autor;
  int AnoDePublicacao;

  Livro(this.titulo, this.autor, this.AnoDePublicacao);

  @override
  String toString() {
    return 'Nome: $titulo | Autor: $autor | Ano de Publicação: $AnoDePublicacao';
  }
}

List<Livro> buscarLivrosDepois2020(List<Livro> listaCompletaLivros) {
  if (listaCompletaLivros.isEmpty) {
    throw ArgumentError('A lista precisa estar preencida');
  }

  List<Livro> livrosDepois2020 = [];

  for (var livro in listaCompletaLivros) {
    if (livro.AnoDePublicacao > 2020) {
      livrosDepois2020.add(livro);
    }
  }

  return livrosDepois2020;
}

void main(List<String> args) {
  List<Livro> listaDeLivros = [
    Livro('Clean Code', 'Robert C. Martin', 2008),
    Livro('Entendendo Algoritmos', 'Aditya Bhargava', 2016),
    Livro('Flutter na Prática', 'Lucas Silva', 2021),
    Livro('Dart Essencial', 'Ana Souza', 2022),
    Livro('Engenharia de Software Moderna', 'Marco Tulio Valente', 2020),
    Livro('Inteligência Artificial Aplicada', 'Mariana Costa', 2023),
  ];

  print('Livros depois de 2020');

  for (var livro in buscarLivrosDepois2020(listaDeLivros)) {
    print(livro);
  }
}
