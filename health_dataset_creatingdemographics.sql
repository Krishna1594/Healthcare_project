# The data is clubbed and I wanted to separate demographics from the patient data. So,
CREATE TABLE patient_demographics AS (
SELECT patient_nbr, race, gender, age, weight 
FROM health_data.health_dataset
);
# -- Alter the health_dataset table to drop the specified columns_demographics only
ALTER TABLE health_data.health_dataset
DROP COLUMN race,
DROP COLUMN gender,
DROP COLUMN age,
DROP COLUMN weight;
