# Write your MySQL query statement below
select e.name as Employee from employee e
cross join 
employee e1 
on 
e. managerid =e1.Id
where e.salary > e1.salary

