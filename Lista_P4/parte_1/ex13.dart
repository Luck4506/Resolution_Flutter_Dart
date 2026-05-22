// 13. Crie uma classe chamada `Aluno` com os atributos `nome`, `matricula` e `notaFinal`. Depois, crie dois objetos dessa classe e exiba seus dados.

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
}

void main(List<String> args) {
  Aluno aluno1 = Aluno('Lucas', '25009467', 9.5);

  Aluno aluno2 = Aluno('Kaori', '345567889', 8.6);

  aluno1.exibirDados();
  aluno2.exibirDados();
}
