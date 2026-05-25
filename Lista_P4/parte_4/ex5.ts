// 5. Crie uma Firebase Function do tipo `onRequest` chamada `statusServidor`. A função deve retornar um JSON informando que o servidor está ativo, qual método HTTP foi usado na requisição e qual foi o horário da chamada.

import { onRequest, onCall, HttpsError } from "firebase-functions/v2/https";

export const statusServidor = onRequest((req, res) =>{

    const metodo = req.method;
    const horario = new Date().toISOString();

    res.status(200).json({ message: 'O servidor está ativo, pelo método ${metodo} e horário da chamada: ${horario}' });
});