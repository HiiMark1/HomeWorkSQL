CREATE VIEW check_product_in_order
AS SELECT * from order
WHERE product_id=1
WITH LOCAL CHECK OPTION;