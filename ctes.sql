# The Hospital Administrator wants to highlight some of the biggest success stories of the hospital. 
# They are looking for opportunities when patients came into the hospital with an emergency (admission_type_id of 1) but stayed less than the average time in the hospital.
# Method 1:
USE health_data;
WITH cte AS (
SELECT *
FROM health_dataset AS hd
WHERE admission_type_id = 1
)
# Filtering data based on emergencies and days spent in hospital
SELECT *
FROM cte
WHERE time_in_hospital < (SELECT AVG(time_in_hospital) FROM cte)
GROUP BY patient_nbr
ORDER BY number_emergency DESC;

# Method 2: executes 0.1 seconds faster than Method 1.
USE health_data;
SELECT *
FROM health_dataset
WHERE admission_type_id = 1 AND time_in_hospital < (SELECT AVG(time_in_hospital) FROM health_dataset)
GROUP BY patient_nbr
ORDER BY number_emergency DESC;
