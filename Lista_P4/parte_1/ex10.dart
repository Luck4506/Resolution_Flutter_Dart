// 10. Crie uma função chamada `contarAprovados` que receba uma lista de mapas representando alunos. Cada aluno deve ter nome e nota. A função deve retornar quantos alunos possuem nota maior ou igual a 6.

int contarAprovados(List<Map<String, String>> alunosENotas) {
  if (alunosENotas.length < 1) {
    return 0;
  }
  int aprovados = 0;
  for (var aluno in alunosENotas) {
    if (aluno['nota'] != null && double.parse(aluno['nota']!) >= 6) {
      aprovados++;
    }
  }
  return aprovados;
}

void main() {
  final alunos = [
    {'nome': 'João', 'nota': '7.5'},
    {'nome': 'Maria', 'nota': '9.0'},
    {'nome': 'Pedro', 'nota': '5.0'},
    {'nome': 'Ana', 'nota': '6.0'},
    {'nome': 'Carlos', 'nota': '4.5'},
  ];

  final resultado = contarAprovados(alunos);
  print('Alunos aprovados: $resultado');
}
