# Director wants to know all the different specialities in the hospital with some metrics
USE health_data;
SELECT DISTINCT(medical_specialty) AS specialty,
				ROUND(AVG(num_procedures),2) AS avg_procedures,
                COUNT(*) AS count
FROM health_dataset
GROUP BY specialty
HAVING count > 50 AND avg_procedures >= 2.5		# Director of surgery wanted to look at specialty with more than 50 patients and with a good average procedures of 2.5 or more
ORDER BY avg_procedures DESC;
