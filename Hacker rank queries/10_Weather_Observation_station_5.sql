--ques
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
--Ans
SELECT city,length(city) As Len --•	LENGTH(CITY) gives the number of characters in the city name.
FROM station
ORDER BY LEN ASC,city ASC --•	ORDER BY LEN ASC, CITY ASC sorts by shortest length first, then alphabetically.
LIMIT 1;
SELECT city,length(city) As Len
FROM station
ORDER BY LEN DESC,city ASC --ORDER BY LEN DESC, CITY ASC sorts by longest length first, then alphabetically.
LIMIT 1;
--•	LIMIT 1 ensures we only get the top matching city.
