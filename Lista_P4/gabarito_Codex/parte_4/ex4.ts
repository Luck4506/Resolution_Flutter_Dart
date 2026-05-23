import { HttpsError, onCall } from "firebase-functions/v2/https";

type DadosCupom = {
  codigo?: string;
};

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
