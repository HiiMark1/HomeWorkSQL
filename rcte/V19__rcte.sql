WITH RECURSIVE f AS (
 SELECT id, name, farm_id, parent_id
 FROM farmer
 WHERE id = 5

 UNION

 SELECT farmer.id, farmer.name, farmer.farm_id, farmer.parent_id
 FROM farmer
 JOIN f
 ON farmer.parent_id = f.id
)
SELECT * FROM f;