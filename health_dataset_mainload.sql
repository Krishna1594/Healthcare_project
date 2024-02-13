# Created schema for our health care dataset
CREATE SCHEMA  health_data;
USE health_data  # make it active database for our analysis
#----------------------------------------------------------

CREATE TABLE `health_data`.`new_table` (
  `encounter_id` VARCHAR(255) NULL COMMENT 'Each encounter is an hospital admission.',
  `patient_nbr` VARCHAR(255) NULL,
  `race` VARCHAR(45) NULL COMMENT 'demographic paramter',
  `gender` VARCHAR(45) NULL COMMENT 'demographic parameter',
  `age` VARCHAR(45) NULL COMMENT 'demographic parameter in bins',
  `weight` VARCHAR(45) NULL COMMENT 'demographic parameter',
  `admission_type_id` VARCHAR(45) NULL,
  `discharge_disposition_id` VARCHAR(45) NULL,
  `admission_source_id` VARCHAR(45) NULL,
  `time_in_hospital` VARCHAR(45) NULL COMMENT 'days',
  `payer_code` VARCHAR(45) NULL,
  `medical_specialty` VARCHAR(255) NULL,
  `num_lab_procedures` VARCHAR(45) NULL,
  `num_procedures` VARCHAR(45) NULL,
  `num_medications` VARCHAR(45) NULL,
  `number_outpatient` VARCHAR(45) NULL,
  `number_emergency` VARCHAR(45) NULL,
  `number_inpatient` VARCHAR(45) NULL,
  `diag_1` VARCHAR(45) NULL,
  `diag_2` VARCHAR(45) NULL,
  `diag_3` VARCHAR(45) NULL,
  `number_diagnoses` VARCHAR(45) NULL,
  `max_glu_serum` VARCHAR(45) NULL,
  `A1Cresult` VARCHAR(45) NULL,
  `metformin` VARCHAR(45) NULL,
  `repaglinide` VARCHAR(45) NULL,
  `nateglinide` VARCHAR(45) NULL,
  `chlorpropamide` VARCHAR(45) NULL,
  `glimepiride` VARCHAR(45) NULL,
  `acetohexamide` VARCHAR(45) NULL,
  `glipizide` VARCHAR(45) NULL,
  `glyburide` VARCHAR(45) NULL,
  `tolbutamide` VARCHAR(45) NULL,
  `pioglitazone` VARCHAR(45) NULL,
  `rosiglitazone` VARCHAR(45) NULL,
  `acarbose` VARCHAR(45) NULL,
  `miglitol` VARCHAR(45) NULL,
  `troglitazone` VARCHAR(45) NULL,
  `tolazamide` VARCHAR(45) NULL,
  `examide` VARCHAR(45) NULL,
  `citoglipton` VARCHAR(45) NULL,
  `insulin` VARCHAR(45) NULL,
  `glyburide_metformin` VARCHAR(45) NULL,
  `glipizide_metformin` VARCHAR(45) NULL,
  `glimepiride_pioglitazone` VARCHAR(45) NULL,
  `metformin_rosiglitazone` VARCHAR(45) NULL,
  `metformin_pioglitazone` VARCHAR(45) NULL,
  `change` VARCHAR(45) NULL,
  `diabetesMed` VARCHAR(45) NULL,
  `readmitted` VARCHAR(45) NULL)
ENGINE = InnoDB;
ALTER TABLE `health_data`.`new_table` 
RENAME TO  `health_data`.`health_dataset` ;

# Data import was completed without errors using import/export wizard under this schema.



