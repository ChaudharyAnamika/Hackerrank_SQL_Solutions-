--Ques
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
--Answ
Select distinct city from station where lower(city) like "a%" or lower(city) like "e%" or lower(city) like "i%" or lower(city) like "o%" or lower(city) like "u%" ;
