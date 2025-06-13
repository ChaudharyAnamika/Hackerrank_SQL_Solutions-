--Ques
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
--Ans
SELECT DISTINCT city
FROM station
WHERE LOWER(RIGHT(city,1)) NOT IN ('a','i','e','o','u')
OR LOWER(LEFT(city,1)) NOT IN ('a','i','e','o','u');
