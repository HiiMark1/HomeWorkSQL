ALTER TABLE farm ADD CONSTRAINT more_than_10_animals CHECK (number_of_animals > 10);ALTER TABLE farm ALTER COLUMN region_id SET NOT NULL;ALTER TABLE product ADD CONSTRAINT positive_number CHECK (number >= 0);