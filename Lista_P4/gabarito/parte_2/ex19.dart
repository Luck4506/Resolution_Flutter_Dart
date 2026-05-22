class Livro {
  String titulo;
  String autor;
  int anoPublicacao;

  Livro(this.titulo, this.autor, this.anoPublicacao);
}

List<Livro> livrosDepoisDe2020(List<Livro> livros) {
  List<Livro> resultado = [];

  for (Livro livro in livros) {
    if (livro.anoPublicacao > 2020) {
      resultado.add(livro);
    }
  }

  return resultado;
}

void main() {
  List<Livro> livros = [
    Livro('Livro A', 'Autor A', 2019),
    Livro('Livro B', 'Autor B', 2021),
    Livro('Livro C', 'Autor C', 2023),
  ];

  List<Livro> recentes = livrosDepoisDe2020(livros);

  for (Livro livro in recentes) {
    print('${livro.titulo} - ${livro.anoPublicacao}');
  }
}
