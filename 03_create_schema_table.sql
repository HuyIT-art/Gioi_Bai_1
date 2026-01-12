create schema sales;

create table sales.Customers(
	customer_id int generated always as identity primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(255) unique not null,
	phone varchar(15)
);

create table sales.Products(
	product_id int generated always as identity primary key,
	product_name varchar(100) not null,
	price float not null,
	stock_quantity bigint not null
);

create table sales.Orders(
	order_id int generated always as identity primary key,
	customer_id int not null,
	order_date timestamp not null
);
drop table sales.Orders;

create table sales.OrderItems(
	order_item_id int generated always as identity primary key,
	quantity bigint check(quantity >=1) default 1,
	order_id int,
	product_id int
);





