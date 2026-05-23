void main() {
  String data = '22/05/2026';
  List<String> partes = data.split('/');

  String dia = partes[0];
  String mes = partes[1];
  String ano = partes[2];

  print('Dia: $dia');
  print('Mes: $mes');
  print('Ano: $ano');
}
