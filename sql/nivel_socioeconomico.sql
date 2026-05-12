SELECT CASE
    WHEN economic_social_cultural_status <= -2 THEN '1.Classe_Baixa'
    WHEN economic_social_cultural_status BETWEEN -1 AND 1 THEN '2.Classe_Média'
    ELSE '3.Classe_Alta'END AS nivel_socioeconomico,
ROUND(AVG(score_mathematics),2) AS mediaMatematica,
ROUND(AVG(score_reading),2) AS mediaLeitura,
ROUND(AVG(score_science),2) AS mediaCiencia
FROM `analisepisa.Pisa.student_summary`
WHERE economic_social_cultural_status IS NOT NULL
GROUP BY nivel_socioeconomico