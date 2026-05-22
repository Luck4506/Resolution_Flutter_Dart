// 9. Crie um mapa (`Map`) que represente um aluno, contendo nome, matrícula, curso e nota final. Depois, exiba cada informação em uma linha.

void main(List<String> args) {
  Map<String, String> aluno = {
    'nome': 'Lucas',
    'curso': 'Engenharia de Software',
    'nota_final': '9.5',
  };

  print('Nome: ${aluno['nome']}');
  print('Curso: ${aluno['curso']}');
  print('Nota Final: ${aluno['nota_final']}');
}
