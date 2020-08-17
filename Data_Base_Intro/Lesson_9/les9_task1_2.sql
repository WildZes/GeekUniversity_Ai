-- “Транзакции, переменные, представления”
-- Задание 2
-- Создайте представление, которое выводит название name товарной позиции из таблицы products и
-- соответствующее название каталога name из таблицы catalogs.
use shop;
CREATE OR REPLACE VIEW prods_desc(prod_id, prod_name, cat_name) AS
SELECT p.id AS prod_id, p.name, cat.name
FROM products AS p
LEFT JOIN catalogs AS cat 
ON p.catalog_id = cat.id;

SELECT * FROM prods_desc;