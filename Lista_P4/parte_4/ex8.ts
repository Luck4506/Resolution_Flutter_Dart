// 8. Crie uma Firebase Function do tipo `onCall` chamada `registrarFeedback`. A função deve receber `nome`, `email` e `mensagem`, validar se os campos obrigatórios foram preenchidos e salvar o feedback em uma coleção chamada `feedbacks` no Firestore.
import * as admin from "firebase-admin";
import { onRequest, onCall, HttpsError } from "firebase-functions/v2/https";

export const registarFeedback = onCall(async (request) => {
    const { nome, email, mensagem } = request.data;

    if (!nome || !email || !mensagem) {
        throw new HttpsError('invalid-argument', 'Todos os campos precisam ser preenchidos');
    }

    const doc = await admin.firestore().collection('feedbacks').add({
        nome,
        email,
        mensagem,
        criadoEm: admin.firestore.FieldValue.serverTimestamp()
    });

    return {
        id: doc.id,
        mensagem: 'Feedback registrado com sucesso!'
    }
})