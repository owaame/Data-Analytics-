--step one
with cte as( ---the 'cte' combines the data from both tables, and reads it off as one.
select * from bike_share_yr_0  ---the difference between union and union all is that 'union' does not include duplicates, whereas 'union all' does
union all
select * from bike_share_yr_1) 

---select * from cte
----select * from cost_table;

--step two
select dteday, season, a.yr,
weekday,  hr, rider_type, riders, price, COGS, 
riders*price as revenue,
riders * price - COGS as profit
from cte a 
left join
cost_table b on a.yr =b.yr



