// 11. Crie uma função que receba uma lista de produtos representados por mapas e retorne apenas os produtos com preço maior que R$ 100,00.

List<String> encontarprodutosMaior100(Map<String, double> mapCompras) {
  if (mapCompras.isEmpty) {
    throw ArgumentError('O mapa precisa estar preechido');
  }

  List<String> listaProdutosmaior100 = [];

  for (var compra in mapCompras.entries) {
    if (compra.value > 100) {
      listaProdutosmaior100.add(compra.key);
    }
  }

  return listaProdutosmaior100;
}

void main(List<String> args) {
  Map<String, double> carrinhoDeCompras = {
    'Arroz': 12.50,
    'Feijão': 7.80,
    'Macarrão': 4.20,
    'Óleo': 6.30,
    'Açúcar': 5.10,
    'Azeite': 124.65,
    'Caviar': 100.45,
  };

  !encontarprodutosMaior100(carrinhoDeCompras).isEmpty
      ? print(
          'Os produtos com valor maior que 100 são: ${encontarprodutosMaior100(carrinhoDeCompras)}')
      : print('Não existe produto na lista com valor maior que 100');
}
