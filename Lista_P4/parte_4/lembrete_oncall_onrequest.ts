/*
Estrutura basica de Firebase Functions HTTPS em TypeScript (2nd gen).

onRequest:
- funciona como uma rota HTTP comum;
- voce le parametros em request.query, request.body ou request.params;
- voce define status HTTP e resposta com response.status(...).json(...).

onCall:
- deve ser chamado pelo SDK do Firebase Functions no app;
- os dados enviados pelo app ficam em request.data;
- autenticacao, quando presente, fica em request.auth;
- erros esperados devem ser enviados com HttpsError.
*/

import { HttpsError, onCall, onRequest } from "firebase-functions/v2/https";

export const exemploOnRequest = onRequest((request, response) => {
  if (request.method !== "GET") {
    response.status(405).json({ erro: "Metodo nao permitido." });
    return;
  }

  const nome = String(request.query.nome ?? "mundo");

  response.status(200).json({
    mensagem: `Ola, ${nome}!`,
    timestamp: new Date().toISOString(),
  });
});

interface SomarDados {
  numeroA?: number;
  numeroB?: number;
}

export const exemploOnCall = onCall<SomarDados>((request) => {
  const { numeroA, numeroB } = request.data;

  if (typeof numeroA !== "number" || typeof numeroB !== "number") {
    throw new HttpsError(
      "invalid-argument",
      "Informe numeroA e numeroB como numeros.",
    );
  }

  return { resultado: numeroA + numeroB };
});
