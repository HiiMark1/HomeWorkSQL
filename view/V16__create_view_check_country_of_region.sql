CREATE VIEW check_country_of_region
AS SELECT * from region
WHERE country_id=1
WITH LOCAL CHECK OPTION;