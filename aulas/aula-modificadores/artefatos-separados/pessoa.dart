class Pessoa {
  final String nome;
  final double altura;
  final double peso;
  double? _imc; 
  

  Pessoa(this.nome, this.altura, this.peso) {
    this._calcularIMC();
  }

  //Método de acesso: getter
  double? get imc => _imc;

  void _calcularIMC() {
    this._imc = this.peso / (this.altura * this.altura);
  }


}
