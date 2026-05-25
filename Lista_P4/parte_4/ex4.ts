// 4. Crie uma Firebase Function do tipo `onCall` chamada `validarCupom`. A função deve receber um código de cupom e retornar se ele é válido ou inválido. Considere pelo menos três cupons válidos fixos no código, por exemplo `TPDM10`, `FLUTTER15` e `PUC20`.


import { onRequest, onCall, HttpsError } from "firebase-functions/v2/https";

export const validarCupom = onCall((request) =>{
    const cupom = request.data;

    if (typeof cupom !== "string" || cupom.trim() === "") {
        throw new HttpsError("invalid-argument", "O código do cupom deve ser uma string.");
    }

    let isValido: boolean;

    if (cupom === 'TPDM10' || cupom === 'FLUTTER15' || cupom === 'PUC20') {
        isValido = true;
    }
    else{
        isValido = false;
    }

    return { isValido };
})