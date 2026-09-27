-- Show the total amount of male patients and the total amount of female patients in the patients table. Display the two results in the same row.

select sum(gender = 'M'), sum(gender = 'F')
from patients