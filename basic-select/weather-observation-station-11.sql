-- Weather Observation Station 11
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem

SELECT DISTINCT city
FROM station
WHERE LEFT(city, 1) NOT IN ('A', 'E', 'I', 'O', 'U') OR
      RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');
      
-- ALternative

SELECT DISTINCT city 
FROM station 
WHERE (SUBSTR(city,1,1)) NOT IN ('A','E','I','O','U') OR 
      (SUBSTR(city,LENGHT(city),1)) NOT IN ('a','e','i','o','u');
