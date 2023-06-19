insert into customers
values(4,"Tuğba",200,"Turkey");

ALTER TABLE `new_schema`.`table2` 
RENAME TO  `new_schema`.`products` ;
delete from products;
insert into products
values(2,"Ayşe",21);

select *
from products;



inner join products;

SELECT * FROM customers
LEFT JOIN products ON customers.id = products.id
UNION;
SELECT * FROM products;
RIGHT JOIN products ON customers.id = products.id;

update customers
set country='Kıbrıs'
where id=2;

select *
from products;

select id, name, country
from customers
where id in (
select max(id) as maxID
from customers
group by country
);
create table `new_schema`.`orders`(`barcode_no` INT NOT NULL, `id` INT NOT NULL, PRIMARY KEY (`barcode_no`,`id`), FOREIGN KEY(`barcode_no`) REFERENCES products(barcode_no), FOREIGN KEY (`id`) REFERENCES customers(`id`));

select * from orders;