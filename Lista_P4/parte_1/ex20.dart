// 20. Crie um pequeno sistema em Dart para gerenciar uma lista de alunos. O sistema deve permitir cadastrar alunos, listar todos os alunos e listar apenas os alunos aprovados. Use classe, lista, função e método no mesmo exercício.

import 'dart:io';

class Aluno {
  String nome;
  String RA;
  double nota1;
  double nota2;

  Aluno(this.nome, this.RA, this.nota1, this.nota2);

  void exibirAluno() {
    print('Dados do aluno');
    print('Nome: ${this.nome}');
    print('RA: ${this.RA}');
    print('Nota P1: ${this.nota1}');
    print('Nota P2: ${this.nota2}');
    print('Média: ${(this.nota1 + this.nota2) / 2}');
  }
}

class Sistema {
  List<Aluno> alunos = [];

  void cadastrarAlunos(String nome, String RA, double n1, double n2) {
    alunos.add(Aluno(nome, RA, n1, n2));
  }

  void listartodos() {
    if (alunos.isEmpty) {
      print('Nenhum aluno cadastrado.');
      return;
    }

    for (var aluno in this.alunos) {
      aluno.exibirAluno();
      print('');
    }
  }

  void listarAlunosAprovados() {
    bool encontrouAprovado = false;

    for (var aluno in alunos) {
      if ((aluno.nota1 + aluno.nota2) / 2 >= 6) {
        aluno.exibirAluno();
        print('');
        encontrouAprovado = true;
      }
    }

    if (!encontrouAprovado) {
      print('Nenhum aluno aprovado.');
    }
  }
}

String lerTexto(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync() ?? '';
}

double lerNota(String mensagem) {
  while (true) {
    String entrada = lerTexto(mensagem);
    double? nota = double.tryParse(entrada.replaceAll(',', '.'));

    if (nota != null) {
      return nota;
    }

    print('Nota inválida. Digite um número válido.');
  }
}

void main() {
  Sistema sistema = Sistema();
  int opcao = 0;

  while (opcao != 4) {
    print('\n=== Sistema de alunos ===');
    print('1 - Cadastrar aluno');
    print('2 - Listar todos os alunos');
    print('3 - Listar alunos aprovados');
    print('4 - Sair');

    opcao = int.tryParse(lerTexto('Escolha uma opção: ')) ?? 0;

    if (opcao == 1) {
      String nome = lerTexto('Nome: ');
      String ra = lerTexto('RA: ');
      double nota1 = lerNota('Nota P1: ');
      double nota2 = lerNota('Nota P2: ');

      sistema.cadastrarAlunos(nome, ra, nota1, nota2);
      print('Aluno cadastrado com sucesso!');
    } else if (opcao == 2) {
      print('\nTodos os alunos:');
      sistema.listartodos();
    } else if (opcao == 3) {
      print('\nAlunos aprovados:');
      sistema.listarAlunosAprovados();
    } else if (opcao == 4) {
      print('Encerrando o sistema.');
    } else {
      print('Opção inválida.');
    }
  }
}
