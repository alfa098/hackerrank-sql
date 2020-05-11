-- Revising the Select Query II
-- Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.
-- https://www.hackerrank.com/challenges/revising-the-select-query/problem

SELECT name 
FROM city
WHERE countrycode = 'USA' AND population > 120000;
