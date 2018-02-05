MERGE INTO grocery_items g
	USING new_items n
	ON (g.product_id = n.product_id)
	WHEN MATCHED THEN
		UPDATE SET g.descriptions = n.descriptions
	WHEN NOT MATCHED THEN
		INSERT (product_id, brand, descriptions)
		VALUES (n.product_id, n.brand, n.descriptions);
