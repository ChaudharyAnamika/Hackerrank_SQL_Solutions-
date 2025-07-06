--QUES
Query the total population of all cities in CITY where District is California.
--Ans
SELECT SUM(POPULATION)
FROM city
WHERE district="california";
