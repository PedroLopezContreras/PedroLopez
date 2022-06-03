select product.id_producto, product_Nombre, order_detail.order_detail_id, product_id
from product
inner join order_detail
on product.id_producto = order_detail.order_detail_id

delimiter $$
create procedure SP_product(in id int, in nombre varchar (80), in precio int)
begin 
insert into product( id_producto, product_nombre, price) values (id, nombre, precio);
end $$
delimiter ;

call SP_product (5041, 'mani', 1000);