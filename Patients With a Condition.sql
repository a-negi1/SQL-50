select patient_id,patient_name,conditions 
from Patients
where conditions like 'DIAb1%' or conditions like '% DIAb1%'