use vk;
-- Задание 1
-- Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.

-- Проиндексировать не удалось из-за следующей ошибки, которую не стал разбирать:
-- SQL Error [3152] [42000]: JSON column 'metadata' supports indexing only via generated columns
-- on a specified JSON path.
-- CREATE INDEX media_metadata_idx ON media(metadata);

CREATE INDEX messages_is_important_is_delivered_is_modified_idx ON messages(is_important, is_delivered, is_modified);

CREATE INDEX posts_is_public_is_archived_views_counter_idx ON posts(is_public, is_archived, views_counter);

CREATE INDEX profiles_birthday_idx ON profiles(birthday);

CREATE INDEX profiles_country_idx ON profiles(country);

CREATE INDEX profiles_city_idx ON profiles(city);

CREATE INDEX users_first_name_last_name_idx ON users(first_name, last_name);