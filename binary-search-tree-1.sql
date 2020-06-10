/*You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree,
and P is the parent of N.
Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
output will look like 
1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf */


SELECT 
CASE
WHEN P IS NULL THEN CONCAT(N," Root")
WHEN (N IN(SELECT P FROM BST)) THEN CONCAT(N," Inner")
ELSE CONCAT(N," Leaf")
END
FROM BST
ORDER BY N ASC;
