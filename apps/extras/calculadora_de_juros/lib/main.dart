import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaFormulario(), // Home significa a tela inicial do app
    );
  }
}

class TelaFormulario extends StatefulWidget {
  //Tela de formulário para o usuário preencher os dados
  const TelaFormulario({super.key});

  @override
  State<TelaFormulario> createState() => _TelaFormularioState();
}

class _TelaFormularioState extends State<TelaFormulario> {
  final _formKey = GlobalKey<FormState>();

  final _valorController = TextEditingController();
  final _tempoController = TextEditingController();
  String _resultado = '';

  String? _tipoTaxa;

  final _taxasMap = <String, double>{
    'IPCA': 4.42,
    'IGPM': 6.75,
    'SELIC': 14.33,
    'CDI': 14.15,
  };

  void _calcular() {
    if (!_formKey.currentState!.validate()) return;

    final valorInvestido = double.parse(
      _valorController.text.replaceAll(',', '.'),
    );
    final tempo = double.parse(_tempoController.text.replaceAll(',', '.'));

    final valorTotal =
        valorInvestido * pow((1 + _taxasMap[_tipoTaxa!]! / 100), (tempo/12));
    
    //Escreve o resultado do cálculo na tela, sem ser no ScaffoldMessenger, para isso você pode usar um setState para atualizar uma variável que armazena o resultado e exibir essa variável na tela.

    setState(() {
      _resultado = 'Valor Total: ${valorTotal.toStringAsFixed(2)}';
    });
    

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Taxa: ${_tipoTaxa!} | Valor da taxa: ${_taxasMap[_tipoTaxa]!} | Valor investido: $valorInvestido | Tempo: $tempo meses | Valor Total: ${valorTotal.toStringAsFixed(2)}',
        ),
      ),
    );

  }

  @override
  void dispose() {
    _valorController.dispose();
    _tempoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora de Velocidade')),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                value: _tipoTaxa,
                decoration: const InputDecoration(labelText: 'Tipo de Taxa'),
                items: _taxasMap
                    .map(
                      (tipo, taxa) => MapEntry(
                        tipo,
                        DropdownMenuItem(
                          value: tipo,
                          child: Text(tipo),
                        ), // O valor do DropdownMenuItem é o tipo, e o texto exibido é o tipo também
                      ),
                    ).values.toList(),
                onChanged: (value) => setState(() => _tipoTaxa = value),
                validator: (value) =>
                    value == null ? 'Selecione um tipo' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _valorController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Valor Investido'),
                validator: (value) => (value == null || value.trim().isEmpty)
                    ? 'Informe o valor investido'
                    : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _tempoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Tempo (meses)'),
                validator: (value) => (value == null || value.trim().isEmpty)
                    ? 'Informe o tempo'
                    : null,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _calcular,
                  child: const Text('Calcular'),
                ),
              ),
              const SizedBox(height: 16),
              if (_resultado.isNotEmpty)
                Text(
                  _resultado,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
