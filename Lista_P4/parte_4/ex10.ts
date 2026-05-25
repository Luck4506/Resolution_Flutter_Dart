// 10. Crie uma Firebase Function do tipo `onCall` chamada `criarPedido`. A função deve receber os dados de um pedido enviado pelo app Flutter, validar se o usuário está autenticado, calcular o valor total com base nos itens recebidos e salvar o pedido em uma coleção chamada `pedidos` no Firestore.

import * as admin from "firebase-admin";
import { onCall, HttpsError } from "firebase-functions/v2/https";

interface ItemPedido {
  nome: string;
  quantidade: number;
  precoUnitario: number;
}

export const criarPedido = onCall(async (request) => {
  if (!request.auth) {
    throw new HttpsError("unauthenticated", "Usuário não autenticado.");
  }

  const { itens } = request.data as { itens: ItemPedido[] };

  if (!Array.isArray(itens) || itens.length === 0) {
    throw new HttpsError(
      "invalid-argument",
      "O pedido deve possuir pelo menos um item.",
    );
  }

  for (const item of itens) {
    if (
      typeof item.nome !== "string" ||
      item.nome.trim() === "" ||
      typeof item.quantidade !== "number" ||
      item.quantidade <= 0 ||
      typeof item.precoUnitario !== "number" ||
      item.precoUnitario < 0
    ) {
      throw new HttpsError(
        "invalid-argument",
        "Todos os itens devem possuir nome, quantidade e preço válidos.",
      );
    }
  }

  let valorTotal = 0;

  for (const item of itens) {
    valorTotal += item.quantidade * item.precoUnitario;
  }

  const doc = await admin.firestore().collection("pedidos").add({
    usuarioId: request.auth.uid,
    itens,
    valorTotal,
    criadoEm: admin.firestore.FieldValue.serverTimestamp(),
  });

  return {
    id: doc.id,
    valorTotal,
    mensagem: "Pedido registrado com sucesso.",
  };
});