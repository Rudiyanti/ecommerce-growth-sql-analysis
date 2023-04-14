-- 1. Rata-rata Monthly Active User (MAU) per tahun

select year, round(avg(total_customer),0) as avg_active_user
from
(select date_part('year', od.order_purchase_timestamp) as year,
 		date_part('month', od.order_purchase_timestamp) as month,
 		count(distinct cd.customer_unique_id) as total_customer
from orders as od
join customer as cd on od.customer_id = cd.customer_id
group by 1,2) a
group by 1;

--2. Total customer baru per tahun

select 
	date_part('year', first_time_order) as year, 
	count(a.customer_unique_id) as new_customers 
from (
        select 
			c.customer_unique_id,
            min(o.order_purchase_timestamp) as first_time_order
		from orders o
		inner join customer c on c.customer_id = o.customer_id
		group by 1
) as a
group by 1
order by 1;

--3. Jumlah customer yang melakukan repeat order per tahun

select year, count(total_customer) as repeat_order
from
(select date_part('year', od.order_purchase_timestamp) as year,
 		cd.customer_unique_id,
 		count(cd.customer_unique_id) as total_customer,
 		count(od.order_id) as total_order
from orders as od
join customer as cd on od.customer_id = cd.customer_id
group by 1,2
having count(order_id) >1
) a
group by 1
order by 1;

--4. Rata-rata frekuensi order untuk setiap tahun

select year, round(avg(total_order),2) as avg_frequency_order
from
(select date_part('year', od.order_purchase_timestamp) as year,
 		cd.customer_unique_id,
 		count(distinct order_id) as total_order
from orders as od
join customer as cd on od.customer_id = cd.customer_id
group by 1,2
) a
group by 1
order by 1;

--5. Membuat CTE (Common Table Expression) dan mengabungkan metrik

with count_mau as (
select year, round(avg(total_customer),0) as avg_active_user
from
(select date_part('year', od.order_purchase_timestamp) as year,
 		date_part('month', od.order_purchase_timestamp) as month,
 		count(distinct cd.customer_unique_id) as total_customer
from orders as od
join customer as cd on od.customer_id = cd.customer_id
group by 1,2) a
group by 1
),

count_new_customer as(
select 
	date_part('year', first_time_order) as year, 
	count(a.customer_unique_id) as new_customers 
from (
        select 
			c.customer_unique_id,
            min(o.order_purchase_timestamp) as first_time_order
		from orders o
		inner join customer c on c.customer_id = o.customer_id
		group by 1
) as a
group by 1
order by 1
),

count_repeat_order as(
select year, count(total_customer) as repeat_order
from
(select date_part('year', od.order_purchase_timestamp) as year,
 		cd.customer_unique_id,
 		count(cd.customer_unique_id) as total_customer,
 		count(od.order_id) as total_order
from orders as od
join customer as cd on od.customer_id = cd.customer_id
group by 1,2
having count(order_id) >1
) a
group by 1
order by 1
),

avg_order as (
select year, round(avg(total_order),2) as avg_frequency_order
from
(select date_part('year', od.order_purchase_timestamp) as year,
 		cd.customer_unique_id,
 		count(distinct order_id) as total_order
from orders as od
join customer as cd on od.customer_id = cd.customer_id
group by 1,2
) a
group by 1
order by 1)

select 
cm.year,
cm.avg_active_user,
cn.new_customers,
cro.repeat_order,
ao.avg_frequency_order
from count_mau cm 
join count_new_customer cn on cm.year=cn.year
join count_repeat_order cro on cm.year=cro.year
join avg_order ao on cm.year=ao.year;