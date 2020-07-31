use vk;

-- Проверка на наличие некорректных полей, когда дата создания более поздняя даты обновления
SELECT * FROM communities WHERE created_at > updated_at;

-- Изменение communities в для приведение таблице в соответствие, после проведенной проверки
UPDATE communities SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

-- Проверка на недостоверность столбца created_at в таблице communities_users (пользователь не мог стать частью сообщества до создания самого аккаунта пользователя)
SELECT cu.*, u.created_at FROM communities_users cu, users u
	WHERE cu.user_id = u.id
	  AND cu.created_at < u.created_at;
	 
-- Изменение communities_users в соответствии с найденной недостоверностью	  
UPDATE communities_users cu, users u SET cu.created_at = u.created_at
	WHERE cu.user_id = u.id
	  AND cu.created_at < u.created_at;

-- Проверка friendship на соответствие столбца requested_at столбцу users created_at
SELECT f.*, u.created_at FROM friendship f, users u
	WHERE f.user_id = u.id
	  AND f.requested_at < u.created_at;
	  
-- Изменение friendship в соответствии с предыдущей проверкой
UPDATE friendship f, users u SET f.requested_at = u.created_at
	WHERE f.user_id = u.id
	  AND f.requested_at < u.created_at;
	 
-- Проверка на соответствие столбцов confirmed_at и updated_at таблицы friendship
SELECT * FROM friendship WHERE confirmed_at > updated_at;

-- Изменение friendship в соответствии с предыдущей проверкой
UPDATE friendship SET confirmed_at = CURRENT_TIMESTAMP WHERE confirmed_at > updated_at;

-- Проверка на соответствие столбцов created_at и updated_at таблицы friendship_statuses
SELECT * FROM friendship_statuses fs WHERE created_at > updated_at;

-- Изменение friendship_statuses в соответствии с предыдущей проверкой
UPDATE friendship_statuses SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

-- Проверка на недостоверность столбца created_at в таблице media
SELECT m.*, u.created_at FROM media m, users u
	WHERE m.user_id = u.id
	  AND m.created_at < u.created_at;
	 
-- Изменение media в соответствии с найденной недостоверностью	  
UPDATE media m, users u SET m.created_at = u.created_at
	WHERE m.user_id = u.id
	  AND m.created_at < u.created_at;

-- Обновил таблицу, чтобы поле создания было более ранним нежели поле создания самих media
UPDATE media_types SET created_at = now() - interval 100 year;
	 