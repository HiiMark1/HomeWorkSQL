-- узнать в каком регионе и стране расположена ферма и сколько на ней работников
SELECT farm.name, farm.number_of_animals, region.name, region.country_id
FROM region
JOIN farm ON farm.region_id = region.region_id;

-- сколько и каких продуктов требуется в заказе
SELECT product.name, product.number, orders.orders_id
FROM product
JOIN orders ON orders.orders_id = product.product_id;

-- список всех регионов и ферм в этих регионах
SELECT * FROM region LEFT JOIN farm on farm.region_id = region.region_id;

-- список стран и какие их регионы добавлены
SELECT * FROM region RIGHT JOIN country on country.country_id = region.country_id;

-- увидеть список всех животных и производимых ими товаров
SELECT * FROM animal FULL JOIN product on animal.product_id = product.product_id;

-- нет реального кейса
SELECT * FROM farm CROSS JOIN animal;

-- все производимые товары
SELECT product.name
FROM product
WHERE EXISTS(SELECT 1 
	FROM animal 
	WHERE animal.product_id = product.product_id);

-- товары, которые есть в заказе, но не производятся в данный момент
SELECT orders.product_id
FROM orders
WHERE NOT EXISTS(SELECT 1 
	FROM animal 
	WHERE animal.product_id = orders.product_id);