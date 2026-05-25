# Parte 4 - Firebase Functions

Projeto local para executar os exercicios de Firebase Functions em TypeScript.

O arquivo `index.ts` define quais exercicios ficam disponiveis no emulador.
Inicialmente ele exporta a funcao `helloApi`, implementada em `ex1.ts`.

## Executar

```bash
npm install
npm run serve
```

Em outro terminal, teste a funcao HTTP:

```bash
curl http://127.0.0.1:5001/demo-lista-p4/us-central1/helloApi
```

Resposta esperada:

```json
{
  "mensagem": "Olá, Firebase Functions!",
  "timestamp": "2026-05-24T00:00:00.000Z"
}
```

O horario exibido em `timestamp` varia a cada chamada.
