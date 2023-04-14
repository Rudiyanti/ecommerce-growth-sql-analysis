--1. Jumlah penggunaan masing-masing tipe pembayaran

select
	payment_type,
	count(order_id) as payment_type_usage
from order_payment
group by 1
order by 2 desc;

--2. Detail informasi jumlah penggunaan masing-masing tipe pembayaran

select
	payment_type,
	sum(case when year = 2016 then payment_type_usage else 0 end) as "year_2016",
	sum(case when year = 2017 then payment_type_usage else 0 end) as "year_2017",
	sum(case when year = 2018 then payment_type_usage else 0 end) as "year_2018",
	sum(payment_type_usage) as sum_payment_type_usage
from (select
	  	DATE_PART('year', order_purchase_timestamp) as year,
	 	payment_type,
	 	count (payment_type) as payment_type_usage
	  from orders as o
	  join order_payment as op on op.order_id = o.order_id
	  group by 1, 2
	 ) as subq
group by 1
order by 2 desc;