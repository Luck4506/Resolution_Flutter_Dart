enum StatusPedido { aberto, pago, enviado, entregue } 
// StatusPedido é um enum que representa os possíveis status de um pedido.
//enum é uma forma de definir um conjunto de valores constantes.

void exibirStatusPedido(StatusPedido status) {
  if (status == StatusPedido.aberto) {
    print('Pedido aberto - aguardando pagamento');
  } 
  else if (status == StatusPedido.pago) {
    print('Pedido pago - preparando envio');
  } 
  else if (status == StatusPedido.enviado) {
    print('Pedido enviado - em trânsito');
  } 
  else if (status == StatusPedido.entregue) {
    print('Pedido entregue - obrigado!');
  }
}

void main() {

  for (final status in StatusPedido.values) {
    exibirStatusPedido(status);
  }
}
