class Pedido {
  int numero;
  String cliente;
  double valorTotal;

  Pedido(this.numero, this.cliente, this.valorTotal);
}

Pedido pedidoDeMaiorValor(List<Pedido> pedidos) {
  Pedido maiorPedido = pedidos[0];

  for (Pedido pedido in pedidos) {
    if (pedido.valorTotal > maiorPedido.valorTotal) {
      maiorPedido = pedido;
    }
  }

  return maiorPedido;
}

void main() {
  List<Pedido> pedidos = [
    Pedido(1, 'Ana', 120.0),
    Pedido(2, 'Bruno', 250.0),
    Pedido(3, 'Carla', 80.0),
  ];

  Pedido maior = pedidoDeMaiorValor(pedidos);

  print('Pedido de maior valor: ${maior.numero}');
  print('Cliente: ${maior.cliente}');
  print('Valor: R\$ ${maior.valorTotal}');
}
