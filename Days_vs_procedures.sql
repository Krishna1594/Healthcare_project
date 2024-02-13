# Director wants to know if there is a correlation between the number of lab procedures to the number of days in hospital.
# Furthermore, the director wanted in terms of categories: 
USE health_data;

# Knowing the distribution of the number of procedures and setting metrics for categorizing based on propcedures.
SELECT MIN(num_lab_procedures) AS min_p, AVG(num_lab_procedures) AS avg_p, MAX(num_lab_procedures) AS max_p
FROM health_dataset;

SELECT ROUND(AVG(time_in_hospital),1) AS days,
	CASE
		WHEN num_lab_procedures > 0 AND num_lab_procedures <= 25 THEN "Few Procedures"
        WHEN num_lab_procedures > 25 AND num_lab_procedures <=55 THEN "Several Procedures"
        ELSE "Too many"
	END AS frequency
FROM health_dataset
GROUP BY frequency
ORDER BY days DESC;
