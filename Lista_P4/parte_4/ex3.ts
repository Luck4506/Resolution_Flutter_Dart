// 3. Crie uma Firebase Function do tipo `onRequest` chamada `calcularFrete`. A função deve receber, via query string, os parâmetros `distanciaKm` e `pesoKg`. Com base nesses valores, calcule um valor simples de frete e retorne o resultado em JSON.

import { onRequest, onCall } from "firebase-functions/v2/https";

export const calcularFrete = onRequest((req, res) =>{
    const distanciaKm = parseFloat(req.query.distanciaKm as string); ;
    const pesoKg = parseFloat(req.query.pesoKg as string);

    if (!distanciaKm || !pesoKg || isNaN(distanciaKm) || isNaN(pesoKg)) {
        res.status(400).json({ error: "Parâmetros 'distanciaKm' e 'pesoKg' são obrigatórios e devem ser números válidos." });
        return;
    }

    const frete = 10 + (distanciaKm * 0.5) + (pesoKg * 2);
    res.status(200).json({frete: frete.toFixed(2) });
    

    
});