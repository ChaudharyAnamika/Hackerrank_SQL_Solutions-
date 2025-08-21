select round(lat_n,4) as lat_n
from ( select lat_n, row_number() over (order by lat_n) as rk from station ) as s 
where rk = (select round(count(*)/2,0) from station)
