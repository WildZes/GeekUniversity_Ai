use vk;

SELECT * FROM profiles;

DESC users;

-- «Операторы, фильтрация, сортировка и ограничение»
-- Задание №1
ALTER TABLE users DROP created_at;

ALTER TABLE users DROP updated_at;

ALTER TABLE users ADD COLUMN created_at VARCHAR(255) DEFAULT '2020-07-30 10:17:02.0';
ALTER TABLE users MODIFY COLUMN created_at VARCHAR(255) DEFAULT '2020-07-30 10:17:02.0' COMMENT 'Время создания строки';

-- Не знаю почему не сработало.
-- ALTER TABLE users MODIFY COLUMN created_at VARCHAR(255) DEFAULT DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s') COMMENT 'Время создания строки';

ALTER TABLE users ADD COLUMN updated_at VARCHAR(255) DEFAULT '2020-07-30 10:17:02.0' COMMENT 'Время обновления строки';

-- Задание №2
ALTER TABLE users MODIFY COLUMN created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки';
ALTER TABLE users MODIFY COLUMN updated_at datetime ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки';

-- Задание №3
CREATE TEMPORARY TABLE storehouse_products (value int unsigned);
INSERT INTO storehouse_products VALUES (0), (2500), (0), (30), (500), (1);
SELECT * FROM storehouse_products ORDER BY value = 0, value;

-- «Агрегация данных»
-- Задание №1
SELECT AVG(TIMESTAMPDIFF(YEAR, birthday, NOW())) AS avg_age FROM profiles;

-- Задание №2
CREATE TEMPORARY TABLE all_days (d int);
INSERT INTO all_days SELECT DAYOFWEEk(DATE_ADD(birthday , INTERVAL (2020 - year(birthday)) YEAR)) FROM profiles;
SELECT
	DAYOFWEEk(DATE_ADD(birthday , INTERVAL (2020 - year(birthday)) YEAR)) as day_n,
	DATE_ADD(birthday , INTERVAL (2020 - year(birthday)) YEAR) as modified,
	birthday
FROM profiles;
SELECT d AS days, count(*) AS total FROM all_days GROUP BY d ORDER BY d ;