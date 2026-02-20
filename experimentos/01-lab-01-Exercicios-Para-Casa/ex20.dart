Future<String> buscarDados() async {
  await Future.delayed(Duration(seconds: 1));
  return "OK";
}

void main() async {
  var resultado = await buscarDados();
  print(resultado);
}
