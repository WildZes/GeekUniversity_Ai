-- “Администрирование MySQL”
-- Задание 1
-- Создайте двух пользователей которые имеют доступ к базе данных shop. Первому пользователю shop_read
-- должны быть доступны только запросы на чтение данных, второму пользователю shop — любые
-- операции в пределах базы данных shop.
DROP USER IF EXISTS 'shop_reader'@'localhost';
CREATE USER 'shop_reader'@'localhost' IDENTIFIED WITH sha256_password BY 'none';
GRANT SELECT ON shop.* TO 'shop_reader'@'localhost';

DROP USER IF EXISTS 'shop'@'localhost';
CREATE USER 'shop'@'localhost' IDENTIFIED WITH sha256_password BY 'none';
GRANT ALL ON shop.* TO 'shop'@'localhost';
GRANT GRANT OPTION ON shop.* TO 'shop'@'localhost';