begin;
set transaction isolation level read committed;
select count(*) from orders where quantity > 5;
-- result: 1
-- Chờ session B thêm đơn hàng
select count(*) from orders where quantity > 5;
-- result: 2
commit;

begin;
set transaction isolation level repeatable read;
select count(*) from orders where quantity > 5;
-- result: 1

select count(*) from orders where quantity > 5;
-- result: 1
commit;
-- sau commit, result: 2