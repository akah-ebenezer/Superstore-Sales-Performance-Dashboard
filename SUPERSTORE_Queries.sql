select * from superstore;
select count (*) from superstore;
select * from superstore limit 10;
select * from superstore where customer_name is null;
select count(*)-count(order_id) as order_id_nulls,
count(*)-count(customer_name)as customer_nulls,
count(*)-count(ship_date)as ship_dat_nulls,
count(*)-count(ship_mode) as ship_mode_nulls,
count(*)-count(segment) as segment_nulls
from superstore;
select ship_mode, count(*) from superstore group by ship_mode;
select customer_name, count(*) from superstore group by customer_name;
select order_date, count(*) from superstore group by order_date;
select column_name, data_type from information_schema.columns where table_name = 'superstore';
select order_id, count(*) from superstore group by order_id having count(*) > 1;
select order_id, product_id, product_name, quantity from superstore where order_id = 'CA-2017-102197'
order BY product_id;
