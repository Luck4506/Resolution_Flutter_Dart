// 7. Escreva um programa que conte quantas vezes cada palavra aparece em uma lista de palavras. Use um `Map<String, int>` para armazenar o resultado.

void main(List<String> args) {
  List<String> listaPalavras = [
    'Pc',
    'paralelepipedo',
    'Pc',
    'Dart',
    'Flutter',
    'Dart',
    'Pc',
  ];

  Map<String, int> recorrenciaPalavras = {};

  for (var palavra in listaPalavras) {
    if (recorrenciaPalavras.containsKey(palavra)) {
      recorrenciaPalavras[palavra] = recorrenciaPalavras[palavra]! + 1;    
    }
   else {
      recorrenciaPalavras[palavra] = 1;
    }
  }

  print(recorrenciaPalavras);
}
