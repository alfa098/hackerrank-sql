-- Higher Than 75 Marks
-- Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
-- https://www.hackerrank.com/challenges/more-than-75-marks/problem

SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name,3), id;

-- Alternative

SELECT name 
FROM students 
WHERE marks > 75 
ORDER BY SUBSTR(name,LENGTH(name)-2,3), id; 
