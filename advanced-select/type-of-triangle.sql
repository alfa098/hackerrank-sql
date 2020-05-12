-- Type of Triangle
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

SELECT 
    IF(A+B>C AND A+C>B AND B+C>A, 
      IF(A=B AND B=C, 'Equilateral', 
        IF(A=B OR B=C OR A=C, 'Isosceles', 'Scalene')), 'Not A Triangle') 
FROM TRIANGLES;

-- Alternative

SELECT
  CASE
    WHEN A = B AND B = C then "Equilateral"
    WHEN A + B <= C then "Not A Triangle"
    WHEN A + C <= B then "Not A Triangle"
    WHEN B + C <= A then "Not A Triangle"
    WHEN A = B AND A <> C then "Isosceles"
    WHEN A = C AND A <> B then "Isosceles"
    WHEN B = C AND A <> B then "Isosceles"
    ELSE "Scalene"
  END
FROM Triangles
