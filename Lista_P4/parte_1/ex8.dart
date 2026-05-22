// 8. Escreva um programa que receba uma lista de nomes e exiba somente
//os nomes que tenham mais de cinco letras.

void main(List<String> args) {
  List<String> nomes = ['Carlos', 'Ana', 'Bruno', 'Fernando', 'João', 'Maria'];

  for (var nome in nomes) {
    if (nome.length > 5) {
      print(nome);
    }
  }
}
