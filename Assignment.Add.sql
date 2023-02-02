insert into category(name, address,phone)
values ('Asus','USA',983232),
	('Apple','USA',987456),
	('Lenovo','USA',123456),
	('HP','USA',654321),
	('Nokia','JP',654321),
	('Samsung','HK',654321);

select * from  category;

insert into product(name,description,unit,price,amount,category_id)
values ('May Tinh T450','May Nhap Cu','Chiec',1000,10,1),
	('Dien Thoai Nokia 5670','Dien Thoai Dang Hot','Chiec',1000,200,5),
	('May In SamSung 450','May In Dang Loai Binh','Chiec',100,10,6),
	('May In Apple ','May In Xin','Chiec',100,10,2),
	('May In Lenovo ','May In Tbinh','Chiec',100,10,3);

select * from  product;