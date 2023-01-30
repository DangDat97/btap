create table manufacture(
id int primary key identity(1,1),
name varchar(255) not null unique,
address varchar(255) not null unique,
phone varchar(255) not null,
tax_code varchar(255) not null unique,
); 

create table typeofservice(
id int primary key identity(1,1),
name varchar(255) not null unique,
); 

create table charges(
id int primary key identity(1,1),
unit_price int not null check(unit_price>0),
description text,
);

create table vehicles(
id int primary key identity(1,1),
car_company varchar(255) not null unique,
number_of_seats int not null,
);

create table offer_subscription(
id int primary key identity(1,1),
id_manufacture	int foreign key references manufacture(id),
id_typeofservice	int foreign key references typeofservice(id),
id_charges	int foreign key references charges(id),
id_vehicles	int foreign key references vehicles(id),
date_begin date not null,
date_finish date not null,
numofreg int not null check(numofreg>0),
);

ALTER TABLE offer_subscription 
ALTER COLUMN id_manufacture varchar(255) not null;

insert into manufacture(name, address, phone,tax_code)
values('Cty TNHH Toan Phap','Hai Chau',0999995552,568941),
	('Cty Co Phan Dong Du','Lien Chieu',08513215465,568942),
	('Cty TNHH AMA','Hai Ha',5562311454,568943),
	('Cty TNHH Phan Thanh','Hai MA',5884651313,568944);
select * from manufacture

insert into typeofservice(name)
values('Dich Vu Taxi'),
	('Dich Vu Bus Cong Cong theo Tuyen Co Dinh'),
	('Dich Vu Cho Thue Xe Hop Dong');
select * from typeofservice

insert into charges(unit_price, description)
values(10000,'Ap dung tu 1/2015'),
	(15000,'Ap dung tu 2/2015'),
	(20000,'Ap dung tu 1/2010'),
	(25000,'Ap dung tu 2/2011');
select * from charges


ALTER TABLE vehicles 
ADD Vehicles varchar(255) not null;

insert into vehicles(car_company,number_of_seats,Vehicles)
values('Toyotas',16,'Hiace'),
	('Toyota',5,'Vios'),
	('Ford',5,'Escape'),
	('Kias',7,'Cerato'),
	('Kia',5,'Forte'),
	('HuyinDais',7,'Starex'),
	('HuyinDai',7,'Grain-i10');
select * from vehicles

insert into offer_subscription(id_manufacture,id_typeofservice,id_charges,id_vehicles,date_begin,date_finish,numofreg)
values(4,1,1,7,'2015-11-22','2016-11-22',4);
select * from offer_subscription