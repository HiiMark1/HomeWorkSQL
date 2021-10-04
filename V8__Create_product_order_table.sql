CREATE TABLE product_order(
	product_id INT NOT NULL,
	order_id INT NOT NULL,
	CONSTRAINT product_id  FOREIGN KEY (product_id) REFERENCES product (product_id),
	CONSTRAINT order_id   FOREIGN KEY (order_id) REFERENCES orderss (order_id )
)