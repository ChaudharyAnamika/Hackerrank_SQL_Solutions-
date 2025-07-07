--Ques
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
--ANS
SELECT SUM(population)
FROM city
WHERE countrycode="JPN";
