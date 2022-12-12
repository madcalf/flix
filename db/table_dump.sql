PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "movies" ("id" integer NOT NULL PRIMARY KEY, "title" varchar DEFAULT NULL, "rating" varchar DEFAULT NULL, "total_gross" decimal DEFAULT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "description" text DEFAULT NULL, "released_on" date DEFAULT NULL, "director" varchar, "duration" varchar, "image_file_name" varchar DEFAULT 'placeholder.png', "slug" varchar);
INSERT INTO movies VALUES(3,'Black Panther','PG-13',1346913161,'2022-08-15 04:32:41.897409','2022-12-05 22:22:38.580145','T''Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country''s past.','2018-03-16','Ryan Coogler','134 m','black-panther.png','black-panther');
INSERT INTO movies VALUES(4,'Avengers: Infinity War','PG-13',2048359754,'2022-08-15 04:32:41.899241','2022-12-05 22:22:38.586240','The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.','2018-04-27','Anthony Russo and Joe Russo','181 m','avengers-infinity-war.png','avengers-infinity-war');
INSERT INTO movies VALUES(7,'Iron Man','PG-13',585366247,'2022-08-15 04:32:41.904450','2022-12-05 22:22:38.588064','When wealthy industrialist Tony Stark is forced to build an armored suit after a life-threatening incident, he ultimately decides to use its technology to fight against evil.','2008-05-02','Jon Favreau','126 m','ironman.png','iron-man');
INSERT INTO movies VALUES(8,'Superman','PG',300451603,'2022-08-15 04:32:41.906047','2022-12-05 22:22:38.589245','An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home''s first and greatest super-hero. Was this the one with General Zod?','1978-12-15','Richard Donner','143 min','superman.png','superman');
INSERT INTO movies VALUES(9,'Spider-Man','PG-13',825025036,'2022-08-15 04:32:41.907682','2022-12-05 22:22:38.590810','When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.','2002-05-03','Sam Raimi','121 min','spiderman.png','spider-man');
INSERT INTO movies VALUES(10,'Batman','PG-13',411348924,'2022-08-15 04:32:41.909510','2022-12-05 22:22:38.592158','The Dark Knight of Gotham City begins his war on crime with his first major enemy being the clownishly homicidal Joker.','1989-06-23','Tim Burton','126 min','batman.png','batman');
INSERT INTO movies VALUES(11,'Catwoman','PG-13',82102379,'2022-08-15 04:32:41.911390','2022-12-05 22:22:38.593755','Patience Philips seems destined to spend her life apologizing for taking up space. Despite her artistic ability she has a more than respectable career as a graphic designer.','2004-07-23','Jean-Christophe "Pitof" Comar','104 m','catwoman.png','catwoman');
INSERT INTO movies VALUES(12,'Wonder Woman','PG-13',821847013,'2022-08-15 04:32:41.913057','2022-12-05 22:22:38.595076','When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.','2017-06-02','Patty Jenkins','141 m','wonder-woman.png','wonder-woman');
INSERT INTO movies VALUES(17,'Black Panther 2','PG',0,'2022-08-27 21:25:56.983288','2022-12-05 22:22:38.596388','Sadness...Sadness...Sadness','2024-08-27','','120m ','placeholder.png','black-panther-2');
INSERT INTO movies VALUES(18,'Sharknado 11.5','PG',0,'2022-08-27 21:27:21.122025','2022-12-06 00:14:22.620509','Madness!Madness!Madness!Madness!Madness!Madness!','2026-09-01',NULL,'120m','placeholder.png','sharknado-11-5');
INSERT INTO movies VALUES(19,'Random Movie Title!','PG-13',0,'2022-08-28 18:19:04.224354','2022-12-05 22:22:38.598027','A movie about nothing really... Really.','2022-08-30','','120 m','placeholder.png','random-movie-title');
INSERT INTO movies VALUES(20,'Return of the King','PG',350000000000,'2022-08-28 19:39:51.626506','2022-12-05 22:22:38.599107','Third installment of the Lord of the Rings Trilogy','2004-04-29','Peter Jackson','300 m','two-towers.png','return-of-the-king');
INSERT INTO movies VALUES(21,'Sharknado','NC-17',4500,'2022-10-19 05:39:37.748138','2022-12-05 22:22:38.600299','When a freak hurricane swamps Los Angeles, nature''s deadliest killer rules sea, land, and air as thousands of sharks terrorize the waterlogged populace.','2013-01-25','Anthony C. Ferrante','82m','placeholder.png','sharknado');
INSERT INTO movies VALUES(22,'Test','G',222,'2022-10-20 06:35:31.599529','2022-12-05 22:22:38.601461','some words about a movie and some more words. wow lots of words.','2022-10-27','Anyone','22m','placeholder.png','test');
INSERT INTO movies VALUES(23,'Ant Man','PG',1000,'2022-11-01 02:11:34.450729','2022-12-05 22:22:38.602763','A man can turn into an ant. What more needs to be said...','-4712-01-01',NULL,'120 m','placeholder.png','ant-man');
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "password_digest" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "username" varchar, "admin" boolean DEFAULT 0);
INSERT INTO users VALUES(9,'Boromir','boromir@manofgondor.com','$2a$12$ytUhZqbynupWp9U0gRUSmufOSdpZ.QOTI2hPc1fDuK.8GhJkUuHIu','2022-10-20 02:48:58.651437','2022-11-01 02:57:42.835881','boromir',0);
INSERT INTO users VALUES(16,'Frodo Baggins','frodo@example.com','$2a$12$wlSzeEIvUbqVciFuNkgfYOCATg3//OWDkPHNmag5YC626iP42bF7a','2022-10-21 04:41:51.744520','2022-12-06 02:14:47.755746','frodo',0);
INSERT INTO users VALUES(17,'Sam Gamgee','sammy@example.com','$2a$12$IdJ.WU1e5IHQ1./emmWVguRtusXSAC09EbonqHTFNqzuzeTZbVDkK','2022-10-21 04:42:40.669712','2022-11-02 04:44:11.528336','sam',0);
INSERT INTO users VALUES(18,'Elrond','elrond@example.com','$2a$12$7yQB/Ls6xBcXeEHFsx4hguycpbnzhQ30j5yOoQneM0Vpm7Ng9bv1O','2022-10-25 05:42:12.457734','2022-10-28 20:38:23.631853','elrond',0);
INSERT INTO users VALUES(20,'Arwen','arwen@example.com','$2a$12$6B1vti4T52ukiY1HYQUdF.ffFCBu2FjmPsCGKKj2lTyRo.XJgoiea','2022-10-26 00:17:46.760007','2022-10-28 20:29:47.366490','arwen',1);
INSERT INTO users VALUES(21,'FREDEGAR BOLGER','fredegar@example.com','$2a$12$ewFdi3bMTBEX3CTsbujJS.jvlI/am0Fefzs8SCDIutqtksFib88X2','2022-12-06 01:41:24.887225','2022-12-06 01:44:48.484590','fredegar',0);
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "reviews" ("id" integer NOT NULL PRIMARY KEY, "stars" integer DEFAULT NULL, "comment" text DEFAULT NULL, "movie_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "user_id" integer, CONSTRAINT "fk_rails_6ad75a4852"
FOREIGN KEY ("movie_id")
  REFERENCES "movies" ("id")
);
INSERT INTO reviews VALUES(1,5,'Awesome movie!',3,'2022-10-29 02:21:31.151813','2022-10-29 02:21:31.151813',20);
INSERT INTO reviews VALUES(2,5,'Loved it!',22,'2022-10-29 02:52:57.142607','2022-10-29 02:52:57.142607',20);
INSERT INTO reviews VALUES(3,4,'Ok, but way too many characters. ',4,'2022-10-29 02:56:07.203713','2022-10-29 02:56:07.203713',20);
INSERT INTO reviews VALUES(4,5,'Loved it!',3,'2022-10-29 02:56:34.852267','2022-10-29 02:56:34.852267',20);
INSERT INTO reviews VALUES(5,5,'A very fine film. ',3,'2022-10-29 02:57:14.729282','2022-10-29 02:57:14.729282',18);
INSERT INTO reviews VALUES(6,2,'Didn''t care much for this one',19,'2022-11-01 02:29:03.042804','2022-11-01 02:29:03.042804',20);
INSERT INTO reviews VALUES(7,4,'This one was pretty good!',12,'2022-11-01 02:31:56.209201','2022-11-01 02:31:56.209201',20);
INSERT INTO reviews VALUES(10,1,'One does not simply walk into Mordor!',20,'2022-11-02 04:41:39.392654','2022-11-02 04:42:52.569959',9);
INSERT INTO reviews VALUES(11,5,'Aragorn is so hot!',20,'2022-11-02 04:42:36.854572','2022-11-02 04:42:43.564822',20);
INSERT INTO reviews VALUES(12,5,'A most outstanding film if you ask me!',20,'2022-11-02 04:44:02.053035','2022-11-02 04:44:02.053035',17);
INSERT INTO reviews VALUES(13,5,'Excellent!',20,'2022-11-02 05:03:47.868782','2022-11-02 05:03:47.868782',18);
INSERT INTO reviews VALUES(14,5,'You know for a movie about big people, this one was quite good. ',3,'2022-11-22 02:06:56.294656','2022-11-22 02:06:56.294656',17);
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "favorites" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer NOT NULL, "movie_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_d15744e438"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
, CONSTRAINT "fk_rails_2f96619ba3"
FOREIGN KEY ("movie_id")
  REFERENCES "movies" ("id")
);
INSERT INTO favorites VALUES(48,17,20,'2022-11-03 03:21:14.794040','2022-11-04 22:40:45.825740');
INSERT INTO favorites VALUES(50,9,20,'2022-11-03 03:21:34.780215','2022-11-03 03:21:34.780215');
INSERT INTO favorites VALUES(57,17,21,'2022-11-03 04:03:31.757811','2022-11-04 22:40:45.827165');
INSERT INTO favorites VALUES(74,20,23,'2022-11-04 22:36:50.859306','2022-11-04 22:36:50.859306');
INSERT INTO favorites VALUES(75,17,23,'2022-11-04 22:42:32.423315','2022-11-04 22:42:32.423315');
INSERT INTO favorites VALUES(76,20,12,'2022-11-05 01:49:54.150472','2022-11-05 01:49:54.150472');
INSERT INTO favorites VALUES(77,17,12,'2022-11-05 02:23:09.867702','2022-11-05 02:23:09.867702');
INSERT INTO favorites VALUES(79,17,3,'2022-11-09 23:35:27.339969','2022-11-09 23:35:27.339969');
INSERT INTO favorites VALUES(80,20,22,'2022-11-10 05:20:46.671013','2022-11-10 05:20:46.671013');
INSERT INTO favorites VALUES(81,20,9,'2022-11-16 23:08:03.469807','2022-11-16 23:08:03.469807');
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "genres" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "slug" varchar);
INSERT INTO genres VALUES(1,'Comedy','2022-11-05 02:59:11.204781','2022-12-06 02:30:49.248885','comedy');
INSERT INTO genres VALUES(3,'Disaster','2022-11-05 02:59:11.211307','2022-12-06 02:30:49.252130','disaster');
INSERT INTO genres VALUES(4,'Fantasy','2022-11-05 02:59:11.212517','2022-12-06 02:30:49.253541','fantasy');
INSERT INTO genres VALUES(5,'Science Fiction','2022-11-05 02:59:11.213533','2022-12-06 02:30:49.255243','science-fiction');
INSERT INTO genres VALUES(6,'History','2022-11-10 07:05:03.640774','2022-12-06 02:30:49.256384','history');
INSERT INTO genres VALUES(7,'Horror','2022-11-10 07:05:41.893005','2022-12-06 02:30:49.257777','horror');
INSERT INTO genres VALUES(8,'Anime','2022-11-10 07:08:53.279843','2022-12-06 02:30:49.259598','anime');
INSERT INTO genres VALUES(9,'Action','2022-11-12 04:07:25.871884','2022-12-06 02:30:49.261201','action');
INSERT INTO genres VALUES(13,'Drama','2022-11-12 04:33:43.434540','2022-12-06 02:30:49.262497','drama');
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "characterizations" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "movie_id" integer NOT NULL, "genre_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_c6b8cd49de"
FOREIGN KEY ("movie_id")
  REFERENCES "movies" ("id")
