INSERT INTO car (serialnumber_id, model, make, year)
		VALUES
    (100, '330i', 'bmw', 2023),
    (101, 'x5', 'bmw', 2022),
    (102, 'M3', 'bmw', 2021),
	(103, '1M', 'bmw', 2011);
	
SELECT *
FROM car;

INSERT INTO salesperson (full_name)
		VALUES
    ('michael sterling'),
    ('luis diaz');

SELECT *
FROM salesperson;

INSERT INTO mechanics (name)
		VALUES
    ('carlos rodriguez'),
    ('bobby medina');

SELECT *
FROM mechanics;

INSERT INTO customer (name, phone_number, email)
		VALUES
    ('Will Ferrer', '321-222-1113', 'will@houses.com'),
    ('Zack Mills', '401-553-2122', 'zack@coding.com'),
	('Loey Mutt', '321-423-9890', 'corpo@walmart.com'),
    ('Stephen Rogers', '402-323-0099', 'tire@bored.com');

SELECT *
FROM customer;

INSERT INTO service_ticket (customer_id, serialnumber_id, date)
		VALUES
	(1,100, CURRENT_TIMESTAMP),
	(2,101, CURRENT_TIMESTAMP),
	(3,102, CURRENT_TIMESTAMP),
	(4,103, CURRENT_TIMESTAMP);

SELECT *
FROM service_ticket;


INSERT INTO servicemechanic (service_ticket_id, mechanics_id)
		VALUES
	(5, 1),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 1),
	(10, 1);

SELECT *
FROM servicemechanic;


INSERT INTO invoice (invoice_id, salesperson_id, customer_id, serialnumber_id, date, amount)
		VALUES
	(001, 1, 2, 100, '2023-05-11 13:23:44', 54000.00),
	(002, NULL, 1, 100, CURRENT_TIMESTAMP, 250.99), 
	(003, NULL, 1, 100, CURRENT_TIMESTAMP, 100.00),
	(004, 2, 2, 101,'2022-03-10 13:23:44', 75000.00),
	(005, NULL, 2, 101, CURRENT_TIMESTAMP, 345.99),
	(006, NULL, 2, 101, CURRENT_TIMESTAMP, 100.00),
	(007, NULL, 3, 102, CURRENT_TIMESTAMP, 500.00),
	(008, NULL, 4, 103, CURRENT_TIMESTAMP, 425.00);
	
SELECT *
FROM invoice;

INSERT INTO parts (parts_id, part_name, price, service_ticket_id)
		VALUES
	(1001, 'oil change', 250.99, 5),
	(1002, 'ac filter', 100.00, 9),
	(1003, 'set of tires', 345.99, 6),
	(1004, 'carplay', 100.00, 10),
	(1005, 'M rims', 500.00, 7),
	(1006, 'M exhaust system', 425.00, 8);

SELECT *
FROM parts;

INSERT INTO service (serialnumber_id, parts_id, service_ticket_id)
		VALUES
	(100, 1001, 5),
	(100, 1002, 9),
	(101, 1003, 6),
	(101, 1004, 10),
	(102, 1005, 7),
	(103, 1006, 8);
	
SELECT *
FROM service;