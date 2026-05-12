SELECT sc.public_private AS tipo_escola,
ROUND(AVG(s.score_reading),2) AS mediaLeitura,
ROUND(AVG(s.score_science),2) AS mediaCiencia,
ROUND(AVG(s.score_mathematics),2) AS mediaMatematica
FROM `analisepisa.Pisa.school_summary` sc
JOIN `analisepisa.Pisa.student_summary` s ON s.school_id = sc.school_id
WHERE sc.country_id_iso_3 = 'BRA'
AND sc.public_private IS NOT NULL
GROUP BY sc.public_private