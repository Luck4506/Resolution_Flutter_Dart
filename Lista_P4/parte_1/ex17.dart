// 17. Crie uma classe chamada `Tarefa` com os atributos `titulo`, `descricao` e `concluida`. Adicione um método chamado `marcarComoConcluida`, que altere o valor de `concluida` para `true`.

class Tarefa {
  String titulo;
  String descricao;
  bool concluida;

  Tarefa(this.titulo, this.descricao, this.concluida);

  void marcarComoConcluida() {
    this.concluida = true;
  }
}

void main(List<String> args) {
  Tarefa tarefa1 = Tarefa('Estudar Mateus', 'Estudar muito', false);

  tarefa1.marcarComoConcluida();
}
