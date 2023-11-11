CREATE TABLE car (
  serialnumber_id SERIAL PRIMARY KEY,
  model VARCHAR(50),
  make VARCHAR(50),
  year INTEGER
);

CREATE TABLE service  (
  service_id SERIAL PRIMARY KEY,
  serialnumber_id INTEGER,
  parts_id INTEGER,
  service_ticket_id INTEGER,
  FOREIGN KEY (serialnumber_id) REFERENCES car(serialnumber_id)
);

CREATE TABLE salesperson (
  salesperson_id SERIAL PRIMARY KEY,
  full_name VARCHAR(80)
);

CREATE TABLE parts (
  parts_id SERIAL PRIMARY KEY,
  part_name VARCHAR(50),
  price NUMERIC(6,2),
  service_ticket_id INTEGER
);

CREATE TABLE mechanics (
  mechanics_id SERIAL PRIMARY KEY,
  name VARCHAR(80)
);

CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  phone_number VARCHAR(20),
  email VARCHAR(30)
);

CREATE TABLE invoice (
  invoice_id SERIAL PRIMARY KEY,
  salesperson_id INTEGER,
  customer_id INTEGER,
  serialnumber_id INTEGER,
  date TIMESTAMP,
  amount NUMERIC(10,2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);


CREATE TABLE service_ticket (
  service_ticket_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  serialnumber_id INTEGER,
  date TIMESTAMP,
    FOREIGN KEY (serialnumber_id) REFERENCES car(serialnumber_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE servicemechanic (
  servicemechanic_id SERIAL PRIMARY KEY,
  service_ticket_id INTEGER,
  mechanics_id INTEGER,
    FOREIGN KEY (mechanics_id)REFERENCES mechanics(mechanics_id),
	FOREIGN KEY (service_ticket_id)REFERENCES service_ticket(service_ticket_id)
);