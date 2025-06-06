--Ques
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer where LAT_N is the northern latitude and LONG_W is the western longitude.
--Answ
SELECT DISTINCT city
FROM Station 
WHERE ID%2=0;
