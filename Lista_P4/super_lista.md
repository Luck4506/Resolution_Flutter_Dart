# Super lista de exercícios finais para a Prova 4

**Autor:** Mateus Dias  
**Instituição:** Pontifícia Universidade Católica de Campinas (PUC-Campinas)  
**Centro:** Escola Politécnica  
**Curso:** Engenharia de Software  
**Disciplina:** Tecnologia e Programação para Dispositivos Móveis (TPDM)  
**Código da disciplina:** 21813  
**Professor:** Prof. Me. Mateus Dias  
**Ano/Semestre:** 2026  
**Material:** Lista de exercícios de revisão final para a Prova 4

> **Aviso inicial:** esta lista está dividida em três grandes blocos de estudo: exercícios de lógica de programação com Dart e objetos, exercícios envolvendo Firebase Functions e Firestore, e exercícios de desenvolvimento de interfaces e aplicações com Flutter.

---

## Parte 1: Exercícios de lógica e orientação a objetos inicial com Dart

1. Crie um programa em Dart que declare três variáveis: o nome de um aluno, sua idade e sua nota final. Em seguida, exiba uma mensagem formatada apresentando esses dados.

2. Escreva um programa que receba duas notas de um aluno, calcule a média aritmética e exiba se o aluno foi aprovado, em recuperação ou reprovado. Considere aprovado quem tiver média maior ou igual a 6, recuperação entre 4 e 5.9, e reprovado abaixo de 4.

3. Crie uma função chamada `ehPar` que receba um número inteiro e retorne `true` caso ele seja par ou `false` caso seja ímpar. Teste a função com pelo menos cinco valores diferentes.

4. Escreva uma função chamada `maiorNumero` que receba três números inteiros e retorne o maior deles.

5. Crie um programa que percorra uma lista de números inteiros e exiba apenas os números positivos.

6. Crie uma função chamada `somarLista` que receba uma lista de números inteiros e retorne a soma de todos os elementos.

7. Crie uma função chamada `calcularMedia` que receba uma lista de números decimais e retorne a média dos valores. Caso a lista esteja vazia, a função deve retornar `0`.

8. Escreva um programa que receba uma lista de nomes e exiba somente os nomes que tenham mais de cinco letras.

9. Crie um mapa (`Map`) que represente um aluno, contendo nome, matrícula, curso e nota final. Depois, exiba cada informação em uma linha.

10. Crie uma função chamada `contarAprovados` que receba uma lista de mapas representando alunos. Cada aluno deve ter nome e nota. A função deve retornar quantos alunos possuem nota maior ou igual a 6.

11. Escreva um programa que receba uma lista de preços e aplique 10% de desconto em todos os valores. Ao final, exiba a nova lista de preços.

12. Crie uma função chamada `buscarNome` que receba uma lista de nomes e um nome buscado. A função deve retornar `true` caso o nome exista na lista e `false` caso contrário.

13. Crie uma classe chamada `Aluno` com os atributos `nome`, `matricula` e `notaFinal`. Depois, crie dois objetos dessa classe e exiba seus dados.

14. Na classe `Aluno`, crie um método chamado `estaAprovado` que retorne `true` caso a `notaFinal` seja maior ou igual a 6, e `false` caso contrário.

15. Crie uma classe chamada `Produto` com os atributos `nome`, `preco` e `quantidadeEmEstoque`. Adicione um método chamado `valorTotalEmEstoque`, que retorne o valor total daquele produto no estoque.

16. Crie uma classe chamada `ContaBancaria` com os atributos `titular` e `saldo`. Adicione os métodos `depositar`, `sacar` e `exibirSaldo`. O método `sacar` não deve permitir saque maior que o saldo disponível.

17. Crie uma classe chamada `Tarefa` com os atributos `titulo`, `descricao` e `concluida`. Adicione um método chamado `marcarComoConcluida`, que altere o valor de `concluida` para `true`.

