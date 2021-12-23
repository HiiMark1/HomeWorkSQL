
--Во все заказы где требуется данный продукт и требуемое кол-во >200 добавить 20 товаров 
WITH cte1 AS (
 SELECT orders_id, product_id,
 (CASE
 WHEN product_id = 1 AND number>200
 THEN number-20
 END) number
 FROM orders)
SELECT orders_id, product_id, number
from cte1;