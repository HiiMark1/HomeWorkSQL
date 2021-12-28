--Самое большое кол-во животных в каждом регионе
SELECT region.name, Max(farm.number_of_animals)
FROM region
JOIN farm on farm.region_id = region.region_id
GROUP BY region.name
ORDER BY 2 DESC;

--Кол-во ферм в регионе
SELECT farm.region_id, count(*) as count FROM farm
JOIN region ON region.region_id = farm.region_id
GROUP BY farm.region_id;