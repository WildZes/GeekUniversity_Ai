USE vk;

-- Задание 2
-- Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

SELECT DISTINCT communities.name,
  COUNT(communities_users.user_id) OVER() / MAX(communities.id) OVER() AS average,
  MAX(profiles.birthday) OVER(PARTITION BY communities.id) AS youngest,
  MIN(profiles.birthday) OVER(PARTITION BY communities.id) AS oldest,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities.id) AS users_count,
  COUNT(profiles.user_id) OVER() AS total_users,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities.id) / COUNT(profiles.user_id) OVER() * 100 AS '%%'
   FROM communities
     JOIN communities_users
       ON communities.id = communities_users.community_id
     JOIN profiles
       ON communities_users.user_id  = profiles.user_id;
       
