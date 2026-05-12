SELECT s.year,ROUND(SUM(s.funding_government),2) AS financiamento,
ROUND(AVG((st.score_mathematics + st.score_reading + st.score_science)/3),2) AS desempenho
FROM `analisepisa.Pisa.school_summary` s
JOIN `analisepisa.Pisa.student_summary` st ON s.school_id = st.school_id
WHERE s.country_id_iso_3 = 'BRA'
GROUP BY s.year