#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'voluptates', '2012-04-24 07:02:47', '2018-04-01 13:35:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'voluptas', '2011-10-30 13:20:20', '2010-10-29 14:18:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'perspiciatis', '2011-08-03 13:51:18', '2014-01-13 23:08:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'error', '1991-07-14 03:53:56', '2019-06-01 14:36:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'amet', '2003-07-01 17:17:35', '2013-08-02 03:37:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'exercitationem', '1998-10-05 12:52:37', '2012-01-26 05:59:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'corporis', '1991-12-15 18:02:23', '2015-09-18 15:17:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'rem', '2010-07-20 22:32:17', '2010-08-07 13:37:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'incidunt', '2000-09-19 21:25:07', '2011-04-10 17:26:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'doloremque', '2007-08-12 15:17:34', '2016-11-13 23:04:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'commodi', '1999-04-22 19:31:43', '2018-10-20 13:06:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'quam', '2013-05-28 10:48:41', '2020-03-08 11:27:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'neque', '1995-01-17 03:58:46', '2017-03-10 09:47:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'eius', '2018-01-11 05:16:51', '2015-03-08 01:24:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'sint', '2014-08-24 16:55:34', '2016-10-01 02:55:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'officiis', '2009-01-13 22:35:11', '2015-12-02 02:24:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'voluptatem', '2017-08-28 17:48:28', '2017-03-11 19:33:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'numquam', '1991-08-28 17:51:48', '2016-09-12 03:29:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'minima', '2008-04-23 14:59:07', '2011-01-21 06:35:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'aperiam', '1998-10-10 00:21:09', '2012-04-04 15:17:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'aspernatur', '1997-07-02 15:27:20', '2020-01-10 14:30:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'quidem', '1992-03-01 17:52:39', '2017-02-12 08:53:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'tempore', '2015-01-30 20:45:27', '2020-01-18 07:58:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'nam', '2002-03-02 03:23:06', '2018-11-19 03:58:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'quia', '1998-01-04 09:36:00', '2019-03-14 15:24:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'voluptatum', '2003-04-08 15:01:47', '2015-08-03 01:25:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'ullam', '2002-04-03 23:58:40', '2017-05-19 13:54:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'fuga', '2003-11-23 10:56:29', '2012-05-25 09:12:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'iure', '2005-08-24 10:37:33', '2014-06-25 22:55:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'provident', '2013-08-04 18:27:23', '2015-08-23 12:26:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'ut', '2015-05-01 11:42:33', '2013-06-03 18:11:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'quis', '1992-11-17 15:05:24', '2012-04-20 13:43:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'repudiandae', '2011-12-22 15:56:46', '2015-08-15 22:38:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'ipsum', '1997-07-16 01:18:09', '2013-01-19 18:32:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'ea', '2016-06-04 14:17:53', '2020-04-30 04:04:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'minus', '2004-01-18 17:13:41', '2020-02-20 10:31:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'consequatur', '2017-09-25 18:43:44', '2016-02-16 06:08:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'non', '2000-11-27 17:26:10', '2016-06-13 06:11:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'nostrum', '2018-12-07 16:11:48', '2019-06-24 12:42:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'perferendis', '2016-08-21 23:56:29', '2015-05-26 04:20:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'facilis', '1998-05-24 16:51:51', '2020-05-15 12:08:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'nihil', '1998-10-26 13:12:57', '2014-12-15 19:00:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'dolor', '2015-10-01 00:53:58', '2018-09-29 15:24:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'qui', '1994-06-30 11:13:30', '2018-10-16 03:43:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'accusamus', '2014-10-24 03:46:30', '2014-03-09 02:13:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'molestiae', '2011-10-14 09:08:02', '2014-08-23 16:13:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'nisi', '1992-07-09 16:18:45', '2019-06-15 23:26:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'distinctio', '2017-11-04 08:20:15', '2013-01-05 00:48:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'ad', '1995-03-02 01:22:39', '2019-03-14 03:38:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'earum', '2001-03-23 22:51:37', '2020-06-25 21:40:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'molestias', '2015-12-17 23:01:43', '2018-02-19 18:18:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'unde', '2005-09-01 11:24:52', '2015-03-31 19:41:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'quo', '1995-08-24 03:34:05', '2019-12-13 09:42:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'assumenda', '2002-01-14 07:06:47', '2011-08-14 16:13:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'possimus', '2015-01-03 10:48:00', '2011-08-13 11:22:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'sequi', '1993-09-10 23:00:40', '2017-12-21 21:28:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'laborum', '1999-09-08 22:22:33', '2012-06-29 06:40:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'blanditiis', '2004-01-04 13:18:59', '2013-11-11 14:33:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'debitis', '1991-07-08 06:31:27', '2017-08-24 01:09:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'pariatur', '1999-11-30 01:25:01', '2011-04-29 19:10:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'dolores', '2010-10-07 18:10:49', '2013-12-04 20:42:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'id', '2020-01-19 09:30:37', '2011-06-30 11:49:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'veritatis', '2019-07-18 06:36:47', '2019-04-28 23:19:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'dicta', '2000-06-21 12:09:21', '2014-03-21 10:19:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'magnam', '2014-02-04 06:18:42', '2017-11-27 04:06:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'vero', '2002-07-20 01:17:18', '2019-12-27 13:08:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'dignissimos', '1995-12-30 22:30:19', '2010-08-14 14:14:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'alias', '2000-02-04 22:25:07', '2012-10-25 04:00:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'velit', '1997-10-29 21:23:34', '2012-10-04 12:58:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'esse', '2014-05-28 17:11:14', '2014-04-15 15:29:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'soluta', '2003-03-13 18:31:35', '2012-05-13 14:15:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'eum', '2018-03-25 23:22:44', '2014-01-05 21:58:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'in', '1999-01-21 22:35:46', '2016-04-19 20:15:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'ratione', '1996-02-02 15:56:34', '2017-10-03 11:30:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'suscipit', '2007-07-23 01:30:38', '2010-10-27 19:36:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'asperiores', '2006-05-26 03:31:55', '2016-08-03 07:53:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'itaque', '1997-12-25 19:03:31', '2013-02-21 23:16:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'et', '2016-04-11 09:41:14', '2020-06-30 23:31:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'nesciunt', '2003-06-05 04:45:32', '2013-10-30 15:28:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'sed', '1993-08-21 07:29:46', '2013-11-05 21:20:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'vel', '1994-08-06 17:40:25', '2015-12-13 07:43:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'quos', '2018-11-30 10:44:48', '2012-10-04 02:42:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'sit', '1990-10-23 19:09:53', '2017-04-05 17:53:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'tempora', '1995-12-17 12:00:49', '2017-10-19 03:58:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'est', '1996-09-24 21:42:24', '2015-08-23 08:19:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'placeat', '2011-03-20 07:57:05', '2011-05-14 23:18:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'fugiat', '2005-06-15 23:13:41', '2010-08-13 07:29:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'aut', '2009-11-22 17:26:06', '2014-07-20 11:12:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'occaecati', '2010-09-01 05:32:51', '2013-07-08 00:42:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'culpa', '2007-01-21 05:17:51', '2018-04-01 08:10:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'dolorem', '2014-08-01 11:09:03', '2017-01-19 20:48:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'laudantium', '1993-08-29 04:55:15', '2019-10-17 06:19:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'quod', '2007-10-07 14:58:36', '2015-02-28 22:02:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'nobis', '2015-06-22 15:20:48', '2012-03-01 20:41:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'aliquid', '2014-01-27 10:25:12', '2011-12-23 21:21:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'doloribus', '2010-01-06 23:36:43', '2018-05-25 17:11:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'eos', '2012-09-08 11:07:41', '2011-04-24 13:55:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'voluptate', '2018-01-26 04:50:10', '2016-01-17 18:15:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'animi', '2008-09-16 10:13:32', '2018-12-02 20:18:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'omnis', '2006-06-23 22:11:48', '2016-02-28 07:28:45');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '1995-08-25 20:51:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2001-01-05 05:09:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '1996-02-05 09:08:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2015-01-18 04:57:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2018-06-13 05:26:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '1999-08-27 13:06:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2008-07-06 05:41:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2003-05-14 21:39:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '1996-10-24 19:25:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1999-08-26 04:23:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2018-05-22 22:08:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2002-11-04 17:06:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2010-11-26 15:38:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '2014-10-26 04:21:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2013-09-26 22:36:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1991-01-22 18:32:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '2006-07-21 07:09:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '1992-10-19 05:30:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '1993-03-19 10:56:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '2011-10-13 11:19:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '2002-12-30 16:33:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2000-10-04 11:48:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '2006-06-13 13:51:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '2019-09-07 09:59:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '1995-09-13 16:38:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '2013-01-13 06:17:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2018-11-25 03:28:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '2003-10-25 05:32:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '2018-08-14 09:56:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2014-02-09 16:39:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '2002-05-03 22:16:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '1992-05-27 23:43:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '2010-07-10 14:53:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '2005-10-03 07:12:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '2013-07-29 12:35:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '2018-11-06 08:35:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '1991-09-17 15:47:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '2008-01-25 17:00:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '2000-01-25 15:54:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '1994-09-08 18:44:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '2010-03-31 16:14:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '2004-07-01 08:11:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '1998-12-18 21:37:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '2010-10-16 22:44:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '2016-05-27 14:00:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '2016-06-03 10:08:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '2009-12-12 23:13:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '2005-07-14 08:16:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '2003-09-20 05:36:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '1993-06-17 13:46:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '2014-05-30 09:00:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '2016-06-07 22:13:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '1996-06-29 14:50:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '1998-11-27 23:06:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '2015-10-24 07:27:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '1994-07-09 11:38:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '2008-09-25 10:20:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '2009-07-19 12:09:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '1996-11-09 08:00:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '1994-11-23 12:13:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '2020-02-20 15:05:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '1999-03-11 03:38:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '2020-01-22 09:07:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '2011-01-06 12:36:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '1994-03-23 01:43:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '2020-04-27 04:18:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '1998-03-15 09:36:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '1996-05-08 10:48:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '2007-11-07 05:31:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '1999-07-24 12:37:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '2010-11-22 12:41:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '2004-11-25 19:25:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '1996-02-28 20:10:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '2004-11-18 04:04:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '2012-05-25 06:42:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '2014-06-18 21:38:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '1999-05-25 00:58:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '2013-02-15 00:48:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '2004-08-12 06:49:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '1993-02-02 20:41:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '1992-02-28 20:56:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '2018-04-05 17:28:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '2003-09-01 20:16:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '2017-05-19 05:39:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '2013-05-31 03:38:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '1997-01-07 22:27:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '2010-07-22 05:29:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '2004-10-01 13:32:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '2006-11-12 13:36:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '1993-01-28 15:24:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '2011-03-20 00:19:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '2013-09-28 17:42:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '2008-12-17 05:42:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '2008-02-23 11:34:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '2012-10-21 01:52:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '2019-07-24 19:32:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '2016-01-22 06:08:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '2010-08-21 16:09:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '2000-04-15 00:06:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '1992-12-22 11:10:03');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2019-07-05 11:01:18', '2010-03-08 00:12:11', '2020-07-11 21:18:00', '2016-12-01 06:02:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2007-10-07 11:00:18', '1990-12-11 03:34:40', '2020-05-07 17:03:05', '2017-04-07 05:52:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '1991-10-07 20:29:29', '2010-01-11 23:14:01', '1993-02-07 21:20:50', '2011-12-31 16:21:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '2017-01-05 08:58:14', '2016-04-19 10:50:14', '2003-06-01 00:00:13', '2016-05-01 10:13:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '2015-07-08 20:25:20', '2017-08-07 21:06:20', '2010-11-29 06:00:38', '2016-07-22 02:05:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 1, '1996-02-02 09:55:31', '2011-09-16 18:44:02', '1994-07-06 00:09:10', '2011-04-01 23:50:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 2, '2016-04-05 13:42:59', '2015-10-09 16:03:03', '1995-02-03 22:54:45', '2018-06-23 07:22:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 3, '2003-04-07 07:38:54', '2003-05-19 15:16:01', '2006-05-06 06:18:19', '2012-05-04 03:34:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 4, '2014-07-07 12:57:23', '1997-06-05 19:25:58', '2010-11-28 22:16:50', '2020-06-11 16:34:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 5, '1992-01-31 00:11:47', '2001-08-11 05:14:41', '1994-08-03 00:49:57', '2020-04-05 01:59:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 1, '2000-09-22 12:55:16', '2003-10-01 19:17:09', '2018-07-05 18:00:46', '2011-12-09 08:39:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 2, '2009-03-03 12:58:27', '1996-12-15 18:37:26', '1994-12-23 17:30:35', '2016-01-11 04:12:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 3, '2016-09-25 13:07:23', '1993-02-21 08:05:15', '2002-05-14 16:19:36', '2015-05-12 17:05:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 4, '2014-09-14 09:48:24', '2006-05-31 17:18:42', '2008-10-13 18:31:02', '2019-07-26 02:45:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 5, '2004-08-05 06:41:48', '1995-10-24 00:14:40', '2015-11-08 18:44:04', '2012-08-12 13:47:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 1, '1997-06-08 10:20:48', '2013-04-25 12:01:16', '1996-11-15 04:20:06', '2013-06-20 08:11:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 2, '2007-01-14 05:03:08', '1992-10-24 12:26:20', '2020-01-16 17:25:19', '2017-09-25 09:20:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 3, '2016-02-07 01:40:36', '2009-03-04 19:07:10', '2003-03-10 17:52:02', '2017-12-24 14:42:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 4, '2012-04-01 14:15:06', '2008-10-02 03:44:45', '1993-02-25 07:10:57', '2013-11-07 11:20:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 5, '2005-05-06 05:21:05', '2002-07-28 20:24:04', '2015-04-05 19:36:10', '2017-07-29 03:44:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 1, '1997-10-30 12:15:48', '2017-02-03 10:57:03', '2015-02-24 10:04:40', '2013-02-12 03:33:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 2, '1990-08-13 04:01:08', '2003-08-14 07:18:41', '2015-02-26 06:37:32', '2010-11-23 08:43:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 3, '2015-12-28 01:51:26', '2018-04-29 17:42:57', '2012-05-05 13:50:33', '2012-11-23 06:08:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 4, '1998-08-26 20:37:21', '2012-07-03 23:11:21', '2010-01-08 20:24:13', '2017-04-09 18:07:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 5, '2006-09-09 11:55:17', '2009-01-25 13:38:37', '2003-05-10 09:51:57', '2020-03-04 12:32:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 1, '1999-08-25 14:15:12', '1991-01-12 21:14:43', '2006-06-14 10:00:46', '2017-12-28 18:19:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 2, '2012-03-09 21:16:21', '2017-02-06 08:38:30', '2018-01-31 03:02:20', '2016-07-21 14:41:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 3, '2013-05-06 06:21:22', '2001-08-12 15:31:02', '2020-05-11 13:50:22', '2013-12-26 12:25:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 4, '2008-08-27 01:22:19', '2017-01-13 12:11:44', '1992-04-24 20:04:46', '2010-10-03 00:57:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 5, '1995-03-30 02:57:17', '1990-12-19 03:17:49', '1997-03-07 15:03:08', '2014-08-23 05:41:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '2008-01-25 16:40:46', '2012-01-31 09:25:54', '1992-02-22 20:44:35', '2011-04-18 14:52:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 2, '2012-03-29 05:43:02', '2018-06-02 02:16:53', '2004-01-07 07:20:45', '2013-03-25 16:54:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 3, '2019-09-13 00:03:42', '2011-06-11 09:41:24', '1996-10-27 16:01:36', '2011-05-10 03:28:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 4, '1993-04-30 13:27:25', '2002-03-10 02:32:10', '2012-01-05 02:22:53', '2013-08-25 07:47:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 5, '2001-12-25 12:10:33', '1994-05-30 00:17:02', '1993-02-20 10:43:57', '2012-05-20 10:44:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 1, '2018-07-04 03:12:44', '1991-09-22 02:48:10', '1997-02-17 21:17:08', '2020-03-26 10:36:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 2, '2012-04-24 20:52:21', '2013-01-30 08:35:42', '2010-03-05 01:03:46', '2012-03-10 00:27:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 3, '1995-10-29 02:59:20', '2018-07-27 23:05:55', '2000-03-31 06:39:51', '2020-01-10 20:32:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 4, '2017-01-11 16:08:39', '2005-03-13 14:49:11', '1992-07-25 13:46:55', '2012-12-11 15:36:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 5, '2007-11-14 23:55:17', '2018-04-18 19:27:56', '1998-08-30 14:25:30', '2015-11-03 12:22:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 1, '1999-02-01 10:15:19', '1993-05-31 08:23:22', '2013-04-25 08:39:49', '2013-10-30 07:25:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 2, '2002-01-26 14:44:06', '1992-11-14 18:04:47', '2018-11-03 02:01:02', '2018-12-03 22:12:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 3, '2009-04-03 09:29:03', '1998-04-21 16:05:34', '1996-03-07 05:04:35', '2018-12-12 10:43:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 4, '2012-05-23 20:54:02', '2018-06-25 10:10:41', '1995-02-22 03:13:26', '2012-09-13 03:22:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 5, '2005-12-19 18:28:28', '2000-10-12 15:31:04', '2008-09-11 02:58:52', '2020-01-14 03:47:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 1, '2014-01-10 01:09:45', '2012-04-23 23:59:02', '2008-03-01 15:46:33', '2017-07-28 17:33:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 2, '2011-02-13 16:50:04', '1990-07-26 04:10:02', '2015-04-07 08:16:31', '2018-10-03 16:47:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 3, '2006-06-05 07:33:07', '1996-04-30 18:46:39', '2001-12-16 17:45:16', '2019-06-28 09:29:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 4, '1998-10-12 22:11:16', '2004-02-28 12:47:42', '2012-03-20 14:03:50', '2012-11-18 05:53:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 5, '2015-03-13 11:44:23', '1996-06-01 18:39:52', '1995-10-10 18:53:47', '2020-03-29 07:07:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 1, '1999-07-17 15:05:08', '1995-10-13 04:40:52', '2002-12-23 06:25:36', '2014-03-16 16:37:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 2, '2018-05-13 02:42:13', '2003-10-18 20:05:08', '2012-12-30 15:35:26', '2019-10-03 18:58:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 3, '2014-02-16 05:59:57', '2003-12-27 00:43:55', '1991-12-29 14:04:00', '2020-07-11 03:00:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 4, '2008-04-02 15:18:46', '2005-10-07 20:28:21', '2017-01-25 06:25:13', '2019-09-05 13:25:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 5, '2000-08-13 16:36:56', '2007-10-13 06:15:18', '1991-05-21 11:31:52', '2013-12-20 12:13:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 1, '2003-03-26 07:44:00', '2003-12-10 02:34:05', '2016-03-09 15:33:53', '2012-11-07 10:36:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 2, '2002-02-25 01:41:44', '2008-08-28 04:19:19', '1991-12-30 14:49:08', '2015-04-26 19:38:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 3, '1992-03-14 16:04:55', '1993-12-27 10:59:01', '2010-04-12 00:19:39', '2015-01-23 18:59:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 4, '2008-12-18 13:23:54', '1992-12-14 22:35:18', '2004-07-16 17:06:56', '2018-04-24 10:01:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 5, '1995-11-03 21:38:24', '1992-11-05 19:43:28', '1991-08-05 09:57:20', '2016-12-21 17:13:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '2005-07-01 04:03:38', '2020-02-20 13:46:06', '2001-09-02 15:27:18', '2013-04-01 13:11:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '1997-02-26 08:05:04', '2007-02-15 07:21:25', '2018-11-19 18:44:48', '2012-06-22 10:06:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 3, '1993-12-30 23:01:15', '2004-02-05 09:06:47', '2002-11-02 09:18:14', '2020-01-07 01:03:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 4, '2000-02-08 18:55:24', '2011-11-24 22:44:16', '1997-03-08 14:12:38', '2020-06-30 19:07:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 5, '1999-07-21 06:21:08', '2015-05-02 00:06:59', '1991-06-08 17:24:01', '2012-06-27 07:03:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 1, '1995-04-22 21:02:22', '2017-07-29 00:20:54', '1995-04-27 01:06:08', '2019-03-28 11:54:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 2, '2012-06-30 11:41:50', '1997-12-10 00:51:20', '2010-12-26 10:02:43', '2017-06-10 10:36:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 3, '2009-03-10 14:06:00', '2018-04-06 02:47:07', '1993-11-18 03:19:07', '2017-04-02 05:22:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 4, '1998-11-13 13:14:06', '2013-06-21 01:19:29', '1996-03-04 07:21:48', '2016-07-31 06:22:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 5, '1991-11-17 01:39:49', '2003-04-04 06:42:44', '2013-01-23 00:28:26', '2013-08-01 00:19:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 1, '2013-01-03 16:39:49', '2009-08-03 09:25:28', '2002-08-16 15:38:12', '2019-01-08 17:10:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 2, '1994-10-05 03:30:29', '2015-04-29 09:10:41', '1992-07-05 13:13:07', '2017-01-17 07:50:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 3, '2015-03-08 00:43:53', '2005-04-22 22:18:59', '2019-03-26 06:56:35', '2012-11-25 02:50:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 4, '2006-10-20 04:46:01', '2019-09-08 16:02:25', '2009-09-11 01:05:33', '2011-10-16 23:57:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 5, '1992-12-19 02:37:22', '2005-03-26 09:29:21', '1998-02-19 08:41:33', '2013-11-15 12:51:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 1, '2006-08-16 16:37:45', '2009-05-11 02:38:04', '2015-04-14 06:37:05', '2019-07-22 20:39:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 2, '1996-11-02 05:16:23', '2009-11-14 13:35:28', '2000-11-04 03:01:59', '2017-11-06 08:11:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 3, '1994-03-25 08:18:20', '2018-12-21 09:51:34', '2009-01-25 05:23:16', '2011-05-14 15:19:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 4, '1997-10-07 03:04:56', '1995-07-07 21:17:23', '2013-12-23 09:43:53', '2017-03-18 14:11:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 5, '2003-12-16 15:04:10', '1991-11-08 22:19:45', '1998-06-18 05:35:49', '2010-08-03 08:29:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 1, '2000-02-16 04:27:12', '2017-03-02 22:01:30', '2005-08-14 00:20:04', '2017-06-05 13:42:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 2, '1997-04-29 21:54:31', '2019-08-24 13:28:34', '1994-12-01 04:19:11', '2019-01-06 03:50:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 3, '2016-05-30 13:48:10', '2006-05-02 09:28:36', '1994-08-16 00:28:33', '2013-08-01 00:45:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 4, '1992-08-07 01:36:26', '2003-10-06 09:01:17', '1995-08-08 01:55:39', '2016-07-22 14:40:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 5, '1998-06-29 01:55:22', '2019-06-19 08:17:58', '2004-09-29 13:36:16', '2017-05-17 04:11:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 1, '2006-07-26 07:56:13', '2019-10-19 20:45:43', '2003-10-17 01:16:25', '2017-02-06 22:06:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 2, '2017-03-07 09:33:38', '2012-10-04 00:07:47', '2006-03-29 11:10:13', '2020-04-10 10:54:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 3, '1991-01-19 17:57:11', '2015-01-24 15:56:00', '2015-04-09 16:25:37', '2018-02-13 12:04:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 4, '2004-07-02 14:10:49', '1995-08-04 14:34:20', '2015-06-22 07:59:48', '2012-07-28 15:45:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 5, '1993-08-04 21:36:52', '2016-04-07 15:30:29', '2006-02-06 10:52:52', '2014-09-25 16:03:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 1, '2017-07-04 23:22:25', '2010-11-15 10:47:05', '1996-08-09 17:28:51', '2011-10-23 00:33:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 2, '2003-01-30 18:51:59', '2006-06-14 02:30:35', '2018-07-15 16:23:44', '2016-03-20 17:59:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 3, '2005-05-15 01:02:36', '1996-06-09 10:13:18', '2008-02-17 05:49:30', '2017-05-28 13:54:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 4, '2003-01-21 12:19:54', '2020-01-29 00:57:50', '2008-01-30 21:29:24', '2018-11-08 10:52:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 5, '2007-04-06 09:39:28', '2005-04-27 09:50:27', '2010-03-05 15:41:08', '2013-04-23 11:41:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 1, '2002-11-15 14:44:33', '2018-10-07 19:19:08', '2003-07-12 07:27:50', '2018-11-07 03:59:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 2, '2004-01-31 08:09:14', '2007-10-27 22:30:36', '1998-04-29 02:15:42', '2016-10-28 05:39:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 3, '1996-02-03 22:10:07', '1991-02-20 02:57:37', '1990-08-12 06:29:50', '2014-09-24 01:20:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 4, '1995-05-04 22:01:32', '2005-04-05 16:09:02', '2005-06-07 15:13:45', '2018-08-31 04:08:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 5, '2018-09-24 23:44:30', '2012-12-11 06:44:09', '2011-02-24 20:57:14', '2016-11-19 19:51:45');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'eum', '1999-04-29 08:10:21', '1976-08-01 09:43:52');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'magni', '1994-09-16 15:40:03', '2002-02-23 00:14:23');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'aliquid', '1999-09-29 19:17:50', '1978-06-09 13:28:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'maiores', '2012-09-13 06:03:28', '2000-04-22 08:05:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'est', '1971-05-22 19:32:32', '2014-11-20 03:24:58');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'animi', 0, '\"YES\"', 1, '1992-09-01 19:21:48', '2000-05-09 03:10:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'ab', 87915, '\"YES\"', 2, '1989-07-01 03:57:19', '2016-02-18 01:19:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'dolor', 7, '\"YES\"', 3, '1975-05-05 03:06:14', '2018-09-05 09:52:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'eius', 4, ' \"NO\"', 4, '1988-08-07 03:55:47', '1998-03-31 15:06:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'quibusdam', 9523, '\"YES\"', 5, '2005-02-16 18:27:31', '2013-11-28 08:59:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'sed', 926752, ' \"NO\"', 6, '1971-03-14 04:44:36', '2001-12-13 05:50:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'ea', 174496, ' \"NO\"', 7, '1998-06-20 14:09:04', '2010-01-17 18:28:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'alias', 236, '\"YES\"', 8, '1992-09-15 16:59:46', '1998-10-07 17:54:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'in', 690177, '\"YES\"', 9, '2010-08-02 18:37:20', '1995-02-28 01:57:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'quibusdam', 60388313, '\"YES\"', 10, '2009-12-28 19:26:07', '1973-06-22 14:11:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'et', 521, '\"YES\"', 1, '1983-10-21 11:52:36', '2008-02-07 19:33:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'in', 58, ' \"NO\"', 2, '2011-08-25 16:42:00', '2001-04-29 01:01:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'similique', 8, ' \"NO\"', 3, '1980-10-30 13:04:13', '2017-10-02 23:06:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'est', 65208843, ' \"NO\"', 4, '2010-11-01 05:42:15', '1973-12-31 00:55:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'quisquam', 326163, ' \"NO\"', 5, '1996-01-10 11:24:09', '1981-12-06 10:44:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'velit', 84444, ' \"NO\"', 6, '1994-04-14 12:14:39', '1978-09-11 16:48:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'magnam', 3, ' \"NO\"', 7, '2007-04-21 11:04:33', '1997-09-05 10:57:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'eum', 77, '\"YES\"', 8, '2015-12-14 11:02:59', '2002-04-02 12:23:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'sit', 8994, ' \"NO\"', 9, '2005-09-14 16:22:37', '1995-03-16 01:51:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'ducimus', 344, ' \"NO\"', 10, '2015-07-23 12:45:45', '1982-09-27 07:58:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'dicta', 6388866, '\"YES\"', 1, '2014-10-20 17:52:38', '1987-04-21 19:17:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'voluptatibus', 40763, '\"YES\"', 2, '1997-12-19 16:44:23', '1975-01-14 05:13:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'iste', 6196775, '\"YES\"', 3, '2004-05-07 12:36:52', '1974-09-29 03:08:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'vitae', 5342500, ' \"NO\"', 4, '1979-05-04 17:06:25', '1970-04-13 15:14:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'facere', 45, '\"YES\"', 5, '2007-07-26 09:06:31', '1990-06-09 16:14:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'nihil', 12, ' \"NO\"', 6, '2001-02-16 04:26:02', '1979-11-26 08:07:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'molestiae', 0, ' \"NO\"', 7, '2006-08-10 03:54:32', '1987-06-23 04:57:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'sit', 0, ' \"NO\"', 8, '1990-06-25 05:46:27', '1976-02-29 15:39:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'dolorum', 7, '\"YES\"', 9, '2014-12-22 23:47:30', '2006-06-12 16:00:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'suscipit', 56916, ' \"NO\"', 10, '1981-08-08 00:03:12', '1973-04-01 20:28:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'voluptas', 822, '\"YES\"', 1, '1997-04-09 19:17:10', '1987-10-30 01:54:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'quod', 128127, ' \"NO\"', 2, '1996-04-16 16:59:59', '1983-07-29 01:55:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'repellendus', 3638, ' \"NO\"', 3, '2014-11-22 19:11:53', '1972-02-29 17:45:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'veniam', 3144109, ' \"NO\"', 4, '2001-09-11 00:46:27', '1984-12-09 21:09:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'rerum', 487, ' \"NO\"', 5, '2009-04-03 01:36:09', '1996-09-21 14:51:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'repellat', 62407, ' \"NO\"', 6, '1983-04-04 21:43:04', '1983-05-20 19:33:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'corrupti', 4486, ' \"NO\"', 7, '1970-04-05 06:47:56', '1979-11-26 03:44:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'repellat', 9534, '\"YES\"', 8, '2020-05-09 16:04:50', '2001-12-21 18:07:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'quam', 822, '\"YES\"', 9, '2003-04-04 13:43:47', '1977-09-03 10:54:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'doloremque', 217, ' \"NO\"', 10, '1973-11-11 19:45:51', '2010-11-30 14:34:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'a', 74386, '\"YES\"', 1, '1975-08-19 20:50:16', '1984-04-15 19:02:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'dolor', 0, '\"YES\"', 2, '1981-11-29 21:42:09', '2002-06-02 17:29:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'aliquam', 5164822, ' \"NO\"', 3, '1981-06-12 05:56:01', '2014-02-10 14:27:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'impedit', 3, '\"YES\"', 4, '1994-01-28 20:42:36', '2002-03-22 20:38:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'non', 55736, '\"YES\"', 5, '2010-02-13 22:30:44', '1981-09-30 13:59:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'voluptatem', 187754363, '\"YES\"', 6, '2012-12-19 05:14:01', '1989-11-25 06:39:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'ut', 79849620, ' \"NO\"', 7, '2008-10-24 16:57:36', '2001-06-22 17:42:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'quis', 52263, ' \"NO\"', 8, '2016-06-01 04:25:21', '1986-11-16 19:38:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'dolor', 23906970, ' \"NO\"', 9, '2007-03-29 10:10:28', '1974-02-01 09:53:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'assumenda', 28, ' \"NO\"', 10, '1974-06-19 18:13:50', '2000-02-29 02:13:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'officia', 2, ' \"NO\"', 1, '2006-05-23 10:12:51', '1976-11-19 18:55:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'unde', 7539, '\"YES\"', 2, '2006-05-21 13:26:06', '1983-04-12 06:16:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'eum', 13108, ' \"NO\"', 3, '1992-06-27 12:26:19', '1988-07-22 22:34:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'autem', 2, ' \"NO\"', 4, '1973-11-12 16:37:10', '1988-12-19 04:45:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'pariatur', 65, '\"YES\"', 5, '1971-12-25 04:25:08', '2011-05-18 10:10:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'commodi', 5, ' \"NO\"', 6, '1994-12-20 07:05:56', '2004-09-20 09:31:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'tempora', 55494, '\"YES\"', 7, '2001-03-17 17:08:35', '1980-11-22 02:47:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'et', 5, '\"YES\"', 8, '2003-04-25 22:13:20', '1994-08-10 16:47:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'excepturi', 580011554, ' \"NO\"', 9, '1988-04-09 14:48:10', '2012-01-18 17:53:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'voluptatem', 902, ' \"NO\"', 10, '2009-12-12 00:25:43', '1991-07-31 18:42:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'ipsa', 0, '\"YES\"', 1, '1983-06-29 05:15:17', '2014-12-21 17:53:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'molestiae', 391, '\"YES\"', 2, '2019-02-28 20:19:07', '1981-02-20 12:33:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'cumque', 1425, '\"YES\"', 3, '2012-07-01 13:55:57', '1971-05-18 06:51:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'eos', 0, '\"YES\"', 4, '1977-08-24 20:00:14', '1980-08-13 16:00:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'quod', 119, '\"YES\"', 5, '2010-11-23 16:42:11', '1996-05-05 02:58:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'temporibus', 252, ' \"NO\"', 6, '1983-05-18 19:00:15', '1974-03-07 12:58:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'molestiae', 255971323, '\"YES\"', 7, '1989-05-23 07:33:22', '2004-07-02 23:33:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'consequuntur', 6360813, ' \"NO\"', 8, '2013-01-12 01:58:49', '2018-01-14 11:12:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'dolor', 17, ' \"NO\"', 9, '1994-01-05 08:07:23', '1973-04-17 20:05:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'tempora', 5, ' \"NO\"', 10, '1988-09-30 23:57:08', '1996-09-28 15:40:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'dolore', 27736, '\"YES\"', 1, '1974-11-29 11:02:55', '1996-06-25 21:57:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'est', 4833295, '\"YES\"', 2, '1985-01-13 13:35:59', '1989-11-20 21:48:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'maxime', 39713307, '\"YES\"', 3, '2013-02-17 19:09:58', '1984-04-26 16:22:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'magnam', 5701, ' \"NO\"', 4, '1975-01-27 05:43:35', '2012-04-16 09:43:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'sunt', 743, '\"YES\"', 5, '2011-12-12 20:10:47', '1992-09-29 11:33:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'velit', 497231, ' \"NO\"', 6, '1997-08-27 05:00:44', '1996-03-31 06:10:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'ut', 30, '\"YES\"', 7, '1995-04-16 16:42:23', '2017-01-07 08:07:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'quia', 214393293, '\"YES\"', 8, '1992-10-31 10:04:03', '2011-10-22 16:01:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'enim', 7848130, ' \"NO\"', 9, '2017-05-25 22:29:45', '2010-09-28 12:35:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'quas', 25376727, ' \"NO\"', 10, '1976-07-31 05:30:48', '2008-07-26 18:15:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'quam', 2, ' \"NO\"', 1, '1998-04-06 05:11:46', '1991-12-20 11:43:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'similique', 25, ' \"NO\"', 2, '2010-12-05 03:56:29', '1998-01-07 20:44:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'dolorem', 1505342, ' \"NO\"', 3, '2002-09-29 21:04:19', '1979-12-12 13:03:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'aliquam', 0, ' \"NO\"', 4, '1986-03-01 19:04:53', '1985-03-21 02:23:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'quos', 6, '\"YES\"', 5, '1980-11-05 21:21:58', '1983-03-07 19:12:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'harum', 484125938, ' \"NO\"', 6, '2017-09-07 21:19:09', '1985-07-08 06:12:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'eligendi', 99243017, ' \"NO\"', 7, '1989-08-03 17:37:41', '1981-07-15 17:51:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'aut', 513, ' \"NO\"', 8, '1970-02-07 19:35:52', '1986-11-20 21:22:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'non', 99586693, ' \"NO\"', 9, '2010-11-12 06:57:21', '2014-01-14 16:14:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'sunt', 2873425, ' \"NO\"', 10, '1996-10-07 04:23:28', '2013-12-14 06:05:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'doloremque', 162957858, '\"YES\"', 1, '2005-05-28 10:49:23', '1999-01-22 21:34:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'qui', 854958750, ' \"NO\"', 2, '2018-03-01 11:44:31', '1975-06-13 00:27:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'similique', 5, ' \"NO\"', 3, '1983-06-28 05:55:38', '2014-12-09 04:53:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'voluptatibus', 37, ' \"NO\"', 4, '2003-11-10 15:11:40', '1993-03-28 00:48:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'pariatur', 3202394, '\"YES\"', 5, '1986-08-31 11:45:27', '1981-04-23 00:42:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'sunt', 88596734, '\"YES\"', 6, '1995-10-12 18:07:22', '1989-02-01 16:59:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'quos', 1612271, '\"YES\"', 7, '1998-10-16 05:38:35', '2006-03-16 15:34:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'repellat', 82983, '\"YES\"', 8, '1995-10-23 19:13:46', '2005-03-09 12:07:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'id', 0, '\"YES\"', 9, '2017-09-28 01:29:46', '1990-05-31 22:57:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'a', 27560, '\"YES\"', 10, '1974-09-30 09:24:40', '2018-12-15 02:48:07');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'cumque', '2007-03-03 08:49:27', '2020-07-07 17:15:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'repellat', '2017-11-02 15:07:26', '2020-07-14 16:27:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'est', '2007-02-01 07:27:37', '2020-07-16 17:40:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'fugit', '2011-04-15 19:18:52', '2020-07-18 14:43:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'tenetur', '2005-12-08 19:21:50', '2020-07-23 11:01:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'maiores', '2008-02-18 21:36:54', '2020-07-12 21:15:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'excepturi', '1998-07-23 18:02:30', '2020-07-04 19:27:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'dicta', '1994-12-20 23:02:57', '2020-07-05 14:10:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'qui', '1998-06-07 11:05:34', '2020-07-01 19:35:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'provident', '1998-11-14 09:47:18', '2020-07-02 02:30:37');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'Reprehenderit voluptatum ut eveniet. Deserunt nihil blanditiis suscipit et id. Atque voluptatibus veritatis nesciunt fugiat et et qui.', 0, 1, '2018-01-04 14:06:21', '2020-07-18 20:41:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'Fugit dolores nihil illum tempora. Praesentium voluptas occaecati similique quia omnis quae ratione. Iusto ea aut ipsa voluptate in laborum voluptatem cum. Et voluptates molestiae modi doloribus. Asperiores quos qui porro aut.', 1, 1, '2005-02-02 03:48:28', '2019-09-25 02:47:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'Est id et ut sed. Quaerat reiciendis in minima perspiciatis voluptas. Aut amet quia quia rem quis dignissimos dolor.', 1, 1, '1995-11-03 06:26:03', '2020-06-17 09:17:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'Deserunt libero quibusdam alias voluptatem suscipit atque est culpa. Soluta omnis necessitatibus inventore praesentium voluptate molestiae eveniet. Est laudantium minima totam. Ut quos temporibus occaecati atque amet ea. Possimus temporibus est eos vero.', 0, 0, '1999-06-07 18:09:33', '2019-11-16 20:53:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'Quis non et voluptatem. Fuga impedit quia nulla quam molestiae sit. Quo nobis voluptatem sed recusandae rerum esse. Nobis quo dolorem quidem ab voluptatem.', 0, 1, '2000-09-10 12:11:00', '2020-05-08 13:29:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'Necessitatibus sapiente laborum est quo fuga qui ut. Dolores rerum illo quia eaque est. Quo eligendi autem voluptatibus et et sunt dicta. Quia inventore explicabo at ut eos dolor quaerat.', 0, 1, '2007-12-01 23:51:23', '2019-11-10 18:30:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 7, 7, 'Non fugiat molestias deserunt ipsam debitis iste quis rerum. Qui dolore sint enim vitae ut.', 0, 1, '1997-04-08 06:55:36', '2019-08-29 00:44:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'Doloremque labore voluptatem minima. Sit qui tempore ducimus voluptatibus. Qui temporibus est et. Quas et illum laboriosam a assumenda voluptatem quae.', 0, 1, '1998-04-24 20:32:16', '2020-07-02 18:24:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 9, 9, 'Architecto ut quod non repellendus eligendi error voluptas. Aut nulla harum reprehenderit sed cum facilis nulla. Est excepturi at id praesentium reiciendis et vel.', 0, 1, '2013-03-19 04:30:20', '2020-04-20 23:29:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 10, 10, 'Sint velit eaque quae qui consequatur eaque atque laborum. Sed nobis sint rem molestiae rerum.', 1, 1, '2016-03-29 00:19:33', '2019-12-30 11:24:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 11, 'Praesentium nemo non laudantium sapiente neque. Ipsum dolor perferendis sit amet qui. Mollitia iure ut ut sint. Omnis placeat molestias eos aperiam adipisci provident. Nam aperiam optio quis.', 1, 0, '2015-09-14 06:29:28', '2019-12-21 06:55:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 12, 12, 'Quo non aliquam quod ex perferendis nisi. Maxime labore exercitationem tempore culpa iusto deleniti. Aspernatur beatae minima qui. Excepturi eveniet velit impedit et rem.', 0, 1, '1999-07-14 04:42:50', '2019-11-05 08:52:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 13, 13, 'Recusandae adipisci ullam sapiente delectus nam ut molestiae. Rem tempora at a aut labore. Sit quis et et sunt nihil expedita. Molestiae corrupti et illo eos.', 0, 1, '2006-10-31 13:41:09', '2020-04-09 05:38:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 14, 14, 'Dolore veritatis quidem dolores adipisci. Optio perferendis eos voluptatem sint voluptatem. Aliquid rerum sapiente officia quia rerum aut modi.', 0, 1, '2016-12-25 07:09:24', '2019-12-30 14:03:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 15, 15, 'Magnam aut quia quasi deserunt. Atque dolorem enim totam praesentium debitis natus. Unde blanditiis consequatur rerum maxime laboriosam hic. Porro consectetur ut quis quas fuga.', 1, 0, '2014-07-19 23:14:09', '2019-08-21 06:02:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 16, 16, 'Eligendi debitis quam eveniet. Cum aut neque exercitationem alias. Vero consequatur quia voluptatem et.', 1, 0, '2010-07-04 20:04:32', '2019-12-29 02:33:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 17, 17, 'Unde minima corporis aliquid qui. Nobis ea ipsa ducimus pariatur. Sed earum perferendis est id cupiditate consectetur.', 0, 1, '2008-07-13 17:47:04', '2019-08-24 16:50:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 18, 'Dolorem sapiente id fuga itaque illum fugit qui nihil. Consequatur quos sed et ut. Itaque aut enim cupiditate voluptatibus veniam aperiam. Facere illum beatae culpa quod error dolor iure fugit.', 1, 1, '2015-04-12 21:52:05', '2020-07-02 18:21:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'Ad similique harum itaque non hic. Sed ipsa odit facere assumenda cupiditate. Libero aut laborum et distinctio deleniti consequatur eaque.', 1, 1, '2007-12-27 08:00:08', '2019-11-24 16:20:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 20, 20, 'Adipisci impedit enim est nemo ducimus adipisci et. Eius et vero ipsa rerum. Necessitatibus sit laboriosam velit ab.', 0, 0, '2004-04-17 05:28:06', '2019-08-11 22:31:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 21, 21, 'Soluta a quis et aut incidunt. Quia harum et sed hic. Et odit quibusdam tenetur recusandae aut totam sed exercitationem.', 1, 1, '2010-02-26 12:20:39', '2019-09-17 20:35:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 22, 22, 'Dignissimos architecto quaerat voluptatum velit quod sed. Est possimus sit sed aut ut exercitationem. Ullam unde eligendi animi ducimus aut quia ut placeat. Aperiam eligendi deleniti quis nam.', 0, 0, '1995-03-05 05:59:40', '2019-12-22 18:02:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 23, 23, 'Sapiente temporibus quas aut voluptas. Quisquam optio et error dicta. Aut cupiditate et nesciunt rerum ut aut. Eum porro quasi sunt praesentium modi velit.', 1, 1, '2013-12-21 08:14:39', '2020-03-04 18:22:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 24, 24, 'Expedita saepe fugit atque in. Sunt iusto sit et ex deleniti rem qui. Est assumenda voluptatem maxime atque deleniti. Delectus consequuntur quaerat dolores.', 1, 1, '2018-05-10 14:39:14', '2019-07-26 15:00:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 25, 25, 'Qui non dicta placeat ducimus. Nulla rerum error officiis nostrum animi esse dolorum. Consequatur in ipsa sed dolore itaque quisquam natus est. Eius blanditiis sint ut tempore eveniet tempore voluptates accusantium. Omnis qui sed sit asperiores enim.', 0, 0, '2014-10-19 11:59:15', '2020-02-23 01:41:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 26, 26, 'Pariatur distinctio et corporis quia ut cumque. Tempora dolorem et mollitia. Reiciendis iure ipsa est perferendis quia placeat.', 1, 1, '2009-06-16 18:04:00', '2019-09-12 08:46:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 27, 27, 'Qui cupiditate eveniet dolorem alias sed est id. Tenetur dolorum est qui nisi et dicta sed corrupti.', 0, 0, '1999-05-17 10:35:44', '2020-02-14 19:47:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 28, 28, 'Non alias consequatur sed aut et in consequuntur ipsam. Ut incidunt tempora excepturi aliquid. Commodi animi modi quod sequi eum aut sit. Rerum unde laudantium officia et eius placeat.', 1, 0, '2007-07-02 19:27:19', '2020-04-09 05:29:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 29, 29, 'Est enim blanditiis necessitatibus. Sunt voluptates labore id quod rem nemo alias consequatur. Sunt voluptatem ab ex consequatur autem. Rerum enim autem ipsa sapiente.', 0, 1, '1992-10-17 22:06:36', '2020-04-11 06:38:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 30, 30, 'Esse rerum nesciunt assumenda enim possimus neque dicta. Aut aliquam inventore blanditiis magni sit dolores. Cupiditate accusantium sed facere neque voluptatem non.', 0, 1, '1994-06-16 20:23:17', '2020-02-15 12:00:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 31, 31, 'Quisquam magnam nostrum neque hic saepe. Velit delectus aut tempore porro dolore. Nihil veniam a et molestias facilis.', 0, 1, '2010-08-14 00:21:18', '2019-12-20 10:25:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 32, 32, 'Repudiandae voluptas nesciunt expedita placeat sint. Voluptates ab saepe laudantium molestiae assumenda et autem. Qui repudiandae ad quia aut. Nesciunt omnis nihil iure praesentium facere vel et.', 0, 0, '2002-10-02 21:57:29', '2020-06-24 10:25:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 33, 33, 'Nihil nostrum rerum ducimus quibusdam recusandae tenetur. Perspiciatis nemo hic et eligendi alias at. Explicabo itaque reprehenderit laborum quia quas in.', 0, 0, '1999-08-29 00:39:01', '2020-05-18 23:12:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 34, 34, 'Neque quia necessitatibus accusantium nihil voluptate occaecati consectetur. Qui sed iusto fugiat non. Qui voluptas eum ut et. Neque aut ipsa minus ad aut voluptas consequuntur fuga.', 0, 1, '1996-07-29 07:46:33', '2019-11-29 15:56:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 35, 35, 'Et et nam ut. Et cumque similique perspiciatis. Aut molestiae quisquam qui dolores aut similique necessitatibus. Laborum quis expedita doloremque aut sunt suscipit dolorem sit.', 1, 1, '2007-04-04 05:10:19', '2020-07-04 05:10:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 36, 36, 'Non illo ab ipsum delectus adipisci est labore quibusdam. Atque et perspiciatis consequatur necessitatibus non. Optio corrupti quia dolor. Provident sunt qui qui.', 0, 0, '2005-09-08 03:56:54', '2020-06-12 15:25:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 37, 37, 'Eaque quis et quidem itaque ut quas. Delectus voluptatum tempore nobis eaque autem. Ea deleniti doloremque dicta adipisci accusantium quae illum.', 0, 0, '1997-03-19 13:38:35', '2019-10-19 03:47:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 38, 38, 'Aut mollitia ea dolor laboriosam quisquam et molestiae. Illo id rerum necessitatibus harum. Incidunt ut quos odit ipsam qui.', 0, 0, '2016-05-13 07:45:06', '2020-07-09 08:16:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 39, 39, 'Atque aut debitis voluptate voluptas aliquam impedit. Unde reiciendis qui cumque asperiores. Maiores et accusantium dicta necessitatibus voluptatibus illo neque. Dicta nemo et voluptatem commodi.', 1, 1, '1997-08-13 17:01:04', '2020-07-07 05:51:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 40, 40, 'Ea delectus non amet. Maiores nam dolorem officiis aspernatur omnis. Omnis eum voluptatibus voluptate qui. Cumque animi deserunt recusandae porro voluptas.', 1, 0, '2009-09-13 10:34:00', '2020-01-02 06:59:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 41, 'Asperiores delectus accusantium sed eligendi velit. Corporis quibusdam libero debitis esse explicabo. Natus quasi sed quo magnam enim. Similique et dolor voluptatem dicta et fugiat. Enim quos error sapiente tempora.', 1, 0, '2016-06-02 09:09:27', '2020-02-14 03:33:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 42, 42, 'Qui reiciendis et et quo. Minima voluptates aut rerum voluptate. Culpa voluptatem id iusto tempore facilis enim consequatur.', 1, 0, '2002-08-07 16:38:28', '2020-06-25 10:26:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 43, 43, 'Blanditiis non at sit eum qui aliquid. Harum et dicta accusamus aliquid. Dolor voluptatem consequuntur id voluptatem. Consequatur qui recusandae ut aut dolores et.', 1, 0, '2006-02-17 01:56:13', '2020-07-13 03:46:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 44, 44, 'Dolore eveniet voluptatibus distinctio est dolores odit. Reprehenderit distinctio ea dolore qui id. Iusto saepe laudantium illum eum error libero sunt. Ut ad velit harum labore.', 0, 1, '1994-04-19 11:17:00', '2020-05-13 21:12:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 45, 45, 'Aspernatur sit ad ut inventore vitae deserunt. Corporis enim inventore et. Modi est dolor vitae eaque sequi quia. Deserunt et enim dolor voluptas quaerat repellat officia.', 0, 1, '1999-11-10 12:26:54', '2019-10-22 16:47:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 46, 46, 'Explicabo enim aliquam facilis possimus totam et blanditiis reprehenderit. Autem quas laborum voluptatum totam enim aspernatur consequatur.', 1, 0, '2007-01-01 07:30:41', '2020-05-06 13:15:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 47, 47, 'Qui repudiandae illum et expedita veritatis. Quibusdam asperiores placeat accusantium ut et rem animi. Sint consequatur libero voluptatem facere voluptatem et.', 1, 1, '2018-05-13 03:36:09', '2019-11-27 21:25:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 48, 48, 'Eos dolore ipsa quis sint omnis vel et. Error eaque quod itaque. Consequuntur odio repudiandae magni quod.', 1, 0, '1994-05-10 09:48:17', '2020-05-28 22:14:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 49, 49, 'Vero ratione et velit voluptatum eligendi. Iste natus eum et quos. Rerum officia rem eligendi iste est ipsam officia voluptatum.', 1, 0, '2014-08-22 18:41:28', '2020-03-23 06:20:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 50, 50, 'Sit eos ut consequatur ipsam voluptatem id sunt. Voluptate aut qui veritatis et. Optio ut sed quasi esse qui velit facere. Nemo magni sapiente odio odio.', 1, 1, '2018-08-11 23:43:49', '2020-06-02 19:28:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 51, 51, 'Dolores sed recusandae quos quos numquam maxime quisquam officia. Reprehenderit eligendi tempore nobis. Rerum dolorum culpa est placeat. Non suscipit necessitatibus voluptas dolores quas magni aut.', 1, 1, '2010-06-13 11:38:06', '2020-05-22 01:52:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 52, 52, 'Debitis doloremque ea asperiores pariatur sit. Cupiditate doloremque aut earum similique quisquam totam quis tenetur. Eos delectus officia omnis quasi illum cum repellendus.', 1, 0, '2010-03-01 10:05:50', '2019-07-30 12:03:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 53, 53, 'Maiores velit qui cumque harum. Natus tenetur nihil a dolorem quia autem et alias. Laborum molestias ipsam alias qui pariatur.', 0, 1, '2006-08-11 15:55:24', '2020-05-19 22:36:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 54, 54, 'Hic quia totam qui nisi enim quia. Consectetur libero est ut. Ducimus quia architecto sunt sint itaque. Eaque debitis aperiam impedit.', 1, 1, '2005-10-06 19:41:10', '2019-09-26 02:44:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 55, 55, 'Et quia odit cum rerum nostrum. Et sint est sunt ut aliquid.', 0, 1, '1995-08-17 23:52:30', '2019-11-26 17:28:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 56, 56, 'Quas omnis provident cupiditate ratione. Illum officiis eos aut perspiciatis repudiandae modi fugiat. Aliquid temporibus laudantium voluptas autem harum molestias. Ratione in architecto at ipsa.', 1, 0, '1998-02-04 13:50:57', '2020-04-26 01:29:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 57, 57, 'Ipsam inventore omnis laboriosam error ullam vel. Et dolor autem porro sit libero quae minima.', 1, 0, '2007-04-01 15:28:21', '2019-11-22 15:23:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 58, 'Iusto officiis rerum officia ut voluptatem. Aliquam aliquid in nihil aut explicabo. Et quaerat quia sunt accusamus.', 0, 1, '1998-02-04 22:45:53', '2019-10-01 15:39:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 59, 59, 'Magnam voluptatum dolor expedita quia. Animi enim nesciunt dicta voluptatem quibusdam aliquid molestiae.', 0, 0, '2018-10-08 03:27:43', '2020-03-16 09:54:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 60, 60, 'Mollitia voluptatibus rem sit laborum ex. Voluptas fuga enim ut aut. Atque qui voluptatum nemo voluptatem doloribus sunt.', 1, 0, '1994-12-09 16:54:43', '2019-10-20 14:44:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 61, 61, 'Id incidunt dolorum assumenda repudiandae reprehenderit nam provident. Labore facere dolore repellat vero qui. Autem dolor quos aut sed voluptatibus iste. Dicta sequi blanditiis quaerat nesciunt.', 0, 0, '1995-03-21 18:00:08', '2020-06-26 14:18:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 62, 62, 'Dolor quis harum quos beatae sed. Eveniet soluta impedit quasi ut aliquam. Consequatur quis repudiandae dolor vero voluptatem sunt.', 1, 0, '2012-03-15 03:13:07', '2020-03-15 14:45:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 63, 63, 'Quis aut voluptate ex maxime quisquam quis et cupiditate. Voluptas id nihil molestiae quod molestiae quam. Tempora dignissimos at repellat iste. Aut soluta reprehenderit ratione necessitatibus libero sit est.', 1, 0, '1996-01-27 20:43:57', '2020-03-08 09:19:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 64, 64, 'Ut molestiae inventore eos mollitia eveniet id. Iste illum natus voluptatem. Repudiandae laborum nam cum deleniti excepturi corporis. Iusto exercitationem quam rerum rerum corporis.', 0, 0, '1996-06-21 02:55:53', '2020-02-04 11:31:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 65, 65, 'Laboriosam est unde reprehenderit nemo vero error est. Necessitatibus possimus impedit sed dolor rerum ullam necessitatibus hic. Dolor qui consequatur quaerat pariatur et repellat facilis.', 1, 1, '1991-06-30 10:21:06', '2020-04-19 19:26:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 66, 66, 'Est nihil quia omnis quia. Id a reprehenderit ab vel illo. Neque quasi voluptate numquam maxime. Incidunt qui eius sed voluptatem ut animi fugit.', 1, 1, '2006-02-26 00:59:52', '2020-04-18 07:19:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 67, 67, 'Quaerat in quia illo expedita. Suscipit accusamus fugit in et deleniti omnis rerum. Velit quae ullam enim non tempore dolores. Cum quam quibusdam quia saepe est.', 1, 1, '2008-12-26 19:36:18', '2020-01-05 00:44:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 68, 68, 'Iusto nulla repellat cumque omnis dolor voluptates. Magnam facere et quia omnis quaerat. Temporibus modi corrupti quidem et autem blanditiis veniam. Eos saepe dolore cupiditate necessitatibus maiores doloribus.', 1, 1, '1995-08-03 07:03:39', '2019-12-16 19:58:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 69, 69, 'Quos aut ut et tempora. Asperiores incidunt eum dolorem doloremque maiores ab ab. Non voluptatem sequi nam voluptatem itaque autem commodi dolores. Unde ut ea in sunt.', 0, 0, '1990-09-27 03:25:34', '2019-11-29 10:12:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 70, 'Corrupti excepturi numquam cum aut magni eos cupiditate harum. Fuga voluptas quidem commodi facere sint saepe. Exercitationem voluptas quas perspiciatis dolorum quisquam dolorem. Similique expedita quod non iste doloribus.', 0, 1, '1992-02-03 08:51:15', '2019-08-21 10:11:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 71, 71, 'Consectetur ipsa nemo facilis quia. Quam itaque exercitationem molestias. Nemo qui repellat quod odit.', 1, 1, '2018-09-30 19:37:18', '2020-05-15 03:24:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 72, 72, 'Est eius voluptas sit qui itaque incidunt. Ipsum quaerat ad fuga qui cumque quis iure nihil. Cum hic voluptatem voluptatem in qui dolor. Occaecati dolor aliquid maiores qui voluptatem qui. Animi maxime esse illum est voluptas aperiam qui.', 0, 1, '1995-03-24 03:02:53', '2020-05-07 02:48:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 73, 73, 'Consequatur sunt saepe nemo quisquam. In nisi et illo ab odio eaque ut autem. Sit dolor ratione eligendi ea et dolor non tempore.', 0, 0, '2016-08-15 14:21:09', '2020-07-01 01:12:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 74, 74, 'Rerum perferendis inventore amet voluptatem. Consequatur deserunt rerum qui sint. Voluptatem autem voluptas autem architecto ratione temporibus ullam.', 0, 1, '2004-01-08 18:35:14', '2019-08-15 09:38:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 75, 75, 'Inventore velit sunt rerum sint. Repudiandae nisi amet recusandae maiores reprehenderit. Reiciendis et dolore harum perferendis. Tenetur eius nobis ut recusandae mollitia aperiam ratione molestiae.', 1, 1, '2000-04-13 05:04:56', '2019-12-30 23:13:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 76, 76, 'Dolor quia voluptate vel ab dicta nihil veritatis. Magnam et tempore unde magnam. Nostrum dolores deserunt dolor. Nisi est blanditiis similique culpa omnis.', 1, 0, '2008-03-18 12:36:29', '2020-06-02 09:37:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 77, 77, 'Optio dignissimos et odio qui ipsa. Amet tenetur itaque praesentium ut autem omnis voluptatem. Repudiandae pariatur nemo et est blanditiis quia.', 0, 1, '2005-06-13 02:05:18', '2020-06-27 11:49:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 78, 78, 'Repellendus libero minus id eius. Qui quod et expedita. Quaerat dolorem molestias ut aut ut rerum aspernatur.', 1, 0, '2006-11-13 14:53:35', '2019-08-16 09:41:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 79, 79, 'Quia excepturi repellat et modi enim reiciendis. Consectetur explicabo hic architecto facilis dolor eaque. Minima rem ea quia molestiae. Laboriosam architecto dignissimos magnam repudiandae debitis accusantium.', 0, 1, '1997-04-28 02:05:04', '2020-07-17 09:07:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 80, 80, 'Consequatur voluptatem esse eos sapiente dicta eius. Facilis qui praesentium et libero soluta. Ut voluptas dolores id incidunt reprehenderit cum. Voluptatem necessitatibus voluptatem atque impedit voluptate repellendus.', 1, 0, '1997-12-24 17:41:06', '2020-05-26 20:29:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 81, 81, 'Consequatur iste voluptatem eos non rem recusandae. Non consequatur voluptatum sit placeat soluta eaque pariatur. Occaecati expedita dolor hic doloremque qui. Cupiditate sint aliquam tempora dolores at. Quis in aut adipisci suscipit reprehenderit nobis animi.', 1, 1, '2010-05-17 00:40:00', '2020-01-22 00:24:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 82, 'Blanditiis accusantium veniam voluptate quia aliquid. Itaque reiciendis modi magni adipisci fugit quidem nulla. Est velit nulla dolor quia.', 0, 0, '2004-04-05 23:12:08', '2020-03-17 19:46:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 83, 83, 'Nobis natus quia et ducimus fuga maiores. Aspernatur eum sed blanditiis illo laborum. Animi qui sit et minus. Est voluptas rem voluptates vero doloremque aliquid.', 1, 1, '1993-10-31 00:54:53', '2019-11-18 03:23:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 84, 84, 'Libero et dolores omnis. Est rerum eos similique quis nesciunt rerum fugiat. Vero nihil et natus et vel fuga.', 0, 0, '1998-02-23 12:00:21', '2020-04-21 20:16:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 85, 85, 'Et adipisci voluptatibus quisquam voluptatem temporibus quo. Assumenda possimus veniam error sunt nam deserunt dolor. Vel et sed sit reprehenderit reiciendis iste incidunt consectetur.', 0, 1, '2015-11-26 22:12:28', '2019-08-20 07:00:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 86, 86, 'Et aut non dolores aspernatur iusto repellendus. Illo officiis eos sit provident necessitatibus ut.', 0, 1, '2019-04-06 16:14:45', '2020-02-12 16:45:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 87, 87, 'Totam fuga culpa doloribus et est qui aut. Deleniti id ut voluptatum ut occaecati. Nesciunt et neque et illo quisquam. Aut occaecati expedita et sit voluptas quae.', 1, 1, '2002-12-01 14:57:26', '2020-07-09 02:40:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 88, 88, 'A commodi odit perferendis earum. Ut aut ea nihil qui facilis autem. Eaque libero sint qui quod a quis.', 0, 0, '1999-05-25 09:59:58', '2020-03-12 00:04:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 89, 89, 'Omnis veritatis ipsa iusto temporibus nisi veritatis. Enim sed rerum non qui non consequatur. Iure qui dolore corporis molestias impedit expedita. Voluptate quis molestias velit aut eius hic aut.', 0, 1, '2015-01-11 08:52:18', '2020-02-05 17:34:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 90, 90, 'Voluptatum dolorem ducimus in nisi ut dicta repellat. Dolor dolore autem maxime explicabo in odit.', 0, 0, '2004-02-02 09:43:14', '2020-06-15 08:11:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 91, 91, 'Enim non aliquid impedit eveniet dolorem molestias sequi. Debitis sit molestias sit recusandae sint tenetur doloribus. Tempore est ut modi maiores ut tenetur enim occaecati. Nostrum rem magni magni.', 0, 1, '1996-02-06 20:44:16', '2020-06-08 09:50:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 92, 'Sequi aliquid iusto quibusdam cumque quidem. Placeat nihil repudiandae fuga. Iusto nulla enim in adipisci.', 1, 1, '1998-01-05 15:09:52', '2019-10-18 18:45:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 93, 93, 'Hic ea quos magni non sit quod ipsum. Quia id tempora at nostrum. Corporis voluptatem vitae rerum porro qui.', 1, 0, '2003-06-29 01:00:48', '2019-11-11 20:01:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 94, 'Aut quia cumque quod ut. Quaerat et quae autem aut aut. Omnis praesentium incidunt autem. Deleniti culpa ullam officia et eveniet rerum.', 0, 0, '2006-09-29 07:54:33', '2020-04-10 10:38:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 95, 95, 'Perspiciatis voluptates qui dolorem. Nihil natus hic impedit occaecati. Ratione similique modi in impedit sit iure hic.', 0, 1, '2013-01-13 23:14:16', '2020-01-14 19:23:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 96, 96, 'Consectetur iusto dolor iste porro. Aspernatur sint nostrum debitis error laborum omnis. Enim illum aut sit saepe. Maiores laborum incidunt dolores. Sit quibusdam iure enim et facilis distinctio.', 0, 0, '2015-04-29 05:13:54', '2019-11-15 12:37:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 97, 'Hic rerum iure in aut. Ex et quia in autem at. Non aut voluptas magnam. Non a et praesentium repellendus excepturi vel corrupti.', 1, 0, '2018-10-16 00:29:54', '2020-05-06 03:54:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 98, 98, 'Vero consequatur tenetur quo voluptas molestias. Qui consequatur tempora vitae quaerat. Fugiat delectus quo placeat. Rem et amet porro exercitationem sequi quasi culpa.', 0, 0, '2017-02-17 16:49:24', '2019-12-05 08:34:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 99, 99, 'Nemo dolor voluptatem adipisci. Cumque eos excepturi qui voluptate vitae eos repudiandae. Ipsa harum provident eum recusandae. Maiores consequatur iure aut modi qui.', 1, 1, '1990-08-19 05:56:02', '2020-05-06 09:10:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 100, 100, 'Id et qui ducimus corrupti. Praesentium impedit non non et fugit debitis adipisci. Consequatur accusantium nesciunt eos soluta optio velit voluptates et. Fuga enim distinctio voluptate.', 1, 1, '2010-11-19 21:51:13', '2019-10-28 11:52:01');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'b', '2015-06-06', 1, 'Lake Rogeliobury', 'Macedonia', '2015-10-20 21:06:44', '2019-10-09 14:08:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'b', '1993-04-08', 2, 'Port Tatyanaside', 'China', '2015-02-06 09:04:39', '2019-11-28 05:48:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'b', '2001-10-16', 3, 'South Vaughn', 'Northern Mariana Islands', '2012-10-16 14:42:58', '2020-04-15 20:48:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'a', '1972-06-26', 4, 'Jaylenfort', 'Martinique', '2008-12-27 11:46:46', '2020-03-01 22:46:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'a', '1977-06-15', 5, 'Port Minniefort', 'French Guiana', '1993-09-08 04:09:50', '2019-12-02 04:07:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'a', '2017-08-02', 6, 'Klockoport', 'Jamaica', '2018-10-16 09:01:36', '2019-09-09 18:24:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'c', '1986-03-02', 7, 'Lake Juanitafort', 'Finland', '2019-05-25 15:03:49', '2020-07-05 06:38:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'b', '1980-02-07', 8, 'North Jordynstad', 'Lesotho', '2018-05-15 08:51:31', '2020-04-20 04:53:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'c', '2020-02-17', 9, 'Hintzmouth', 'Austria', '2013-08-01 08:15:44', '2019-10-04 20:55:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'a', '1977-09-25', 10, 'Jayceeside', 'Qatar', '2011-12-16 02:32:30', '2019-08-03 05:33:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'c', '2008-07-17', 11, 'Imeldaview', 'Jersey', '2012-08-20 09:53:38', '2019-11-05 13:42:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'c', '2019-12-10', 12, 'Stevieland', 'Argentina', '2018-02-13 16:55:25', '2020-07-14 12:04:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'c', '2006-06-15', 13, 'East Sarahmouth', 'Latvia', '2000-07-12 20:46:12', '2020-06-13 21:11:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'c', '1979-11-07', 14, 'East D\'angelo', 'Indonesia', '2002-09-08 15:31:33', '2020-07-12 14:34:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'a', '1987-06-26', 15, 'West Orlo', 'New Zealand', '2018-04-22 12:11:15', '2020-06-18 10:27:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'a', '2011-02-04', 16, 'Verliemouth', 'Greenland', '1992-12-13 12:10:52', '2020-02-21 21:49:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'a', '1991-06-27', 17, 'Fritschfort', 'Indonesia', '2020-07-12 04:01:50', '2020-07-02 19:29:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'c', '2016-02-29', 18, 'East Evangeline', 'Guadeloupe', '2009-10-04 11:48:13', '2020-06-17 22:52:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'a', '2001-09-23', 19, 'Stokeshaven', 'Mayotte', '1999-01-06 21:57:41', '2020-05-07 09:40:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'c', '1981-07-15', 20, 'Reillyborough', 'Botswana', '2000-01-13 02:14:06', '2019-11-03 09:54:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'c', '2008-10-13', 21, 'Maryseberg', 'New Caledonia', '2005-02-03 09:24:12', '2020-03-28 12:53:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'a', '1976-01-14', 22, 'Curtisside', 'Kyrgyz Republic', '2017-05-08 16:34:22', '2020-05-22 08:24:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'a', '1982-03-20', 23, 'Davetown', 'Liberia', '2020-02-19 14:19:16', '2020-05-07 01:36:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'c', '2015-11-16', 24, 'Agustinamouth', 'Georgia', '2002-07-06 14:05:12', '2020-03-26 00:22:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'b', '2009-10-01', 25, 'Anitaberg', 'Lesotho', '1998-06-11 22:20:14', '2019-09-11 04:09:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'a', '1996-02-14', 26, 'Port Earnesthaven', 'Saint Lucia', '1995-07-16 04:36:27', '2020-01-05 05:52:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'c', '1988-05-15', 27, 'Rathstad', 'Serbia', '2004-10-08 08:03:42', '2020-07-04 11:45:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'a', '2015-05-04', 28, 'North Mariano', 'Bahrain', '1999-08-24 09:55:01', '2020-05-14 20:51:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'b', '2015-11-03', 29, 'Bartonton', 'Malawi', '2012-09-02 08:42:11', '2020-01-29 09:45:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'c', '2004-02-04', 30, 'Lake Skyeborough', 'South Africa', '2017-12-30 00:41:43', '2019-11-05 16:18:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'a', '1975-12-25', 31, 'Tyrellchester', 'Saint Vincent and the Grenadines', '2009-05-08 22:04:34', '2019-12-06 06:43:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'b', '2015-12-30', 32, 'Lake Nyah', 'Guam', '2020-06-28 02:29:13', '2019-12-30 04:56:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'c', '1996-10-22', 33, 'North Burdette', 'Senegal', '2004-05-23 20:11:10', '2019-09-27 02:17:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'c', '1975-05-17', 34, 'North Garnett', 'Azerbaijan', '1991-11-16 10:48:53', '2019-09-01 19:26:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'a', '2009-01-17', 35, 'Port Hayden', 'Bahrain', '2014-05-14 01:54:49', '2020-06-03 01:47:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'a', '1989-07-20', 36, 'Hamillland', 'Haiti', '2020-01-09 04:58:51', '2020-05-30 04:47:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'a', '1976-06-03', 37, 'West Theodorahaven', 'Cocos (Keeling) Islands', '2004-01-28 21:55:08', '2020-06-11 22:00:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'c', '2000-06-04', 38, 'South Autumn', 'Taiwan', '2010-06-10 05:29:39', '2020-02-04 22:25:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'c', '1989-08-11', 39, 'East Estellastad', 'French Guiana', '2010-09-02 15:34:10', '2020-05-01 00:10:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'c', '1979-08-12', 40, 'North Lisandro', 'Chad', '2001-07-15 08:28:49', '2020-03-02 05:19:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'c', '2008-04-07', 41, 'New Armando', 'Turks and Caicos Islands', '1997-09-01 13:10:54', '2019-12-20 11:19:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'a', '2002-06-15', 42, 'Heaneymouth', 'Christmas Island', '2000-02-05 02:32:36', '2019-09-18 20:30:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'a', '2019-01-28', 43, 'Goyetteborough', 'Antarctica (the territory South of 60 deg S)', '2000-02-19 05:54:42', '2020-04-21 00:24:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'c', '2007-03-12', 44, 'Erynchester', 'Christmas Island', '2018-01-29 05:45:30', '2020-07-13 16:22:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'a', '2015-11-06', 45, 'Arnoldoborough', 'Cook Islands', '2014-06-14 03:39:46', '2020-06-28 15:22:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'b', '1981-11-23', 46, 'Lake Billytown', 'Argentina', '1999-10-20 09:57:47', '2020-01-03 13:17:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'b', '1981-08-14', 47, 'North Eda', 'Hong Kong', '2009-12-20 22:51:40', '2020-04-21 08:46:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'c', '1993-07-29', 48, 'West Macyberg', 'Malta', '2000-02-02 15:53:02', '2019-09-29 02:51:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'c', '1979-10-02', 49, 'Jedediahfort', 'Montserrat', '1993-03-28 09:44:47', '2020-05-29 10:16:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'b', '1971-07-01', 50, 'Jerdechester', 'Trinidad and Tobago', '2015-07-03 07:35:18', '2019-11-14 01:52:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'a', '2006-08-01', 51, 'Bergstromfurt', 'Mongolia', '2015-04-19 05:36:08', '2020-02-27 14:24:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'b', '1981-07-05', 52, 'Pollichfurt', 'Falkland Islands (Malvinas)', '2011-07-17 16:13:42', '2020-05-01 05:07:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'b', '2006-10-26', 53, 'East Sisterbury', 'Kiribati', '1998-09-02 15:28:03', '2019-09-24 16:47:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'c', '2006-12-26', 54, 'McKenzieside', 'Switzerland', '2008-04-14 19:48:31', '2020-01-26 13:10:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'b', '1988-07-20', 55, 'North Naomishire', 'Guadeloupe', '2015-04-22 03:04:41', '2020-06-01 08:33:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'b', '2016-10-26', 56, 'East Hal', 'Nicaragua', '1996-01-19 02:45:50', '2020-07-16 12:38:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'a', '1996-01-03', 57, 'West Lloyd', 'Senegal', '2018-03-06 21:43:20', '2019-11-18 04:40:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'a', '1976-03-30', 58, 'Lake Janet', 'Botswana', '2011-06-02 10:21:25', '2019-09-08 14:39:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'a', '1976-11-23', 59, 'Janessaton', 'Uruguay', '2007-05-09 18:47:32', '2020-03-03 02:54:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'c', '2019-01-09', 60, 'New Kari', 'Northern Mariana Islands', '1999-01-31 18:45:20', '2019-08-27 18:45:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'a', '2000-05-06', 61, 'Rowlandchester', 'Mayotte', '2012-03-05 18:44:50', '2020-07-22 11:46:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'c', '2013-04-04', 62, 'Jacobibury', 'Aruba', '2015-11-12 13:19:46', '2020-06-24 07:10:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'a', '1977-09-22', 63, 'New Alicia', 'Palau', '1996-11-14 15:16:44', '2019-08-14 20:58:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'a', '2012-03-19', 64, 'Hellenton', 'Syrian Arab Republic', '2007-11-02 13:02:18', '2019-10-13 10:00:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'a', '2000-10-11', 65, 'South Dorothy', 'Anguilla', '2004-08-14 20:20:19', '2020-03-16 15:27:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'c', '2017-01-18', 66, 'Port Rhiannahaven', 'Guernsey', '2016-09-10 03:17:21', '2019-08-29 09:41:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'c', '1975-05-08', 67, 'Port Kendraberg', 'Marshall Islands', '2004-05-17 00:48:20', '2020-04-17 05:58:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'a', '1978-09-17', 68, 'East Dorotheatown', 'Antarctica (the territory South of 60 deg S)', '1999-06-15 01:39:11', '2020-01-30 02:12:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'c', '2006-12-17', 69, 'Stiedemannshire', 'Niue', '1996-11-19 00:34:33', '2020-01-03 06:25:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'b', '1994-11-24', 70, 'West Mariela', 'Egypt', '1999-12-31 11:48:56', '2019-12-04 06:12:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'a', '2000-02-24', 71, 'Stoltenbergport', 'Turkmenistan', '1991-06-19 15:30:31', '2019-08-07 14:04:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'a', '1977-03-29', 72, 'Lake Malcolmton', 'Sri Lanka', '1993-09-24 15:26:49', '2019-10-16 23:35:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'c', '1972-06-18', 73, 'North Edwardport', 'Indonesia', '2018-02-24 02:32:52', '2019-11-30 02:18:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'a', '1992-05-31', 74, 'East Neilbury', 'Zimbabwe', '1998-07-06 14:31:50', '2020-03-28 04:47:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'a', '1999-01-26', 75, 'Marcelletown', 'Bermuda', '1995-09-12 21:28:35', '2020-07-01 05:17:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'a', '2007-08-27', 76, 'Mertzburgh', 'Jersey', '2018-04-01 08:56:04', '2019-11-28 11:04:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'c', '1999-08-14', 77, 'Calebfort', 'San Marino', '1994-12-01 14:11:43', '2020-05-15 11:48:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'c', '2009-06-01', 78, 'East Donnellmouth', 'Singapore', '2005-03-06 22:44:06', '2019-08-27 01:56:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'b', '1986-08-25', 79, 'North Elwynside', 'Panama', '1990-12-22 00:27:56', '2020-01-05 16:10:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'a', '1989-08-09', 80, 'Waelchiborough', 'Lebanon', '2014-11-15 01:11:24', '2020-06-23 06:10:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'b', '2011-09-04', 81, 'Schadenview', 'Somalia', '2010-11-20 02:03:03', '2019-09-13 03:01:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'c', '2006-05-06', 82, 'Bauchville', 'Rwanda', '2002-10-24 22:56:56', '2020-02-07 01:33:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'b', '1970-08-16', 83, 'Justineside', 'Greece', '2006-07-28 20:25:38', '2020-07-12 08:09:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'c', '1984-04-21', 84, 'Medhurstfurt', 'Mongolia', '2005-08-24 17:43:59', '2019-11-09 07:52:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'a', '1977-03-10', 85, 'Shaneview', 'Niger', '1997-10-13 21:42:06', '2020-04-01 20:41:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'b', '1988-06-13', 86, 'Cristophermouth', 'Palestinian Territory', '2002-11-22 14:03:26', '2019-12-30 13:32:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'c', '1986-07-06', 87, 'North Garth', 'United Kingdom', '1991-05-24 16:25:08', '2020-05-16 14:56:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'a', '1998-05-06', 88, 'New Rodolfo', 'Mongolia', '2015-09-07 03:30:40', '2020-04-21 01:47:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'a', '2017-10-28', 89, 'East Rocio', 'Tokelau', '1999-10-07 11:09:13', '2019-10-03 14:25:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'b', '2004-12-27', 90, 'Balistreriburgh', 'Samoa', '1999-03-11 04:54:56', '2020-01-27 01:03:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'c', '1975-04-22', 91, 'Weimannport', 'Vietnam', '2003-08-20 08:56:55', '2019-08-21 15:32:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'b', '2020-02-18', 92, 'Trishashire', 'Greenland', '2001-05-17 08:18:23', '2019-10-18 17:29:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'a', '1971-11-22', 93, 'Port Earline', 'British Virgin Islands', '2019-07-09 21:26:59', '2020-07-23 21:31:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'b', '2001-02-20', 94, 'Ziemestad', 'Aruba', '1998-08-12 15:22:00', '2019-09-13 12:51:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'b', '1994-08-11', 95, 'East Myaberg', 'Faroe Islands', '2007-09-30 12:31:10', '2020-07-09 10:46:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'c', '1989-04-20', 96, 'Port Nannie', 'Zimbabwe', '2011-09-06 23:49:10', '2020-01-07 22:15:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'a', '2007-08-25', 97, 'North Sven', 'Puerto Rico', '2000-01-17 21:54:07', '2019-12-29 17:56:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'a', '1994-05-24', 98, 'Port Domenica', 'Rwanda', '1995-07-26 05:08:35', '2020-05-29 01:47:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'c', '1991-05-14', 99, 'Kiehnchester', 'Ireland', '2017-07-24 15:42:27', '2020-07-21 17:32:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'c', '1999-02-15', 100, 'Johnstonshire', 'British Indian Ocean Territory (Chagos Archipelago)', '1999-03-22 22:21:28', '2019-09-07 06:15:07');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Ernie', 'Mertz', 'wilfrid.pfeffer@example.org', '569-513-9921x783', '1990-11-02 19:50:56', '2020-07-19 11:45:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Bella', 'Mertz', 'nasir05@example.com', '1-483-698-1000x208', '2015-07-17 17:12:27', '2020-07-12 02:00:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Johann', 'Considine', 'schimmel.laurel@example.com', '(525)169-3072', '1998-09-21 12:25:24', '2020-07-16 21:12:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Velma', 'Kris', 'ronny46@example.net', '1-730-943-6831', '2010-01-21 16:57:54', '2020-07-13 04:17:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Madisyn', 'Hauck', 'zemlak.haylee@example.com', '047.564.1994', '2005-06-30 14:32:26', '2020-07-12 11:24:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Ivory', 'Swaniawski', 'gorczany.markus@example.com', '+89(0)5573143836', '1993-09-24 21:47:10', '2020-07-01 08:13:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Eugenia', 'Lemke', 'terrill.schaefer@example.org', '(106)215-8913x596', '2010-02-14 02:42:48', '2020-07-11 13:05:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Nayeli', 'Gleichner', 'wgleichner@example.com', '401.811.1552', '2004-02-13 05:42:26', '2020-06-30 20:22:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Allene', 'O\'Kon', 'yesenia83@example.net', '(194)166-2756', '2015-03-11 05:03:38', '2020-06-27 09:50:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Zechariah', 'Boyer', 'tbahringer@example.net', '1-433-808-9503x883', '1991-08-22 16:14:31', '2020-07-17 18:20:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Juvenal', 'Kemmer', 'karlee.monahan@example.org', '206.112.5297', '2014-09-19 19:17:32', '2020-06-24 03:06:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Shea', 'Kunde', 'gennaro.hahn@example.net', '1-768-569-0900', '2002-12-16 05:51:37', '2020-07-18 01:05:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Ivah', 'Wiegand', 'aurore.adams@example.net', '122-031-6655x92080', '1996-05-10 19:16:59', '2020-07-06 15:53:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Margie', 'Christiansen', 'lottie.watsica@example.org', '863-738-7406', '1990-09-23 21:01:43', '2020-07-19 22:53:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Christine', 'Nitzsche', 'abernathy.lucinda@example.org', '267.630.7212x6252', '1999-01-01 04:38:12', '2020-07-22 01:20:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Kelsie', 'Emmerich', 'vwuckert@example.org', '09492590701', '2008-08-06 16:08:20', '2020-07-06 12:54:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Lyla', 'Pacocha', 'hilario.haley@example.org', '938.814.7445', '1996-05-03 18:30:57', '2020-07-07 22:29:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Vada', 'Ritchie', 'taryn39@example.com', '1-462-208-5024x0354', '2019-09-18 14:27:00', '2020-06-25 07:25:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Randi', 'Brakus', 'christiansen.reilly@example.com', '115-630-8765x212', '2017-04-02 05:36:28', '2020-07-14 02:15:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Coty', 'Wiegand', 'sryan@example.com', '805-248-3220x3527', '2016-12-03 17:26:06', '2020-07-03 11:10:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Shanelle', 'Windler', 'schroeder.princess@example.com', '+06(5)0450075447', '2006-11-08 08:13:05', '2020-07-03 17:30:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Loren', 'Pfannerstill', 'meffertz@example.net', '461-629-0890x025', '2000-09-25 05:40:23', '2020-06-24 18:11:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Rosina', 'Stiedemann', 'zkoelpin@example.org', '(603)359-7425x83053', '1991-11-19 01:52:32', '2020-06-27 11:31:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Creola', 'Howell', 'ocrooks@example.net', '1-170-964-0015x44765', '2020-05-10 22:10:17', '2020-07-02 19:34:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Percy', 'Raynor', 'effertz.benjamin@example.com', '924.891.9098x387', '2000-08-27 15:24:40', '2020-06-30 21:57:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Jailyn', 'Nienow', 'ezboncak@example.net', '07229837411', '1993-08-04 20:04:28', '2020-06-29 09:33:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'German', 'Simonis', 'marshall90@example.org', '+79(6)3666509404', '1999-05-01 09:39:46', '2020-07-08 15:56:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Eliane', 'Langworth', 'kemard@example.com', '+40(8)2355602134', '2017-05-14 08:04:57', '2020-07-18 19:54:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Angelica', 'Sipes', 'elmo99@example.org', '451-726-1484', '2013-09-10 23:18:56', '2020-06-25 20:30:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Bo', 'Boyle', 'nakia18@example.org', '+73(0)1792232216', '2017-06-29 21:19:05', '2020-07-19 07:18:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Americo', 'Nitzsche', 'pansy.sipes@example.org', '(382)923-8689', '2018-01-17 12:06:53', '2020-07-04 11:41:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Sterling', 'Rohan', 'cynthia12@example.com', '1-833-492-3156', '1991-09-03 03:37:55', '2020-07-14 20:37:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Leila', 'Shanahan', 'lauren47@example.net', '769-587-6801', '1991-06-25 01:50:32', '2020-07-11 11:50:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Virgie', 'Kerluke', 'rwitting@example.org', '(425)764-4963', '2002-02-10 08:11:16', '2020-06-25 14:35:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Ulises', 'Bergnaum', 'carter.jed@example.org', '+25(5)1843089225', '2010-11-13 03:49:14', '2020-07-02 07:24:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Nya', 'Lockman', 'hfadel@example.net', '1-018-324-5294x91505', '2009-06-21 03:35:03', '2020-07-12 18:14:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Susana', 'Pfannerstill', 'd\'amore.werner@example.com', '1-749-227-5200x6373', '1993-01-21 07:27:03', '2020-07-07 04:50:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Georgette', 'Becker', 'kuhic.adah@example.net', '1-588-530-7523', '2003-02-15 02:22:02', '2020-07-09 21:02:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Ila', 'Kozey', 'lorna.bailey@example.com', '030.547.3987x037', '1999-06-08 05:35:52', '2020-07-09 13:11:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Geovanny', 'Gislason', 'mpurdy@example.net', '426-883-1081', '2013-04-01 17:47:28', '2020-07-16 12:46:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Will', 'Johnston', 'laurine.rau@example.net', '1-681-603-6127x9368', '2013-09-24 15:30:18', '2020-07-01 10:17:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Lizeth', 'Schaefer', 'hwitting@example.com', '(562)973-6773', '2006-01-25 16:16:55', '2020-07-03 15:09:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Davonte', 'Crona', 'isabell.schaefer@example.com', '057.028.5528x1962', '2000-03-10 01:07:22', '2020-07-14 07:45:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Faustino', 'Kautzer', 'chloe.mraz@example.com', '299.331.6137x88546', '2007-09-14 06:00:35', '2020-07-09 02:29:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Nola', 'Breitenberg', 'nikki.auer@example.net', '415.832.6113x912', '2014-08-06 11:30:37', '2020-06-28 12:02:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Virgil', 'Green', 'kzieme@example.net', '589.422.2701x1987', '2014-01-28 02:02:46', '2020-07-19 16:32:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Isom', 'Spencer', 'dubuque.leland@example.net', '978.788.8389', '1994-02-24 13:44:43', '2020-07-04 23:36:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Kian', 'Runte', 'everardo79@example.org', '(182)516-8021x63802', '2002-11-07 03:58:58', '2020-06-27 15:36:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Taryn', 'Douglas', 'konopelski.marcelina@example.net', '06445617695', '2013-09-05 13:45:04', '2020-07-19 10:34:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Tessie', 'Brown', 'shanahan.denis@example.net', '1-281-505-1799', '2007-08-29 06:05:39', '2020-07-02 02:55:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Mossie', 'Hamill', 'feest.tiffany@example.org', '(199)265-8223', '2005-06-20 01:22:34', '2020-06-24 06:17:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Helene', 'Hand', 'corkery.jayde@example.org', '(786)857-2745', '1990-09-15 00:18:10', '2020-07-16 22:56:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Abbigail', 'Smitham', 'antoinette07@example.com', '1-615-674-3422', '2017-12-21 19:41:03', '2020-06-24 18:36:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Hermina', 'Boehm', 'uking@example.com', '(520)325-4605x80770', '2016-05-09 14:02:49', '2020-07-10 14:41:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Raymundo', 'Wisozk', 'yost.eleonore@example.net', '514.168.2685', '2010-06-07 17:22:56', '2020-07-11 21:06:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Carmella', 'Stracke', 'greenfelder.keshaun@example.org', '294-418-3718x65808', '2005-12-31 23:25:12', '2020-07-08 15:44:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Eldora', 'Orn', 'volkman.anabelle@example.org', '(493)631-3366x84025', '1992-05-03 11:35:17', '2020-06-27 14:41:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Veronica', 'Hamill', 'llangworth@example.net', '553-665-1883x6662', '2019-04-01 12:44:45', '2020-06-24 17:47:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Jaleel', 'Tillman', 'helena.stoltenberg@example.net', '1-786-519-0617', '2019-02-17 02:42:06', '2020-06-29 07:56:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Genevieve', 'Ziemann', 'xsenger@example.com', '816-591-8011x83987', '1991-11-02 16:22:01', '2020-07-19 09:45:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Idell', 'Hudson', 'myra.glover@example.com', '398.895.0333x97675', '2009-03-28 23:16:07', '2020-06-30 23:55:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Peter', 'Herzog', 'laverne.west@example.com', '(590)995-8329', '2007-10-08 13:13:32', '2020-07-03 07:11:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Guillermo', 'Batz', 'ohilpert@example.org', '07471827279', '2001-02-08 02:21:30', '2020-07-18 05:05:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Unique', 'Pollich', 'raymundo74@example.com', '1-225-220-4182', '1997-07-12 21:31:31', '2020-07-01 02:33:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Orville', 'Brown', 'laurianne.labadie@example.net', '860.576.5355', '1996-10-09 06:08:51', '2020-07-06 19:28:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Chet', 'Connelly', 'wdouglas@example.com', '467.829.7642', '2009-09-18 07:47:52', '2020-07-22 17:05:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Callie', 'Stroman', 'dbeier@example.org', '411.521.7416', '1997-02-17 21:42:47', '2020-07-14 06:23:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Jessica', 'Johnston', 'ho\'hara@example.net', '1-049-179-0022x538', '2019-03-12 15:55:34', '2020-06-30 03:05:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Lempi', 'Wiza', 'mante.kadin@example.net', '093.209.0555x82667', '1991-06-21 23:37:35', '2020-07-03 05:28:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Gilda', 'Effertz', 'tom.brekke@example.com', '286.720.9826x838', '2009-05-13 04:51:44', '2020-07-18 19:35:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Wilburn', 'Bogisich', 'hahn.aisha@example.org', '+00(5)6811440814', '2015-01-24 01:34:15', '2020-07-17 07:24:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Paula', 'Wunsch', 'murazik.alysha@example.net', '292-685-2561x51870', '1991-11-23 11:16:39', '2020-07-11 01:19:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Conner', 'Weimann', 'anais.gutmann@example.org', '023.862.6032x1337', '2012-05-15 03:21:19', '2020-07-13 04:10:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Elena', 'Ledner', 'haley.kiel@example.com', '243.909.8583x4393', '2010-11-03 02:32:20', '2020-07-12 22:30:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Carli', 'Sawayn', 'earline68@example.org', '1-613-426-9282', '1995-11-30 18:16:50', '2020-07-05 08:02:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Wilfred', 'Hahn', 'ellsworth.schmitt@example.net', '03689723284', '1993-07-28 23:24:31', '2020-07-06 23:34:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Dante', 'Ratke', 'odessa.barrows@example.net', '933-899-3046', '2015-10-13 01:49:13', '2020-07-11 21:41:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Grayce', 'Simonis', 'hermann.ivy@example.org', '926.868.5915', '2013-01-19 19:04:52', '2020-07-15 07:00:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Corbin', 'Huels', 'jackeline92@example.net', '07274024673', '2020-02-02 18:12:27', '2020-07-20 08:05:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Marianne', 'Gerlach', 'jedidiah.nitzsche@example.com', '023-849-6638', '1995-05-23 18:46:19', '2020-07-10 08:39:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Robert', 'Stanton', 'thompson.rosie@example.net', '552-282-7302x699', '2007-02-03 08:35:05', '2020-07-04 11:43:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Princess', 'Cronin', 'soledad.herman@example.com', '(027)962-4748', '2019-05-15 23:09:42', '2020-07-09 15:26:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Leann', 'McClure', 'samara40@example.com', '(247)558-8685x66378', '2013-01-29 23:05:55', '2020-06-30 04:34:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Mavis', 'Klein', 'williamson.alexandrine@example.com', '760.096.8504', '2014-01-26 23:10:55', '2020-06-27 22:28:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Furman', 'McCullough', 'waylon.schmitt@example.net', '042-894-7510', '2001-02-24 02:39:04', '2020-07-17 09:41:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Zoila', 'Weber', 'kshlerin.ike@example.net', '(184)603-7523', '1993-02-02 01:06:30', '2020-06-26 10:56:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Sim', 'Bartoletti', 'mstreich@example.net', '(045)019-0276x630', '1997-02-03 15:27:50', '2020-07-11 20:55:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Eldora', 'Bayer', 'schultz.albin@example.net', '831.463.4363', '1991-04-11 21:40:40', '2020-06-25 00:08:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Hope', 'Yost', 'schamberger.karen@example.net', '1-735-968-5749x676', '2005-05-12 08:34:05', '2020-07-04 08:33:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Alvera', 'Mueller', 'ierdman@example.net', '705.822.6481', '2001-07-26 08:44:30', '2020-07-14 18:45:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Ada', 'Renner', 'fritz.rowe@example.com', '1-646-805-3497x380', '2016-02-07 11:17:59', '2020-07-07 16:47:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Asia', 'Volkman', 'hadley.leuschke@example.org', '954.475.3218x977', '1993-09-14 00:02:53', '2020-06-28 04:53:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Weldon', 'Shields', 'elna.ankunding@example.com', '(795)709-2026', '1992-12-30 13:58:53', '2020-06-25 03:45:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Shemar', 'Jaskolski', 'angelita82@example.org', '377-718-2895x179', '1999-05-04 01:11:24', '2020-07-20 15:24:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Virginie', 'White', 'casper.chadd@example.net', '+17(8)3493412045', '1999-05-17 02:00:55', '2020-07-11 01:32:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Hellen', 'Larkin', 'carey97@example.com', '224.942.5088', '2006-04-08 03:33:37', '2020-06-28 20:24:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Carli', 'Ernser', 'zetta71@example.org', '(927)257-5209x3038', '2000-11-15 21:54:48', '2020-06-27 09:09:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Niko', 'Muller', 'donavon74@example.net', '+56(8)9092395664', '1996-06-16 02:14:52', '2020-07-10 05:33:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Kenya', 'Koch', 'schumm.betty@example.org', '+59(2)1333804566', '2000-10-19 21:33:23', '2020-07-04 18:48:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Anderson', 'Gutkowski', 'dborer@example.com', '+53(1)2153879045', '2014-01-02 14:27:40', '2020-07-09 14:41:47');


