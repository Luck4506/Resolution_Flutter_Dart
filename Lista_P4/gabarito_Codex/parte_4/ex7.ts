import { onRequest } from "firebase-functions/v2/https";

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
