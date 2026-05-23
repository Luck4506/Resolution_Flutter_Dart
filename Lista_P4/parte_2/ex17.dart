// 17. Escreva um programa que simule uma fila de atendimento. O programa deve permitir adicionar pessoas à fila, atender a primeira pessoa e exibir a fila atual.

class Fila {
  late List<String> atendimentos;

  Fila() {
    atendimentos = [];
  }

  bool filaVazia() {
    if (this.atendimentos.isEmpty) {
      return true;
    }
    return false;
  }

  void adicionarNafila(String pessoa) {
    this.atendimentos.add(pessoa);
  }

  void atenderPessoaDaFila() {
    if (!filaVazia()) {
      print('${this.atendimentos[0]} foi atendido');
      atendimentos.removeAt(0);
    } else {
      print('Fila vazia, não há ninguém para atender');
    }
  }

  void exibirFila() {
    if (!filaVazia()) {
      print(this.atendimentos);
    } else {
      print('Fila vazia!');
    }
  }
}

void main(List<String> args) {
  Fila fila1 = Fila();

  fila1.adicionarNafila('Lucas');
  fila1.adicionarNafila('Sofia');
  fila1.adicionarNafila('Henrique');

  fila1.exibirFila();

  fila1.atenderPessoaDaFila();

  fila1.exibirFila();

  fila1.adicionarNafila('Kaori');
  fila1.adicionarNafila('Davi');

  fila1.exibirFila();

  fila1.atenderPessoaDaFila();
  fila1.atenderPessoaDaFila();
  fila1.atenderPessoaDaFila();
  fila1.atenderPessoaDaFila();
  fila1.atenderPessoaDaFila();

}
