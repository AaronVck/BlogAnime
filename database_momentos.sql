-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: momentos
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add card',7,'add_card'),(26,'Can change card',7,'change_card'),(27,'Can delete card',7,'delete_card'),(28,'Can view card',7,'view_card');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$HU3dmzJdNniLY619CqeMUU$OtYeWVv/Vie+SaHceW3mPqjV1ZcbxWCpDQ6tPFW7qNY=','2023-08-30 20:30:37.014148',1,'aaron','','','prueba@gmail.com',1,1,'2023-08-30 20:30:08.471211');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-08-31 05:14:53.079795','6','Fondo',1,'[{\"added\": {}}]',7,1),(2,'2023-08-31 20:16:10.277965','5','fsefsd',3,'',7,1),(3,'2023-08-31 20:16:10.320658','4','dsfefeseh',3,'',7,1),(4,'2023-08-31 20:16:10.324658','3','fsefds',3,'',7,1),(5,'2023-08-31 20:16:10.328662','2','fddsfs',3,'',7,1),(6,'2023-08-31 20:16:10.333659','1','fddsfs',3,'',7,1),(7,'2023-09-03 20:08:08.426454','11','ejemplo',3,'',7,1),(8,'2023-09-03 20:08:08.433585','7','hdrjhdgr',3,'',7,1),(9,'2023-09-03 20:08:08.437122','6','Fondo',3,'',7,1),(10,'2023-09-03 20:08:17.900654','9','El sueño del Rey Lion',3,'',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'moments','card'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-08-29 18:14:41.999962'),(2,'auth','0001_initial','2023-08-29 18:14:42.564962'),(3,'admin','0001_initial','2023-08-29 18:14:42.730963'),(4,'admin','0002_logentry_remove_auto_add','2023-08-29 18:14:42.747966'),(5,'admin','0003_logentry_add_action_flag_choices','2023-08-29 18:14:42.765963'),(6,'contenttypes','0002_remove_content_type_name','2023-08-29 18:14:43.094965'),(7,'auth','0002_alter_permission_name_max_length','2023-08-29 18:14:43.583983'),(8,'auth','0003_alter_user_email_max_length','2023-08-29 18:14:43.774556'),(9,'auth','0004_alter_user_username_opts','2023-08-29 18:14:43.789567'),(10,'auth','0005_alter_user_last_login_null','2023-08-29 18:14:43.985281'),(11,'auth','0006_require_contenttypes_0002','2023-08-29 18:14:43.991281'),(12,'auth','0007_alter_validators_add_error_messages','2023-08-29 18:14:44.040269'),(13,'auth','0008_alter_user_username_max_length','2023-08-29 18:14:44.219275'),(14,'auth','0009_alter_user_last_name_max_length','2023-08-29 18:14:44.515660'),(15,'auth','0010_alter_group_name_max_length','2023-08-29 18:14:44.552132'),(16,'auth','0011_update_proxy_permissions','2023-08-29 18:14:44.599163'),(17,'auth','0012_alter_user_first_name_max_length','2023-08-29 18:14:44.771138'),(18,'sessions','0001_initial','2023-08-29 18:14:44.899134'),(19,'moments','0001_initial','2023-08-29 18:37:29.102922'),(20,'moments','0002_alter_card_image','2023-08-30 20:28:48.594614'),(21,'moments','0003_alter_card_image','2023-08-30 21:00:21.827260'),(22,'moments','0004_alter_card_image','2023-08-30 21:11:08.725591'),(23,'moments','0005_card_serie_alter_card_image','2023-09-03 18:26:39.206143'),(24,'moments','0006_alter_card_serie','2023-09-03 18:27:31.759657'),(25,'moments','0007_alter_card_serie','2023-09-03 19:40:17.270029'),(26,'moments','0008_alter_card_serie','2023-09-11 18:20:58.869430'),(27,'moments','0009_card_anime_card_manga_card_novela','2023-09-11 18:37:44.087432'),(28,'moments','0010_remove_card_anime_remove_card_manga_and_more','2023-09-11 19:15:10.199744');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('rdh9xk6sp8v3ufhqc80umbimrw087t92','.eJxVjMsOwiAQRf-FtSEMBTq4dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOAsTpd2OKj9x2kO7UbrOMc1uXieWuyIN2eZ1Tfl4O9--gUq_f2thE4DwOdtA5jtE6Z8bisRhlFaNXTEppDYg-sSNbvAMgldiWCAWjeH8Au3M3SA:1qbRpl:glN_Gex4pYXVadQxmbKo05_LRPMWUCOOP1orrA9zhOg','2023-09-13 20:30:37.024147');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moments_card`
--

DROP TABLE IF EXISTS `moments_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moments_card` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `sinopsis` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `review` longtext NOT NULL,
  `serie` varchar(50) NOT NULL,
  `formato` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moments_card`
--

LOCK TABLES `moments_card` WRITE;
/*!40000 ALTER TABLE `moments_card` DISABLE KEYS */;
INSERT INTO `moments_card` VALUES (10,'Dios del fuego (Capítulo 19)','Asombrado con su destreza y su clase. Inosuke desafía a duelo a Giyuu Tomioka, un espadachín de alto rango de la cofradía de cazadores de demonios.','escenas/desktop-wallpaper-tanjirou-and-nezuko-vs-rui-tanjiro-vs-rui.jpg','Tanjiro recuerda a su papá bailar bachata cuando se encuentra a punto de morir, desatando la danza del dios del fuego, la cual usa para alcanzar a Rui y \"cortarle\" la cabeza. Hay canción emotiva, animación gloriosa. 9.5/10. Capitulardo','Kimetsu No Yaiba','Anime'),(20,'El exterior de la locura (Capítulo 15)','El capítulo toma inicio con Subaru, destrozado por tener a Rem muerta enfrente de él, culpa del culto de la bruja, se adentra a la mansión de Roswaal solo para observar como es que todos dentro se encuentran muertos, al avanzar por un pasillo oculto, ve que la flor que portaba Emilia, se encuentra en el suelo, cubierta de sangre, para finalmente morir congelado, no sin antes escuchar lo siguiente: \"Llegas demasiado tarde\".','escenas/cropped-1920-1080-718319_AtRWXOC.png','Un capítulo con muchas emociones de por medio, aquí es donde empieza el declive mental de Subaru, y podemos ver la desesperación en cada uno de sus actos. Para finalizar, se ve una escena que con la primera impresión, causa confusión, ya que vemos todo congelado y una bestia destruyendo la mansión de Roswaal, que le menciona a Subaru: \"Duerme, junto con mi hija\". Un  10/10 sin duda.','ReZero','Anime'),(21,'3Era noche: \"Salió mucho\" (Capítulo 3)','El capítulo inicia con Kou y Nazuna encima de un edificio con Kou cuestionándose que es lo que significa ser amigos o cuando es que se le puede llamar a alguien amigo, también se cuestiona si está bien decirle a alguien amigo después de no haberlo visto hace mucho tiempo, esto por su amiga Akira que no veía desde que dejó la escuela.','escenas/yofucap3.png','Fue un capítulo bastante interesante que nos muestra un nuevo personaje, Akira, y como se relaciona ahora con Kou y Nazuna. El final fue sorprendente de ver ya que no me esperaba el beso por parte de Nazuna, además como plus, es gracioso como Nazuna se pone celosa de Akira. 8.5/10','Yofukashi No Uta','Anime'),(22,'Pokemon Journeys Capítulo 124','Continuación de la pelea de Ash VS Cynthia.','escenas/sirfetchd.png','Sirfetch´d sale al campo de batalla para terminar con Milotic y enfrentarse al Garchomp de Cynthia, terminando en un choque final entre estos, Garchomp resistiendo... Pero Sirfetch´d siendo debilitado, y aún así, se niega a caer. 9/10','Pokemon','Anime'),(23,'Un pez que no vuela (Capítulo 5)','El capítulo inicia con Kessouku Band recibiendo su paga por ofrecer servicio en Starry, luego Nijika le pregunta a su hermana Seika si podrán tocar la próxima vez, sin embargo ella se niega y le propone una audición para evaluarlas.','escenas/bocchianobando.png','Un capítulo que muestra un desarrollo en Bocchi, ya no pensando solo en sí misma mientras suena \"Ano Band\" (Aquella banda), ya no pensando que quiere atención solo para ella, sino que busca atención para su banda y para cumplir el sueño de su amiga Nijika. 9/10.','Bocchi The Rock!','Anime'),(24,'Shingeki No Kyojin: The Final Season Kanketsu-hen','La facción anti-Eren pone su plan en marcha para detener a Eren, usando como ayuda a varios de Marley. Mientras Eren sigue con el Retumbar arrasando con todo a su paso, los militares intentan detenerlo sin éxito.','escenas/hange.png','Capítulo que no recuerdo claramente, sin embargo, si tengo la esencia. Floch, en un intento desesperado por ayudar a Eren a cumplir lo que desea, agujera el avión en el que iba a viajar la facción anti-Eren, retrasándolos. Posterior de matar a Floch, llegan los colosales movidos por el retumbar. Hange le dice a Levi que es su momento, que es el momento que siempre quiso, morir como una heroína, escapando de la responsabilidad y la carga de ser la comandante de la Legión de reconocimiento, llegando a su fin. 10/10.','Shingeki No Kyojin','Anime'),(25,'La danza de Dabi (Temporada 6 Capítulo 11)','Se revela que best Jeanist seguía vivo. Deku y Shigaraki se encuentran cayendo, pero llega Todoroki para rescatarlo junto con Endeavor y Kacchan, después de unas escenas con Ochako y Toga, pasamos al plato fuerte...','escenas/dabi.png','Un capítulo que muestra la continuación del combate contra Shigaraki que se encuentra en su clímax con la aparición de Dabi, revelando su identidad ante su padre Endeavor y su hermano Todoroki, un capítulo que te deja en tensión por ver la reacción de Endeavor, el actual héroe número 1. 9/10.','Boku No Hero','Anime'),(26,'¿Mi batalla apenas acaba de comenzar? (Capítulo 12)','Continuación de la pelea de Kumoko VS Alaba el dragón de tierra.','escenas/kumoko.png','El capítulo se deja venir con todo mostrando la batalla entre Kumoko y Alaba, finalizando con la victoria de Kumoko y reprochándole a Alaba, debido a que este ya perdió la voluntad de luchar, debido a que ya usó todos sus trucos contra Kumoko y aún así no pudo contra ella, por lo cual decide rendirse, Kumoko lo toma como un acto de cobardía, diciéndole que solo se tiene una vida y que hay que hacer siempre lo posible por sobrevivir. 9/10 por el mensaje.','Kumo Desu Ga Nani Ka','Anime'),(29,'Se levanta el telón (Capítulo 1)','Cuando una joven estrella embarazada aparece en la clínica médica rural de Gorou Amemiya, el médico se encarga de dar a luz de forma segura (y en secreto) al hijo de Ai Hoshino para que pueda regresar al escenario sin escándalos. Pero ninguna buena acción queda sin castigo, y en la víspera de su parto, se encuentra asesinado a manos del acosador engañado de Ai, ¡y posteriormente renace como el hijo de Ai, Aquamarine Hoshino! El brillo y el glamour del mundo del espectáculo ocultan la parte más oscura de la industria del entretenimiento, y amenazan con opacar el brillo de su estrella favorita. ¿Podrá ayudar a su nueva madre a llegar a lo más alto de las listas? ¿Y qué hará cuando ocurra un desastre impensable?','escenas/ai.png','No tenía grandes expectativas respecto al primer capítulo, solo lo vi porque Yoasobi y Rie Takahashi iban a participar, pero me llevé una gran y amarga sorpresa, el capítulo funcionó perfecto como un prólogo y sentó las bases de la trama bastante bien, no se hizo pesado en ningún momento, y la muerte de Ai fue el enganche perfecto. 10/10.','Oshi No Ko','Anime');
/*!40000 ALTER TABLE `moments_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-22 17:28:21
