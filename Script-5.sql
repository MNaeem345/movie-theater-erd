create table customer(
	customer_id SERIAL primary key, 
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	email_address VARCHAR(300)
);

create table movie(
	movie_id INTEGER primary key,
	price NUMERIC(5,2),
	movie_name VARCHAR(300),
	movie_duration interval
);

create table staff(
	staff_id INTEGER primary key,
	customer_id SERIAL not null,
	foreign key(customer_id) references customer(customer_id)
);

create table tickets(
	tickets_id SERIAL primary key, 
	customer_id SERIAL not null,
	foreign key(customer_id) references customer(customer_id),
	movie_id INTEGER not null, 
	foreign key(movie_id) references movie(movie_id),
	seats INTEGER,
	movie_time TIMESTAMP
);

create table concessions(
	transaction_id SERIAL primary key,
	customer_id SERIAL not null, 
	foreign key(customer_id) references customer(customer_id),
	amount_spent NUMERIC(5,2),
	items_purchased INTEGER 
);
