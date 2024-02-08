-- Adminer 4.8.1 MySQL 5.5.5-10.8.3-MariaDB-1:10.8.3+maria~jammy dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12,	'2014_10_12_000000_create_users_table',	1),
(13,	'2014_10_12_100000_create_password_reset_tokens_table',	1),
(14,	'2019_08_19_000000_create_failed_jobs_table',	1),
(15,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(16,	'2024_01_27_064105_create_tasks_table',	1);

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tasks` (`id`, `title`, `description`, `long_description`, `completed`, `created_at`, `updated_at`) VALUES
(1,	'Ipsa aut voluptas commodi sunt voluptates non.',	'Quidem vel dolorem nesciunt laudantium magnam atque placeat. Quas repellat et et. Eos et et iusto corrupti qui. Maxime assumenda praesentium facilis quia veniam excepturi.',	'Maxime quia et alias quidem ipsum repellendus. Expedita voluptates nobis repellendus quo ab delectus culpa. A repudiandae nihil itaque id. Rem itaque totam qui atque quis et dolorem. Perferendis illo doloremque soluta exercitationem ullam illo. Sunt illo optio quae similique unde quia. Quia occaecati quia recusandae aut ab aperiam aut. Ducimus consequatur aperiam voluptate magni ratione quibusdam. In ipsa ipsa adipisci. Quis qui mollitia consequatur perspiciatis autem enim at.',	1,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(2,	'Qui hic et voluptatum.',	'Ut fuga vel illo dolore. Repellendus fuga suscipit optio quo.',	'Labore atque aut atque pariatur nobis ducimus aspernatur deleniti. Architecto ea amet illo perspiciatis. Doloribus voluptatem quam suscipit omnis ad neque dolor. Repellat at blanditiis blanditiis. Quidem voluptatem minima qui quasi. Accusamus quia ipsum veritatis nemo possimus odio. Quasi et sed vel distinctio ea aut. Ab explicabo quaerat voluptates mollitia distinctio. Aliquid autem quae ea ut ex. Voluptas consectetur reprehenderit veniam omnis unde.',	1,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(3,	'Vitae corporis tempora aut numquam beatae.',	'Qui officiis quaerat incidunt iste ratione consectetur. Necessitatibus molestias quia nobis ducimus aliquam deserunt voluptatem. Eaque vel neque rerum similique aut dolores id velit.',	'Iusto voluptatum ad delectus. Error doloremque quis voluptas enim beatae veniam quo. Soluta debitis animi itaque est non et dolores. Et maxime nisi a saepe molestiae. Voluptates tenetur laudantium molestiae repellendus assumenda quidem vitae asperiores. Dicta soluta est quam eum provident optio. Quis enim ut excepturi dignissimos architecto repellendus quia. Velit nisi quia ut iste aut quaerat.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(4,	'Et dolor sit qui blanditiis temporibus.',	'Quae facere molestiae fuga minima nam necessitatibus ullam et. Rerum ea qui est est. Commodi vero voluptas voluptatem minus consequatur.',	'Exercitationem doloremque sint cupiditate veritatis esse repellat. Vel placeat rerum provident dolorum. Aut et omnis sit dolor ut sint hic. Accusamus doloribus enim sit quam velit facilis. Sint enim sint assumenda illo. Corrupti magni neque ut praesentium omnis dolor eligendi. Quasi ad officiis enim expedita. Assumenda itaque eligendi temporibus et ea repellendus rem. Temporibus reprehenderit quia dolores sit distinctio mollitia. Doloremque ad nobis debitis suscipit et et.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(5,	'Illo perspiciatis in voluptatum consequatur quae.',	'Occaecati quaerat ipsam quisquam iure culpa. Doloribus eos velit magnam mollitia vitae veniam. Cupiditate esse dolores ut at reprehenderit sit id. Libero voluptatum tenetur libero natus ea nisi aut quas.',	'Quia ex animi dolorem repellat ipsa accusantium sit. A molestias iste ut nisi culpa. Molestias sit ipsa fugiat assumenda nam quo. Eveniet voluptatem ducimus laborum autem et dolor. Placeat et aut minima enim dolorem voluptatem itaque omnis. Qui quasi molestias ab necessitatibus voluptate velit temporibus. Fugit quo illo provident qui est. Numquam et omnis animi amet.',	1,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(6,	'Odit in odio modi aut nam velit libero et.',	'Sit quos voluptatum assumenda aut quam hic. Dolores nesciunt exercitationem perspiciatis in sint dolorem velit id. Et consequatur quam tenetur dolorem.',	'Aut autem velit et sequi nesciunt minus. Velit in nihil dolorum inventore laborum. Inventore dicta sapiente consequatur autem. Omnis iste sapiente quos impedit officiis. Nam sed et ut eligendi pariatur mollitia labore. Itaque ipsa velit provident velit perferendis magnam.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(7,	'Sapiente ullam vel voluptatem repellat nostrum pariatur fugiat.',	'Ab cupiditate sed id dicta in qui in. Velit amet esse nisi dolore eos blanditiis. Possimus fuga ut quis nihil.',	'Quod qui ea dolorem consequuntur amet corporis. Enim rerum dolorem cumque deleniti rerum. Qui a voluptate sint et omnis sit asperiores. Quam consequuntur sint quo quos dolore dolor voluptatem. Commodi ab ab consequatur ullam. Sit voluptatem iste minus repudiandae excepturi. Quibusdam non maxime perspiciatis ipsum illo qui. Hic quasi sunt dolores id.',	1,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(8,	'Rem aut rem voluptatibus eum.',	'Ullam ex ex magnam dignissimos et doloribus qui. Et earum aperiam dolorem deleniti ipsum debitis. Ut voluptas exercitationem sunt quia. Tenetur repellendus dolor sapiente molestiae labore.',	'Modi dicta et numquam dolor et. Sed aliquid eos numquam debitis unde vel at. Tenetur repellat modi aut. Debitis repellendus reprehenderit dolore labore at. Sint maiores qui pariatur voluptate et nihil distinctio. Aliquam molestiae qui alias reprehenderit ullam. Harum suscipit saepe minus sapiente tenetur sint accusamus nam.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(9,	'Omnis amet eum et qui.',	'Numquam non ratione consequatur. Magnam nisi nihil minima vitae dolorem consectetur. Aspernatur amet voluptas ipsum illum. Ipsam itaque est aut fugit quos.',	'Temporibus dolorem inventore vel amet labore sint sint. Hic esse ut rerum minima. Amet iste voluptatem tempore aut a aut pariatur. Doloribus eveniet tempore ut aut aut. Cum ut neque aut expedita sequi. Nobis iusto dignissimos hic perferendis nemo.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(10,	'Corrupti praesentium non nihil distinctio temporibus aut molestiae.',	'Debitis in et error ab placeat pariatur. Est consequatur velit et nam. Qui ducimus sapiente delectus nemo et. Voluptatibus ratione assumenda esse iure cumque qui.',	'Autem repellat recusandae optio nisi est. Hic omnis aut optio voluptatum ad accusamus magnam. Officiis animi eveniet at repellendus odit ab fugit. Hic corrupti eius sint quia non omnis. Et sed voluptas reprehenderit dolores perferendis omnis voluptate.',	1,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(11,	'Quis delectus aut voluptatibus consequatur sed eveniet.',	'Occaecati quas officia at molestiae quos est rerum. Ut qui quia officia excepturi sint dolor. Ipsam vero alias ea nesciunt omnis eligendi quis. Suscipit quia perspiciatis quo accusantium dolores officia.',	'Aperiam alias dolorem et facilis eum quia. Ab qui placeat quia aperiam quis est ea. Porro consectetur nihil magnam debitis et. Et aliquam voluptate iusto blanditiis sequi ut. Vitae dolores itaque pariatur sint ullam ea autem. Est aut soluta distinctio distinctio sed deleniti.',	1,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(12,	'Quam eos expedita eligendi et rerum et.',	'Possimus dolor aliquid excepturi delectus. Error expedita non minus rerum tempora blanditiis. Rerum eveniet a esse occaecati repellat fuga.',	'Quam nisi quibusdam distinctio odit omnis. Eum eveniet voluptates distinctio ut porro. Eum commodi deleniti quod ad quia beatae quis. Est quidem iusto rem iste maiores qui quae. Et iusto voluptate aliquam et facilis perferendis veniam. Voluptatem expedita aut ut natus. Sint quia doloremque debitis et odit libero rerum. Rerum ipsum quibusdam architecto excepturi laboriosam numquam. Cumque molestiae qui qui libero magnam velit iste. Necessitatibus assumenda et dolor magni et hic odio.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(13,	'Ipsa facilis qui voluptatem ad molestias.',	'Quia placeat quia sint deleniti quam aspernatur sit. Non ad minima ab omnis. Praesentium aliquam fuga laboriosam atque odit. Nostrum omnis eaque quos officia atque odio rem et.',	'Occaecati error sint fugit dolorem. Nulla occaecati aut nihil ad debitis quis. Dolor tenetur sed quis voluptas facilis. Voluptatem non assumenda error deleniti. Perspiciatis earum consectetur suscipit quos qui. Impedit in illum nam aliquam et ea.',	1,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(14,	'Asperiores et odit a repellat.',	'Natus eum voluptas exercitationem tenetur voluptatem. Unde eius est ab veniam quas sed nam. Ab exercitationem dignissimos praesentium occaecati harum sed qui ab. Nobis fuga est eveniet dicta velit ut.',	'Vero earum occaecati labore rem pariatur aliquid molestias. Sed non a qui ut. Eveniet minus et ullam cumque laboriosam quia labore quidem. Numquam ratione harum omnis expedita odit. Nobis doloremque repellat non itaque ad eius similique eum. Quo quod aspernatur veritatis sit dolore aliquam. Dolore libero corrupti quas. Alias quia aut voluptates molestias. Rerum nam eaque omnis accusamus nobis molestiae.',	1,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(15,	'Nam ratione quidem atque molestiae asperiores aut molestiae corporis.',	'Commodi et tempore aut provident culpa nihil. Veniam et qui nemo vel perferendis voluptatem neque. Rerum totam dolores rerum sequi dolores impedit. Quis est quia qui accusamus nobis consequatur.',	'Qui esse quae dolor dolorem minus vero quas. Eveniet aspernatur dolor qui dolorem et. Est eos provident sequi ad maxime officiis. Voluptatibus rerum harum maxime. Dolores odio at repellendus aliquam.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(16,	'Perspiciatis quidem omnis vitae quidem vero sed.',	'Amet aut ipsum voluptatem quas. Sequi minima soluta est est commodi laudantium incidunt. Ipsum distinctio qui eveniet recusandae sed commodi non. Illum corporis voluptas aliquid modi accusamus velit ea.',	'Eius aut reiciendis iste tenetur saepe et sed eos. Debitis et nemo dolores tenetur earum officiis maiores. Id sint repellat sit sequi et similique corrupti. Quia voluptatum voluptatem quia eligendi ut eligendi accusantium. Et consequatur sequi qui est. Esse pariatur cum repellendus aut nisi expedita. Officiis deleniti sunt laudantium aut rerum omnis reiciendis.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(17,	'Ut quos neque cum illum ducimus enim.',	'Ut vitae consequuntur molestias officia quia blanditiis. Labore corrupti qui odio nihil alias deleniti incidunt. Rerum recusandae sint voluptatem qui libero numquam eius.',	'Est quaerat et dolorem quia optio architecto eum. Rerum sed dicta distinctio earum rerum architecto fugiat earum. Molestiae id non et. Modi praesentium laboriosam deserunt non quae doloremque sequi. Aperiam aut quia omnis odit pariatur ut rerum ea. Omnis sint vero molestias. Autem sed qui inventore in non nihil tenetur. Consequatur voluptatem qui ut rerum mollitia. Quaerat culpa omnis aut. Veniam soluta dolor tenetur voluptas id libero sapiente.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(18,	'Et sint voluptate odio quidem omnis.',	'Aut earum in ex voluptatem sit unde sit. Illum rem asperiores et distinctio provident eos aperiam.',	'Nemo commodi ea voluptas. Consequatur autem est at ipsam beatae. Ut porro est ea impedit in eius. Animi omnis dicta illo incidunt itaque dignissimos excepturi sed. Numquam itaque et ut qui qui tenetur nemo eos. Sint temporibus dolores animi quis dolorem omnis sint. Ipsam non incidunt inventore. Dolore in a dolore neque non modi. Ex rem dolorum inventore distinctio.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(19,	'Sunt odit qui dolor placeat et eum qui sed.',	'Asperiores a explicabo et enim voluptatem consequatur. Est voluptas modi excepturi consequatur aut. Ut aspernatur expedita dignissimos neque ea. Ab omnis similique aut tempore tempore.',	'Exercitationem aliquam aperiam nisi ratione. Est illo commodi adipisci. Magni unde libero et aut officia culpa illum. Tempora quaerat vel ducimus eveniet minus eum. Laudantium quidem optio odit qui est rerum rerum quos. Aperiam deserunt autem numquam eos perferendis repellat. Aut nulla omnis nam alias quia.',	1,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(20,	'Quis soluta deleniti voluptas consequatur perferendis aliquid.',	'Aperiam autem magnam et placeat numquam. Aut voluptatem praesentium unde assumenda minima error et. At iste accusamus est porro dolores et. Ratione sit voluptas deserunt nesciunt fugit voluptatum.',	'Voluptatem veritatis molestiae recusandae sunt aliquam esse. Autem necessitatibus architecto dolorem. Error eos aut consequuntur quo doloremque et error. Id omnis ut molestiae. Omnis esse impedit beatae nisi omnis nisi laboriosam. Velit assumenda optio architecto officiis sequi dolore. Saepe nobis assumenda animi illum aut vero cum.',	0,	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(25,	'trhrsthrthrt_modified',	'rsthrtshsrt_modified',	'nhyndtndty_modified',	1,	'2024-01-30 07:43:42',	'2024-01-30 12:24:08'),
(26,	'XXXX',	'XXXXXXXXXXX',	'XXXXXXXXXXXXXXXXXXXX',	0,	'2024-01-31 11:31:00',	'2024-01-31 11:31:00');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'Mr. Vicente Denesik',	'angel59@example.net',	'2024-01-27 09:27:59',	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'lxeWEwzuVP',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(2,	'Mr. Nestor Strosin',	'marc.orn@example.com',	'2024-01-27 09:27:59',	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'r9fZZpKIHC',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(3,	'Jefferey Koch PhD',	'christiansen.neal@example.com',	'2024-01-27 09:27:59',	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'qFazd6zu8P',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(4,	'Miss Althea McLaughlin',	'walker.adaline@example.net',	'2024-01-27 09:27:59',	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'xAZ8HOsbrH',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(5,	'Rod Beer',	'rskiles@example.net',	'2024-01-27 09:27:59',	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'fB2WGvk5gu',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(6,	'Jon Kuvalis',	'lbailey@example.com',	'2024-01-27 09:27:59',	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'MSqt4XbPc8',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(7,	'Otilia Thompson',	'upouros@example.org',	'2024-01-27 09:27:59',	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'Y4oaSbq8eK',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(8,	'Hope Anderson Sr.',	'bethel21@example.net',	'2024-01-27 09:27:59',	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'KLAWAAKa9G',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(9,	'Rosalia Boyer',	'cummings.zane@example.com',	'2024-01-27 09:27:59',	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'M14nFERfsS',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(10,	'Dr. Chad Bechtelar',	'ludwig28@example.net',	'2024-01-27 09:27:59',	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'kFmrWYxWsz',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(11,	'Emory Funk MD',	'verla.walsh@example.org',	NULL,	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'tzT6GtpDx7',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59'),
(12,	'Dr. Newton Kris',	'caleigh05@example.net',	NULL,	'$2y$12$I5XA5VgPprcE2hTamUKPB.ViFq1UkTWodxfNdVJ.wLaLMr44l2C.u',	'TxAzbtcNlm',	'2024-01-27 09:27:59',	'2024-01-27 09:27:59');

-- 2024-02-08 11:31:20
