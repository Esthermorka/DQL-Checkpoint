select * from customer;

select product_name,category from product where price between 5000 and 10000;

select * from product order by price desc;

select count(*) as total_number_of_orders, 
avg(total_amount) as  average_amount, 
max(total_amount) as highest_total_amount, 
min(total_amount) as lower_totalamount from orders;


select product_id, count(*) as number_of_order from orders 
group by product_id;
 
select customer_id , count(*) as customer_order from orders 
group by customer_id 
having count(*)>2;

alter table orders add column order_id serial

select order_id,orderdate, product_name, customer_name from orders
left join product on orders.product_id = product.product_id 
left join customer on orders.customer_id = customer.customer_id;

select * from orders where orderdate = current_date - interval '3 months';

select customer_id from customer 
where customer_id not in (select customer_id from orders);