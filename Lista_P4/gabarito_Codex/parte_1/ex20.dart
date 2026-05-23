class Aluno {
  String nome;
  double notaFinal;

  Aluno(this.nome, this.notaFinal);

  bool estaAprovado() {
    return notaFinal >= 6;
  }
}

void cadastrarAluno(List<Aluno> alunos, String nome, double notaFinal) {
  alunos.add(Aluno(nome, notaFinal));
}

void listarAlunos(List<Aluno> alunos) {
  for (Aluno aluno in alunos) {
    print('${aluno.nome} - Nota: ${aluno.notaFinal}');
  }
}

void listarAprovados(List<Aluno> alunos) {
  for (Aluno aluno in alunos) {
    if (aluno.estaAprovado()) {
      print('${aluno.nome} - Nota: ${aluno.notaFinal}');
    }
  }
}

void main() {
  List<Aluno> alunos = [];

  cadastrarAluno(alunos, 'Ana', 8.0);
  cadastrarAluno(alunos, 'Bruno', 5.0);
  cadastrarAluno(alunos, 'Carla', 6.5);

  print('Todos os alunos:');
  listarAlunos(alunos);

  print('Alunos aprovados:');
  listarAprovados(alunos);
}
