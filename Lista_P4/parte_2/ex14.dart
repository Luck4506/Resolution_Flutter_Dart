// 14. Escreva um programa que receba uma data no formato `dd/mm/aaaa` e exiba separadamente o dia, o mês e o ano.

void main(List<String> args) {
  String dataFormatada = '28/05/2006';

  print('Data formatada: ${dataFormatada}');

  //Separação com split

  List<String> dataSeparada = dataFormatada.split('/');

  print('Dia: ${dataSeparada[0]}');
  print('Mês: ${dataSeparada[1]}');
  print('Ano: ${dataSeparada[2]}');

  //Separação sem split

  print('Dia: ${dataFormatada[0]+ dataFormatada[1]}');
  print('Mês: ${dataFormatada[3]+ dataFormatada[4]}');
  print('Ano: ${dataFormatada[6]+ dataFormatada[7] + dataFormatada[8]+ dataFormatada[9]}');
  


}
