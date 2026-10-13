-- Display the total amount of patients for each province. Order by descending.

select pr.province_name, count(*) as patient_count
from province_names as pr
join patients as pa on pa.province_id = pr.province_id
group by pr.province_id
order by patient_count desc