18. Crie uma lista de objetos da classe `Tarefa` e escreva uma função que exiba apenas as tarefas ainda não concluídas.

19. Crie uma classe chamada `Pedido` com os atributos `numero`, `cliente` e `valorTotal`. Depois, crie uma função que receba uma lista de pedidos e retorne o pedido de maior valor.

20. Crie um pequeno sistema em Dart para gerenciar uma lista de alunos. O sistema deve permitir cadastrar alunos, listar todos os alunos e listar apenas os alunos aprovados. Use classe, lista, função e método no mesmo exercício.

## Parte 2: Pequenos desafios em Dart

1. Crie um programa que receba uma palavra e informe se ela é um palíndromo. Uma palavra é palíndromo quando pode ser lida da mesma forma da esquerda para a direita e da direita para a esquerda.

2. Escreva uma função que receba uma frase e retorne a quantidade de vogais existentes nela.

3. Crie uma função que receba uma lista de números inteiros e retorne uma nova lista contendo apenas os números pares.

4. Crie uma função que receba uma lista de números inteiros e retorne o segundo maior número da lista.

5. Escreva um programa que receba uma lista de nomes e retorne uma nova lista ordenada em ordem alfabética.

6. Crie uma função que receba uma lista de palavras e retorne a maior palavra encontrada.

7. Escreva um programa que conte quantas vezes cada palavra aparece em uma lista de palavras. Use um `Map<String, int>` para armazenar o resultado.

8. Crie uma função que receba uma lista de números e retorne `true` caso todos os números sejam positivos.

9. Crie uma função que receba duas listas de números (mesma quantidade) e retorne uma lista que represente a diferença entre os números. Se as listas passadas não tiverem a mesma quantidade de números, lançar uma exceção ArgumentException. 

10. Escreva um programa que simule um carrinho de compras. Cada produto deve ter nome e preço. Ao final, exiba o valor total da compra.

11. Crie uma função que receba uma lista de produtos representados por mapas e retorne apenas os produtos com preço maior que R$ 100,00.

12. Escreva um programa que receba uma lista de notas e remova todas as notas inválidas. Considere inválidas as notas menores que 0 ou maiores que 10.

13. Crie uma função que receba uma lista de números inteiros e retorne uma nova lista sem valores repetidos.

14. Escreva um programa que receba uma data no formato `dd/mm/aaaa` e exiba separadamente o dia, o mês e o ano.

15. Crie uma função que receba um número inteiro e retorne o seu fatorial.

16. Crie uma função que receba um número inteiro `n` e retorne uma lista com os `n` primeiros números da sequência de Fibonacci.

17. Escreva um programa que simule uma fila de atendimento. O programa deve permitir adicionar pessoas à fila, atender a primeira pessoa e exibir a fila atual.

18. Crie uma classe chamada `Contato` com nome, telefone e email. Depois, crie uma função que busque um contato pelo nome em uma lista de contatos.

19. Crie uma classe chamada `Livro` com título, autor e ano de publicação. Depois, escreva uma função que receba uma lista de livros e retorne apenas os livros publicados depois de 2020.

20. Crie um desafio integrador: implemente uma agenda simples em Dart usando classes, listas e funções. A agenda deve permitir cadastrar contatos, listar contatos, buscar por nome e remover um contato. Sem banco de dados, tudo em memória. 

## Parte 3: Desafios especiais com Dart

1. Crie uma função chamada `calcularMMC` que receba dois números inteiros representando denominadores de frações e retorne o menor múltiplo comum entre eles. Essa função será útil em situações nas quais precisamos somar ou comparar frações com denominadores diferentes.

   A função deve:

   - receber dois parâmetros inteiros;
   - não aceitar denominadores iguais a zero;
   - funcionar corretamente mesmo quando os valores recebidos forem negativos;
   - retornar sempre um número inteiro positivo;
   - usar uma estratégia baseada no cálculo do MDC ou outra abordagem matematicamente correta.

   Exemplos esperados:

   ```dart
   calcularMMC(2, 3);   // retorna 6
   calcularMMC(4, 6);   // retorna 12
   calcularMMC(8, 12);  // retorna 24
   calcularMMC(-5, 10); // retorna 10
   ```

