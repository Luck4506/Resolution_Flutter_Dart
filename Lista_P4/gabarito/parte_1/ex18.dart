class Tarefa {
  String titulo;
  String descricao;
  bool concluida;

  Tarefa(this.titulo, this.descricao, this.concluida);
}

void exibirTarefasPendentes(List<Tarefa> tarefas) {
  for (Tarefa tarefa in tarefas) {
    if (!tarefa.concluida) {
      print(tarefa.titulo);
    }
  }
}

void main() {
  List<Tarefa> tarefas = [
    Tarefa('Estudar Dart', 'Funcoes e classes', false),
    Tarefa('Enviar trabalho', 'Enviar no Moodle', true),
    Tarefa('Revisar prova', 'Refazer exercicios', false),
  ];

  exibirTarefasPendentes(tarefas);
}
