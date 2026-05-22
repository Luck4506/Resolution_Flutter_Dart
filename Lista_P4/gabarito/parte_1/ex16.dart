class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque realizado.');
    } else {
      print('Saldo insuficiente.');
    }
  }

  void exibirSaldo() {
    print('Titular: $titular');
    print('Saldo: R\$ $saldo');
  }
}

void main() {
  ContaBancaria conta = ContaBancaria('Ana', 100.0);

  conta.depositar(50.0);
  conta.sacar(30.0);
  conta.exibirSaldo();
}
