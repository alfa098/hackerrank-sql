-- Weather Observation Station 10
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem

SELECT DISTINCT city
FROM station
WHERE RIGHT(city, 1) NOT IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');

-- Alternative

SELECT DISTINCT city 
FROM station 
WHERE SUBSTR(city,LENGTH(city),1) NOT IN ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');

-- Alternative

SELECT DISTINCT city 
FROM station 
WHERE UPPER(SUBSTR(city,LENGTH(city),1)) NOT IN ('A','E','I','O','U');
