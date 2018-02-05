-- Table Creation Script for Section 5_5
DROP TABLE proposed_raises;

CREATE TABLE proposed_raises
(
	date_proposed DATE,
	date_approved DATE,
	employee_id NUMBER(6),
	department_id NUMBER(4),
	original_salary NUMBER(8,2),
	proposed_new_salary NUMBER(8,2)
);
