// 2. Escreva um programa que receba duas notas de um aluno, calcule a média aritmética e exiba se o aluno foi aprovado, em recuperação ou reprovado. Considere aprovado quem tiver média maior ou igual a 6, recuperação entre 4 e 5.9, e reprovado abaixo de 4.

void avaliarAluno(int n1, int n2) {
  double media = (n1 + n2)/2;

  if (media < 4) {
    print('O aluno está reprovado- média: ${media}');
  } else if (media <= 5.9) {
    print('O aluno está de recuperação- média: ${media}');
  } else {
    print('O aluno está aprovado - média: ${media}');
  }
}

void main(List<String> args) {
  int n1 = 9;
  int n2 = 8;

  avaliarAluno(n1, n2);
}
