import 'dart:io';
import 'pessoa.dart';

void main() {
  stdout.write("Digite o nome: ");
  String nome = stdin.readLineSync()!;
  stdout.write("Digite a altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  stdout.write("Digite o peso: ");
  double peso = double.parse(stdin.readLineSync()!);

  Pessoa p1 = Pessoa(nome, altura, peso);
  print("O IMC de ${p1.nome} é ${p1.imc}");
  //Defini o get imc para acessar o valor do IMC, 
  //pois ele é privado, então não posso acessar diretamente p1._imc,
  // mas posso acessar p1.imc, que é um getter público que retorna o valor de _imc.
}
