// 1. Crie um programa em Dart que declare três variáveis: o nome de um aluno, sua idade e sua nota final. Em seguida, exiba uma mensagem formatada apresentando esses dados.

void mensagem_formatada(String nome, int idade, double nota) {
  if (nota < 0) {
    print('Nota inválida');
  } 
  else {

    String status = '';

    nota >= 6 ? status = 'Aprovado' : 'Reprovado';

    print('Aluno: ${nome}');
    print('Idade: ${idade}');
    print('Nota final do semestre - ${nome}');
    print('Status nessa disciplina: ${status}');
  }
}

void main(List<String> args) {
  String nome = 'Lucas';
  int idade = 19;
  double nota = 8.5;

  mensagem_formatada(nome, idade, nota);
}
