--Them khoa ngoai cho Orders
alter table sales.Orders
add constraint fk_order 
foreign key(customer_id) 
references sales.Customers(customer_id);
--Them khoa ngoai cho OrderItems
alter table sales.OrderItems 
add constraint fk_orderitem1 
foreign key(order_id) 
references sales.Orders(order_id);

alter table sales.OrderItems 
add constraint fk_orderitem2
foreign key(product_id) 
references sales.Products(product_id);