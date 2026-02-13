//- `nome`, `ra`, `curso`, `turma`

void main() {
  var aluno = <String, String>{
    'nome': 'Lucas',
    'ra': '25009467',
    'curso': 'Engenharia de Software',
    'turma': '0102',
  };

  print("""Dados do aluno:
  Nome: ${aluno["nome"]}
  RA: ${aluno['ra']}
  Curso: ${aluno['curso']}
  Turma: ${aluno['turma']}""");

  //Outra forma de fazer seria usando um laço de repetição for (NESSE CASO É 
  //USADO O NOME DA CHAVE, LOGO NÃO É POSSÍVEL ALTERAR)
  print("Dados do aluno:");
  for (final entry in aluno.entries) {
    print('${entry.key}: ${entry.value}');
  }
}
