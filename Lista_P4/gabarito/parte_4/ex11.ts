import * as admin from "firebase-admin";
import {
  HttpsError,
  onCall,
  onRequest,
} from "firebase-functions/v2/https";

admin.initializeApp();

type DadosSoma = {
  numero1?: number;
  numero2?: number;
};

type DadosCupom = {
  codigo?: string;
};

type DadosMedia = {
  notas?: number[];
};

type DadosFeedback = {
  nome?: string;
  email?: string;
  mensagem?: string;
};

type ItemPedido = {
  nome?: string;
  preco?: number;
  quantidade?: number;
};

type DadosPedido = {
  itens?: ItemPedido[];
};

export const helloApi = onRequest((request, response) => {
  response.json({
    mensagem: "Olá, Firebase Functions!",
    timestamp: new Date().toISOString(),
  });
});

export const somarNumeros = onCall<DadosSoma>((request) => {
  const { numero1, numero2 } = request.data;

  if (typeof numero1 !== "number" || typeof numero2 !== "number") {
    throw new HttpsError("invalid-argument", "Informe dois números válidos.");
  }

  return {
    resultado: numero1 + numero2,
  };
});

export const calcularFrete = onRequest((request, response) => {
  const distanciaKm = Number(request.query.distanciaKm);
  const pesoKg = Number(request.query.pesoKg);

  if (Number.isNaN(distanciaKm) || Number.isNaN(pesoKg)) {
    response.status(400).json({
      erro: "Informe distanciaKm e pesoKg válidos.",
    });
    return;
  }

  const valorFrete = 10 + distanciaKm * 0.5 + pesoKg * 2;

  response.json({
    distanciaKm,
    pesoKg,
    valorFrete,
  });
});

export const validarCupom = onCall<DadosCupom>((request) => {
  const { codigo } = request.data;

  if (!codigo) {
    throw new HttpsError("invalid-argument", "Informe o código do cupom.");
  }

  const cuponsValidos = ["TPDM10", "FLUTTER15", "PUC20"];
  const valido = cuponsValidos.includes(codigo.toUpperCase());

  return {
    codigo,
    valido,
  };
});

export const statusServidor = onRequest((request, response) => {
  response.json({
    ativo: true,
    metodo: request.method,
    horario: new Date().toISOString(),
  });
});

export const calcularMediaAluno = onCall<DadosMedia>((request) => {
  const { notas } = request.data;

  if (!Array.isArray(notas) || notas.length === 0) {
    throw new HttpsError("invalid-argument", "Informe uma lista de notas.");
  }

  let soma = 0;

  for (const nota of notas) {
    if (typeof nota !== "number") {
      throw new HttpsError("invalid-argument", "Todas as notas devem ser números.");
    }

    soma += nota;
  }

  const media = soma / notas.length;
  let situacao = "reprovado";

  if (media >= 6) {
    situacao = "aprovado";
  } else if (media >= 4) {
    situacao = "recuperação";
  }

  return {
    media,
    situacao,
  };
});

export const converterTemperatura = onRequest((request, response) => {
  const celsius = Number(request.query.celsius);

  if (Number.isNaN(celsius)) {
    response.status(400).json({
      erro: "Informe uma temperatura válida em Celsius.",
    });
    return;
  }

  const fahrenheit = celsius * 1.8 + 32;
  const kelvin = celsius + 273.15;

  response.json({
    celsius,
    fahrenheit,
    kelvin,
  });
});

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

// onRequest cria uma função HTTP comum, chamada por URL e controlada por request/response.
// onCall cria uma função callable integrada ao Firebase SDK, recebendo dados em request.data
// e podendo acessar autenticação em request.auth com mais facilidade.
