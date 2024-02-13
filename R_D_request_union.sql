# R&D team wanted data on specific race based on their metformin levels; "up". They needed only patient IDs.
	SELECT DISTINCT(patient_demographics.patient_nbr) AS P_id
    FROM patient_demographics
    WHERE patient_demographics.race = 'AfricanAmerican' 
UNION
	SELECT health_dataset.metformin FROM health_dataset WHERE metformin = 'Up';
