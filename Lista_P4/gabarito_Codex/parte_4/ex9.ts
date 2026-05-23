import * as admin from "firebase-admin";
import { onRequest } from "firebase-functions/v2/https";

admin.initializeApp();

export const listarProdutosPublicos = onRequest(async (request, response) => {
  const snapshot = await admin
    .firestore()
    .collection("produtos")
    .where("ativo", "==", true)
    .get();

  const produtos = snapshot.docs.map((doc) => ({
    id: doc.id,
    ...doc.data(),
  }));

  response.json({
    produtos,
  });
});
