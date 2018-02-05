BEGIN
	INSERT INTO endangered_species
	VALUES (400, 'Blue Gound Beetle', 'Carabus intricatus');
	
	SAVEPOINT sp_400;
	INSERT INTO endangered_species
	VALUES (500, 'Little Spotted Cat', 'Leopardus tigrinus');

	ROLLBACK;

	INSERT INTO endangered_species
	VALUES (600, 'Veined Tongue-Fern', 'Elaphoglossum nervosum');

	ROLLBACK TO sp_400;
END;
/
