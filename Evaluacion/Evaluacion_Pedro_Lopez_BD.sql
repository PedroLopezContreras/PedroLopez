create database Evaluaccion;
use Evaluaccion;

create table product(
id_producto int not null primary key,
product_Nombre varchar (191) not null,
Produt_descrption VARCHAR (191) not null,
price double (10,2) not null
);

create table order_detail(
order_detail_id int (10) not null primary key,
order_id int (10) not null,
product_id int (10) not null,
quantity int (10) not null,
foreign key (order_id) references orde (order_id),
foreign key (product_id) references product (id_producto)
);

create table orde(
order_id int (10) not null primary key,
customer_id int (10) not null,
creation_date DATE not null,
delivery_address VARCHAR (191) not null,
total double (15,2) not null,
foreign key (customer_id) references customer (customer_id)
);

create table customer_product(
customer_id int (10) not null primary key,
product_id int (10) not null
);

create table customer(
customer_id int (10) not null primary key,
name VARCHAR (191) not null,
email VARCHAR (191) not null
);

drop database Evaluaccion;