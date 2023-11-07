INSERT INTO billing (
	full_name,
	card_number,
	payment_method
) VALUES (
	'Roman Pierce',
	'1234 5678 8765 4321',
	'Credit Card'
);

SELECT *
FROM billing;


INSERT INTO customer (
	email,
	phone,
	address
) VALUES (
	'roman@coding.com',
	'407 444 2222',
	'123 Presidents Dr, NY'
);

SELECT *
FROM customer

INSERT INTO tickets (
	customer_id,
	movie_id,
	seat_number,
	date,
	sub_total,
	billing_id
) VALUES (
	1,
	1,
	'26',
	'2023-11-14',
	10.15,
	1
);

SELECT *
FROM tickets

INSERT INTO concessions (
	product_name,
	quantity,
	price,
	ticket_id
) VALUES (
	'Combo 1(big popcorn & soda)',
	2,
	5.45,
	1
);

SELECT *
FROM concessions

INSERT INTO movie (
	movie_name,
	title,
	genre
) VALUES (
	'GODFATHER 2',
	'GODFATHER SAGA',
	'Mafia'
)

SELECT *
FROM movie