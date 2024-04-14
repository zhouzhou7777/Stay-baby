-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot60h87
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
-- Current Database: `springboot60h87`
--

/*!40000 DROP DATABASE IF EXISTS `springboot60h87`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot60h87` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot60h87`;

--
-- Table structure for table `aixinjuanzeng`
--

DROP TABLE IF EXISTS `aixinjuanzeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aixinjuanzeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juanzengbiaoti` varchar(200) NOT NULL COMMENT '捐赠标题',
  `juanzengneirong` longtext COMMENT '捐赠内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jigoumingcheng` varchar(200) DEFAULT NULL COMMENT '机构名称',
  `juanzengdidian` varchar(200) NOT NULL COMMENT '捐赠地点',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `weixinzhanghao` varchar(200) NOT NULL COMMENT '微信账号',
  `weixinyonghuming` varchar(200) NOT NULL COMMENT '微信用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='爱心捐赠';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aixinjuanzeng`
--

LOCK TABLES `aixinjuanzeng` WRITE;
/*!40000 ALTER TABLE `aixinjuanzeng` DISABLE KEYS */;
INSERT INTO `aixinjuanzeng` VALUES (41,'2022-04-12 01:25:15','捐赠标题1','<p>捐赠内容1</p><p><br></p><p>这里可以放入收款码</p><p><img src=\"http://localhost:8080/springboot60h87/upload/1649727177350.jpg\"></p>','2022-04-12 09:25:15','机构名称1','捐赠地点1','upload/aixinjuanzeng_fengmiantupian1.jpg','微信账号1','微信用户名1'),(42,'2022-04-12 01:25:15','捐赠标题2','捐赠内容2','2022-04-12 09:25:15','机构名称2','捐赠地点2','upload/aixinjuanzeng_fengmiantupian2.jpg','微信账号2','微信用户名2'),(43,'2022-04-12 01:25:15','捐赠标题3','捐赠内容3','2022-04-12 09:25:15','机构名称3','捐赠地点3','upload/aixinjuanzeng_fengmiantupian3.jpg','微信账号3','微信用户名3'),(44,'2022-04-12 01:25:15','捐赠标题4','捐赠内容4','2022-04-12 09:25:15','机构名称4','捐赠地点4','upload/aixinjuanzeng_fengmiantupian4.jpg','微信账号4','微信用户名4'),(45,'2022-04-12 01:25:15','捐赠标题5','捐赠内容5','2022-04-12 09:25:15','机构名称5','捐赠地点5','upload/aixinjuanzeng_fengmiantupian5.jpg','微信账号5','微信用户名5'),(46,'2022-04-12 01:25:15','捐赠标题6','捐赠内容6','2022-04-12 09:25:15','机构名称6','捐赠地点6','upload/aixinjuanzeng_fengmiantupian6.jpg','微信账号6','微信用户名6');
/*!40000 ALTER TABLE `aixinjuanzeng` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `discussxuanchuanxinwen`
--

DROP TABLE IF EXISTS `discussxuanchuanxinwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuanchuanxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649727073791 DEFAULT CHARSET=utf8 COMMENT='宣传新闻评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuanchuanxinwen`
--

LOCK TABLES `discussxuanchuanxinwen` WRITE;
/*!40000 ALTER TABLE `discussxuanchuanxinwen` DISABLE KEYS */;
INSERT INTO `discussxuanchuanxinwen` VALUES (71,'2022-04-12 01:25:15',1,1,'用户名1','评论内容1','回复内容1'),(72,'2022-04-12 01:25:15',2,2,'用户名2','评论内容2','回复内容2'),(73,'2022-04-12 01:25:15',3,3,'用户名3','评论内容3','回复内容3'),(74,'2022-04-12 01:25:15',4,4,'用户名4','评论内容4','回复内容4'),(75,'2022-04-12 01:25:15',5,5,'用户名5','评论内容5','回复内容5'),(76,'2022-04-12 01:25:15',6,6,'用户名6','评论内容6','回复内容6'),(1649727073790,'2022-04-12 01:31:13',22,1649727045904,'001','45678956','回复');
/*!40000 ALTER TABLE `discussxuanchuanxinwen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baomingbianhao` varchar(200) DEFAULT NULL COMMENT '报名编号',
  `huodongbianhao` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `kaishishijian` varchar(200) DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` varchar(200) DEFAULT NULL COMMENT '结束时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baomingbianhao` (`baomingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649727090819 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (61,'2022-04-12 01:25:15','1111111111','活动编号1','活动名称1','活动地点1','开始时间1','结束时间1','用户账号1','用户姓名1','用户手机1','2022-04-12 09:25:15','备注1','是',''),(62,'2022-04-12 01:25:15','2222222222','活动编号2','活动名称2','活动地点2','开始时间2','结束时间2','用户账号2','用户姓名2','用户手机2','2022-04-12 09:25:15','备注2','是',''),(63,'2022-04-12 01:25:15','3333333333','活动编号3','活动名称3','活动地点3','开始时间3','结束时间3','用户账号3','用户姓名3','用户手机3','2022-04-12 09:25:15','备注3','是',''),(64,'2022-04-12 01:25:15','4444444444','活动编号4','活动名称4','活动地点4','开始时间4','结束时间4','用户账号4','用户姓名4','用户手机4','2022-04-12 09:25:15','备注4','是',''),(65,'2022-04-12 01:25:15','5555555555','活动编号5','活动名称5','活动地点5','开始时间5','结束时间5','用户账号5','用户姓名5','用户手机5','2022-04-12 09:25:15','备注5','是',''),(66,'2022-04-12 01:25:15','6666666666','活动编号6','活动名称6','活动地点6','开始时间6','结束时间6','用户账号6','用户姓名6','用户手机6','2022-04-12 09:25:15','备注6','是',''),(1649727090818,'2022-04-12 01:31:30','2022412933671528965','2222222222','活动名称2','活动地点2','2022-04-12','2022-04-12','001','A用户','13899999999','2022-04-12 09:33:06','无','是','报名成功');
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuwujuanzeng`
--

DROP TABLE IF EXISTS `jiuwujuanzeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuwujuanzeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juanzengbianhao` varchar(200) DEFAULT NULL COMMENT '捐赠编号',
  `juanzengbiaoti` varchar(200) DEFAULT NULL COMMENT '捐赠标题',
  `juanzengdidian` varchar(200) DEFAULT NULL COMMENT '捐赠地点',
  `wuliudanhao` varchar(200) DEFAULT NULL COMMENT '物流单号',
  `juanzengwupin` varchar(200) NOT NULL COMMENT '捐赠物品',
  `juanzengshijian` datetime DEFAULT NULL COMMENT '捐赠时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `juanzengbianhao` (`juanzengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649727109558 DEFAULT CHARSET=utf8 COMMENT='旧物捐赠';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuwujuanzeng`
--

LOCK TABLES `jiuwujuanzeng` WRITE;
/*!40000 ALTER TABLE `jiuwujuanzeng` DISABLE KEYS */;
INSERT INTO `jiuwujuanzeng` VALUES (51,'2022-04-12 01:25:15','1111111111','捐赠标题1','捐赠地点1','物流单号1','捐赠物品1','2022-04-12 09:25:15','用户账号1','用户姓名1','用户手机1'),(52,'2022-04-12 01:25:15','2222222222','捐赠标题2','捐赠地点2','物流单号2','捐赠物品2','2022-04-12 09:25:15','用户账号2','用户姓名2','用户手机2'),(53,'2022-04-12 01:25:15','3333333333','捐赠标题3','捐赠地点3','物流单号3','捐赠物品3','2022-04-12 09:25:15','用户账号3','用户姓名3','用户手机3'),(54,'2022-04-12 01:25:15','4444444444','捐赠标题4','捐赠地点4','物流单号4','捐赠物品4','2022-04-12 09:25:15','用户账号4','用户姓名4','用户手机4'),(55,'2022-04-12 01:25:15','5555555555','捐赠标题5','捐赠地点5','物流单号5','捐赠物品5','2022-04-12 09:25:15','用户账号5','用户姓名5','用户手机5'),(56,'2022-04-12 01:25:15','6666666666','捐赠标题6','捐赠地点6','物流单号6','捐赠物品6','2022-04-12 09:25:15','用户账号6','用户姓名6','用户手机6'),(1649727109557,'2022-04-12 01:31:49','2022412933195870722','捐赠标题2','捐赠地点2','#12456','xx物品','2022-04-12 09:33:19','001','A用户','13899999999');
/*!40000 ALTER TABLE `jiuwujuanzeng` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1649727045904,'001','yonghu','用户','h3aolhr096co5bzzxiu7ce4xfh2kuu5b','2022-04-12 01:30:51','2022-04-12 02:30:51'),(2,1,'abo','users','管理员','cqyb8jwsie580qfg9mg4njvlrk9c8x6g','2022-04-12 01:32:12','2022-04-12 02:32:13');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-12 01:25:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuanchuanxinwen`
--

DROP TABLE IF EXISTS `xuanchuanxinwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuanchuanxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) NOT NULL COMMENT '新闻标题',
  `xinwenneirong` longtext COMMENT '新闻内容',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='宣传新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuanchuanxinwen`
--

LOCK TABLES `xuanchuanxinwen` WRITE;
/*!40000 ALTER TABLE `xuanchuanxinwen` DISABLE KEYS */;
INSERT INTO `xuanchuanxinwen` VALUES (21,'2022-04-12 01:25:15','新闻标题1','<h1>新闻内容1</h1>','upload/xuanchuanxinwen_fengmiantupian1.jpg','2022-04-12 09:25:15','发布人1'),(22,'2022-04-12 01:25:15','新闻标题2','新闻内容2','upload/xuanchuanxinwen_fengmiantupian2.jpg','2022-04-12 09:25:15','发布人2'),(23,'2022-04-12 01:25:15','新闻标题3','新闻内容3','upload/xuanchuanxinwen_fengmiantupian3.jpg','2022-04-12 09:25:15','发布人3'),(24,'2022-04-12 01:25:15','新闻标题4','新闻内容4','upload/xuanchuanxinwen_fengmiantupian4.jpg','2022-04-12 09:25:15','发布人4'),(25,'2022-04-12 01:25:15','新闻标题5','新闻内容5','upload/xuanchuanxinwen_fengmiantupian5.jpg','2022-04-12 09:25:15','发布人5'),(26,'2022-04-12 01:25:15','新闻标题6','新闻内容6','upload/xuanchuanxinwen_fengmiantupian6.jpg','2022-04-12 09:25:15','发布人6');
/*!40000 ALTER TABLE `xuanchuanxinwen` ENABLE KEYS */;
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
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649727045905 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-12 01:25:15','用户账号1','123456','用户姓名1','男','年龄1','upload/yonghu_touxiang1.jpg','13823888881'),(12,'2022-04-12 01:25:15','用户账号2','123456','用户姓名2','男','年龄2','upload/yonghu_touxiang2.jpg','13823888882'),(13,'2022-04-12 01:25:15','用户账号3','123456','用户姓名3','男','年龄3','upload/yonghu_touxiang3.jpg','13823888883'),(14,'2022-04-12 01:25:15','用户账号4','123456','用户姓名4','男','年龄4','upload/yonghu_touxiang4.jpg','13823888884'),(15,'2022-04-12 01:25:15','用户账号5','123456','用户姓名5','男','年龄5','upload/yonghu_touxiang5.jpg','13823888885'),(16,'2022-04-12 01:25:15','用户账号6','123456','用户姓名6','男','年龄6','upload/yonghu_touxiang6.jpg','13823888886'),(1649727045904,'2022-04-12 01:30:45','001','001','A用户','男','22','upload/1649727061952.jpg','13899999999');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiyuanhuodong`
--

