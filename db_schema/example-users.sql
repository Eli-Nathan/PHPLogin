#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `DOB` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('client','solicitor','lender') NOT NULL DEFAULT 'client',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (1, 'Mr.', 'Adelia', 'Abernathy', '1984-11-12', '1978-06-22 16:04:26', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (2, 'Mr.', 'Lawrence', 'Ward', '1989-01-18', '2010-06-20 04:20:47', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (3, 'Mrs.', 'Vincenza', 'Zemlak', '2012-11-02', '1974-06-15 09:56:38', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (4, 'Mrs.', 'Meagan', 'Anderson', '2004-10-15', '1977-04-09 17:22:53', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (5, 'Miss', 'Adrain', 'Ritchie', '1973-08-29', '2003-05-14 16:57:42', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (6, 'Dr.', 'Cyrus', 'Dietrich', '1985-10-13', '1993-04-21 08:24:38', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (7, 'Prof.', 'Jamil', 'Dicki', '1988-05-17', '2002-08-02 06:53:28', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (8, 'Dr.', 'Heath', 'Dibbert', '1974-03-29', '2018-04-11 19:00:06', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (9, 'Ms.', 'Juanita', 'Hills', '2017-04-10', '1997-11-06 12:54:34', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (10, 'Ms.', 'June', 'Jaskolski', '1976-07-13', '2007-06-17 01:46:55', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (11, 'Dr.', 'Moriah', 'Stokes', '2017-08-19', '2008-03-25 06:22:29', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (12, 'Mr.', 'Kory', 'Bashirian', '2018-01-03', '1996-08-04 00:27:40', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (13, 'Ms.', 'Madyson', 'Gleichner', '1975-04-01', '1982-04-10 04:14:39', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (14, 'Prof.', 'Berta', 'Marvin', '1989-12-27', '2017-08-25 22:45:25', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (15, 'Mr.', 'Merritt', 'Conn', '2000-01-12', '1993-01-21 00:40:23', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (16, 'Mr.', 'Daija', 'Larkin', '2015-09-26', '2012-12-16 03:58:31', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (17, 'Mr.', 'Andrew', 'Davis', '1984-03-10', '2019-02-04 15:14:09', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (18, 'Prof.', 'Allison', 'Haag', '2004-08-04', '1999-03-14 22:45:53', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (19, 'Mrs.', 'Katrina', 'O\'Reilly', '2013-12-03', '2014-02-17 04:25:50', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (20, 'Dr.', 'Jacynthe', 'Rogahn', '2005-06-23', '1996-10-25 10:24:39', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (21, 'Ms.', 'Juvenal', 'Wilkinson', '2017-12-14', '2007-02-21 19:19:10', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (22, 'Dr.', 'Leanna', 'Champlin', '1975-03-06', '1999-07-26 07:53:10', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (23, 'Dr.', 'Camden', 'Reynolds', '1988-04-18', '2007-09-30 14:18:57', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (24, 'Prof.', 'Heber', 'Moore', '2016-01-28', '1974-05-10 10:26:30', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (25, 'Prof.', 'Alexa', 'Hilpert', '2009-12-01', '1970-06-20 11:36:39', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (26, 'Dr.', 'Ena', 'Swift', '2000-09-28', '1977-09-18 06:29:45', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (27, 'Prof.', 'Kaitlyn', 'Jenkins', '1971-02-28', '2003-05-30 02:13:31', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (28, 'Dr.', 'Gerhard', 'Brekke', '2004-05-24', '2015-06-25 16:26:52', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (29, 'Mrs.', 'Constance', 'Wolf', '2018-01-16', '2002-11-27 23:22:58', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (30, 'Mr.', 'Ron', 'Hahn', '2009-09-28', '1994-10-20 04:21:06', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (31, 'Miss', 'Dwight', 'O\'Reilly', '1996-05-22', '1971-12-22 13:19:31', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (32, 'Mr.', 'Mathew', 'Lindgren', '1993-10-22', '1976-01-17 21:30:30', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (33, 'Mrs.', 'Tomasa', 'Kassulke', '2009-01-24', '2012-03-15 12:43:29', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (34, 'Dr.', 'Ethelyn', 'Heidenreich', '1977-12-27', '2009-10-20 15:18:30', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (35, 'Prof.', 'Natalia', 'Balistreri', '1982-03-28', '1983-10-17 11:46:58', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (36, 'Mr.', 'Hunter', 'Pfannerstill', '1988-06-18', '1992-10-20 08:01:19', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (37, 'Dr.', 'Eleanore', 'Rowe', '1996-12-24', '1978-08-28 16:42:16', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (38, 'Mr.', 'Amy', 'Zboncak', '1993-11-20', '2019-04-12 00:27:21', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (39, 'Dr.', 'Isaias', 'Schuster', '2001-11-20', '2000-11-17 10:46:21', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (40, 'Miss', 'Celestine', 'DuBuque', '2007-08-24', '2007-10-26 00:56:03', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (41, 'Mr.', 'Kathlyn', 'Leuschke', '2012-01-05', '1980-08-22 17:03:05', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (42, 'Dr.', 'Chauncey', 'Herzog', '1984-03-23', '2009-07-17 04:38:50', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (43, 'Ms.', 'Noah', 'Jakubowski', '1997-05-12', '2011-05-09 09:45:28', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (44, 'Prof.', 'Macy', 'Willms', '1984-11-17', '1991-08-18 14:08:11', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (45, 'Ms.', 'Delpha', 'Zieme', '1980-03-01', '1976-05-30 16:22:29', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (46, 'Dr.', 'Jayne', 'Boyer', '1974-11-09', '1994-10-05 23:51:10', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (47, 'Miss', 'Kayla', 'Ziemann', '2013-01-29', '1986-10-07 01:57:52', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (48, 'Ms.', 'Murphy', 'Jaskolski', '2006-03-15', '1990-09-23 13:37:29', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (49, 'Prof.', 'Rafaela', 'Ankunding', '1992-10-30', '1992-08-15 18:40:37', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (50, 'Dr.', 'Suzanne', 'Bahringer', '1977-06-11', '1996-08-15 14:29:07', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (51, 'Dr.', 'Arden', 'Windler', '1981-06-14', '1983-02-19 17:23:46', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (52, 'Miss', 'Rusty', 'Barton', '2006-11-23', '1973-10-04 01:49:29', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (53, 'Mr.', 'Jaylin', 'Kertzmann', '1986-03-21', '1973-01-22 08:40:41', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (54, 'Mrs.', 'Alysha', 'Larson', '1976-07-07', '2010-06-24 02:45:19', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (55, 'Mr.', 'Abigayle', 'Sipes', '1984-02-19', '1986-03-17 20:48:53', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (56, 'Ms.', 'Rosina', 'Weber', '1994-05-06', '1985-01-06 13:28:59', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (57, 'Dr.', 'Wilma', 'Davis', '1989-01-31', '2017-02-06 07:37:00', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (58, 'Dr.', 'Duncan', 'Okuneva', '2009-06-10', '1970-12-23 16:47:00', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (59, 'Mr.', 'Gavin', 'Waelchi', '1973-11-15', '2007-05-07 01:44:59', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (60, 'Miss', 'Sylvan', 'Schimmel', '2007-05-28', '2006-10-14 16:35:59', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (61, 'Mr.', 'Rosa', 'Hagenes', '1995-11-19', '2006-05-19 22:13:38', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (62, 'Ms.', 'Gerda', 'Wehner', '1989-01-05', '1971-10-24 17:22:32', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (63, 'Mr.', 'Thalia', 'Donnelly', '1978-11-14', '1971-06-01 17:57:55', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (64, 'Prof.', 'Marisol', 'Halvorson', '1989-04-11', '1999-05-06 07:19:28', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (65, 'Prof.', 'Jennifer', 'Bogan', '1982-08-24', '1985-10-03 13:54:48', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (66, 'Miss', 'Larry', 'Block', '2002-09-04', '1973-07-29 14:38:02', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (67, 'Prof.', 'Simeon', 'Harber', '1975-11-29', '1997-12-15 09:48:28', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (68, 'Prof.', 'Flo', 'Luettgen', '1981-10-28', '1995-03-01 16:29:58', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (69, 'Prof.', 'Lavonne', 'Ferry', '2008-05-15', '2008-03-13 22:25:05', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (70, 'Mrs.', 'Weston', 'Homenick', '1970-11-09', '2000-08-13 11:26:42', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (71, 'Dr.', 'Aditya', 'Romaguera', '2015-04-16', '2013-03-22 13:04:54', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (72, 'Mrs.', 'Flavio', 'Abbott', '1984-12-30', '2001-04-09 12:46:59', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (73, 'Mr.', 'Russell', 'Daniel', '1994-02-19', '2008-04-17 22:51:49', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (74, 'Dr.', 'Adriel', 'Rowe', '1978-08-26', '1982-05-19 19:48:15', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (75, 'Mr.', 'Jana', 'Christiansen', '2000-11-11', '1990-09-14 15:37:56', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (76, 'Mr.', 'Kassandra', 'Ullrich', '1990-08-30', '1987-08-25 17:04:35', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (77, 'Miss', 'Emmie', 'West', '1997-09-17', '1970-07-20 03:09:46', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (78, 'Miss', 'Amelia', 'Rosenbaum', '1994-11-17', '1996-08-08 07:15:25', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (79, 'Miss', 'Reilly', 'Kautzer', '1979-06-27', '2004-11-01 22:55:08', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (80, 'Dr.', 'Kaela', 'Rosenbaum', '2000-04-14', '2003-08-11 09:45:12', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (81, 'Dr.', 'Ari', 'Spencer', '2008-12-16', '1987-10-30 04:00:21', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (82, 'Miss', 'Ottis', 'Carroll', '1999-08-17', '1977-02-17 20:33:15', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (83, 'Ms.', 'Wilber', 'Christiansen', '2012-08-05', '2014-10-03 19:38:05', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (84, 'Mr.', 'Flavie', 'Hintz', '2016-11-12', '2012-10-03 03:12:52', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (85, 'Dr.', 'Armani', 'Gislason', '1988-01-07', '2007-07-11 17:08:37', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (86, 'Dr.', 'Clay', 'Huels', '2013-03-13', '2008-11-06 02:02:28', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (87, 'Miss', 'Linwood', 'Vandervort', '1986-01-09', '2008-12-27 11:53:00', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (88, 'Mrs.', 'Alanna', 'Osinski', '1999-12-15', '1973-03-02 13:59:33', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (89, 'Miss', 'Coleman', 'Walsh', '2002-11-02', '1997-04-08 09:46:00', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (90, 'Mr.', 'Verdie', 'Wisoky', '1983-01-26', '2006-01-10 07:40:54', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (91, 'Ms.', 'Cassie', 'Hagenes', '1995-11-08', '1994-02-08 07:50:55', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (92, 'Dr.', 'Bettye', 'Wyman', '2007-04-27', '1991-08-12 10:58:02', 'client');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (93, 'Dr.', 'Adolphus', 'Boehm', '1994-12-27', '1975-12-19 04:32:17', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (94, 'Dr.', 'Megane', 'Kuhn', '1976-04-17', '2005-05-25 06:44:16', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (95, 'Mr.', 'Charles', 'Koepp', '2016-06-09', '1986-08-09 20:24:40', 'solicitor');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (96, 'Dr.', 'Catharine', 'Mayer', '2012-04-21', '2002-01-21 11:52:24', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (97, 'Dr.', 'Emanuel', 'Mante', '2003-02-10', '1971-07-09 19:40:56', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (98, 'Prof.', 'Bridget', 'Grimes', '1999-02-13', '1974-11-08 08:18:24', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (99, 'Dr.', 'Breanne', 'Mueller', '2016-10-30', '1976-03-12 17:14:22', 'lender');
INSERT INTO `users` (`id`, `title`, `first_name`, `last_name`, `DOB`, `date_created`, `role`) VALUES (100, 'Miss', 'Karine', 'Halvorson', '1993-11-06', '1992-06-30 06:56:41', 'solicitor');


