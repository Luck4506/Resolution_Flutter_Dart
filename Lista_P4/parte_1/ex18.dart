// 18. Crie uma lista de objetos da classe `Tarefa` e escreva uma função que exiba apenas as tarefas ainda não concluídas.

class Tarefa {
  String titulo;
  String descricao;
  bool concluida;

  Tarefa(this.titulo, this.descricao, this.concluida);

  void marcarComoConcluida() {
    this.concluida = true;
  }

  void exibirTarefaNaoConcluida() {
    if (!this.concluida) {
      print('Tarefa: ${titulo}');
      print('Descrição: ${descricao}');
      print('');
    }
  }
}

void main(List<String> args) {
  List<Tarefa> tarefas = [
    Tarefa('Estudar Dart', 'Revisar classes e listas', false),
    Tarefa('Enviar atividade', 'Mandar os exercícios finalizados', true),
    Tarefa('Praticar Flutter', 'Criar uma tela simples', false),
  ];

  print('Tarefas ainda não concluídas:\n');

  for (Tarefa tarefa in tarefas) {
    tarefa.exibirTarefaNaoConcluida();
  }
}