DROP TABLE IF EXISTS `zhiyuanhuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiyuanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbianhao` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `fuwuneirong` longtext COMMENT '服务内容',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huodongbianhao` (`huodongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='志愿活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiyuanhuodong`
--

LOCK TABLES `zhiyuanhuodong` WRITE;
/*!40000 ALTER TABLE `zhiyuanhuodong` DISABLE KEYS */;
INSERT INTO `zhiyuanhuodong` VALUES (31,'2022-04-12 01:25:15','1111111111','活动名称1','服务内容1','活动地点1','2022-04-12','2022-04-12','upload/zhiyuanhuodong_huodongtupian1.jpg','13823888881'),(32,'2022-04-12 01:25:15','2222222222','活动名称2','服务内容2','活动地点2','2022-04-12','2022-04-12','upload/zhiyuanhuodong_huodongtupian2.jpg','13823888882'),(33,'2022-04-12 01:25:15','3333333333','活动名称3','服务内容3','活动地点3','2022-04-12','2022-04-12','upload/zhiyuanhuodong_huodongtupian3.jpg','13823888883'),(34,'2022-04-12 01:25:15','4444444444','活动名称4','服务内容4','活动地点4','2022-04-12','2022-04-12','upload/zhiyuanhuodong_huodongtupian4.jpg','13823888884'),(35,'2022-04-12 01:25:15','5555555555','活动名称5','服务内容5','活动地点5','2022-04-12','2022-04-12','upload/zhiyuanhuodong_huodongtupian5.jpg','13823888885'),(36,'2022-04-12 01:25:15','6666666666','活动名称6','服务内容6','活动地点6','2022-04-12','2022-04-12','upload/zhiyuanhuodong_huodongtupian6.jpg','13823888886');
/*!40000 ALTER TABLE `zhiyuanhuodong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-12 13:07:55
