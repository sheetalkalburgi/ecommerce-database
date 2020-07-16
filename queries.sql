-- which is the best-selling product on Kart?
select order_item.product_id, product.product_category_name, 
	   product.product_name, product.product_description
from order_item
join product on (order_item.product_id = product.product_id)
group by product_id
order by count(*) desc
limit 1;

-- purchase history of customer_id = 4
select order_history.customer_id, product.product_name, 
	   order_history.order_history_purchase_date, 
       order_history.order_history_delivered_returned_customer_date
from product 
inner join order_item on (product.product_id = order_item.product_id) 
inner join order_history on (order_item.current_order_id = order_history.order_history_id)
where order_history.customer_id = 4;

-- average user engagement per minute
select  (sum(session_end_timestamp-session_start_timestamp)/60)/count(session_number) as user_engagement_minutes
from user_session;

-- which product was given the worst rating?
select order_review.review_score, order_review.review_comment_title, product.product_name
from order_review 
join product on (product.product_id = order_review.review_product_id)
group by order_review.review_score, order_review.review_comment_title, product.product_name
order by order_review.review_score asc
limit 1;

-- total revenue for a month (May 2020) 
select sum(price) as total_revenue from order_item
where current_order_id IN
(select current_order_id from current_order
where current_order_purchase_date like '2020-05%'
Union
select order_history_id from order_history
where order_history_purchase_date like '2020-05%');






