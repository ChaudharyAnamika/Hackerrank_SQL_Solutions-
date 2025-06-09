--ques
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
--Ans
SELECT DISTINCT city 
FROM station
WHERE lower(Right(city,1)) in ('a','e','i','o','u');
/*
•	DISTINCT: Ensures no duplicate city names.
•	RIGHT(CITY, 1): Extracts the last character of the city name.
•	LOWER(...): Ensures the comparison is case-insensitive.
•	IN ('a', 'e', 'i', 'o', 'u'): Filters for cities ending with a vowel.
*/
