-- Binary Tree Nodes
-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem

SELECT N,
  CASE 
    WHEN P is NULL then 'Root' 
    WHEN N in (SELECT P FROM BST) then 'Inner' 
    ELSE 'Leaf' 
  END 
FROM BST 
ORDER BY N;
