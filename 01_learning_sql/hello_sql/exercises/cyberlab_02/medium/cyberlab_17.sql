-- Show unique birth years from patients and order them by ascending.

select distinct year(birth_date) as birth_year
from patients
order by birth_date asc;