2. Crie uma classe chamada `Fracao` com os atributos `numerador` e `denominador`. A classe deve representar uma fração matemática e permitir a soma entre duas frações usando o MMC dos denominadores.

   > **Atenção às regras de soma de frações:** quando os denominadores são iguais, conserva-se o denominador e somam-se apenas os numeradores. Quando os denominadores são diferentes, é necessário encontrar um denominador comum, normalmente usando o MMC, antes de somar as frações.

   A classe deve:

   - possuir um construtor que receba `numerador` e `denominador`;
   - não permitir que o denominador seja zero;
   - ter um método chamado `somar` que receba outra `Fracao` como parâmetro;
   - usar o MMC dos denominadores para calcular a soma corretamente;
   - retornar uma nova `Fracao` como resultado da soma;
   - ter um método para exibir a fração no formato `numerador/denominador`.

   Exemplo esperado:

   ```dart
   final f1 = Fracao(1, 2);
   final f2 = Fracao(1, 3);

   final resultado = f1.somar(f2);

   print(resultado); // 5/6
   ```

3. Crie uma função chamada `calcularSimilaridadeCosseno` que receba dois vetores numéricos representados por listas de `double` e retorne a similaridade entre eles usando a fórmula da similaridade do cosseno.

   Esse tipo de cálculo é muito usado em aplicações modernas de Inteligência Artificial, especialmente em sistemas de recomendação, busca semântica, comparação de textos por embeddings e recuperação de informações. A ideia é comparar a direção de dois vetores, e não apenas a distância direta entre eles.

   A fórmula da similaridade do cosseno é:

   ```text
   similaridade = produtoEscalar(vetorA, vetorB) / (modulo(vetorA) * modulo(vetorB))
   ```

   A função deve:

   - receber duas listas de `double`;
   - verificar se as duas listas possuem o mesmo tamanho;
   - lançar uma exceção caso os vetores tenham tamanhos diferentes;
   - calcular o produto escalar entre os dois vetores;
   - calcular o módulo de cada vetor;
   - retornar um valor `double` representando a similaridade;
   - tratar o caso em que algum vetor tenha módulo igual a zero.

   Exemplo esperado:

   ```dart
   final textoA = [1.0, 2.0, 3.0];
   final textoB = [2.0, 4.0, 6.0];

   final similaridade = calcularSimilaridadeCosseno(textoA, textoB);

   print(similaridade); // valor próximo de 1.0
   ```

   Depois, explique em um comentário no código por que valores próximos de `1.0` indicam vetores muito parecidos, valores próximos de `0.0` indicam pouca relação e valores negativos indicam direções opostas.

4. Crie uma função chamada `calcularErroMedioQuadratico` que receba duas listas de `double`: uma lista com valores reais e outra lista com valores previstos por um modelo. A função deve calcular o Erro Médio Quadrático, também conhecido como MSE (*Mean Squared Error*).

   Esse cálculo é muito usado em Inteligência Artificial e Aprendizado de Máquina para medir o quanto as previsões de um modelo estão distantes dos valores corretos. Quanto menor o erro médio quadrático, melhor tende a ser o desempenho do modelo naquele conjunto de dados.

   A fórmula do erro médio quadrático é:

   ```text
   MSE = soma((valorReal - valorPrevisto)^2) / quantidadeDeValores
   ```

   A função deve:

   - receber duas listas de `double`;
   - verificar se as duas listas possuem o mesmo tamanho;
   - lançar uma exceção caso as listas tenham tamanhos diferentes;
   - lançar uma exceção caso as listas estejam vazias;
   - calcular a diferença entre cada valor real e seu respectivo valor previsto;
   - elevar cada diferença ao quadrado;
   - retornar a média desses erros quadráticos.

   Exemplo esperado:

   ```dart
   final valoresReais = [10.0, 20.0, 30.0];
   final valoresPrevistos = [12.0, 18.0, 33.0];

   final mse = calcularErroMedioQuadratico(valoresReais, valoresPrevistos);

   print(mse); // 5.666...
   ```

   Depois, explique em um comentário no código por que elevar o erro ao quadrado evita que erros positivos e negativos se anulem.

