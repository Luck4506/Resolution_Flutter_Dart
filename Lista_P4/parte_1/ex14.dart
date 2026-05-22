// 14. Na classe `Aluno`, crie um método chamado `estaAprovado` que retorne `true` caso a `notaFinal` seja maior ou igual a 6, e `false` caso contrário.

class Aluno {
  String nome;
  String matricula;
  double notaFinal;

  Aluno(this.nome, this.matricula, this.notaFinal);

  void exibirDados() {
    print('Dados do aluno');
    print('Nome: ${this.nome}');
    print('Matrícula: ${this.matricula}');
    print('Nota: ${this.notaFinal}');
  }

  bool estaAprovado() {
    if (this.notaFinal >= 6) {
      return true;
    } else {
      return false;
    }
  }
}

void main(List<String> args) {
  Aluno aluno1 = Aluno('Lucas', '25009467', 9.5);

  Aluno aluno2 = Aluno('Kaori', '345567889', 3.6);

  aluno1.exibirDados();
  aluno2.exibirDados();

  aluno1.estaAprovado() ? print('Aprovado') : print('Reprovado');

  aluno2.estaAprovado() ? print('Aprovado') : print('Reprovado');
}
