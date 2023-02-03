create table customer(
	id int primary key identity(1,1),
	name varchar(255) not null,
	citizen_ID int not null unique,
	address varchar(255) not null,
);

create table subscriber(
	id int primary key identity(1,1),
	sub_num int not null unique,
	sub_type varchar(255) not null,
	sub_date datetime not null,
	cus_id int foreign key references customer(id)
)

insert into customer(name,citizen_ID,address)
values('Dat',888888,'Ha Noi'),
('Duc',888887,'Nam Dinh'),
('Doc',888886,'Thai Binh'),
('Duoc',888885,'Binh Dinh');

insert into subscriber(sub_num,sub_type,sub_date,cus_id)
values(0862442297,'Tra truoc','2018-10-17',1),
	(0969992314,'Tra sau','2012-10-27',1),
	(0360970051,'Tra sau','2012-10-27',2),
	(0888888884,'Tra sau','2012-10-27',3)
	;
select * from customer;
select * from subscriber;

select * from subscriber left join customer on subscriber.cus_id=customer.id
where subscriber.sub_num =0862442297
;
select * from customer 
where citizen_ID =888888
;

select sub_num from subscriber left join customer on subscriber.cus_id=customer.id
where customer.citizen_ID =888888
;

select * from subscriber 
where sub_date = '2012-10-27';

select * from subscriber left join customer on subscriber.cus_id=customer.id
where customer.address = 'Ha Noi';

select count(id) as sl_kh from customer ;
select count(id) as sl_tb from subscriber ;
select count(id) as sl_tb_dk from subscriber 
where sub_date= '2012-10-27';

select * from subscriber left join customer on subscriber.cus_id=customer.id;

ALTER TABLE subscriber
ALTER COLUMN sub_date datetime not null;

ALTER TABLE subscriber
ALTER COLUMN sub_num nvarchar(255) not null;

ALTER TABLE subscriber
add CONSTRAINT  sub_date  check (sub_date <= getdate());

ALTER TABLE subscriber
add point int default 0;

select * from subscriber


create view View_KhachHang as
select * from customer;

create view View_KhachHang_ThueBao as
select subscriber.*,customer.name from subscriber left join customer on subscriber.cus_id=customer.id;

