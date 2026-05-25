// 6. Crie uma Firebase Function do tipo `onCall` chamada `calcularMediaAluno`. A função deve receber uma lista de notas, validar se a lista não está vazia e retornar a média do aluno junto com a situação: aprovado, recuperação ou reprovado.

import { onCall, HttpsError } from "firebase-functions/v2/https";

export const calcularMediaAluno = onCall((request) =>{
    
    const listaNotas: number[] = request.data;

    if (!Array.isArray(listaNotas) || listaNotas.length === 0) {
        throw new HttpsError("invalid-argument", "A lista de notas deve ser um array não vazio.");
    }

    let soma = 0;

    for (let index = 0; index < listaNotas.length; index++) {
        soma += listaNotas[index];
    }

    const media = soma/listaNotas.length;

    let status: String;

    if (media < 5) {
        status = 'Reprovado';
    }
    else if(media <= 6){
        status = 'Recuperação';
    }
    else{
        status = 'Aprovado';
    }

    return{
        media,
        status
    }
})