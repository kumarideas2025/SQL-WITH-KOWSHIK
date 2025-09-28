select * from NUM3;
SELECT name ,age,(age*0.1) as bonus

FROM NUM3;

--CALCCUALTE NEW AGE
SELECT name,age,
(age*12) as annual_age,
(age*0.05) as increment_age,
(age+ age*0.05) as new_age

from NUM3;



 