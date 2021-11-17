-- MySQL dump 10.13  Distrib 5.7.34, for Win64 (x86_64)
--
-- Host: localhost    Database: webapp
-- ------------------------------------------------------
-- Server version	5.7.34-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `beers`
--

DROP TABLE IF EXISTS `beers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beers` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `ブルワリー` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `IBU` varchar(50) DEFAULT NULL,
  `ABV` varchar(50) DEFAULT NULL,
  `スタイル` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beers`
--

LOCK TABLES `beers` WRITE;
/*!40000 ALTER TABLE `beers` DISABLE KEYS */;
INSERT INTO `beers` VALUES (1,'BTB','モンスターゴールド',NULL,'7.0','IPA'),(2,'ブリュードッグ','クロックワークタンジェリン','30','4.5','シトラスセッションIPA'),(3,'ブリュードッグ','パンク','40','6.2','IPA'),(4,'忽布古丹','快刀乱麻','62','6.5','IPL'),(5,'バーントミル','ガーデンズオブグリーンストラータ&シトラ',NULL,'6.2','ヘイジーIPA'),(6,'シルバーシティー','ヒーローステータス','22','6.5','コールドブリューコーヒーエール'),(7,'シルバーシティー','リッジトップレッド','15','6.0','レッドエール'),(8,'ミッケラー','オレゴンフルーツシリーズスポンタンブルーベリー',NULL,'7.7','サワーエールブリュードウィズブルーベリー'),(9,'サントリー','モルツ','21','5','ピルスナー'),(10,'カールスバーグ','カールスバーグ','8','5','ピルスナー');
/*!40000 ALTER TABLE `beers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drinks`
--

DROP TABLE IF EXISTS `drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `price` varchar(50) CHARACTER SET utf8 NOT NULL,
  `genre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `base1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `base2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `base3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `base4` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `base5` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `base6` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `base7` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drinks`
--

LOCK TABLES `drinks` WRITE;
/*!40000 ALTER TABLE `drinks` DISABLE KEYS */;
INSERT INTO `drinks` VALUES (1,'モスコミュール','550','カクテル','ウォッカ','ジンジャーエール','ライム',NULL,NULL,NULL,NULL),(2,'ブルドッグ','550','カクテル','ウォッカ','グレープフルーツJ',NULL,NULL,NULL,NULL,NULL),(3,'スクリュードライバー','550','カクテル','ウォッカ','オレンジJ',NULL,NULL,NULL,NULL,NULL),(4,'スカイボール','550','カクテル','ウォッカ','トニックウォーター','ライム',NULL,NULL,NULL,NULL),(5,'ウォッカリッキー','550','カクテル','ウォッカ','ソーダ','ライム',NULL,NULL,NULL,NULL),(6,'ブラック・ルシアン','550','カクテル','ウォッカ','コーヒーリキュール',NULL,NULL,NULL,NULL,NULL),(7,'ブラッティマリー','550','カクテル','ウォッカ','トマトJ','レモンJ',NULL,NULL,NULL,NULL),(8,'ゴッドマザー','550','カクテル','ウォッカ','アマレット',NULL,NULL,NULL,NULL,NULL),(9,'ウォッカトニック','550','カクテル','ウォッカ','トニック',NULL,NULL,NULL,NULL,NULL),(10,'ジントニック','550','カクテル','ジン','トニックウォーター','ライム',NULL,NULL,NULL,NULL),(11,'ジンライム','550','カクテル','ジン','ライムJ',NULL,NULL,NULL,NULL,NULL),(12,'ジンバック','550','カクテル','ジン','ジンジャーエール','ライム',NULL,NULL,NULL,NULL),(13,'ジンリッキー','550','カクテル','ジン','ソーダ','ライム',NULL,NULL,NULL,NULL),(14,'ラムコーク','550','カクテル','ラム','コーラ','レモン',NULL,NULL,NULL,NULL),(15,'ラムソーダ','550','カクテル','ラム','ソーダ','ライム',NULL,NULL,NULL,NULL),(16,'ボストンクーラー','550','カクテル','ラム','レモンJ','シロップ','ジンジャーエール',NULL,NULL,NULL),(17,'テキーラバック','550','カクテル','テキーラ','ジンジャーエール','ライム',NULL,NULL,NULL,NULL),(18,'テキーラサンライズ','550','カクテル','テキーラ','オレンジJ','グレナデンシロップ',NULL,NULL,NULL,NULL),(19,'テコニック','550','カクテル','テキーラ','トニックウォーター','ライム',NULL,NULL,NULL,NULL),(20,'カシスソーダ','550','カクテル','カシス','ソーダ',NULL,NULL,NULL,NULL,NULL),(21,'カシスオレンジ','550','カクテル','カシス','オレンジJ',NULL,NULL,NULL,NULL,NULL),(22,'カシスグレープフルーツ','550','カクテル','カシス','グレープフルーツJ',NULL,NULL,NULL,NULL,NULL),(23,'カシスウーロン','550','カクテル','カシス','ウーロン茶',NULL,NULL,NULL,NULL,NULL),(24,'カシスミルク','550','カクテル','カシス','牛乳',NULL,NULL,NULL,NULL,NULL),(25,'カンパリソーダ','550','カクテル','カンパリ','ソーダ','レモン',NULL,NULL,NULL,NULL),(26,'カンパリオレンジ','550','カクテル','カンパリ','オレンジJ',NULL,NULL,NULL,NULL,NULL),(27,'カンパリグレープフルーツ','550','カクテル','カンパリ','グレープフルーツJ',NULL,NULL,NULL,NULL,NULL),(28,'カンパリジンジャー','550','カクテル','カンパリ','ジンジャーエール','レモン',NULL,NULL,NULL,NULL),(32,'アップルシューター','550','カクテル','アップル','トニックウォーター','レモン',NULL,NULL,NULL,NULL),(33,'アップルソーダ','550','カクテル','アップル','ソーダ','レモン',NULL,NULL,NULL,NULL),(34,'カルーアソーダ','550','カクテル','カルーア','ソーダ',NULL,NULL,NULL,NULL,NULL),(35,'カルーアミルク','550','カクテル','カルーア','牛乳',NULL,NULL,NULL,NULL,NULL),(36,'照葉樹林','550','カクテル','抹茶','ウーロン茶','レモン',NULL,NULL,NULL,NULL),(37,'抹茶ミルク','550','カクテル','抹茶','牛乳',NULL,NULL,NULL,NULL,NULL),(38,'シャンディーガフ','550','カクテル','ビール','ジンジャーエール',NULL,NULL,NULL,NULL,NULL),(39,'レッドアイ','550','カクテル','ビール','トマトJ','レモン',NULL,NULL,NULL,NULL),(40,'カリモーチョ','550','カクテル','赤ワイン','コーラ','レモン',NULL,NULL,NULL,NULL),(41,'キティ','550','カクテル','赤ワイン','ジンジャーエール',NULL,NULL,NULL,NULL,NULL),(42,'オペレーター','550','カクテル','白ワイン','ジンジャーエール','レモン',NULL,NULL,NULL,NULL),(43,'スプリッツァー','550','カクテル','白ワイン','ソーダ','ライム',NULL,NULL,NULL,NULL),(44,'キール','550','カクテル','白ワイン','カシス',NULL,NULL,NULL,NULL,NULL),(45,'アップルブラン','550','カクテル','白ワイン','アップル',NULL,NULL,NULL,NULL,NULL),(46,'ピーチジンジャー','550','カクテル','ピーチ','ジンジャーエール',NULL,NULL,NULL,NULL,NULL),(47,'ピーチパイン','550','カクテル','ピーチ','パインJ',NULL,NULL,NULL,NULL,NULL),(48,'レゲエパンチ','550','カクテル','ピーチ','ウーロン茶',NULL,NULL,NULL,NULL,NULL),(49,'ファジーネーブル','550','カクテル','ピーチ','オレンジJ',NULL,NULL,NULL,NULL,NULL),(50,'マリブパイン','550','カクテル','マリブ','パインJ',NULL,NULL,NULL,NULL,NULL),(51,'マリブミルク','550','カクテル','マリブ','牛乳',NULL,NULL,NULL,NULL,NULL),(52,'マリブビーチ','550','カクテル','マリブ','オレンジJ',NULL,NULL,NULL,NULL,NULL),(53,'バナナミルク','550','カクテル','バナナ','牛乳',NULL,NULL,NULL,NULL,NULL),(54,'イチゴミルク','550','カクテル','ストロベリー','牛乳',NULL,NULL,NULL,NULL,NULL),(55,'フランボワーズグレープフルーツ','550','カクテル','フランボワーズ','グレープフルーツJ',NULL,NULL,NULL,NULL,NULL),(56,'カルーアベリー','550','カクテル','フランボワーズ','コーヒーリキュール',NULL,NULL,NULL,NULL,NULL),(57,'ウーロンハイ','550','カクテル','焼酎','ウーロン茶',NULL,NULL,NULL,NULL,NULL),(58,'コークサワー','550','カクテル','焼酎','コーラ',NULL,NULL,NULL,NULL,NULL),(59,'ジンジャーサワー','550','カクテル','焼酎','ジンジャーエール',NULL,NULL,NULL,NULL,NULL),(60,'生レモンサワー','550','カクテル','焼酎','生レモンJ','ソーダ',NULL,NULL,NULL,NULL),(61,'生グレープフルーツサワー','550','カクテル','焼酎','生グレープフルーツJ','ソーダ',NULL,NULL,NULL,NULL),(62,'生キウイサワー','550','カクテル','焼酎','キウイ','シロップ','ソーダ',NULL,NULL,NULL),(63,'イエガートニック','600','カクテル','イエガー','トニックウォーター',NULL,NULL,NULL,NULL,NULL),(64,'イエガーコーラ','600','カクテル','イエガー','コーラ',NULL,NULL,NULL,NULL,NULL),(65,'イエガーオレンジ','600','カクテル','イエガー','オレンジJ',NULL,NULL,NULL,NULL,NULL),(66,'イエガージンジャー','600','カクテル','イエガー','ジンジャーエール',NULL,NULL,NULL,NULL,NULL),(67,'アマレットジンジャー','600','カクテル','アマレット','ジンジャーエール',NULL,NULL,NULL,NULL,NULL),(68,'アマレットオレンジ','600','カクテル','アマレット','オレンジJ',NULL,NULL,NULL,NULL,NULL),(69,'ボッヂボール','600','カクテル','アマレット','オレンジJ','ソーダ',NULL,NULL,NULL,NULL),(70,'アマレットミルク','600','カクテル','アマレット','牛乳',NULL,NULL,NULL,NULL,NULL),(71,'ティフィンジンジャー','600','カクテル','ティフィン','ジンジャーエール',NULL,NULL,NULL,NULL,NULL),(72,'ティフィントニック','600','カクテル','ティフィン','トニックウォーター',NULL,NULL,NULL,NULL,NULL),(73,'ティフィンソーダ','600','カクテル','ティフィン','ソーダ',NULL,NULL,NULL,NULL,NULL),(74,'ミルクティー','600','カクテル','ティフィン','牛乳',NULL,NULL,NULL,NULL,NULL),(75,'ドランブイソーダ','600','カクテル','ドランブイ','ソーダ',NULL,NULL,NULL,NULL,NULL),(76,'ドランブイトニック','600','カクテル','ドランブイ','トニックウォーター',NULL,NULL,NULL,NULL,NULL),(77,'ドランブイオレンジ','600','カクテル','ドランブイ','オレンジJ',NULL,NULL,NULL,NULL,NULL),(78,'エメラルドミスト','600','カクテル','ドランブイ','ブルーキュラソー',NULL,NULL,NULL,NULL,NULL),(79,'スノーボール','600','カクテル','アドヴォカート','ジンジャーエール','ライム',NULL,NULL,NULL,NULL),(80,'プリン','600','カクテル','アドヴォカート','キャラメルリキュール','牛乳',NULL,NULL,NULL,NULL),(81,'スプモーニ','600','カクテル','カンパリ','グレープフルーツJ','トニックウォーター',NULL,NULL,NULL,NULL),(82,'アップルモーニ','600','カクテル','アップル','グレープフルーツJ','トニックウォーター',NULL,NULL,NULL,NULL),(83,'モモモーニ','600','カクテル','ピーチ','グレープフルーツJ','トニックウォーター',NULL,NULL,NULL,NULL),(84,'イエガーモーニ','600','カクテル','イエガー','グレープフルーツJ','トニックウォーター',NULL,NULL,NULL,NULL),(85,'ヒプモーニ','600','カクテル','ヒプノティック','グレープフルーツJ','トニックウォーター',NULL,NULL,NULL,NULL),(86,'パッソアモーニ','600','カクテル','パッションフルーツ','グレープフルーツJ','トニックウォーター',NULL,NULL,NULL,NULL),(87,'ドラムモーニ','600','カクテル','ドランブイ','グレープフルーツJ','トニックウォーター',NULL,NULL,NULL,NULL),(88,'チャイナブルー','600','カクテル','ライチ','グレープフルーツJ','トニックウォーター','ブルーキュラソー',NULL,NULL,NULL),(89,'ドクターレス','600','カクテル','アップル','グレープフルーツJ','トニックウォーター','ブルーキュラソー',NULL,NULL,NULL),(90,'マリブサーフ','600','カクテル','マリブ','トニックウォーター','ブルーキュラソー',NULL,NULL,NULL,NULL),(91,'アメリカンレモネード','600','カクテル','赤ワイン','レモンJ','シロップ',NULL,NULL,NULL,NULL),(92,'ローザロッサ','600','カクテル','赤ワイン','アマレット','ジンジャーエール',NULL,NULL,NULL,NULL),(93,'バンブー','600','カクテル','シェリー','ドライベルモット','オレンジビター',NULL,NULL,NULL,NULL),(94,'アドニス','600','カクテル','シェリー','スウィートベルモット','オレンジビター',NULL,NULL,NULL,NULL),(95,'シーブリーズ','600','カクテル','ウォッカ','グレープフルーツJ','クランベリーJ',NULL,NULL,NULL,NULL),(96,'ソルティドッグ','680','カクテル','ウォッカ','生グレープフルーツJ',NULL,NULL,NULL,NULL,NULL),(97,'カミカゼ','800','カクテル','ウォッカ','コアントロー','ライムJ',NULL,NULL,NULL,NULL),(98,'ガルフストリーム','800','カクテル','ウォッカ','ピーチ','ブルーキュラソー','パインJ','グレープフルーツJ',NULL,NULL),(99,'バラライカ','800','カクテル','ウォッカ','コアントロー','レモンJ',NULL,NULL,NULL,NULL),(100,'コスモポリタン','800','カクテル','ウォッカ','コアントロー','ライムJ','クランベリーJ',NULL,NULL,NULL),(101,'ホワイトスパイダー','800','カクテル','ウォッカ','ミント',NULL,NULL,NULL,NULL,NULL),(102,'ネグローニ','800','カクテル','ジン','カンパリ','スウィートベルモット',NULL,NULL,NULL,NULL),(103,'ギムレット','800','カクテル','ジン','シロップ','ライムJ',NULL,NULL,NULL,NULL),(104,'ホワイトレディ','800','カクテル','ジン','コアントロー','レモンJ',NULL,NULL,NULL,NULL),(105,'マティーニ','900','カクテル','ジン','ドライベルモット','オレンジビター','レモンピール','オリーブ',NULL,NULL),(106,'グリーンアラスカ','800','カクテル','ジン','シャルトリューズヴェール',NULL,NULL,NULL,NULL,NULL),(107,'ブロンクス','800','カクテル','ジン','ドライベルモット','スウィートベルモット','オレンジJ',NULL,NULL,NULL),(108,'ジンアンドイット','680','カクテル','ジン','スウィートベルモット',NULL,NULL,NULL,NULL,NULL),(109,'パリジャン','800','カクテル','ジン','ドライベルモット','カシス',NULL,NULL,NULL,NULL),(110,'ジンフィズ','700','カクテル','ジン','レモンJ','シロップ','ソーダ',NULL,NULL,NULL),(111,'ロングアイランドアイスティー','980','カクテル','ジン','ウォッカ','テキーラ','ラム','コアントロー','レモンJ','コーラ'),(112,'エルディアブロ','600','カクテル','テキーラ','カシス','ジンジャーエール','ライム',NULL,NULL,NULL),(113,'マタドール','800','カクテル','テキーラ','パイン','ライムJ',NULL,NULL,NULL,NULL),(114,'マルガリータ','800','カクテル','テキーラ','コアントロー','ライムJ',NULL,NULL,NULL,NULL),(115,'モッキンバード','800','カクテル','テキーラ','ミント','ライム',NULL,NULL,NULL,NULL),(116,'ソルクバーノ','600','カクテル','ラム','グレープフルーツJ','トニックウォーター',NULL,NULL,NULL,NULL),(117,'ピニャコラーダ','900','カクテル','ラム','ココナッツ','パイン','生クリーム',NULL,NULL,NULL),(118,'ブルーハワイ','800','カクテル','ラム','ブルーキュラソー','パインJ','レモンJ',NULL,NULL,NULL),(119,'ダイキリ','800','カクテル','ラム','ライムJ','シロップ',NULL,NULL,NULL,NULL),(120,'XYZ','800','カクテル','ラム','コアントロー','レモンJ',NULL,NULL,NULL,NULL),(121,'ジャマイカジョー','800','カクテル','ラム','カルーア','アドヴォカート',NULL,NULL,NULL,NULL),(122,'スカイダイビング','800','カクテル','ラム','ブルーキュラソー','レモンJ',NULL,NULL,NULL,NULL),(123,'ダージリンクーラー','680','カクテル','ティフィン','フランボワーズ','レモンJ','ジンジャーエール',NULL,NULL,NULL),(124,'グラスホッパー','800','カクテル','ミント','ホワイトカカオ','生クリーム',NULL,NULL,NULL,NULL),(125,'アメリカーノ','600','カクテル','カンパリ','スウィートベルモット','ソーダ','レモンピール',NULL,NULL,NULL),(126,'マミーテイラー','600','カクテル','ウィスキー','ジンジャーエール','レモンJ',NULL,NULL,NULL,NULL),(127,'ゴッドファーザー','680','カクテル','ウィスキー','アマレット',NULL,NULL,NULL,NULL,NULL),(128,'オールドファションド','800','カクテル','バーボンウィスキー','角砂糖','チェリー','オレンジビター',NULL,NULL,NULL),(129,'アレキサンダー','800','カクテル','ブランデー','ブラウンカカオ','生クリーム',NULL,NULL,NULL,NULL),(130,'スティンガー','800','カクテル','ブランデー','ミント',NULL,NULL,NULL,NULL,NULL),(131,'サイドカー','800','カクテル','ブランデー','コアントロー','レモンJ',NULL,NULL,NULL,NULL),(132,'マンハッタン','800','カクテル','バーボンウィスキー','スウィートベルモット','チェリー','レモンピール',NULL,NULL,NULL),(133,'ニューヨーク','700','カクテル','バーボンウィスキー','ライムJ','グレナデンシロップ',NULL,NULL,NULL,NULL),(134,'ロブロイ','800','カクテル','ウィスキー','スウィートベルモット','チェリー','レモンピール',NULL,NULL,NULL),(135,'ビトウィーンザシーツ','800','カクテル','ブランデー','ラム','コアントロー','レモンJ',NULL,NULL,NULL),(136,'フレンチコネクション','950','カクテル','ブランデー','アマレット',NULL,NULL,NULL,NULL,NULL),(137,'ニコラシカ','800','カクテル','ブランデー','レモン','砂糖',NULL,NULL,NULL,NULL),(138,'ケストリッツァー','900','ボトルビール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,'ヒューガルデン　ホワイト','800','ボトルビール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,'デゥシャス　デ　ブルゴーニュ','900','ボトルビール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,'コロナ　エキストラ','650','ボトルビール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,'うちゅうブルーイング','1280~','ボトルビール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,'パンクIPA','900','ボトルビール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,'エルビスジュース','900','ボトルビール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,'マッカラン　12years','950','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,'グレンフィディック　12years','700','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,'グレンフィディック　15years','850','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,'グレンリベット　12years','700','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,'ベンリアック　10years','850','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,'ノッカンデュ　12years','800','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,'リンクウッド　12years','1000','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,'ハイランドパーク　12years','780','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,'ロイヤル　ロッホナガー　12years','780','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,'クライヌリッシュ　14years','880','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,'グレンドロナック　12years','850','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,'スプリングバンク　15years','1600','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,'ロングロウ　ピーテッド','900','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,'ヘーゼルバーン　10years','900','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,'グレンスコシア','780','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(161,'タリスカー　10years','780','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(162,'ボウモア　12years','750','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,'ラフロイグ　10years','880','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(164,'アードベッグ　10years','880','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(165,'カリラ　12years','850','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(166,'ラガヴーリン　16years','1000','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(167,'オーヘントッシャン　12years','780','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(168,'グレンキンチー　12years','750','スコッチ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,'山崎　YAMAZAKI','900','ジャパニーズ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,'山崎　LIMITED EDITION','2500','ジャパニーズ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(171,'白州　HAKUSYU','900','ジャパニーズ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(172,'白州　12年　HAKUSYU　12years','1800','ジャパニーズ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(173,'響　HIBIKI','950','ジャパニーズ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(174,'知多　CHITA','800','ジャパニーズ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(175,'イチローズ　モルト&グレーン','800','ジャパニーズ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(176,'ジムビーム','500','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(177,'メーカーズマーク','650','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(178,'ジャックダニエル　No.7','650','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(179,'ワイルド　ターキー　8years','650','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(180,'ワイルド　ターキー　13years','950','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(181,'ブッカーズ','1600','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(182,'ウッドフォードリザーブ','850','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(183,'ハーパー　8years','600','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(184,'ハーパー　12years','900','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(185,'ブラントン　ブラック','880','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(186,'フォアローゼス　イエローラベル','500','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(187,'フォアローゼス　ブラックラベル','600','バーボン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(188,'カナディアンクラブ','550','カナディアン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(189,'カナディアンクラブ　12years','650','カナディアン　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(190,'ジェムソン','600','アイリッシュ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(191,'ブラックブッシュ','750','アイリッシュ　ウィスキー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(192,'バカルディ　オークハート','600','ラム',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(193,'パンペロ　アルベルサリオ','650','ラム',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(194,'ロンサカパ　センテナリオ　23years','850','ラム',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(195,'ペドロヒメネス　サン　エミリオ','750','シェリー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(196,'アルマセニスタ　オロロソ　デル　プエルト','1100','シェリー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(197,'アルマセニスタ　アモンティリチャード　デル　プエルト','1080','シェリー',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(198,'芋焼酎　風憚　ふうたん　(栗黄金)','650','焼酎',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(199,'芋焼酎　風憚　ふうたん　(山川紫)','600','焼酎',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(200,'麦焼酎　二階堂　吉四六','650','焼酎',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(201,'コーラ','350','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,'ジンジャーエール','350','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,'トニックウォーター','350','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(204,'オレンジジュース','350','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(205,'トマトジュース','350','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(206,'アイスミルク','350','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,'ウーロン茶(Hot/Ice)','350','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,'グレープフルーツジュース','380','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(209,'パイナップルジュース','380','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(210,'クランベリージュース','380','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,'サラトガクーラー','450','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,'バージンブリーズ','450','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,'サンセットクルーズ','450','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(214,'ノンアルコールビール','450','ノンアルコール',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `drinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `price` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `genre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `info` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (1,'シーザーサラダ','780','サラダ',NULL),(2,'エビとアボカドのチョップドサラダ','980','サラダ',NULL),(3,'マグロとアボカドのポキ','780','アラカルト',NULL),(4,'バーニャ　カウダ','880','アラカルト',NULL),(5,'彩り野菜のピクルス','500','アラカルト',NULL),(6,'キッシュ　ロレーヌ','500','アラカルト',NULL),(7,'自家製燻製ナッツ','450','アラカルト',NULL),(8,'ガーリックシュリンプ','800','アラカルト',NULL),(9,'キューバサンド','880','アラカルト',NULL),(10,'手作り餃子　5個','450','アラカルト',NULL),(11,'特製　ハムカツ','450','揚げ物',NULL),(12,'マグロのから揚げ','800','揚げ物',NULL),(13,'ごぼうのから揚げ','480','揚げ物',NULL),(14,'カリカリポテト','450','揚げ物',NULL),(15,'鶏もも肉のカットステーキ','680','肉料理',NULL),(16,'牛もも肉のたたきユッケ','600','肉料理',NULL),(17,'ソーセージの盛り合わせ','800','肉料理',NULL),(18,'バッファローチキンウィング','6本　700','肉料理','(1~2名様分)'),(19,'バッファローチキンウィング','10本　1,100','肉料理','(2~3名様分)'),(20,'バッファローチキンウィング','30本　3,200','肉料理','(3~5名様分)'),(21,'バッファローチキンウィング','50本　5,000','肉料理','(8名様位~)'),(22,'バッファローチキンウィング',NULL,'肉料理','()内の人数は目安となります。　1名様から何本でもご注文いただけます。');
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limiteds`
--

