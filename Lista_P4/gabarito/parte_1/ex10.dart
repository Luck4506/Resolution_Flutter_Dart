int contarAprovados(List<Map<String, dynamic>> alunos) {
  int quantidade = 0;

  for (Map<String, dynamic> aluno in alunos) {
    if (aluno['nota'] >= 6) {
      quantidade++;
    }
  }

  return quantidade;
}

void main() {
  List<Map<String, dynamic>> alunos = [
    {'nome': 'Ana', 'nota': 8.0},
    {'nome': 'Bruno', 'nota': 5.5},
    {'nome': 'Carla', 'nota': 6.0},
  ];

  print('Aprovados: ${contarAprovados(alunos)}');
}
