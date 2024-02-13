# Director wants to know any relations between race and number of procedures
USE health_data;
CREATE TEMPORARY TABLE Race_procedures AS (
SELECT race, ROUND(AVG(num_lab_procedures),2) AS num
FROM health_dataset AS h_d
INNER JOIN patient_demographics AS p_d ON h_d.patient_nbr = p_d.patient_nbr 
GROUP BY race
ORDER BY num DESC
); # Here lies a chance to export the data into csv format.
# Viewing temporary table which we have created: 
SELECT *
FROM Race_procedures;
# Drop temporary table:
DROP TABLE Race_procedures;