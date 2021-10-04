CREATE TABLE order_customer(
	customer_id INT NOT NULL,
	order_id INT NOT NULL,
	CONSTRAINT customer_id  FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
	CONSTRAINT order_id   FOREIGN KEY (order_id  ) REFERENCES order (order_id )
)