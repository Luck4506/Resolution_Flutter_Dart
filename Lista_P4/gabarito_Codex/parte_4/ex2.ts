import { HttpsError, onCall } from "firebase-functions/v2/https";

type DadosSoma = {
  numero1?: number;
  numero2?: number;
};

export const somarNumeros = onCall<DadosSoma>((request) => {
  const { numero1, numero2 } = request.data;

  if (typeof numero1 !== "number" || typeof numero2 !== "number") {
    throw new HttpsError("invalid-argument", "Informe dois números válidos.");
  }

  return {
    resultado: numero1 + numero2,
  };
});
