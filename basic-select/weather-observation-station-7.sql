-- Weather Observation Station 7
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem

SELECT DISTINCT city
FROM station
WHERE RIGHT(city, 1) IN ('a', 'e', 'i', 'o', 'u')
ORDER BY city ASC;

SELECT DISTINCT(city) 
FROM station 
WHERE city LIKE '%a' OR city LIKE '%e' OR city LIKE '%i' OR city LIKE '%o' OR city LIKE '%u'
ORDER BY city ASC; 
