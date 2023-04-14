--1. Total revenue per tahun

create table total_revenue_per_year as
select
	date_part('year', o.order_purchase_timestamp) as year,
	sum(oi.price + oi.freight_value) AS revenue
from orders as o
join order_item as oi on oi.order_id = o.order_id
where o.order_status = 'delivered'
group by 1
order by year asc;

--2. Jumlah cancel order per tahun

create table total_cancel_per_year as
select
	date_part('year', order_purchase_timestamp) as year,
	count(order_id) as canceled_order
from orders
where order_status = 'canceled'
group by 1
order by year asc;

--3. Top kategori yang menghasilkan revenue terbesar per tahun

create table top_product_category_by_revenue_per_year as
select
	year,
	product_category_name,
	revenue
from(select
		date_part('year', o.order_purchase_timestamp) as year,
	 	p.product_category_name,
	 	sum(price + freight_value) as revenue,
	 	rank() over(partition by date_part('year', o.order_purchase_timestamp)
				    order by sum(oi.price + oi.freight_value) desc
					) AS rank
	 from orders as o
	 join order_item as oi on oi.order_id = o.order_id
	 join product as p on p.product_id = oi.product_id
	 where order_status = 'delivered'
	 group by 1, 2
	 ) as subq
where rank = 1;

--4. Kategori yang mengalami cancel order terbanyak per tahun

create table top_product_category_by_cancel_per_year as
select
	year,
	product_category_name,
	total_cancel
from(select
		date_part('year', o.order_purchase_timestamp) as year,
	 	p.product_category_name,
	 	count(o.order_id) as total_cancel,
	 	rank() over(partition by date_part('year', order_purchase_timestamp)
				    order by count(o.order_id) desc
					) as rank
	 from orders as o
	 join order_item as oi on oi.order_id = o.order_id
	 join product as p on p.product_id = oi.product_id
	 where order_status = 'canceled'
	 group by 1, 2
	 ) as subq
where rank = 1;

--5. Hasil

select
tpy.year,
		tpy.product_category_name as top_product_category_by_revenue,
		tpy.revenue as category_revenue,
		tr.revenue as year_total_revenue,
		tcy.product_category_name as most_canceled_product_category,
		tcy.total_cancel as category_num_canceled,
		tcy.total_cancel as year_total_num_canceled
from top_product_category_by_revenue_per_year tpy
join total_revenue_per_year tr on tpy.year = tr.year
join top_product_category_by_cancel_per_year tcy on tpy.year = tcy.year
join total_cancel_per_year tco on tpy.year = tco.year