, CONSTRAINT "fk_rails_0352d0e619"
FOREIGN KEY ("genre_id")
  REFERENCES "genres" ("id")
);
INSERT INTO characterizations VALUES(1,21,5,'2022-11-05 03:02:11.095031','2022-11-05 03:02:11.095031');
INSERT INTO characterizations VALUES(3,3,5,'2022-11-09 23:32:38.919430','2022-11-09 23:32:38.919430');
INSERT INTO characterizations VALUES(9,21,1,'2022-11-10 04:51:26.345833','2022-11-10 04:51:26.345833');
INSERT INTO characterizations VALUES(10,21,3,'2022-11-10 04:51:46.882012','2022-11-10 04:51:46.882012');
INSERT INTO characterizations VALUES(11,22,1,'2022-11-10 04:52:24.590042','2022-11-10 04:52:24.590042');
INSERT INTO characterizations VALUES(13,22,3,'2022-11-10 05:20:42.827112','2022-11-10 05:20:42.827112');
INSERT INTO characterizations VALUES(14,20,4,'2022-11-10 06:30:55.422073','2022-11-10 06:30:55.422073');
INSERT INTO characterizations VALUES(17,3,13,'2022-11-12 04:33:52.947142','2022-11-12 04:33:52.947142');
INSERT INTO characterizations VALUES(18,17,9,'2022-11-22 01:25:06.086062','2022-11-22 01:25:06.086062');
INSERT INTO characterizations VALUES(19,17,5,'2022-11-22 01:25:06.089051','2022-11-22 01:25:06.089051');
COMMIT;
