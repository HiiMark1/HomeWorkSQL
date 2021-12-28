
--Все фермы где больше 150 животных
CREATE MATERIALIZED VIEW farms_with_150_animals AS SELECT * FROM farm WHERE number_of_animals > 150;

--Заказы где кол-во требуемого товара <200
CREATE MATERIALIZED VIEW orders_milk_under_200 AS SELECT * FROM orders WHERE product_id = 1 AND number <= 200;