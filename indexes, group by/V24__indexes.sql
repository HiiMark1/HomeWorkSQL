--Для быстрого сравнения равенства регионов по id 
CREATE INDEX region_region_id_hash_idx ON region USING hash(region_id);

--Для отсортированного вывода заказов по id
CREATE INDEX orders_id_idx ON orders USING btree(orders_id);