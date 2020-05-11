-- Weather Observation Station 5
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

(
    SELECT city, LENGTH(city)
    FROM station
    ORDER BY LENGTH(city) ASC, city
    LIMIT 1
) UNION (
    SELECT city, LENGTH(city)
    FROM station
    ORDER BY LENGTH(city) DESC, city 
    LIMIT 1
);
