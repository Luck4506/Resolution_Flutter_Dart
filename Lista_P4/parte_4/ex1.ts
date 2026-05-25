// 1. Crie uma Firebase Function do tipo `onRequest` chamada `helloApi`. A função deve responder uma requisição HTTP simples retornando um JSON com a mensagem `"Olá, Firebase Functions!"` e um campo `timestamp` com a data e hora da execução.

import { onRequest, onCall } from "firebase-functions/v2/https";

export const helloApi = onRequest((_request, response) => {
  response.status(200).json({
    mensagem: "Olá, Firebase Functions!",
    timestamp: new Date().toISOString(),
  });
});
