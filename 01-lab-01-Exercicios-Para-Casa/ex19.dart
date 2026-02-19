enum StatusPedido { aberto, pago, enviado, entregue }
//StatusPedido é uma classe que representa os diferentes status de um pedido

//enum é uma forma de definir um conjunto de valores constantes, nesse caso, os status de um pedido.

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
  exibirStatusPedido(StatusPedido.aberto);
  exibirStatusPedido(StatusPedido.pago);
  exibirStatusPedido(StatusPedido.enviado);
  exibirStatusPedido(StatusPedido.entregue);
}
