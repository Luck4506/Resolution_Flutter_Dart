import { onRequest } from "firebase-functions/v2/https";

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
