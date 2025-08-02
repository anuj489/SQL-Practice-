# Write your MySQL query statement below
select p.product_name as product_name ,sum(o.unit) as unit from products p 
 join
orders o 
on 
p.product_id = o.product_id
where YEAR(o.order_date) = 2020
  AND MONTH(o.order_date) = 2
group by product_name
having sum(unit) >=100