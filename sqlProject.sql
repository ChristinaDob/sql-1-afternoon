create table person (
id serial primary key
,name text
,age INTEGER
,height INTEGER
,city text
,favorite_color text
);


INSERT into person (name, age, height, city, favorite_color)
VALUES ('Michael', 43, 182.88, 'Gilbert', 'blue')
,('Jenn', 25, 152.4, 'Boonton', 'red')
,('Maria', 60, 155.3, 'Lakeside', 'green')
,('John', 41, 180.8, 'Chandler', 'black')
,('Lisa', 34, 155.3, 'Randolph', 'pink');


select * from person
order by height desc;


select * from person
order by height asc;


select * from person
order by age desc;


select * from person
where age > 20;

select * from person 
where age = 18;


select * from person 
where age < 20 and age > 30;

select * from person 
where age != 27;


select * from person 
where favorite_color != 'red';

select * from person 
where favorite_color != 'red' and favorite_color != 'blue';

select * from person favorite_color = 'orange' or 'green';

select * from person
where favorite_color in ('orange', 'green', ' blue');

select * from person 
where favorite_color in ('yellow', 'purple');



-- Table - orders

create table orders (
  person_id serial primary key
  ,product_name text not null
  ,product_price INTEGER
  ,quantity INTEGER
);


insert into orders ( person_id, product_name, product_price, quantity ) VALUES ( 0, 'Product1', 10, 2 ),(1, 'product2', 15, 4),(2, 'product3', 20, 5),(3, 'product4', 9, 8),(4, 'product5', 19, 2);


select * from orders;


select sum(quantity) FROM orders;


select sum(product_price) from orders;


select sum()

select sum(product_price * quantity) from orders where person_id = 0;


-- Table - artist

insert into artist(artist_id, name)
values (276, 'Godsmack'),(277, 'Disturbed'),(278, 'Three Doors Down');



select * from artist order by name asc limit 5;


select * from artist where name like 'Black%';


select * from artist where name like '%Black%';



-- Table - employee

select * from employee
where city = 'Calgary';


select max(birth_date) from employee;


select min(birth_date) from employee;

select * from employee where reports_to = 2;

select count(*) from employee where city = 'Lethbridge';


-- Table - invoice

select count(*) from employee where billing_country
 = 'USA';


select max(total) from invoice;


select min(total) from invoice;


select count(*) from invoice where total < 5;


select count(*) from invoice where billing_state in ('CA', 'TX', 'AZ');


select avg(total) from invoice;


select sum(total) from invoice;






