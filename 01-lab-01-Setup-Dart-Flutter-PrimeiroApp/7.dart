void main() {
  //Usando lista no Dart

  final Frutas = ['banana', 'maça', 'uva'];

  for (final frutas in Frutas) {
    print(frutas);
  }

  print('');
  //NÃO podemos reatribuir a lista, pois isso MUDARIA o endereço de alocação
  // da lista

  //frutas = ['melância'] NÃO FUNCIONA

  //Mas podemos modificar a lista, pois isso NÃO MUDARIA o endereço de alocação
  //Usar o final é bom para garantir que a lista não seja 
  //inteiramente modificada

  //Podemos adicionar um elemento da lista
  Frutas.add('melância');

  for (final frutas in Frutas) {
    print(frutas);
  }
  print('');

  //Podemos retirar um elemento da lista
  Frutas.remove('maça');

  for (final frutas in Frutas) {
    print(frutas);
  }
  print('');
}
