-- Weather Observation Station 6
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem

SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) IN ('A', 'E', 'I', 'O', 'U');
ORDER BY city ASC; 

-- Alternative

SELECT DISTINCT city 
FROM station 
WHERE city LIKE 'A%' OR city LIKE 'E%' OR city LIKE 'I%' OR city LIKE 'O%' OR city LIKE 'U%' 
ORDER BY city ASC; 
