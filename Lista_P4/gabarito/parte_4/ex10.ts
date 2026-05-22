import * as admin from "firebase-admin";
import { HttpsError, onCall } from "firebase-functions/v2/https";

admin.initializeApp();

type ItemPedido = {
  nome?: string;
  preco?: number;
  quantidade?: number;
};

type DadosPedido = {
  itens?: ItemPedido[];
};

export const criarPedido = onCall<DadosPedido>(async (request) => {
  if (!request.auth) {
    throw new HttpsError("unauthenticated", "Usuário não autenticado.");
  }

  const { itens } = request.data;

  if (!Array.isArray(itens) || itens.length === 0) {
    throw new HttpsError("invalid-argument", "Informe os itens do pedido.");
  }

  let valorTotal = 0;

  for (const item of itens) {
    if (
      !item.nome ||
      typeof item.preco !== "number" ||
      typeof item.quantidade !== "number"
    ) {
      throw new HttpsError("invalid-argument", "Item do pedido inválido.");
    }

    valorTotal += item.preco * item.quantidade;
  }

  const pedido = {
    usuarioId: request.auth.uid,
    itens,
    valorTotal,
    criadoEm: admin.firestore.FieldValue.serverTimestamp(),
  };

  const doc = await admin.firestore().collection("pedidos").add(pedido);

  return {
    id: doc.id,
    valorTotal,
  };
});
