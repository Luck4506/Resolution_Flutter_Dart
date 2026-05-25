// 2. Crie uma Firebase Function do tipo `onCall` chamada `somarNumeros`. A função deve receber dois números enviados pelo app Flutter, validar se os dois valores foram informados e retornar a soma entre eles.

import {onCall} from "firebase-functions/v2/https";

export const somarNumeros = onCall((request) => {
  const { numero1, numero2 } = request.data;

  if (typeof numero1 !== "number" || typeof numero2 !== "number") {
    throw new Error("Ambos os valores devem ser números.");
  }

  const resultado = numero1 + numero2;
  return { resultado };
});