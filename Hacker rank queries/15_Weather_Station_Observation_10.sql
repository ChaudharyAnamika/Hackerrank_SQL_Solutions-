--Ques
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
--ANS
SELECT DISTINCT city
FROM station
WHERE LOWER(Right(city,1)) NOT In ('a','i','e','o','u');
