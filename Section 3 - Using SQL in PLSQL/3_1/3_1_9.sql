DROP TABLE new_items;

CREATE TABLE new_items
	(
		product_id NUMBER,
		brand VARCHAR2(35),
		descriptions VARCHAR2(40)
	);

INSERT INTO new_items (product_id, brand, descriptions) VALUES (110, 'Colgate', 'Toothpaste');
INSERT INTO new_items (product_id, brand, descriptions) VALUES (175, 'Dew', 'Soda');
INSERT INTO new_items (product_id, brand, descriptions) VALUES (275, 'Palmolive', 'Dish detergent');
