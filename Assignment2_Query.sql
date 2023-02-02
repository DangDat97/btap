-- Hien Thi cac hang san xuat
select * from  category;
-- Hien Thi Tat ca cac san pham
select * from  product;

select * from  category
order by name asc;


select * from  product order by price desc;

select * from category where name = 'Asus';

select * from product where amount <=11;

select * from product where category_id= (select id from category where name='Asus');



select count(*) as soluong from category;

select count(*) as soluong from product;

select count(*) from product where category_id= (select * from category);

select count(*) from product where category_id in(select * from category);