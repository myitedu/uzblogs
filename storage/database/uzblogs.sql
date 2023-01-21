# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.21-MariaDB)
# Database: uzblogs
# Generation Time: 2023-01-21 03:54:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table blogs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `banner_image` varchar(250) DEFAULT NULL,
  `images` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;

INSERT INTO `blogs` (`id`, `user_id`, `title`, `description`, `long_description`, `banner_image`, `images`, `created_at`, `updated_at`)
VALUES
	(1,1,'111 Even if you\'re not sure what a blog is, you\'ve no doubt come across one To Toshmatov','Even if you\'re not sure what a blog is, you\'ve no doubt come across one To Toshmatov','If your business doesn\'t have a blog, you might want to reconsider — B2B marketers who use blogs receive 67% more leads than those who do not, and blogs have been rated the 5th most trusted source for accurate online information.\n\nBuild your website with HubSpot\'s Free CMS Software\nAt its most basic, blogs can help you develop an online presence, prove yourself an expert in an industry, and attract more quality leads to all pages of your site.If you\'re contemplating creating a blog for your business, or simply want to know what one is, keep reading.\n\nWhat is a blog?\nFirst, let\'s go over a brief history -- in 1994, Swarthmore College student Justin Hall is credited with the creation of the first blog, Links.net. At the time, however, it wasn\'t considered a blog … just a personal homepage.','https://blog.hubspot.com/hs-fs/hubfs/what-is-a-blog-3.jpg?width=1190&height=800&name=what-is-a-blog-3.jpg',NULL,'2023-01-20 21:34:02','2023-01-20 21:34:02'),
	(2,1,'222 What is a lifestyle blog?','A blog is typically a section of your business\'s website -- but, unlike the rest of your website, you need to update the blog section frequently by adding new posts. Additionally, your blog is a tool that allows you to engage more with an audience, e','A blog is typically a section of your business\'s website -- but, unlike the rest of your website, you need to update the blog section frequently by adding new posts. Additionally, your blog is a tool that allows you to engage more with an audience, either by analyzing how many readers share your blog posts on social, or by allowing readers to comment on your individual posts. In this way, a blog is more like a two-way conversation than the rest of your website. However, a blog can also be an entire website, and often is, if the blog is for personal use alone -- for instance, a travel blog.','https://cdn.ttgtmedia.com/rms/onlineimages/what_is_a_blog_used_for-f_mobile.png',NULL,'2023-01-20 21:34:03','2023-01-20 21:34:03'),
	(3,1,'33 What is a lifestyle blog?','What is a lifestyle blog?','A lifestyle blog is a digital compilation of an author\'s personal interests, daily activities, or opinions on a subject. A lifestyle blog typically covers multiple hobbies or talents of the writer, rather than focusing on one subject alone. For instance, a lifestyle blog might include a section for fashion, health and wellness, travel, and relationships. A lifestyle blog is often highly personalized, so it can often feel like you\'re reading a friend\'s curated journal entries.\n\nThere are plenty of benefits to blogging -- it helps drive traffic to your website, it enables you to better convert that traffic into leads, it allows your business to establish authority in an industry, and it continues to help your business grow and attract new customers months and even years after publication. - Jon Toshmatov','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPedquywOxlEYBHxeYg4fO0rOzmB7BzXiqSdTE4QgsLNxdsjoxP_R1BOJ7A-hrEXVCibE&usqp=CAU',NULL,'2023-01-20 21:34:04','2023-01-20 21:34:04');

/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ratings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratings` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;

INSERT INTO `ratings` (`id`, `blog_id`, `user_id`, `ratings`, `created_at`, `updated_at`)
VALUES
	(1,1,1,1,'2023-01-20 22:27:03',NULL),
	(4,1,1,1,'2023-01-20 22:27:12',NULL),
	(5,1,1,1,'2023-01-20 22:27:17',NULL),
	(6,1,1,-1,'2023-01-20 22:27:38',NULL),
	(11,1,1,-1,'2023-01-20 22:27:38',NULL),
	(12,2,1,1,'2023-01-20 22:27:03',NULL),
	(13,2,1,1,'2023-01-20 22:27:12',NULL),
	(14,2,1,1,'2023-01-20 22:27:17',NULL),
	(15,2,1,1,'2023-01-20 22:27:38',NULL),
	(16,2,1,1,'2023-01-20 22:27:38',NULL);

/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superadmin` tinyint(4) DEFAULT 0,
  `display` tinyint(4) DEFAULT 0,
  `name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role`, `superadmin`, `display`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'',1,1,'Jon Toshmatov','jontoshmatov@yahoo.com','2021-06-21 12:38:20','$2y$10$NIYF1VyPfKX60tprnigcru3EZzh3HHWHn8yJhOclj3yIK4Su/mcFq',NULL,NULL,'2021-12-08 15:37:36',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
