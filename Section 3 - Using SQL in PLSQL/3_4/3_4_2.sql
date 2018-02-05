CREATE TABLE endangered_species
(
	species_id NUMBER(4) CONSTRAINT es_spec_pk PRIMARY KEY,
	common_name VARCHAR2(30) CONSTRAINT es_com_name_nn NOT NULL,
	scientific_name VARCHAR2(30) CONSTRAINT es_sci_name_nn NOT NULL
);
