import { onRequest } from "firebase-functions/v2/https";

export const statusServidor = onRequest((request, response) => {
  response.json({
    ativo: true,
    metodo: request.method,
    horario: new Date().toISOString(),
  });
});
