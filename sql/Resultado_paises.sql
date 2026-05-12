SELECT c.country_name, c.alpha_3_code,AVG(s.funding_government) AS investimento, 
AVG((st.score_mathematics + st.score_reading + st.score_science)/3) AS desempenho
FROM `analisepisa.Pisa.school_summary` s
JOIN `analisepisa.Pisa.student_summary` st ON s.school_id = st.school_id
JOIN `analisepisa.Pisa.country_codes` c ON c.alpha_3_code = s.country_id_iso_3
GROUP BY c.country_name, c.alpha_3_code