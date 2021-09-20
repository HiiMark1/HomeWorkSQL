CREATE TABLE farm_animal(
	farm_id INT NOT NULL,
	animal_id INT NOT NULL,
	CONSTRAINT farm_id  FOREIGN KEY (farm_id) REFERENCES author (farm_id),
	CONSTRAINT animal_id   FOREIGN KEY (animal_id  ) REFERENCES animal (animal_id )
)