// 19. Crie uma classe chamada `Pedido` com os atributos `numero`, `cliente` e `valorTotal`. Depois, crie uma função que receba uma lista de pedidos e retorne o pedido de maior valor.

class Pedido {
  String numero;
  String cliente;
  double valorTotal;

  Pedido(this.numero, this.cliente, this.valorTotal);
}

Pedido maiorPedido(List<Pedido> pedidos) {
  Pedido maiorPedido = Pedido('', '', double.negativeInfinity);
  for (var pedido in pedidos) {
    if (pedido.valorTotal > maiorPedido.valorTotal) {
      maiorPedido = pedido;
    }
  }
  return maiorPedido;
}

void main(List<String> args) {
  List<Pedido> listaPedidos = [
    Pedido('0001', 'Lucas', 1992.4),
    Pedido('224', 'Lucas', 5467),
  ];

  maiorPedido(listaPedidos);

  print('O pedido de maior valor é: ${maiorPedido(listaPedidos).numero} com valor total de ${maiorPedido(listaPedidos).valorTotal}');

}
