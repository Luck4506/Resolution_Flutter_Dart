import { HttpsError, onCall } from "firebase-functions/v2/https";

type DadosMedia = {
  notas?: number[];
};

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
