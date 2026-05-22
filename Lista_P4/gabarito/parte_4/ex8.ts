import * as admin from "firebase-admin";
import { HttpsError, onCall } from "firebase-functions/v2/https";

admin.initializeApp();

type DadosFeedback = {
  nome?: string;
  email?: string;
  mensagem?: string;
};

export const registrarFeedback = onCall<DadosFeedback>(async (request) => {
  const { nome, email, mensagem } = request.data;

  if (!nome || !email || !mensagem) {
    throw new HttpsError("invalid-argument", "Preencha nome, email e mensagem.");
  }

  const doc = await admin.firestore().collection("feedbacks").add({
    nome,
    email,
    mensagem,
    criadoEm: admin.firestore.FieldValue.serverTimestamp(),
  });

  return {
    id: doc.id,
    mensagem: "Feedback registrado com sucesso.",
  };
});
