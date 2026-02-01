create database Homework_session12_09;
-- create table
create table customers(
	customer_id serial primary key,
	name varchar(50) not null,
	email varchar(50)
);
create table products(
	product_id serial primary key,
	name varchar(50) not null,
	price numeric(10,2) not null,
	stock int not null
);
create table orders(
	order_id serial primary key,
	customer_id int references customers(customer_id),
	product_id int references products(product_id),
	quantity int not null,
	total_amount numeric(12,2),
	order_date timestamp default now()
);