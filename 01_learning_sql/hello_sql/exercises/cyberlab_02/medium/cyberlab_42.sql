-- Display every patient that has at least one admission and show their most recent admission along with the patient and doctor's full name.

select 
concat(p.first_name, ' ', p.last_name) as patient_name,
a.admission_date,
concat(d.first_name, ' ', d.last_name) as doctor_name
from patients as p
join admissions as a on p.patient_id = a.patient_id
join doctors as d on a.attending_doctor_id = d.doctor_id
where a.admission_date = (
  select max(a2.admission_date)
  from admissions as a2
  where a2.patient_id = p.patient_id
);