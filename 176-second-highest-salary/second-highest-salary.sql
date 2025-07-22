# Write your MySQL query statement below
-- WITH CTE AS (
--     SELECT Salary,
--            ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RN
--     FROM Employee
-- )
-- SELECT MAX(CASE WHEN RN = 2 THEN Salary ELSE NULL END) AS SecondHighestSalary
-- FROM CTE;


SELECT
    IFNULL(
      (SELECT DISTINCT Salary
       FROM Employee
       ORDER BY Salary DESC
        LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary