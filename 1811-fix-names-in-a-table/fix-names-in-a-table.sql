# Write your MySQL query statement below
SELECT user_id,  CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM users 
order by user_id;
