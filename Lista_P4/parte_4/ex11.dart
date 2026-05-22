/*
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
*/
