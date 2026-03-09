//String interna
void main() {
  String a = 'oi';
  String b = 'oi';
  print(identical(a, b)); //true, pois o dart otimiza as strings literais, ou seja, ele armazena apenas uma cópia da string 'oi' na memória e tanto a quanto b referenciam essa mesma cópia. Portanto, a comparação de identidade (identical) retorna true.
}
