--ques
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
--Ans
SELECT name FROM city
WHERE COUNTRYCODE='JPN';
