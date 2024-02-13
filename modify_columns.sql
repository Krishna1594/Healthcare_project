USE health_data;
# Assinging data types before we begin our queries.
ALTER TABLE `health_data`.`health_dataset` 
MODIFY COLUMN `patient_nbr` INT NOT NULL ,
MODIFY COLUMN `admission_type_id` INT NULL DEFAULT NULL ,
MODIFY COLUMN `discharge_disposition_id` INT NULL DEFAULT NULL ,
MODIFY COLUMN `admission_source_id` INT NULL DEFAULT NULL ,
MODIFY COLUMN `time_in_hospital` INT NULL DEFAULT NULL COMMENT 'days' ,
MODIFY COLUMN `num_lab_procedures` INT NULL DEFAULT NULL ,
MODIFY COLUMN `num_procedures` INT NULL DEFAULT NULL ,
MODIFY COLUMN `num_medications` INT NULL DEFAULT NULL ,
MODIFY COLUMN `number_outpatient` INT NULL DEFAULT NULL ,
MODIFY COLUMN `number_emergency` INT NULL DEFAULT NULL ,
CHANGE COLUMN `number_inpatient` `number_inpatients` INT NULL DEFAULT NULL ;