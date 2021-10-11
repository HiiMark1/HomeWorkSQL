WITH completed_orders (id) AS (
 SELECT orders_id, number
 FROM orders
 WHERE number = 0
)
DELETE FROM orders
WHERE orders_id in (SELECT id from completed_orders)