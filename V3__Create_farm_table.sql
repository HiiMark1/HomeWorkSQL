CREATE TABLE farm(
	farm_id INT NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	number_of_animals INT,
	region_id INT,
	CONSTRAINT region_id  FOREIGN KEY (region_id) REFERENCES region (region_id)
)