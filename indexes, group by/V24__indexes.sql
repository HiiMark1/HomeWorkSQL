--Для быстрого сравнения равенства регионов по id 
CREATE INDEX region_region_id_hash_idx ON region USING hash(region_id);

--Для отсортированного вывода заказов по кол-ву требуемого продукта
CREATE INDEX orders_number_idx ON orders USING btree(number);