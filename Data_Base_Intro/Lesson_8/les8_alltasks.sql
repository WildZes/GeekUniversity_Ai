use vk;

SHOW CREATE TABLE likes;
ALTER TABLE likes DROP FOREIGN KEY likes_target_id_fk;

-- Задание 3
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT gender, COUNT(*) AS total
  FROM likes
  JOIN profiles
    ON profiles.user_id = likes.user_id
  GROUP BY gender
  ORDER BY total DESC
  LIMIT 1;
    
-- Задание 4
-- Подсчитать общее количество лайков десяти самым молодым пользователям
-- (сколько лайков получили 10 самых молодых пользователей).
SELECT CONCAT(first_name, ' ', last_name), u.id, birthday,
  (SELECT COUNT(*) FROM likes WHERE 
    (target_id IN (SELECT id FROM media WHERE media.user_id=p.user_id) AND target_type_id=3) OR 
    (target_id IN (SELECT id FROM posts WHERE posts.user_id=p.user_id) AND target_type_id=4) OR 
    (target_id IN (SELECT id FROM messages WHERE messages.from_user_id=p.user_id) AND target_type_id=1) OR
    (target_id=p.user_id AND target_type_id=2)) as total_likes
FROM users u
JOIN profiles p 
  ON u.id = p.user_id
ORDER BY birthday DESC LIMIT 10;

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
ORDER BY cnt LIMIT 10;

SELECT
  u.id, (CONCAT (first_name, ' ', last_name)) as name, COUNT(p.user_id) + COUNT(m.user_id) +
  COUNT(mes.from_user_id) * 0.8 + COUNT(l.user_id) * 0.5 AS total_likes
FROM users u 
LEFT JOIN posts p 
  ON u.id = p.user_id
LEFT JOIN media m
  ON u.id = m.user_id
LEFT JOIN messages mes
  ON u.id = mes.from_user_id
LEFT JOIN likes l
  ON u.id = l.user_id
GROUP BY u.id
ORDER BY total_likes;

SELECT
  u.id, (CONCAT (first_name, ' ', last_name)) as name, COUNT(p.user_id) + COUNT(m.user_id) +
  COUNT(mes.from_user_id) * 0.8 + 
  (SELECT COUNT(*) FROM likes WHERE 
    (target_id IN (SELECT id FROM media WHERE media.user_id=p.user_id) AND target_type_id=3) OR 
    (target_id IN (SELECT id FROM posts WHERE posts.user_id=p.user_id) AND target_type_id=4) OR 
    (target_id IN (SELECT id FROM messages WHERE messages.from_user_id=p.user_id) AND target_type_id=1) OR
    (target_id=p.user_id AND target_type_id=2)) * 0.5 AS total_likes
FROM users u 
LEFT JOIN posts p 
  ON u.id = p.user_id
LEFT JOIN media m
  ON u.id = m.user_id
LEFT JOIN messages mes
  ON u.id = mes.from_user_id
LEFT JOIN likes l
  ON u.id = l.user_id
GROUP BY u.id
ORDER BY total_likes;
