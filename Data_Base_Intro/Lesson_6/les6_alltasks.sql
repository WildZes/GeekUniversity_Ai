use vk;

-- Задание 1
-- Создать все необходимые внешние ключи и диаграмму отношений.
ALTER TABLE profiles 
  ADD CONSTRAINT profiles_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
     ON DELETE SET NULL;
    
-- Так как удаление строки в таблице friendship_statuses не должно удалять строку в таблице friendship, то выполняю следующую команду
ALTER TABLE friendship MODIFY status_id int unsigned null;
     
ALTER TABLE friendship 
  ADD CONSTRAINT friendship_user_id_fk
 	FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
      ON DELETE SET NULL;
  
ALTER TABLE media MODIFY media_type_id int unsigned null;

ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT media_media_type_id_fk
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
      ON DELETE SET NULL;

ALTER TABLE messages MODIFY from_user_id int unsigned null;
ALTER TABLE messages MODIFY to_user_id int unsigned null;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk
    FOREIGN KEY (from_user_id) REFERENCES users(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT messages_to_user_id_fk
    FOREIGN KEY (to_user_id) REFERENCES users(id)
      ON DELETE SET NULL;

ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT communities_users_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE;
      
-- Задание 2 (взято полностью из файла lesson6_examples.sql)
-- Создать и заполнить таблицы лайков и постов.
-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Проверим
SELECT * FROM likes LIMIT 10;

-- Создадим таблицу постов
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  views_counter INT UNSIGNED DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Задание 1 (после выполнения задания 2)
ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT posts_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE;

ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_id_fk
    FOREIGN KEY (target_id) REFERENCES media(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id);
   
-- Задание 3
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT p.gender, COUNT(p.gender) FROM profiles p, likes l
WHERE p.user_id = l.user_id
GROUP BY p.gender;
-- Не уверен в правильности выполнения, поэтому выполнил проверку следующими командами
SELECT * FROM likes;
SELECT l.user_id, p.user_id, p.gender FROM likes l, profiles p
WHERE l.user_id = p.user_id;
SELECT user_id, COUNT(*) FROM likes GROUP BY user_id;
SELECT gender, COUNT(*) FROM profiles
GROUP BY gender;

-- Задание 4
-- Подсчитать общее количество лайков десяти самым молодым пользователям
-- (сколько лайков получили 10 самых молодых пользователей).
SELECT 
  (SELECT COUNT(user_id) 
    FROM likes l WHERE l.user_id = p.user_id GROUP BY user_id) AS likes,
    birthday
    FROM profiles p
    ORDER BY birthday DESC
    LIMIT 10;
   
-- Задание 5
-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

-- Активность планирую расчетать по количеству постов + медиа + сообщений * 0.8 + лайков * 0.5 от конкретного пользователя 
SELECT id, (CONCAT (first_name, ' ', last_name)) as name,
(
(SELECT COUNT(1) FROM posts WHERE user_id = users.id) +
(SELECT COUNT(1) FROM media WHERE user_id = users.id) +
(SELECT COUNT(1) FROM messages WHERE from_user_id = users.id) * 0.8 +
(SELECT COUNT(1) FROM likes WHERE user_id = users.id) * 0.5
) AS cnt
FROM users
ORDER BY cnt DESC LIMIT 10;




