--Ques
Query a count of the number of cities in CITY having a Population larger than 100,000.
--Ans
SELECT  COUNT(*) 
FROM city
WHERE population >100000;
