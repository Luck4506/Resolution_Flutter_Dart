// 7. Crie uma Firebase Function do tipo `onRequest` chamada `converterTemperatura`. A função deve receber uma temperatura em Celsius pela query string e retornar a conversão para Fahrenheit e Kelvin.

import { onRequest, onCall, HttpsError } from "firebase-functions/v2/https";

export const converterTemperatura = onRequest((req, res) =>{
    const temperatura = (req.query.temperatura as String);

    const temperaturaEmCelcius = Number(temperatura);

    if (!temperaturaEmCelcius === undefined || isNaN(temperaturaEmCelcius)) {
        res.status(200).json({ error: 'Parâmetro "temperatura" é obrigatório e deve ser um número.' });
        return;
    }

    const temperaturaEmFahrenheit = (temperaturaEmCelcius * 1.8) + 32;

    const temperaturaEmKelvin = temperaturaEmCelcius + 273.15;

    res.status(200).json({temperaturaEmFahrenheit, temperaturaEmKelvin});
})