CREATE TABLE product_orders(
	product_id INT NOT NULL,
	orders_id INT NOT NULL,
	CONSTRAINT product_id  FOREIGN KEY (product_id) REFERENCES product (product_id),
	CONSTRAINT orders_id   FOREIGN KEY (orders_id) REFERENCES orders (orders_id )
)