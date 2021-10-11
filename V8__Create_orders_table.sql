CREATE TABLE orders(
	orders_id INT NOT NULL PRIMARY KEY,
	number INT NOT NULL,
	product_id INT NOT NULL,
	CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES product (product_id)
)