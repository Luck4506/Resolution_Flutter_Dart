// Importa o pacote de testes do Dart.
// É ele que fornece funções como test(), expect() e group().
import 'package:test/test.dart';

// Importa a classe que queremos testar.
import 'package:tarefa_aula_16_03/calculadora.dart';

void main() {
  // O group() serve para organizar testes relacionados.
  group('Testes da classe Calculadora', () {
    // Criamos um objeto que será usado nos testes.
    final calculadora = Calculadora();

    test('somar deve retornar 5 ao somar 2 + 3', () {
      // Executa a função.
      final resultado = calculadora.somar(2, 3);

      // Verifica se o resultado foi o esperado.
      expect(resultado, equals(5));
    });

    test('subtrair deve retornar 3 ao subtrair 5 - 2', () {
      final resultado = calculadora.subtrair(5, 2);
      expect(resultado, equals(3));
    });

    test('dividir deve retornar 2 ao dividir 10 por 5', () {
      final resultado = calculadora.dividir(10, 5);
      expect(resultado, equals(2));
    });

    test('dividir deve lançar erro quando o divisor for zero', () {
      // O expect também pode testar exceções.
      expect(
        () => calculadora.dividir(10, 0),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
