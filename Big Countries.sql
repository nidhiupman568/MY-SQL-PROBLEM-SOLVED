# Write your MySQL query statement below
select area,population,name
from world
where area>=3000000
union
select area,population,name
from world
where population>=25000000
