CREATE TABLE billing (
  billing_id SERIAL PRIMARY KEY,
  full_name VARCHAR(100),
  card_number VARCHAR(50),
  payment_method VARCHAR(50)
);

CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  phone VARCHAR(20),
  address VARCHAR(100)
);

CREATE TABLE tickets (
  ticket_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  movie_id INTEGER,
  seat_number NUMERIC(2),
  date DATE,
  sub_total NUMERIC(6,2),
  billing_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (billing_id) REFERENCES Billing(billing_id)
);

CREATE TABLE concessions (
  concession_id SERIAL PRIMARY KEY,
  product_name VARCHAR(30),
  quantity INTEGER,
  price NUMERIC(6,2),
  ticket_id INTEGER,
  FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

CREATE TABLE movie (
  movie_id SERIAL PRIMARY KEY,
  movie_name VARCHAR(50),
  title VARCHAR(30),
  genre VARCHAR(30)
);
