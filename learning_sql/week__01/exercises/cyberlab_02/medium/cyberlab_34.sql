/*Show first_name, last_name, and the total number of admissions attended for each doctor.
Every admission has been attended by a doctor.*/

select first_name, last_name, count(*) as admissions_total
from doctors 
join admissions as a on doctor_id = a.attending_doctor_id
group by doctor_id