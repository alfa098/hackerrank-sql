-- Weather Observation Station 8
-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem

SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) IN ('A','E','I','O','U') AND
      RIGHT(city, 1) IN ('a','e','i','o','u');

-- Alternative

SELECT DISTINCT city 
FROM station 
WHERE (city LIKE 'A%' OR city LIKE 'E%' OR city LIKE 'I%' OR city LIKE 'O%' OR city LIKE 'U%') AND
      (city LIKE '%a' OR city LIKE '%e' OR city LIKE '%i' OR city LIKE '%o' OR city LIKE '%u');
