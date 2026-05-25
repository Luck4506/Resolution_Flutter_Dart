// 11. Crie uma função que receba uma lista de produtos representados por mapas e retorne apenas os produtos com preço maior que R$ 100,00.

List<String> encontarprodutosMaior100(
  List<Map<String, double>> ListamapCompras,
) {
  if (ListamapCompras.isEmpty) {
    throw ArgumentError('A lista precisa estar preechido');
  }

  List<String> listaProdutosmaior100 = [];

  for (var mapCompra in ListamapCompras) {
    for (var compra in mapCompra.entries) {
      if (compra.value > 100) {
        listaProdutosmaior100.add(compra.key);
      }
    }
  }

  return listaProdutosmaior100;
}

void main(List<String> args) {

  // Lista de maps conforme solicitado
  List<Map<String, double>> listaDeCompras = [
    {'Trufa': 150.00, 'Champanhe': 220.50, 'Pão': 3.20},
  ];

  !encontarprodutosMaior100(listaDeCompras).isEmpty
      ? print(
          'Os produtos com valor maior que 100 são: ${encontarprodutosMaior100(listaDeCompras)}',
        )
      : print('Não existe produto na lista com valor maior que 100');
}
