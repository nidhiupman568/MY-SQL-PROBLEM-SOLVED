# Write your MySQL query statement below
select  c.customer_id from customer c
group by c.customer_id
having  count(distinct c.product_key ) = (select count(*) from product)
