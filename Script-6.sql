insert into customer(
	customer_id,
	first_name,
	last_name,
	email_address
) values(
	1,
	'Jake',
	'Newton',
	'jakenewton@gmail.com'
);

insert into movie(
	movie_id,
	price,
	movie_name,
	movie_duration 
) values (
	1,
	15.00,
	'The Chronicles of Coding Temple',
	'02:33:23'
);

insert into staff(
	staff_id,
	customer_id
) values (
	01,
	1
);

insert into tickets(
	tickets_id,
	customer_id,
	movie_id,
	seats,
	movie_time 
) values (
	1,
	1,
	1,
	52,
	'2022-02-02 02:33:23'
);

insert into concessions(
	transaction_id,
	customer_id,
	amount_spent,
	items_purchased 
) values (
	1,
	1,
	20.00,
	2
);


select * from customer

select * from movie

select * from staff

select * from tickets

select * from concessions



