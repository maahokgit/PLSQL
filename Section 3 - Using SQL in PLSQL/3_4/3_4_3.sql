BEGIN
	INSERT INTO endangered_species
	VALUES (100, 'Polar Bear', 'Ursus maritimus');
	
	SAVEPOINT sp_100;
	
	INSERT INTO endangered_species
	VALUES (200, 'Spotted Owl', 'Strix occidentalis');
	
	SAVEPOINT sp_200;
	
	INSERT INTO endangered_species
	VALUES (300, 'Asiatic Black Bear', 'Ursus thibetanus');
	
	ROLLBACK TO sp_100;
	COMMIT;
END;
/
