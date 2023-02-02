create table category(
	id int primary key identity(1,1),
	name varchar(255) not null unique,
	address varchar(255) not null,
	phone varchar(255) not null,
);

create table product(
	id int primary key identity(1,1),
	name varchar(255) not null unique,
	description varchar(255) not null,
	unit int not null,
	price int check(price>0),
	amount int check(amount>=0) default 0,
);