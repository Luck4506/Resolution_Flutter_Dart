void adicionarPessoa(List<String> fila, String nome) {
  fila.add(nome);
}

void atenderPessoa(List<String> fila) {
  if (fila.isEmpty) {
    print('A fila esta vazia.');
  } else {
    String pessoa = fila.removeAt(0);
    print('Atendendo: $pessoa');
  }
}

void exibirFila(List<String> fila) {
  print('Fila atual: $fila');
}

void main() {
  List<String> fila = [];

  adicionarPessoa(fila, 'Ana');
  adicionarPessoa(fila, 'Bruno');
  adicionarPessoa(fila, 'Carla');

  exibirFila(fila);
  atenderPessoa(fila);
  exibirFila(fila);
}