DROP TABLE IF EXISTS `limiteds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limiteds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `price` varchar(50) CHARACTER SET utf8 NOT NULL,
  `genre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `info` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limiteds`
--

LOCK TABLES `limiteds` WRITE;
/*!40000 ALTER TABLE `limiteds` DISABLE KEYS */;
INSERT INTO `limiteds` VALUES (1,'カリカリ春巻き','380(2個)','food',NULL),(2,'手作りふわふわマリパン','200(2個)','food',NULL),(3,'手作りふわふわマリパン','150','food','+ピスタチオクリーム'),(4,'手作りふわふわマリパン','150','food','+自家製リエット'),(5,'手作りふわふわマリパン','250','food','+とろとろ角煮'),(6,'3種のオリーヴマリネ','400','food',NULL),(7,'ニンニクギョーザ','450','food',NULL),(8,'アツアツHotDog','500','food',NULL),(9,'ユーリンチー','680','food',NULL),(10,'本日のおまかせピザ','850','food',NULL),(11,'とろとろ卵のオムライス','900','food',NULL),(12,'べベコンチーノ','750','food',NULL),(13,'エビと明太子のパスタ','950','food',NULL),(14,'大粒ホタテとトマトの冷製カッペリーニ','1150','food',NULL),(15,'クレームブリュレアイス','480','food',NULL),(16,'モヒート','750','drink',NULL),(17,'カイピリーニャ','750','drink',NULL),(18,'Uziaレモンサワー','650','drink',NULL),(19,'フローズンストロベリーマルガリータ','1000','drink',NULL);
/*!40000 ALTER TABLE `limiteds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-17 16:43:22
