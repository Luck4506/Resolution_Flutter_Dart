class Tarefa {
  String titulo;
  String descricao;
  bool concluida;

  Tarefa(this.titulo, this.descricao, this.concluida);

  void marcarComoConcluida() {
    concluida = true;
  }
}

void main() {
  Tarefa tarefa = Tarefa('Estudar Dart', 'Revisar classes', false);

  tarefa.marcarComoConcluida();

  print('Tarefa concluida? ${tarefa.concluida}');
}
