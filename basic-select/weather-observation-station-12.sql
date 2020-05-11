-- Weather Observation Station 12
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem

SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) NOT IN ('A', 'E', 'I', 'O', 'U') AND
      RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');
      
-- Alternative

SELECT DISTINCT city 
FROM station 
WHERE (SUBSTR(city,1,1)) NOT IN ('A','E','I','O','U') AND 
      (SUBSTR(city,LENGHT(city),1)) NOT IN ('a','e','i','o','u'); 
