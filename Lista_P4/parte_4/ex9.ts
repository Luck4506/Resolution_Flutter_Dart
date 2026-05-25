// 9. Crie uma Firebase Function do tipo `onRequest` chamada `listarProdutosPublicos`. A função deve consultar a coleção `produtos` no Firestore e retornar apenas os produtos marcados com `ativo: true`.

import * as admin from "firebase-admin";
import { onRequest, onCall, HttpsError } from "firebase-functions/v2/https";

export const listarProdutosPublicos = onRequest(async (req, res) => {
    try {
        const snapshot = await admin.firestore().collection('produtos').where('ativo', '==', true).get();

        const produtosAtivos = snapshot.docs.map(doc => ({ id: doc.id, ...doc.data() }));

        res.status(200).json(produtosAtivos);
    } catch (error) {
        console.error("Erro ao listar produtos públicos:", error);
        res.status(500).json({ error: "Erro ao listar produtos públicos" });
    }
}) 