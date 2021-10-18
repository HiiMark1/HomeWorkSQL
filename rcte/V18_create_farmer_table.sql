CREATE TABLE farmer (
id SERIAL PRIMARY KEY,
name CHARACTER VARYING(255),
farm_id INTEGER REFERENCES farm(farm_id),
parent_id INTEGER REFERENCES managers(id)
);

INSERT INTO managers VALUES 
(1, 'Krol', 1, null),
(2, 'NeKrol', 1, 1),
(3, 'MaybeKrol', 1, 1),
(4, 'Kotoron', 2, null),
(5, 'NeKotoron', 6, null),
(6, 'Dada1', 6, 5),
(7, 'Dada2', 6, 5),
(8, 'Dada3', 6, 6),
(9, 'Dada4', 6, 6),
(10, 'Kotoron11', 2, 9);