## Parte 4: Firebase Functions e Firestore

1. Crie uma Firebase Function do tipo `onRequest` chamada `helloApi`. A função deve responder uma requisição HTTP simples retornando um JSON com a mensagem `"Olá, Firebase Functions!"` e um campo `timestamp` com a data e hora da execução.

2. Crie uma Firebase Function do tipo `onCall` chamada `somarNumeros`. A função deve receber dois números enviados pelo app Flutter, validar se os dois valores foram informados e retornar a soma entre eles.

3. Crie uma Firebase Function do tipo `onRequest` chamada `calcularFrete`. A função deve receber, via query string, os parâmetros `distanciaKm` e `pesoKg`. Com base nesses valores, calcule um valor simples de frete e retorne o resultado em JSON.

4. Crie uma Firebase Function do tipo `onCall` chamada `validarCupom`. A função deve receber um código de cupom e retornar se ele é válido ou inválido. Considere pelo menos três cupons válidos fixos no código, por exemplo `TPDM10`, `FLUTTER15` e `PUC20`.

5. Crie uma Firebase Function do tipo `onRequest` chamada `statusServidor`. A função deve retornar um JSON informando que o servidor está ativo, qual método HTTP foi usado na requisição e qual foi o horário da chamada.

6. Crie uma Firebase Function do tipo `onCall` chamada `calcularMediaAluno`. A função deve receber uma lista de notas, validar se a lista não está vazia e retornar a média do aluno junto com a situação: aprovado, recuperação ou reprovado.

7. Crie uma Firebase Function do tipo `onRequest` chamada `converterTemperatura`. A função deve receber uma temperatura em Celsius pela query string e retornar a conversão para Fahrenheit e Kelvin.

8. Crie uma Firebase Function do tipo `onCall` chamada `registrarFeedback`. A função deve receber `nome`, `email` e `mensagem`, validar se os campos obrigatórios foram preenchidos e salvar o feedback em uma coleção chamada `feedbacks` no Firestore.

9. Crie uma Firebase Function do tipo `onRequest` chamada `listarProdutosPublicos`. A função deve consultar a coleção `produtos` no Firestore e retornar apenas os produtos marcados com `ativo: true`.

10. Crie uma Firebase Function do tipo `onCall` chamada `criarPedido`. A função deve receber os dados de um pedido enviado pelo app Flutter, validar se o usuário está autenticado, calcular o valor total com base nos itens recebidos e salvar o pedido em uma coleção chamada `pedidos` no Firestore.

11. Converta todos os exercícios anteriores desta parte para TypeScript usando Firebase Functions. O objetivo é praticar a criação de funções `onRequest` e `onCall` em um projeto real de Cloud Functions.

    A solução deve:

    - usar TypeScript;
    - organizar as funções no arquivo `functions/src/index.ts` ou em arquivos separados importados pelo `index.ts`;
    - tipar os dados recebidos sempre que possível;
    - validar entradas obrigatórias;
    - retornar respostas claras para sucesso e erro;
    - usar `HttpsError` nas funções `onCall` quando houver erro de validação, permissão ou autenticação;
    - usar códigos HTTP adequados nas funções `onRequest`;
    - acessar o Firestore com o Firebase Admin SDK quando necessário;
    - exportar todas as funções para que possam ser executadas localmente no emulator ou publicadas no Firebase.

    Ao final, escreva um pequeno comentário explicando a diferença prática entre uma função `onRequest` e uma função `onCall`.