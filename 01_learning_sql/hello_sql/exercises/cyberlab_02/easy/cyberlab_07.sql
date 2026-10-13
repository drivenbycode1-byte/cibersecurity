-- Show first name, last name, and the full province name of each patient.

select first_name, last_name, province_name
from patients p
join province_names pn
	on pn.province_id = p.province_id;