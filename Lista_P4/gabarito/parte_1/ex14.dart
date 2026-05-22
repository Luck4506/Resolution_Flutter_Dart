class Aluno {
  String nome;
  String matricula;
  double notaFinal;

  Aluno(this.nome, this.matricula, this.notaFinal);

  bool estaAprovado() {
    return notaFinal >= 6;
  }
}

void main() {
  Aluno aluno = Aluno('Ana', '001', 7.0);

  print(aluno.estaAprovado());
}
