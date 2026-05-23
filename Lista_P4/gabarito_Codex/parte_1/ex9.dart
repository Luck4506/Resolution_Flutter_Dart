void main() {
  Map<String, dynamic> aluno = {
    'nome': 'Lucas',
    'matricula': '12345',
    'curso': 'Engenharia de Software',
    'notaFinal': 8.7,
  };

  print('Nome: ${aluno['nome']}');
  print('Matricula: ${aluno['matricula']}');
  print('Curso: ${aluno['curso']}');
  print('Nota final: ${aluno['notaFinal']}');
}
