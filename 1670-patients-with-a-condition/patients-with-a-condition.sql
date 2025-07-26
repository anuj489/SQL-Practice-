# Write your MySQL query statement below
-- select patient_id, patient_name ,conditions from patients where conditions like '%DIAB1%'

-- SELECT patient_id, patient_name, conditions 
-- FROM patients 
-- WHERE conditions REGEXP 'DIAB1';

-- SELECT patient_id, patient_name, conditions
-- FROM patients
-- WHERE conditions  LIKE '%DIAB1%';

select * from Patients
where conditions like '% DIAB1%' or 
      conditions like 'DIAB1%'
order by patient_name;