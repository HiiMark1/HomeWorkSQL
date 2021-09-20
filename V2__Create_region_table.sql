CREATE TABLE region(
	region_id INT NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	country_id INT NOT NULL,
	CONSTRAINT country_id  FOREIGN KEY (country_id) REFERENCES country (country_id)
)