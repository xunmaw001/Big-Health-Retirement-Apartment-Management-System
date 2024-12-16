-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootto14d
-- ------------------------------------------------------
-- Server version	5.7.31

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

--
-- Current Database: `springbootto14d`
--

/*!40000 DROP DATABASE IF EXISTS `springbootto14d`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootto14d` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootto14d`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjianleixing`
--

DROP TABLE IF EXISTS `fangjianleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='房间类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjianleixing`
--

LOCK TABLES `fangjianleixing` WRITE;
/*!40000 ALTER TABLE `fangjianleixing` DISABLE KEYS */;
INSERT INTO `fangjianleixing` VALUES (51,'2023-02-16 06:36:19','房间类型1'),(52,'2023-02-16 06:36:19','房间类型2'),(53,'2023-02-16 06:36:19','房间类型3'),(54,'2023-02-16 06:36:19','房间类型4'),(55,'2023-02-16 06:36:19','房间类型5'),(56,'2023-02-16 06:36:19','房间类型6'),(57,'2023-02-16 06:36:19','房间类型7'),(58,'2023-02-16 06:36:19','房间类型8');
/*!40000 ALTER TABLE `fangjianleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjianxinxi`
--

DROP TABLE IF EXISTS `fangjianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianbianhao` varchar(200) DEFAULT NULL COMMENT '房间编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianfengmian` longtext COMMENT '房间封面',
  `fangjianweizhi` varchar(200) DEFAULT NULL COMMENT '房间位置',
  `youchuangwei` varchar(200) DEFAULT NULL COMMENT '有床位',
  `kezhurenshu` varchar(200) DEFAULT NULL COMMENT '可住人数',
  `yizhurenshu` varchar(200) DEFAULT NULL COMMENT '已住人数',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shoufeijiage` varchar(200) DEFAULT NULL COMMENT '收费价格',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fangjianjianjie` longtext COMMENT '房间简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianbianhao` (`fangjianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='房间信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjianxinxi`
--

LOCK TABLES `fangjianxinxi` WRITE;
/*!40000 ALTER TABLE `fangjianxinxi` DISABLE KEYS */;
INSERT INTO `fangjianxinxi` VALUES (61,'2023-02-16 06:36:19','1111111111','房间名称1','房间类型1','upload/fangjianxinxi_fangjianfengmian1.jpg,upload/fangjianxinxi_fangjianfengmian2.jpg,upload/fangjianxinxi_fangjianfengmian3.jpg','房间位置1','是','可住人数1','已住人数1','标题1','收费价格1','2023-02-16','房间简介1'),(62,'2023-02-16 06:36:19','2222222222','房间名称2','房间类型2','upload/fangjianxinxi_fangjianfengmian2.jpg,upload/fangjianxinxi_fangjianfengmian3.jpg,upload/fangjianxinxi_fangjianfengmian4.jpg','房间位置2','是','可住人数2','已住人数2','标题2','收费价格2','2023-02-16','房间简介2'),(63,'2023-02-16 06:36:19','3333333333','房间名称3','房间类型3','upload/fangjianxinxi_fangjianfengmian3.jpg,upload/fangjianxinxi_fangjianfengmian4.jpg,upload/fangjianxinxi_fangjianfengmian5.jpg','房间位置3','是','可住人数3','已住人数3','标题3','收费价格3','2023-02-16','房间简介3'),(64,'2023-02-16 06:36:19','4444444444','房间名称4','房间类型4','upload/fangjianxinxi_fangjianfengmian4.jpg,upload/fangjianxinxi_fangjianfengmian5.jpg,upload/fangjianxinxi_fangjianfengmian6.jpg','房间位置4','是','可住人数4','已住人数4','标题4','收费价格4','2023-02-16','房间简介4'),(65,'2023-02-16 06:36:19','5555555555','房间名称5','房间类型5','upload/fangjianxinxi_fangjianfengmian5.jpg,upload/fangjianxinxi_fangjianfengmian6.jpg,upload/fangjianxinxi_fangjianfengmian7.jpg','房间位置5','是','可住人数5','已住人数5','标题5','收费价格5','2023-02-16','房间简介5'),(66,'2023-02-16 06:36:19','6666666666','房间名称6','房间类型6','upload/fangjianxinxi_fangjianfengmian6.jpg,upload/fangjianxinxi_fangjianfengmian7.jpg,upload/fangjianxinxi_fangjianfengmian8.jpg','房间位置6','是','可住人数6','已住人数6','标题6','收费价格6','2023-02-16','房间简介6'),(67,'2023-02-16 06:36:19','7777777777','房间名称7','房间类型7','upload/fangjianxinxi_fangjianfengmian7.jpg,upload/fangjianxinxi_fangjianfengmian8.jpg,upload/fangjianxinxi_fangjianfengmian9.jpg','房间位置7','是','可住人数7','已住人数7','标题7','收费价格7','2023-02-16','房间简介7'),(68,'2023-02-16 06:36:19','8888888888','房间名称8','房间类型8','upload/fangjianxinxi_fangjianfengmian8.jpg,upload/fangjianxinxi_fangjianfengmian9.jpg,upload/fangjianxinxi_fangjianfengmian10.jpg','房间位置8','是','可住人数8','已住人数8','标题8','收费价格8','2023-02-16','房间简介8');
/*!40000 ALTER TABLE `fangjianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hugong`
--

DROP TABLE IF EXISTS `hugong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hugong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hugongzhanghao` varchar(200) NOT NULL COMMENT '护工账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `hugongxingming` varchar(200) NOT NULL COMMENT '护工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hugongzhanghao` (`hugongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='护工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hugong`
--

LOCK TABLES `hugong` WRITE;
/*!40000 ALTER TABLE `hugong` DISABLE KEYS */;
INSERT INTO `hugong` VALUES (21,'2023-02-16 06:36:19','护工账号1','123456','护工姓名1','男','13823888881','upload/hugong_touxiang1.jpg'),(22,'2023-02-16 06:36:19','护工账号2','123456','护工姓名2','男','13823888882','upload/hugong_touxiang2.jpg'),(23,'2023-02-16 06:36:19','护工账号3','123456','护工姓名3','男','13823888883','upload/hugong_touxiang3.jpg'),(24,'2023-02-16 06:36:19','护工账号4','123456','护工姓名4','男','13823888884','upload/hugong_touxiang4.jpg'),(25,'2023-02-16 06:36:19','护工账号5','123456','护工姓名5','男','13823888885','upload/hugong_touxiang5.jpg'),(26,'2023-02-16 06:36:19','护工账号6','123456','护工姓名6','男','13823888886','upload/hugong_touxiang6.jpg'),(27,'2023-02-16 06:36:19','护工账号7','123456','护工姓名7','男','13823888887','upload/hugong_touxiang7.jpg'),(28,'2023-02-16 06:36:19','护工账号8','123456','护工姓名8','男','13823888888','upload/hugong_touxiang8.jpg');
/*!40000 ALTER TABLE `hugong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hulixinxi`
--

DROP TABLE IF EXISTS `hulixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hulixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jilubianhao` varchar(200) DEFAULT NULL COMMENT '记录编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `hugongzhanghao` varchar(200) DEFAULT NULL COMMENT '护工账号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `jiluriqi` date DEFAULT NULL COMMENT '记录日期',
  `hulineirong` longtext COMMENT '护理内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jilubianhao` (`jilubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='护理信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hulixinxi`
--

LOCK TABLES `hulixinxi` WRITE;
/*!40000 ALTER TABLE `hulixinxi` DISABLE KEYS */;
INSERT INTO `hulixinxi` VALUES (111,'2023-02-16 06:36:19','1111111111','房间名称1','护工账号1','护工姓名1','用户账号1','用户姓名1','性别1',1,'床位号1','2023-02-16','护理内容1'),(112,'2023-02-16 06:36:19','2222222222','房间名称2','护工账号2','护工姓名2','用户账号2','用户姓名2','性别2',2,'床位号2','2023-02-16','护理内容2'),(113,'2023-02-16 06:36:19','3333333333','房间名称3','护工账号3','护工姓名3','用户账号3','用户姓名3','性别3',3,'床位号3','2023-02-16','护理内容3'),(114,'2023-02-16 06:36:19','4444444444','房间名称4','护工账号4','护工姓名4','用户账号4','用户姓名4','性别4',4,'床位号4','2023-02-16','护理内容4'),(115,'2023-02-16 06:36:19','5555555555','房间名称5','护工账号5','护工姓名5','用户账号5','用户姓名5','性别5',5,'床位号5','2023-02-16','护理内容5'),(116,'2023-02-16 06:36:19','6666666666','房间名称6','护工账号6','护工姓名6','用户账号6','用户姓名6','性别6',6,'床位号6','2023-02-16','护理内容6'),(117,'2023-02-16 06:36:19','7777777777','房间名称7','护工账号7','护工姓名7','用户账号7','用户姓名7','性别7',7,'床位号7','2023-02-16','护理内容7'),(118,'2023-02-16 06:36:19','8888888888','房间名称8','护工账号8','护工姓名8','用户账号8','用户姓名8','性别8',8,'床位号8','2023-02-16','护理内容8');
/*!40000 ALTER TABLE `hulixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiedaixinxi`
--

DROP TABLE IF EXISTS `jiedaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiedaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiedaibianhao` varchar(200) DEFAULT NULL COMMENT '接待编号',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiedaishijian` date DEFAULT NULL COMMENT '接待时间',
  `hugongzhanghao` varchar(200) DEFAULT NULL COMMENT '护工账号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiedaibianhao` (`jiedaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='接待信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiedaixinxi`
--

LOCK TABLES `jiedaixinxi` WRITE;
/*!40000 ALTER TABLE `jiedaixinxi` DISABLE KEYS */;
INSERT INTO `jiedaixinxi` VALUES (41,'2023-02-16 06:36:19','1111111111','用户账号1','用户姓名1','联系方式1','2023-02-16','护工账号1','护工姓名1','备注1'),(42,'2023-02-16 06:36:19','2222222222','用户账号2','用户姓名2','联系方式2','2023-02-16','护工账号2','护工姓名2','备注2'),(43,'2023-02-16 06:36:19','3333333333','用户账号3','用户姓名3','联系方式3','2023-02-16','护工账号3','护工姓名3','备注3'),(44,'2023-02-16 06:36:19','4444444444','用户账号4','用户姓名4','联系方式4','2023-02-16','护工账号4','护工姓名4','备注4'),(45,'2023-02-16 06:36:19','5555555555','用户账号5','用户姓名5','联系方式5','2023-02-16','护工账号5','护工姓名5','备注5'),(46,'2023-02-16 06:36:19','6666666666','用户账号6','用户姓名6','联系方式6','2023-02-16','护工账号6','护工姓名6','备注6'),(47,'2023-02-16 06:36:19','7777777777','用户账号7','用户姓名7','联系方式7','2023-02-16','护工账号7','护工姓名7','备注7'),(48,'2023-02-16 06:36:19','8888888888','用户账号8','用户姓名8','联系方式8','2023-02-16','护工账号8','护工姓名8','备注8');
/*!40000 ALTER TABLE `jiedaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2023-02-16 06:36:19','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(132,'2023-02-16 06:36:19','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(133,'2023-02-16 06:36:19','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(134,'2023-02-16 06:36:19','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(135,'2023-02-16 06:36:19','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(136,'2023-02-16 06:36:19','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(137,'2023-02-16 06:36:19','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(138,'2023-02-16 06:36:19','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiaxinxi`
--

DROP TABLE IF EXISTS `qingjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingjiabianhao` varchar(200) DEFAULT NULL COMMENT '请假编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianweizhi` varchar(200) DEFAULT NULL COMMENT '房间位置',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `hugongzhanghao` varchar(200) DEFAULT NULL COMMENT '护工账号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `qingjiashijian` date DEFAULT NULL COMMENT '请假时间',
  `qingjiayuanyin` longtext COMMENT '请假原因',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qingjiabianhao` (`qingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='请假信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiaxinxi`
--

LOCK TABLES `qingjiaxinxi` WRITE;
/*!40000 ALTER TABLE `qingjiaxinxi` DISABLE KEYS */;
INSERT INTO `qingjiaxinxi` VALUES (81,'2023-02-16 06:36:19','1111111111','房间名称1','房间类型1','房间位置1','床位号1','护工账号1','护工姓名1','用户账号1','用户姓名1',1,'2023-02-16','请假原因1'),(82,'2023-02-16 06:36:19','2222222222','房间名称2','房间类型2','房间位置2','床位号2','护工账号2','护工姓名2','用户账号2','用户姓名2',2,'2023-02-16','请假原因2'),(83,'2023-02-16 06:36:19','3333333333','房间名称3','房间类型3','房间位置3','床位号3','护工账号3','护工姓名3','用户账号3','用户姓名3',3,'2023-02-16','请假原因3'),(84,'2023-02-16 06:36:19','4444444444','房间名称4','房间类型4','房间位置4','床位号4','护工账号4','护工姓名4','用户账号4','用户姓名4',4,'2023-02-16','请假原因4'),(85,'2023-02-16 06:36:19','5555555555','房间名称5','房间类型5','房间位置5','床位号5','护工账号5','护工姓名5','用户账号5','用户姓名5',5,'2023-02-16','请假原因5'),(86,'2023-02-16 06:36:19','6666666666','房间名称6','房间类型6','房间位置6','床位号6','护工账号6','护工姓名6','用户账号6','用户姓名6',6,'2023-02-16','请假原因6'),(87,'2023-02-16 06:36:19','7777777777','房间名称7','房间类型7','房间位置7','床位号7','护工账号7','护工姓名7','用户账号7','用户姓名7',7,'2023-02-16','请假原因7'),(88,'2023-02-16 06:36:19','8888888888','房间名称8','房间类型8','房间位置8','床位号8','护工账号8','护工姓名8','用户账号8','用户姓名8',8,'2023-02-16','请假原因8');
/*!40000 ALTER TABLE `qingjiaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruzhuxinxi`
--

DROP TABLE IF EXISTS `ruzhuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruzhuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ruzhubianhao` varchar(200) DEFAULT NULL COMMENT '入住编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianweizhi` varchar(200) DEFAULT NULL COMMENT '房间位置',
  `hugongzhanghao` varchar(200) DEFAULT NULL COMMENT '护工账号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shoufeijiage` varchar(200) DEFAULT NULL COMMENT '收费价格',
  `beizhu` longtext COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ruzhubianhao` (`ruzhubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='入住信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruzhuxinxi`
--

LOCK TABLES `ruzhuxinxi` WRITE;
/*!40000 ALTER TABLE `ruzhuxinxi` DISABLE KEYS */;
INSERT INTO `ruzhuxinxi` VALUES (71,'2023-02-16 06:36:19','1111111111','房间名称1','房间类型1','房间位置1','护工账号1','护工姓名1','用户账号1','用户姓名1','性别1','年龄1','床位号1','标题1','收费价格1','备注1','未支付'),(72,'2023-02-16 06:36:19','2222222222','房间名称2','房间类型2','房间位置2','护工账号2','护工姓名2','用户账号2','用户姓名2','性别2','年龄2','床位号2','标题2','收费价格2','备注2','未支付'),(73,'2023-02-16 06:36:19','3333333333','房间名称3','房间类型3','房间位置3','护工账号3','护工姓名3','用户账号3','用户姓名3','性别3','年龄3','床位号3','标题3','收费价格3','备注3','未支付'),(74,'2023-02-16 06:36:19','4444444444','房间名称4','房间类型4','房间位置4','护工账号4','护工姓名4','用户账号4','用户姓名4','性别4','年龄4','床位号4','标题4','收费价格4','备注4','未支付'),(75,'2023-02-16 06:36:19','5555555555','房间名称5','房间类型5','房间位置5','护工账号5','护工姓名5','用户账号5','用户姓名5','性别5','年龄5','床位号5','标题5','收费价格5','备注5','未支付'),(76,'2023-02-16 06:36:19','6666666666','房间名称6','房间类型6','房间位置6','护工账号6','护工姓名6','用户账号6','用户姓名6','性别6','年龄6','床位号6','标题6','收费价格6','备注6','未支付'),(77,'2023-02-16 06:36:19','7777777777','房间名称7','房间类型7','房间位置7','护工账号7','护工姓名7','用户账号7','用户姓名7','性别7','年龄7','床位号7','标题7','收费价格7','备注7','未支付'),(78,'2023-02-16 06:36:19','8888888888','房间名称8','房间类型8','房间位置8','护工账号8','护工姓名8','用户账号8','用户姓名8','性别8','年龄8','床位号8','标题8','收费价格8','备注8','未支付');
/*!40000 ALTER TABLE `ruzhuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoufeibiaozhun`
--

DROP TABLE IF EXISTS `shoufeibiaozhun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoufeibiaozhun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shoufeijiage` float DEFAULT NULL COMMENT '收费价格',
  `shoufeishuoming` longtext COMMENT '收费说明',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='收费标准';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoufeibiaozhun`
--

LOCK TABLES `shoufeibiaozhun` WRITE;
/*!40000 ALTER TABLE `shoufeibiaozhun` DISABLE KEYS */;
INSERT INTO `shoufeibiaozhun` VALUES (31,'2023-02-16 06:36:19','标题1',1,'收费说明1','2023-02-16'),(32,'2023-02-16 06:36:19','标题2',2,'收费说明2','2023-02-16'),(33,'2023-02-16 06:36:19','标题3',3,'收费说明3','2023-02-16'),(34,'2023-02-16 06:36:19','标题4',4,'收费说明4','2023-02-16'),(35,'2023-02-16 06:36:19','标题5',5,'收费说明5','2023-02-16'),(36,'2023-02-16 06:36:19','标题6',6,'收费说明6','2023-02-16'),(37,'2023-02-16 06:36:19','标题7',7,'收费说明7','2023-02-16'),(38,'2023-02-16 06:36:19','标题8',8,'收费说明8','2023-02-16');
/*!40000 ALTER TABLE `shoufeibiaozhun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tixingxinxi`
--

DROP TABLE IF EXISTS `tixingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tixingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `tixingshijian` date DEFAULT NULL COMMENT '提醒时间',
  `tixingneirong` longtext COMMENT '提醒内容',
  `hugongzhanghao` varchar(200) DEFAULT NULL COMMENT '护工账号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='提醒信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tixingxinxi`
--

LOCK TABLES `tixingxinxi` WRITE;
/*!40000 ALTER TABLE `tixingxinxi` DISABLE KEYS */;
INSERT INTO `tixingxinxi` VALUES (91,'2023-02-16 06:36:19','房间名称1','标题1','用户账号1','用户姓名1','2023-02-16','提醒内容1','护工账号1','护工姓名1'),(92,'2023-02-16 06:36:19','房间名称2','标题2','用户账号2','用户姓名2','2023-02-16','提醒内容2','护工账号2','护工姓名2'),(93,'2023-02-16 06:36:19','房间名称3','标题3','用户账号3','用户姓名3','2023-02-16','提醒内容3','护工账号3','护工姓名3'),(94,'2023-02-16 06:36:19','房间名称4','标题4','用户账号4','用户姓名4','2023-02-16','提醒内容4','护工账号4','护工姓名4'),(95,'2023-02-16 06:36:19','房间名称5','标题5','用户账号5','用户姓名5','2023-02-16','提醒内容5','护工账号5','护工姓名5'),(96,'2023-02-16 06:36:19','房间名称6','标题6','用户账号6','用户姓名6','2023-02-16','提醒内容6','护工账号6','护工姓名6'),(97,'2023-02-16 06:36:19','房间名称7','标题7','用户账号7','用户姓名7','2023-02-16','提醒内容7','护工账号7','护工姓名7'),(98,'2023-02-16 06:36:19','房间名称8','标题8','用户账号8','用户姓名8','2023-02-16','提醒内容8','护工账号8','护工姓名8');
/*!40000 ALTER TABLE `tixingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,21,'护工账号1','hugong','护工','i579xfjowx7yp0p3u2xax1j5ln0e8uol','2023-02-16 06:41:27','2023-02-16 07:41:27');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuizhuxinxi`
--

DROP TABLE IF EXISTS `tuizhuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuizhuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tuizhubianhao` varchar(200) DEFAULT NULL COMMENT '退住编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `tuizhushijian` date DEFAULT NULL COMMENT '退住时间',
  `tuizhubeizhu` longtext COMMENT '退住备注',
  `hugongzhanghao` varchar(200) DEFAULT NULL COMMENT '护工账号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tuizhubianhao` (`tuizhubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='退住信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuizhuxinxi`
--

LOCK TABLES `tuizhuxinxi` WRITE;
/*!40000 ALTER TABLE `tuizhuxinxi` DISABLE KEYS */;
INSERT INTO `tuizhuxinxi` VALUES (121,'2023-02-16 06:36:19','1111111111','房间名称1','房间类型1','用户账号1','用户姓名1','性别1','年龄1','床位号1','2023-02-16','退住备注1','护工账号1','护工姓名1'),(122,'2023-02-16 06:36:19','2222222222','房间名称2','房间类型2','用户账号2','用户姓名2','性别2','年龄2','床位号2','2023-02-16','退住备注2','护工账号2','护工姓名2'),(123,'2023-02-16 06:36:19','3333333333','房间名称3','房间类型3','用户账号3','用户姓名3','性别3','年龄3','床位号3','2023-02-16','退住备注3','护工账号3','护工姓名3'),(124,'2023-02-16 06:36:19','4444444444','房间名称4','房间类型4','用户账号4','用户姓名4','性别4','年龄4','床位号4','2023-02-16','退住备注4','护工账号4','护工姓名4'),(125,'2023-02-16 06:36:19','5555555555','房间名称5','房间类型5','用户账号5','用户姓名5','性别5','年龄5','床位号5','2023-02-16','退住备注5','护工账号5','护工姓名5'),(126,'2023-02-16 06:36:19','6666666666','房间名称6','房间类型6','用户账号6','用户姓名6','性别6','年龄6','床位号6','2023-02-16','退住备注6','护工账号6','护工姓名6'),(127,'2023-02-16 06:36:19','7777777777','房间名称7','房间类型7','用户账号7','用户姓名7','性别7','年龄7','床位号7','2023-02-16','退住备注7','护工账号7','护工姓名7'),(128,'2023-02-16 06:36:19','8888888888','房间名称8','房间类型8','用户账号8','用户姓名8','性别8','年龄8','床位号8','2023-02-16','退住备注8','护工账号8','护工姓名8');
/*!40000 ALTER TABLE `tuizhuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-16 06:36:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuzhuxinxi`
--

DROP TABLE IF EXISTS `xuzhuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuzhuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuzhubianhao` varchar(200) DEFAULT NULL COMMENT '续住编号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianweizhi` varchar(200) DEFAULT NULL COMMENT '房间位置',
  `hugongzhanghao` varchar(200) DEFAULT NULL COMMENT '护工账号',
  `hugongxingming` varchar(200) DEFAULT NULL COMMENT '护工姓名',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shoufeijiage` varchar(200) DEFAULT NULL COMMENT '收费价格',
  `xuzhushijian` date DEFAULT NULL COMMENT '续住时间',
  `neirong` longtext COMMENT '内容',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuzhubianhao` (`xuzhubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='续住信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuzhuxinxi`
--

LOCK TABLES `xuzhuxinxi` WRITE;
/*!40000 ALTER TABLE `xuzhuxinxi` DISABLE KEYS */;
INSERT INTO `xuzhuxinxi` VALUES (101,'2023-02-16 06:36:19','1111111111','房间名称1','房间类型1','房间位置1','护工账号1','护工姓名1','用户账号1','用户姓名1','性别1','年龄1','床位号1','标题1','收费价格1','2023-02-16','内容1','未支付'),(102,'2023-02-16 06:36:19','2222222222','房间名称2','房间类型2','房间位置2','护工账号2','护工姓名2','用户账号2','用户姓名2','性别2','年龄2','床位号2','标题2','收费价格2','2023-02-16','内容2','未支付'),(103,'2023-02-16 06:36:19','3333333333','房间名称3','房间类型3','房间位置3','护工账号3','护工姓名3','用户账号3','用户姓名3','性别3','年龄3','床位号3','标题3','收费价格3','2023-02-16','内容3','未支付'),(104,'2023-02-16 06:36:19','4444444444','房间名称4','房间类型4','房间位置4','护工账号4','护工姓名4','用户账号4','用户姓名4','性别4','年龄4','床位号4','标题4','收费价格4','2023-02-16','内容4','未支付'),(105,'2023-02-16 06:36:19','5555555555','房间名称5','房间类型5','房间位置5','护工账号5','护工姓名5','用户账号5','用户姓名5','性别5','年龄5','床位号5','标题5','收费价格5','2023-02-16','内容5','未支付'),(106,'2023-02-16 06:36:19','6666666666','房间名称6','房间类型6','房间位置6','护工账号6','护工姓名6','用户账号6','用户姓名6','性别6','年龄6','床位号6','标题6','收费价格6','2023-02-16','内容6','未支付'),(107,'2023-02-16 06:36:19','7777777777','房间名称7','房间类型7','房间位置7','护工账号7','护工姓名7','用户账号7','用户姓名7','性别7','年龄7','床位号7','标题7','收费价格7','2023-02-16','内容7','未支付'),(108,'2023-02-16 06:36:19','8888888888','房间名称8','房间类型8','房间位置8','护工账号8','护工姓名8','用户账号8','用户姓名8','性别8','年龄8','床位号8','标题8','收费价格8','2023-02-16','内容8','未支付');
/*!40000 ALTER TABLE `xuzhuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shengri` date DEFAULT NULL COMMENT '生日',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-02-16 06:36:19','用户账号1','123456','用户姓名1','男',1,'13823888881','2023-02-16','upload/yonghu_touxiang1.jpg'),(12,'2023-02-16 06:36:19','用户账号2','123456','用户姓名2','男',2,'13823888882','2023-02-16','upload/yonghu_touxiang2.jpg'),(13,'2023-02-16 06:36:19','用户账号3','123456','用户姓名3','男',3,'13823888883','2023-02-16','upload/yonghu_touxiang3.jpg'),(14,'2023-02-16 06:36:19','用户账号4','123456','用户姓名4','男',4,'13823888884','2023-02-16','upload/yonghu_touxiang4.jpg'),(15,'2023-02-16 06:36:19','用户账号5','123456','用户姓名5','男',5,'13823888885','2023-02-16','upload/yonghu_touxiang5.jpg'),(16,'2023-02-16 06:36:19','用户账号6','123456','用户姓名6','男',6,'13823888886','2023-02-16','upload/yonghu_touxiang6.jpg'),(17,'2023-02-16 06:36:19','用户账号7','123456','用户姓名7','男',7,'13823888887','2023-02-16','upload/yonghu_touxiang7.jpg'),(18,'2023-02-16 06:36:19','用户账号8','123456','用户姓名8','男',8,'13823888888','2023-02-16','upload/yonghu_touxiang8.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10 11:00:08
