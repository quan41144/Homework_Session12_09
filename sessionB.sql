begin;
insert into orders(customer_id, product_id, quantity, total_amount) values
(1, 1, 8, 8000);
commit;

begin;
insert into orders(customer_id, product_id, quantity, total_amount) values
(1, 1, 11, 13000);
commit;