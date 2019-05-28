DROP DATABASE IF EXISTS sale_products;
CREATE DATABASE sale_products;

\c sale_products

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(32),
	password_digest VARCHAR(60)
);

CREATE TABLE categories(
	id SERIAL PRIMARY KEY,
	name VARCHAR(64)
);

CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	title VARCHAR (60),
	image VARCHAR (500),
	product_price DECIMAL (6, 2) NOT NULL,
	description VARCHAR (1000),
	user_id INTEGER REFERENCES users(id),
	category_id INTEGER REFERENCES categories(id)
);


	-- housing_id INTEGER REFERENCES products(id),
	-- electronics_id INTEGER REFERENCES products(id),
	-- sports_id INTEGER REFERENCES products(id),
	-- cloth_id INTEGER REFERENCES products(id),
	-- other_id INTEGER REFERENCES products(id),	
