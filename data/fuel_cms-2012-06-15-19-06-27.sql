
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `auto_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL,
  `create_at` int(11) NOT NULL,
  `update_at` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `auto_album` WRITE;
/*!40000 ALTER TABLE `auto_album` DISABLE KEYS */;
INSERT INTO `auto_album` VALUES (1,1,1339647181,1339647181,1,'默认','1',1),(2,2,1339647190,1339647190,1,'测试','2',1);
/*!40000 ALTER TABLE `auto_album` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `auto_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL,
  `create_at` int(11) NOT NULL,
  `update_at` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `album` int(11) NOT NULL,
  `img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `auto_img` WRITE;
/*!40000 ALTER TABLE `auto_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_img` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `auto_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL,
  `create_at` int(11) NOT NULL,
  `update_at` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `auto_post` WRITE;
/*!40000 ALTER TABLE `auto_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_post` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cache_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `val` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
INSERT INTO `configs` VALUES (1,'open','1'),(2,'close_info',''),(3,'title','application'),(4,'seo','mincms,fuelphp,cms,web,企业建站,b2c'),(5,'stat',''),(27,'admin_cck_enable','1'),(6,'footer',''),(7,'seo_author','mincms'),(8,'seo_copyright','mincms'),(9,'admin_title','管理后台'),(10,'url_suffix','.html'),(11,'profiling','2'),(14,'caching','2'),(12,'admin_url_suffix',''),(13,'admin_profiling','2'),(15,'cache_lifetime',''),(16,'cache_dir',''),(17,'email_useragent','ljftaichi.com'),(18,'email_driver','smtp'),(19,'emal_is_html','0'),(20,'email_from','test@admin.com'),(21,'email_from_name','admin'),(22,'email_smtp_host','smtp.163.com'),(23,'email_smtp_port','25'),(24,'email_smtp_username','mincms@163.com'),(25,'email_smtp_password','nitlBsMnv7v_7ER4i6EaukdqTUxxWmNGenAya0I1V0ZzNU80all5NGxmWmJlWW14V1ViT0NMNDJpbnM'),(26,'admin_pagination','10');
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `content_field_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_field_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `val` varchar(20) NOT NULL,
  `sort` int(11) NOT NULL,
  `use` varchar(10) DEFAULT NULL,
  `options` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `content_field_form` WRITE;
/*!40000 ALTER TABLE `content_field_form` DISABLE KEYS */;
INSERT INTO `content_field_form` VALUES (1,'input','input',10,'',''),(2,'radio','radio',5,'',''),(3,'checkbox','checkbox',6,'',''),(4,'file','file',8,'',''),(5,'textarea','textarea',9,'',''),(6,'select','select',7,'',''),(7,'relation_belongs_to','belongs_to',2,'orm',''),(8,'relation_has_one','has_one',3,'orm',''),(9,'relation_has_many','has_many',1,'orm',''),(10,'image','image',4,'file','');
/*!40000 ALTER TABLE `content_field_form` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `content_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `label` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `create_at` int(11) NOT NULL,
  `update_at` int(11) NOT NULL,
  `options` varchar(200) DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `content_fields` WRITE;
/*!40000 ALTER TABLE `content_fields` DISABLE KEYS */;
INSERT INTO `content_fields` VALUES (1,1,1,'标题','title',1,1339644864,1339644864,NULL,1),(2,1,2,'内容','body',1,1339647015,1339647015,NULL,5),(3,2,3,'标题','title',1,1339647044,1339647044,NULL,1),(4,2,4,'封面','img',1,1339647073,1339647073,NULL,10),(5,2,5,'用户','uid',1,1339647100,1339647100,'\"{\\\"rt\\\":\\\"users\\\",\\\"column\\\":\\\"username\\\"}\"',7),(8,3,8,'图片','img',1,1339647166,1339647166,NULL,10),(7,3,7,'所属相册','album',1,1339647155,1339647155,'\"{\\\"rt\\\":\\\"auto_album\\\",\\\"column\\\":\\\"title\\\"}\"',7);
/*!40000 ALTER TABLE `content_fields` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `content_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `rules` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `content_rule` WRITE;
/*!40000 ALTER TABLE `content_rule` DISABLE KEYS */;
INSERT INTO `content_rule` VALUES (1,1,'{\"required\":\"1\"}'),(2,3,'{\"required\":\"1\"}'),(4,4,'{\"ext_whitelist\":\"jpg,png,gif\",\"required\":\"1\"}'),(7,7,'{\"required\":\"1\"}'),(8,8,'{\"required\":\"1\"}');
/*!40000 ALTER TABLE `content_rule` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `val` varchar(20) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `content_type` WRITE;
/*!40000 ALTER TABLE `content_type` DISABLE KEYS */;
INSERT INTO `content_type` VALUES (1,'文章','post',1,1,1),(2,'相册','album',2,1,1),(3,'图片','img',3,1,1);
/*!40000 ALTER TABLE `content_type` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `ext` varchar(8) NOT NULL,
  `path` varchar(200) NOT NULL,
  `create_at` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'Hydrangeas.jpg','image/jpeg','jpg','upload/files/af4618925dc5e17c611fa74139b074e2.jpg',1339647181,1,595284),(2,'Penguins.jpg','image/jpeg','jpg','upload/files/4cb43b71e729822403b90eacdccf1dfa.jpg',1339647190,1,777835);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `val` varchar(20) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'超级管理员',NULL,'admin',1),(2,'管理员',NULL,'admin_user',1);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `sort` int(11) DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'简体中文','zh',0,1,1,1),(2,'English','en',0,1,1,0);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `language_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `out` varchar(200) NOT NULL,
  `language_id` int(11) NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `create_at` int(11) NOT NULL,
  `update_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `language_file` WRITE;
/*!40000 ALTER TABLE `language_file` DISABLE KEYS */;
INSERT INTO `language_file` VALUES (1,'hello','您好',1,1,1337857001,NULL),(2,'logout','退出',1,1,1337857038,NULL),(3,'admin','管理',1,1,1337857047,NULL),(4,'add','添加',1,1,1337857056,NULL),(5,'home','首页',1,1,1337857076,NULL),(6,'update','更新',1,1,1337857082,NULL),(7,'name','名称',1,1,1337868455,NULL),(8,'display','显示',1,1,1337868462,NULL),(9,'language','语言',1,1,1337868467,NULL),(10,'translation','语言翻译',1,1,1337868494,1337868680),(11,'translation add','新建翻译',1,1,1337868507,1337868568),(12,'language add','新建语言',1,1,1337868550,NULL),(13,'create_time','创建时间',1,1,1337868855,NULL),(14,'action','操作',1,1,1337868865,NULL),(15,'save success','操作已成功',1,1,1337868878,NULL),(16,'edit','编辑',1,1,1337869040,NULL),(17,'language_key','语言包名称',1,1,1337869329,NULL),(18,'content','内容',1,1,1337870213,NULL),(19,'user','用户',1,1,1337870220,NULL),(20,'pages','页面',1,1,1337870252,NULL),(21,'user add','创建用户',1,1,1337919030,NULL),(22,'tel','手机号码',1,1,1337919407,NULL),(23,'email','邮件地址',1,1,1337919531,NULL),(24,'password','密码',1,1,1337919592,NULL),(25,'you can login tel or email','登录支持手机号或邮件',1,1,1337919776,NULL),(26,'pls confirm you are admin language is very importent','请谨慎操作多语言,设置将改变全站语言信息',1,1,1337920459,NULL),(27,'application admin','应用后台管理',1,1,1337920759,NULL),(28,'the field :label should be tel','字段 :label 请输入正确的手机号',1,1,1337921098,NULL),(29,'The field :label must be unique, but :value has already been used','字段 :label 必须唯一, 但 :value 已存在',1,1,1337921559,NULL),(30,'user group','用户组',1,1,1337921814,NULL),(31,'user group add','创建用户组',1,1,1337921825,NULL),(32,'acl','权限列表',1,1,1337921831,NULL),(33,'config','设置',1,1,1337921898,NULL),(34,'seo','SEO优化',1,1,1337922008,NULL),(35,'tools','工具',1,1,1337922427,NULL),(36,'database backup','数据备份',1,1,1337923005,NULL),(37,'generate sitemap','生成网站地图',1,1,1337923016,NULL),(38,'enable website','开启网站',1,1,1337932043,NULL),(39,'setting name','设置名称',1,1,1337932056,NULL),(40,'setting value','设置值',1,1,1337932064,NULL),(41,'yes','是',1,1,1337932082,NULL),(42,'no','否',1,1,1337932086,NULL),(43,'close website display','关闭网站时显示',1,1,1337932309,NULL),(44,'save','保存',1,1,1337932428,NULL),(45,'reset','重置',1,1,1337932442,NULL),(46,'website title','网站标题',1,1,1337932455,NULL),(47,'website footer','网站页脚',1,1,1337932468,NULL),(48,'seo key','SEO关键词',1,1,1337932565,NULL),(49,'statistics','流量统计代码',1,1,1337932582,NULL),(50,'our website now is close,any problem pls connect us','我们的网站因故将关闭,如有疑问请联系管理员',1,1,1337935118,NULL),(51,'page not find','您把请求的页面不存在',1,1,1337935321,NULL),(52,'complete progress','完成进度',1,1,1337936444,NULL),(53,'code','代码',1,1,1337936463,NULL),(54,'active','启用',1,1,1337937010,NULL),(55,'default language','默认语言',1,1,1337937048,NULL),(56,'cover to language','快速翻译语言包',1,1,1337954905,NULL),(57,'hello','hello',2,1,1337959296,NULL),(58,'logout','logout',2,1,1337959296,NULL),(59,'admin','admin',2,1,1337959296,NULL),(60,'add','add',2,1,1337959296,NULL),(61,'home','home',2,1,1337959296,NULL),(62,'update','update',2,1,1337959296,NULL),(63,'name','name',2,1,1337959296,NULL),(64,'display','display',2,1,1337959296,NULL),(65,'language','language',2,1,1337959296,NULL),(66,'translation','translation',2,1,1337959296,NULL),(67,'translation add','translation add',2,1,1337959296,NULL),(68,'language add','language add',2,1,1337959296,NULL),(69,'create_time','create_time',2,1,1337959296,NULL),(70,'action','action',2,1,1337959296,NULL),(71,'save success','save success',2,1,1337959296,NULL),(72,'edit','edit',2,1,1337959296,NULL),(73,'language_key','language_key',2,1,1337959296,NULL),(74,'content','content',2,1,1337959296,NULL),(75,'user','user',2,1,1337959296,NULL),(76,'pages','pages',2,1,1337959296,NULL),(77,'user add','user add',2,1,1337959296,NULL),(78,'tel','tel',2,1,1337959296,NULL),(79,'email','email',2,1,1337959296,NULL),(80,'password','password',2,1,1337959296,NULL),(81,'you can login tel or email','you can login tel or email',2,1,1337959296,NULL),(82,'pls confirm you are admin language is very importent','pls confirm you are admin language is very importent',2,1,1337959296,NULL),(83,'application admin','application admin',2,1,1337959296,NULL),(84,'the field :label should be tel','the field :label should be tel',2,1,1337959296,NULL),(85,'The field :label must be unique, but :value has already been used','The field :label must be unique, but :value has already been used',2,1,1337959296,NULL),(86,'user group','user group',2,1,1337959296,NULL),(87,'user group add','user group add',2,1,1337959296,NULL),(88,'acl','acl',2,1,1337959296,NULL),(89,'config','config',2,1,1337959296,NULL),(90,'seo','seo',2,1,1337959296,NULL),(91,'tools','tools',2,1,1337959296,NULL),(92,'database backup','database backup',2,1,1337959296,NULL),(93,'generate sitemap','generate sitemap',2,1,1337959296,NULL),(94,'enable website','enable website',2,1,1337959296,NULL),(95,'setting name','setting name',2,1,1337959296,NULL),(96,'setting value','setting value',2,1,1337959296,NULL),(97,'yes','yes',2,1,1337959296,NULL),(98,'no','no',2,1,1337959296,NULL),(99,'close website display','close website display',2,1,1337959296,NULL),(100,'save','save',2,1,1337959296,NULL),(101,'reset','reset',2,1,1337959296,NULL),(102,'website title','website title',2,1,1337959296,NULL),(103,'website footer','website footer',2,1,1337959296,NULL),(104,'seo key','seo key',2,1,1337959296,NULL),(105,'statistics','statistics',2,1,1337959296,NULL),(106,'our website now is close,any problem pls connect us','our website now is close,any problem pls connect us',2,1,1337959296,NULL),(107,'page not find','page not find',2,1,1337959296,NULL),(108,'complete progress','complete progress',2,1,1337959296,NULL),(109,'code','code',2,1,1337959296,NULL),(110,'active','active',2,1,1337959296,NULL),(111,'default language','default language',2,1,1337959296,NULL),(112,'cover to language','cover to language',2,1,1337959296,NULL),(113,'cover language :a to :b','cover language :a to :b',1,1,1337959518,NULL),(114,'import to database','恢复数据库,请谨慎操作',1,1,1338030837,NULL),(115,'confirm delete','操作不可恢复,确认删除吗',1,1,1338031065,NULL),(116,'backup database','备份数据库',1,1,1338031183,NULL),(117,'import database','恢复数据库',1,1,1338031195,NULL),(118,'confirm open import tag','确认打开导入链接吗',1,1,1338038958,NULL),(119,'file_size','文件大小',1,1,1338039305,NULL),(120,'sort','排序',1,1,1338182056,NULL),(121,'im','联系方式',1,1,1338182074,NULL),(122,'author','作者',1,1,1338182079,NULL),(123,'admin title','后台标题',1,1,1338196449,NULL),(124,'will logout','确认退出系统',1,1,1338196756,NULL),(125,'url_suffix','URL后缀,必须.开始',1,1,1338199406,NULL),(126,'profiling','调试',1,1,1338199418,NULL),(127,'caching','缓存',1,1,1338199423,NULL),(128,'cache lifetime','缓存过期时间',1,1,1338199431,NULL),(129,'cache dir','缓存目录',1,1,1338199438,NULL),(130,'seo author','seo 作者',1,1,1338199449,NULL),(131,'seo copyright','seo 版权信息',1,1,1338199462,NULL),(132,'the cache lifetime in seconds','缓存过期时间以秒为单位',1,1,1338199479,NULL),(133,'relative app path,default is app/cache/','路径相对于app目录,默认为app/cache/',1,1,1338199508,NULL),(134,'front settings','前台设置',1,1,1338199534,NULL),(135,'admin settings','后台设置',1,1,1338199542,NULL),(136,'login','登录',1,1,1338202545,NULL),(137,'set it in app/config/config php file key is profiling','请在文件 app/config/config.php 中设置 profiling属性',1,1,1338202757,NULL),(138,'backup language','备份当前语言',1,1,1338203501,NULL),(139,'import language','恢复语言',1,1,1338203517,NULL),(140,'upload language','上传语言',1,1,1338203623,NULL),(141,'just for devloper','请确认您是开发者',1,1,1338258701,1338281765),(142,'username','用户名',1,1,1338467856,NULL),(143,'load all controllers and actions','加载系统所有操作',1,1,1338467891,NULL),(144,'val','值',1,1,1338467906,NULL),(145,'val is unique','值是唯一的',1,1,1338467912,NULL),(146,'group','组',1,1,1338467922,NULL),(147,'current user','当前用户',1,1,1338468541,NULL),(148,'email useragent','邮件代码',1,1,1338785986,NULL),(149,'email driver','发送方式',1,1,1338785999,NULL),(150,'email is html','是否支持html格式',1,1,1338786009,NULL),(151,'email from','发送者邮件',1,1,1338786019,1338786042),(152,'email from name','发送人名字',1,1,1338786031,NULL),(153,'email settings','邮件设置',1,1,1338786062,NULL),(154,'smtp host','SMTP主机',1,1,1338786078,NULL),(155,'smtp port','SMTP端口',1,1,1338786092,NULL),(156,'smtp username','SMTP用户名',1,1,1338786101,NULL),(157,'smtp password','SMTP密码',1,1,1338786112,NULL),(158,'content type','内容类型',1,1,1338801056,NULL),(159,'content type add','添加内容类型',1,1,1338801070,NULL),(160,'content form field','字段类型',1,1,1338801083,NULL),(161,'field label','字段显示名',1,1,1338801093,NULL),(162,'field key','字段名',1,1,1338801107,NULL),(163,'just english,will put to database','只能是英文,将生成对应字段',1,1,1338801131,NULL),(164,'field type','字段类型',1,1,1338801139,NULL),(165,'next','下一步',1,1,1338801152,NULL),(166,'rules','规则',1,1,1338809261,NULL),(167,'value','值',1,1,1338809268,NULL),(168,'has add rules','已添加的规则',1,1,1338809360,NULL),(169,'default value','默认值',1,1,1338881545,NULL),(170,'add field','添加字段',1,1,1338883264,NULL),(171,'html type','表单类型',1,1,1338884110,NULL),(172,'options','参数',1,1,1338884117,NULL),(173,'label','表单label',1,1,1338902025,NULL),(174,'generate models','生成模型Model文件',1,1,1338972631,NULL),(175,'set colums for lists','设置需要显示的字段',1,1,1339140652,NULL),(176,'relation shop','关联表',1,1,1339144973,NULL),(177,'pls select','请选择',1,1,1339148045,NULL),(178,'pls active plugin first','请先启用插件',1,1,1339469628,NULL),(179,'setting','设置',1,1,1339469635,NULL),(180,'plugin','插件',1,1,1339469643,NULL),(181,'cache','缓存',1,1,1339469648,NULL),(182,'clear all cache','清除所有缓存',1,1,1339469662,NULL),(183,'cache_id','缓存ID',1,1,1339469671,NULL),(184,'plugin_name','插件名称',1,1,1339469698,NULL),(185,'page','指定执行页面',1,1,1339469709,NULL),(186,'params','参数',1,1,1339469720,NULL),(187,'html_element','表单元素',1,1,1339469738,NULL),(188,'exists file and if upload will remove this one','已存在文件,上传文件将覆盖现有文件',1,1,1339488038,NULL),(189,'pagination size','每页显示多少条',1,1,1339496121,NULL),(190,'it is php plugin','这是PHP插件,表单元素为表单的name属性',1,1,1339496770,NULL),(191,'it is js plugin','这是JQ插件,表单元素是class属性需加.是id需加#',1,1,1339496840,NULL),(192,'do you confirm delete','确认删除吗?该操作不可恢复',1,1,1339497146,NULL),(193,'No file was uploaded','没有文件被上传',1,1,1339561567,NULL),(194,'field','字段',1,1,1339561587,NULL),(195,'video','视频',1,1,1339561594,NULL),(196,'edit field','编辑字段',1,1,1339562323,NULL),(197,'field mange','字段管理',1,1,1339584502,NULL),(198,'could you want to remove this content type','请注意该操作将删除内容类型对应的表,不可恢复,确认执行该操作吗?',1,1,1339584655,NULL),(199,'delete content type','删除内容类型',1,1,1339584672,NULL),(200,'delete','删除',1,1,1339585460,NULL),(201,'lists','列表',1,1,1339585654,NULL),(202,'website','网址',1,1,1339750686,NULL),(203,'enable cck','启用内容管理',1,1,1339754126,NULL),(204,'token error','令牌错误',1,1,1339755552,NULL),(205,'clear cache','清除缓存',1,1,1339755969,NULL),(206,'modules','模块',1,1,1339756000,NULL);
/*!40000 ALTER TABLE `language_file` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `type` varchar(20) NOT NULL,
  `auth` varchar(200) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `options` text,
  `auth` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `path` varchar(200) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `is_js` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
INSERT INTO `plugin` VALUES (1,'ckeditor','文本编辑器CKeditor','a:2:{s:2:\"js\";a:1:{i:0;s:36:\"plugin/ckeditor/ckeditor/ckeditor.js\";}s:4:\"code\";s:25:\"CKEDITOR.replace(#,{##});\";}','sun kang','http://mincms.com','plugin/ckeditor/ckeditor.php',NULL,1,1),(2,'facybox','facybox弹出层效果','a:3:{s:3:\"css\";a:1:{i:0;s:34:\"plugin/facybox/facybox/facybox.css\";}s:2:\"js\";a:1:{i:0;s:33:\"plugin/facybox/facybox/facybox.js\";}s:4:\"code\";s:19:\"$(#).facybox({##});\";}','sun kang','http://mincms.com','plugin/facybox/facybox.php',NULL,0,1),(3,'code_prettify','google-code-prettify','a:3:{s:3:\"css\";a:1:{i:0;s:55:\"plugin/code_prettify/code-prettify/sons-of-obsidian.css\";}s:2:\"js\";a:1:{i:0;s:46:\"plugin/code_prettify/code-prettify/prettify.js\";}s:4:\"code\";s:15:\"prettyPrint(); \";}',NULL,'http://code.google.com/p/google-code-prettify/','plugin/code_prettify/code_prettify.php',NULL,1,1),(4,'chosen','select选择框效果','a:3:{s:3:\"css\";a:1:{i:0;s:31:\"plugin/chosen/chosen/chosen.css\";}s:2:\"js\";a:1:{i:0;s:41:\"plugin/chosen/chosen/chosen.jquery.min.js\";}s:4:\"code\";s:18:\"$(#).chosen({##});\";}',NULL,'https://github.com/harvesthq/chosen','plugin/chosen/chosen.php',NULL,1,1),(5,'tags_input','jquery tag input效果','a:3:{s:3:\"css\";a:1:{i:0;s:49:\"plugin/tags_input/tags_input/jquery.tagsinput.css\";}s:2:\"js\";a:1:{i:0;s:52:\"plugin/tags_input/tags_input/jquery.tagsinput.min.js\";}s:4:\"code\";s:21:\"$(#).tagsInput({##});\";}',NULL,'https://github.com/xoxco/jQuery-Tags-Input','plugin/tags_input/tags_input.php',NULL,0,1);
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `plugin_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_id` int(11) NOT NULL,
  `html_element` varchar(50) DEFAULT NULL,
  `params` text,
  `page` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `plugin_setting` WRITE;
/*!40000 ALTER TABLE `plugin_setting` DISABLE KEYS */;
INSERT INTO `plugin_setting` VALUES (1,1,'body','skin:\'v2\',toolbar:\'Full\'','content/node/do/1'),(2,2,'a[rel*=facybox]','','content/node/index/3'),(8,4,'select','','*'),(7,3,'','','admin/home/index');
/*!40000 ALTER TABLE `plugin_setting` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `role_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_acl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `role_acl` WRITE;
/*!40000 ALTER TABLE `role_acl` DISABLE KEYS */;
INSERT INTO `role_acl` VALUES (174,2,2),(173,2,1),(172,2,3),(171,2,7),(170,2,6),(169,2,5),(168,2,4),(167,2,8),(166,2,14),(165,2,13),(164,2,12),(163,2,11),(162,2,10),(161,2,9),(160,2,17),(159,2,16),(158,2,15),(157,2,20),(156,2,19),(155,2,18),(154,2,24),(153,2,23),(152,2,22),(151,2,21),(175,1,31),(176,1,32),(177,1,33),(178,1,15),(179,1,16),(180,1,17),(181,1,9),(182,1,10),(183,1,11),(184,1,12),(185,1,13),(186,1,14);
/*!40000 ALTER TABLE `role_acl` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `role_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` int(11) NOT NULL,
  `val` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `role_action` WRITE;
/*!40000 ALTER TABLE `role_action` DISABLE KEYS */;
INSERT INTO `role_action` VALUES (1,1,'action_index','ACL权限首页'),(2,1,'action_do','加载所有控制器及动作至ACL'),(3,2,'action_index','系统配置'),(4,3,'action_index','用户组列表'),(5,3,'action_add','添加用户组'),(6,3,'action_edit','编辑用户组信息'),(7,3,'action_bind','组绑定权限'),(8,4,'action_index',NULL),(9,5,'action_index','语言列表'),(10,5,'action_add','添加新语言'),(11,5,'action_edit',NULL),(12,5,'action_active','激活对应的语言'),(13,5,'action_enable','设为默认语言'),(14,5,'action_cover','转换语言包'),(15,6,'action_index','工具列表'),(16,6,'action_active','启用或禁用工具'),(17,6,'action_sort','工具排序'),(18,7,'action_index',NULL),(19,7,'action_add',NULL),(20,7,'action_edit',NULL),(21,8,'action_index','用户列表'),(22,8,'action_active','启用或禁用用户'),(23,8,'action_add','添加用户'),(24,8,'action_edit','修改用户信息'),(25,9,'action_index',NULL),(26,10,'action_info',NULL),(27,10,'action_backup',NULL),(28,10,'action_backup_do',NULL),(29,10,'action_import',NULL),(30,10,'action_remove',NULL),(31,11,'action_info',NULL),(32,11,'action_index',NULL),(33,11,'action_do',NULL),(34,12,'action_index','缓存列表'),(35,12,'action_del','删除指定缓存'),(36,12,'action_clear','清空所有缓存'),(37,13,'action_index','插件列表'),(38,13,'action_active','启用或禁用插件'),(39,13,'action_del','删除插件配置'),(40,13,'action_sort','插件排序'),(41,13,'action_edit','插件配置'),(42,13,'action_set','插件配置列表'),(43,14,'action_index','字段列表'),(44,14,'action_del','删除字段'),(45,14,'action_sort','保存排序'),(46,14,'action_rtcolumns','选择关联显示的字段'),(47,15,'action_index',NULL),(48,15,'action_sort',NULL),(49,16,'action_index',NULL),(50,16,'action_do',NULL),(51,16,'action_del','删除内容'),(52,16,'action_sort','排序'),(53,16,'action_active','显示内容或隐藏'),(54,17,'action_index','内容类型列表'),(55,17,'action_add','添加内容类型'),(56,17,'action_edit','内容类型编辑'),(57,17,'action_sort',NULL),(58,17,'action_g','自动生成对应的model文件');
/*!40000 ALTER TABLE `role_action` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `role_controller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_controller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `val` varchar(50) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `role_controller` WRITE;
/*!40000 ALTER TABLE `role_controller` DISABLE KEYS */;
INSERT INTO `role_controller` VALUES (1,'Admin\\Controller_Acl','Admin\\Controller_Acl',NULL),(2,'Admin\\Controller_Config','Admin\\Controller_Config',NULL),(3,'Admin\\Controller_Group','Admin\\Controller_Group',NULL),(4,'Admin\\Controller_Home','Admin\\Controller_Home',NULL),(5,'Admin\\Controller_Language','Admin\\Controller_Language',NULL),(6,'Admin\\Controller_Tools','Admin\\Controller_Tools',NULL),(7,'Admin\\Controller_Translate','Admin\\Controller_Translate',NULL),(8,'Admin\\Controller_User','Admin\\Controller_User',NULL),(9,'Content\\Controller_Home','Content\\Controller_Home',NULL),(10,'Tools\\Controller_Database','Tools\\Controller_Database',NULL),(11,'Tools\\Controller_Sitemap','Tools\\Controller_Sitemap',NULL),(12,'Admin\\Controller_Cache','Admin\\Controller_Cache',NULL),(13,'Admin\\Controller_Plugin','Admin\\Controller_Plugin',NULL),(14,'Content\\Controller_Field','Content\\Controller_Field',NULL),(15,'Content\\Controller_Form','Content\\Controller_Form',NULL),(16,'Content\\Controller_Node','Content\\Controller_Node',NULL),(17,'Content\\Controller_Type','Content\\Controller_Type',NULL);
/*!40000 ALTER TABLE `role_controller` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `author` varchar(20) NOT NULL,
  `web` varchar(200) DEFAULT NULL,
  `im` varchar(200) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tools` WRITE;
/*!40000 ALTER TABLE `tools` DISABLE KEYS */;
INSERT INTO `tools` VALUES (1,'database backup','tools/database/backup','sun kang',NULL,'68103403@qq.com',1,1),(2,'sitemap','tools/sitemap/index','sun kang',NULL,'68103403@qq.com',2,0),(4,'清除缓存','tools/cache/index','sun kang',NULL,'68103403@qq.com',4,1);
/*!40000 ALTER TABLE `tools` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `group` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_login` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` int(11) unsigned NOT NULL,
  `update_at` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Lz2ctRARdGg8X8CUtXtW56YbCpKE847lr7GQdAg0AtE=',1,'68103403@qq.com','1339747371','f3cdc2566994f6b6a56e168c4175df3d5bae36e8','',1338794945,0,1),(2,'test','XFe0Bat79p8HyW3FMVYtSFWgkKrgtSfM1Ml/31yBy5g=',2,'yiiphp@qq.com','1338457290','1401b721642327a996a0730ae409cb5bad5e7e86',NULL,1338881394,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES (1,2,5,'admin',NULL),(2,2,3,'admin',NULL),(3,1,1,'admin',NULL);
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

