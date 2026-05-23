List<Map<String, dynamic>> produtosCaros(List<Map<String, dynamic>> produtos) {
  List<Map<String, dynamic>> resultado = [];

  for (Map<String, dynamic> produto in produtos) {
    if (produto['preco'] > 100) {
      resultado.add(produto);
    }
  }

  return resultado;
}

void main() {
  List<Map<String, dynamic>> produtos = [
    {'nome': 'Mouse', 'preco': 80.0},
    {'nome': 'Teclado', 'preco': 150.0},
    {'nome': 'Monitor', 'preco': 900.0},
  ];

  print(produtosCaros(produtos));
}
