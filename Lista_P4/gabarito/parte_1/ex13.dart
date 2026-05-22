class Aluno {
  String nome;
  String matricula;
  double notaFinal;

  Aluno(this.nome, this.matricula, this.notaFinal);

  void exibirDados() {
    print('Nome: $nome');
    print('Matricula: $matricula');
    print('Nota final: $notaFinal');
  }
}

void main() {
  Aluno aluno1 = Aluno('Ana', '001', 8.0);
  Aluno aluno2 = Aluno('Bruno', '002', 5.5);

  aluno1.exibirDados();
  aluno2.exibirDados();
}
