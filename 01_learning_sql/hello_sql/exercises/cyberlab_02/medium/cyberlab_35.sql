-- For each doctor, display their id, full name, and the first and last admission date they attended.-

select doctor_id, concat(first_name, ' ', last_name) as full_name,
min(admission_date) AS firs_admission_date, max(admission_date) as last_admission_date
from doctors
join admissions ON doctor_id = attending_doctor_id
group by doctor_id;