// 16. Crie uma classe chamada `ContaBancaria` com os atributos `titular` e `saldo`.
// Adicione os métodos `depositar`, `sacar` e `exibirSaldo`. O método `sacar`
//não deve permitir saque maior que o saldo disponível.

class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valorDepositado) {
    if (valorDepositado > 0) {
      this.saldo += valorDepositado;
    }
  }

  void sacar(double valorSacado) {
    if (valorSacado > 0 && valorSacado <= this.saldo) {
      this.saldo = this.saldo - valorSacado;
    }
  }

  void exibirSaldo() {
    print('Saldo atual: ${saldo}');
  }
}

void main(List<String> args) {
  ContaBancaria conta1 = ContaBancaria('Lucas', 18887684);
  conta1.depositar(43565);
  conta1.exibirSaldo();
  conta1.sacar(53467);
  conta1.exibirSaldo();
}
