import { onRequest } from "firebase-functions/v2/https";

export const helloApi = onRequest((request, response) => {
  response.json({
    mensagem: "Olá, Firebase Functions!",
    timestamp: new Date().toISOString(),
  });
});
