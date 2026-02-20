void main() {
  //NULL Safaty

  String nome;
  nome = 'Lucas';
  print(nome);

  // A linguagem Dart tem um sistema de tipos que é seguro para null, ou seja,
  // por padrão, as variáveis não podem ser nulas. 

  // nome = null; // Isso não é permitido, pois 'nome' é do tipo String e 
  //não pode ser nulo.


  String? sobrenome;
  sobrenome = null; // Isso é permitido, pois 'sobrenome' é do tipo String? e pode ser nulo.
  print(sobrenome); 

  //Para permitir que uma variável possa ser nula, você pode usar o tipo
  // nullable, que é indicado pelo símbolo '?'.


}




