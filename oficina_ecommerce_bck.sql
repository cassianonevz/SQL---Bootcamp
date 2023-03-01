-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ecommerce`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ecommerce`;

--
-- Table structure for table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrinho` (
  `id_pedido` int NOT NULL,
  `id_produto` int NOT NULL,
  `qtd_produto` int NOT NULL,
  `status_produtopedido` enum('Disponível','Produto Indisponível') DEFAULT (_utf8mb4'Disponível'),
  KEY `fk_idpedidocarrinho` (`id_pedido`),
  KEY `fk_idprodutocarrinho` (`id_produto`),
  CONSTRAINT `fk_idpedidocarrinho` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  CONSTRAINT `fk_idprodutocarrinho` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho`
--

LOCK TABLES `carrinho` WRITE;
/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
INSERT INTO `carrinho` VALUES (1410,7,8,'Disponível'),(1410,27,1,'Disponível'),(1587,11,6,'Disponível'),(2113,4,1,'Disponível'),(2348,9,7,'Disponível'),(2348,12,4,'Disponível'),(2608,18,1,'Disponível'),(2608,12,9,'Disponível'),(2723,3,10,'Disponível'),(2723,19,1,'Disponível'),(3251,10,7,'Disponível'),(3836,22,8,'Disponível'),(3836,11,9,'Disponível'),(4269,25,4,'Disponível'),(4269,28,8,'Disponível'),(4289,3,1,'Disponível'),(4289,22,5,'Disponível'),(4406,22,5,'Disponível'),(4406,6,7,'Disponível'),(5182,23,9,'Disponível'),(5640,10,10,'Disponível'),(5640,3,3,'Disponível'),(6116,12,9,'Disponível'),(6116,2,6,'Disponível'),(6305,10,8,'Disponível'),(6522,14,5,'Disponível'),(6522,6,1,'Disponível'),(6547,18,6,'Disponível'),(6708,11,9,'Disponível'),(6708,13,4,'Disponível'),(6845,4,8,'Disponível'),(6845,27,1,'Disponível'),(7075,8,10,'Disponível'),(7075,10,9,'Disponível'),(7142,26,2,'Disponível'),(7352,12,9,'Disponível'),(7352,9,8,'Disponível'),(7357,11,4,'Disponível'),(7384,1,7,'Disponível'),(7384,22,7,'Disponível'),(7573,24,8,'Disponível'),(7573,22,8,'Disponível'),(8556,4,8,'Disponível'),(8556,6,9,'Disponível'),(8608,4,4,'Disponível'),(8608,29,8,'Disponível'),(8737,17,9,'Disponível'),(9338,24,8,'Disponível'),(9338,11,3,'Disponível');
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartao_cadastrado`
--

DROP TABLE IF EXISTS `cartao_cadastrado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartao_cadastrado` (
  `idcartao` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `numero_cartao` char(16) NOT NULL,
  `nome_cartao` varchar(45) NOT NULL,
  `cpf_cnpj_titular` varchar(12) NOT NULL,
  `data_vencimento` date NOT NULL,
  `modalidade` enum('Débito','Crédito') DEFAULT NULL,
  PRIMARY KEY (`idcartao`),
  UNIQUE KEY `numero_cartao` (`numero_cartao`),
  KEY `fk_idclientecartao` (`id_cliente`),
  CONSTRAINT `fk_idclientecartao` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartao_cadastrado`
--

LOCK TABLES `cartao_cadastrado` WRITE;
/*!40000 ALTER TABLE `cartao_cadastrado` DISABLE KEYS */;
INSERT INTO `cartao_cadastrado` VALUES (1,1,'3922470182711920','Joao Assis Aguiar','29837809802','2027-02-01','Crédito'),(2,4,'2054525380160000','Fernando Silva Souza','67826284901','2028-06-01','Crédito'),(3,5,'7559549477945520','Cesar Mendes Alencar','67429872481','2030-10-01','Crédito'),(4,6,'4811990534114210','Suzan Silva Santos','82799387267','2029-10-01','Crédito'),(5,10,'4393192801501510','Eduarda Neves Ramaciote','82755509823','2032-12-01','Crédito'),(6,11,'8212349653030220','Matheus Braga Silveira','98247872676','2030-11-01','Crédito'),(7,11,'8212349653000000','Matheus Braga Silveira','98247872676','2035-12-01','Débito'),(8,2,'1958884320939870','Comercio A','928948090001','2030-05-01','Débito'),(9,3,'1798648001876180','Comercio B','928123090001','2029-03-01','Crédito'),(10,7,'1895341317241360','Comercio C','928234090001','2026-02-01','Débito'),(11,8,'1004430014870480','Comercio D','123948090001','2027-01-01','Crédito'),(12,9,'6662211644249200','Comercio E','922428090001','2030-10-01','Crédito'),(13,12,'1694655560225480','Comercio F','238948090001','2035-11-01','Débito');
/*!40000 ALTER TABLE `cartao_cadastrado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_pf`
--

DROP TABLE IF EXISTS `cliente_pf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_pf` (
  `id_clientepf` int NOT NULL,
  `p_nome` varchar(15) NOT NULL,
  `m_nome` varchar(15) NOT NULL,
  `u_nome` varchar(15) NOT NULL,
  `cpf` char(11) NOT NULL,
  `endereco_cliente` varchar(50) NOT NULL,
  `uf_cliente` char(2) NOT NULL,
  UNIQUE KEY `cpf` (`cpf`),
  KEY `fk_clientepf` (`id_clientepf`),
  CONSTRAINT `fk_clientepf` FOREIGN KEY (`id_clientepf`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_pf`
--

LOCK TABLES `cliente_pf` WRITE;
/*!40000 ALTER TABLE `cliente_pf` DISABLE KEYS */;
INSERT INTO `cliente_pf` VALUES (1,'Joao','Assis','Aguiar','29837809802','Rua K, 210','SP'),(4,'Fernando','Silva','Souza','67826284901','Rua J, 25','SE'),(10,'Eduarda','Neves','Ramaciote','82755509823','Rua S, s/n','ES'),(6,'Suzan','Silva','Santos','82799387267','Rua Z, 240','RS'),(11,'Matheus','Braga','Silveira','98247872676','Rua N, 2052','BA');
/*!40000 ALTER TABLE `cliente_pf` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_exclientes` BEFORE DELETE ON `cliente_pf` FOR EACH ROW BEGIN
		INSERT INTO ex_cliente_pf 
        VALUES (old.id_clientepf, old.p_nome, old.m_nome, old.u_nome, old.cpf, old.endereco_cliente, old.uf_cliente);
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cliente_pj`
--

DROP TABLE IF EXISTS `cliente_pj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_pj` (
  `id_cliente` int NOT NULL,
  `razaosocial_cliente` varchar(50) NOT NULL,
  `nome_fantasia` varchar(50) DEFAULT NULL,
  `cnpj` char(12) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `uf_empresa` char(2) NOT NULL,
  KEY `fk_idclientepj` (`id_cliente`),
  CONSTRAINT `fk_idclientepj` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_pj`
--

LOCK TABLES `cliente_pj` WRITE;
/*!40000 ALTER TABLE `cliente_pj` DISABLE KEYS */;
INSERT INTO `cliente_pj` VALUES (2,'Comercio A','Comercio A','928948090001','Rua N, 259','MA'),(3,'Comercio B','Comercio B','928123090001','Rua E, 299','MG'),(7,'Comercio C','Comercio C','928234090001','Rua H, 235','AL'),(8,'Comercio D','Comercio D','123948090001','Rua A, 659','PB'),(9,'Comercio E','Comercio E','922428090001','Rua D, 522','PE'),(12,'Comercio F','Comercio F','238948090001','Rua X, 5119','RN');
/*!40000 ALTER TABLE `cliente_pj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega_transportadora`
--

DROP TABLE IF EXISTS `entrega_transportadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega_transportadora` (
  `id_transportadora` int NOT NULL,
  `id_frete` int NOT NULL,
  KEY `fk_transportadora` (`id_transportadora`),
  KEY `fk_frete` (`id_frete`),
  CONSTRAINT `fk_frete` FOREIGN KEY (`id_frete`) REFERENCES `frete` (`id_frete`),
  CONSTRAINT `fk_transportadora` FOREIGN KEY (`id_transportadora`) REFERENCES `transportadora` (`id_transportadora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega_transportadora`
--

LOCK TABLES `entrega_transportadora` WRITE;
/*!40000 ALTER TABLE `entrega_transportadora` DISABLE KEYS */;
INSERT INTO `entrega_transportadora` VALUES (3,202),(2,317),(3,651),(1,257),(1,185),(3,185),(2,988),(3,671),(3,465),(1,394),(1,682),(2,682),(3,802),(3,716),(2,956),(2,385),(2,229),(1,888),(3,371),(3,942),(3,536),(3,963),(2,894),(2,414),(3,535),(3,695),(3,14),(2,62),(1,625),(1,292),(2,105);
/*!40000 ALTER TABLE `entrega_transportadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `id_estoque` int NOT NULL AUTO_INCREMENT,
  `local_estoque` varchar(45) NOT NULL,
  `uf_estoque` char(2) NOT NULL,
  PRIMARY KEY (`id_estoque`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,'Guarulhos','SP'),(2,'Rio de Janeiro','RJ'),(3,'Salvador','BA'),(4,'Aracaju','SE'),(5,'Natal','RN');
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque_produto`
--

DROP TABLE IF EXISTS `estoque_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque_produto` (
  `id_estoque` int NOT NULL,
  `id_produto` int NOT NULL,
  `qtd_produtoestoque` int NOT NULL,
  KEY `fk_produtoestoque` (`id_produto`),
  KEY `fk_estoque` (`id_estoque`),
  CONSTRAINT `fk_estoque` FOREIGN KEY (`id_estoque`) REFERENCES `estoque` (`id_estoque`),
  CONSTRAINT `fk_produtoestoque` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque_produto`
--

LOCK TABLES `estoque_produto` WRITE;
/*!40000 ALTER TABLE `estoque_produto` DISABLE KEYS */;
INSERT INTO `estoque_produto` VALUES (3,12,209),(2,28,165),(1,5,54),(4,10,415),(4,5,76),(5,20,438),(5,24,387),(2,12,307),(3,17,419),(2,7,582),(4,16,336),(1,1,236),(1,6,237),(5,15,312),(5,19,63),(2,10,583),(4,13,171),(5,17,441),(4,11,573),(4,28,439),(1,13,72),(5,10,466),(4,8,79),(1,19,154),(3,7,441),(5,18,346),(5,2,470),(1,22,146),(4,22,552),(2,1,436),(5,6,279),(2,4,252),(1,4,103),(4,2,503),(3,24,47),(1,23,593),(5,9,296),(5,4,309),(3,22,467),(2,13,150),(3,11,266),(2,22,503),(2,26,304),(3,1,236),(3,21,598),(4,29,363),(4,19,22),(1,8,316),(5,29,259),(1,29,284),(1,2,463),(2,24,231),(2,21,305),(3,2,223),(3,23,368),(2,18,255),(1,9,368),(2,25,232),(1,27,25),(3,3,107),(4,15,412),(5,28,541),(4,3,207),(2,27,252),(4,24,129),(2,19,491),(5,8,330),(1,25,220),(5,1,270),(2,14,490),(5,21,426),(1,16,364),(1,14,247),(1,15,321),(5,26,239),(3,18,201),(3,20,35),(3,26,272),(2,17,394),(4,21,312),(3,6,136),(2,15,42),(4,12,371),(4,14,473),(5,3,89),(4,20,490),(3,8,28),(1,11,247),(3,13,400),(5,22,102),(2,20,395),(5,11,209),(2,29,329),(5,13,251),(2,16,31),(3,5,109),(5,5,353),(3,27,440),(5,12,324),(1,20,402),(1,26,111),(4,18,360),(4,23,26),(1,3,446),(1,17,554),(1,10,551),(3,19,215),(4,25,185),(3,15,30),(5,23,26),(1,12,549),(3,28,430),(2,11,242),(1,24,412),(3,29,524),(3,10,433),(3,4,575);
/*!40000 ALTER TABLE `estoque_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ex_cliente_pf`
--

DROP TABLE IF EXISTS `ex_cliente_pf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ex_cliente_pf` (
  `id_clientepf` int NOT NULL,
  `p_nomepf` varchar(15) DEFAULT NULL,
  `l_nomepf` varchar(15) DEFAULT NULL,
  `u_nomepf` varchar(15) DEFAULT NULL,
  `cpf` char(11) DEFAULT NULL,
  `endereco_cliente` varchar(50) DEFAULT NULL,
  `UF_cliente` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_clientepf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ex_cliente_pf`
--

LOCK TABLES `ex_cliente_pf` WRITE;
/*!40000 ALTER TABLE `ex_cliente_pf` DISABLE KEYS */;
INSERT INTO `ex_cliente_pf` VALUES (5,'Cesar','Mendes','Alencar','67429872481','Rua M, 200','RJ');
/*!40000 ALTER TABLE `ex_cliente_pf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornece`
--

DROP TABLE IF EXISTS `fornece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornece` (
  `id_fornecedor` int NOT NULL,
  `id_produto` int NOT NULL,
  KEY `fk_fornecedor` (`id_fornecedor`),
  KEY `fk_produtofornecedor` (`id_produto`),
  CONSTRAINT `fk_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`),
  CONSTRAINT `fk_produtofornecedor` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornece`
--

LOCK TABLES `fornece` WRITE;
/*!40000 ALTER TABLE `fornece` DISABLE KEYS */;
INSERT INTO `fornece` VALUES (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(2,29);
/*!40000 ALTER TABLE `fornece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id_fornecedor` int NOT NULL AUTO_INCREMENT,
  `razaosocial_fornecedor` varchar(45) NOT NULL,
  `cnpj_fornecedor` char(12) NOT NULL,
  `nomefantasia_fornecedor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`),
  UNIQUE KEY `razaosocial_fornecedor` (`razaosocial_fornecedor`),
  UNIQUE KEY `cnpj_fornecedor` (`cnpj_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'DIO ELETRO/ELETRONICOS LTDA','123456780001','DIO ELETROS'),(2,'DIO MOVEIS LTDA','876543210001','DIO MOVEIS'),(3,'BOTIQUE DA DIO','543216780001','DIO ROUPAS');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frete`
--

DROP TABLE IF EXISTS `frete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frete` (
  `id_frete` int NOT NULL,
  `codigo_rastreio` varchar(45) NOT NULL,
  `valor_frete` float NOT NULL,
  PRIMARY KEY (`id_frete`),
  UNIQUE KEY `codigo_rastreio` (`codigo_rastreio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frete`
--

LOCK TABLES `frete` WRITE;
/*!40000 ALTER TABLE `frete` DISABLE KEYS */;
INSERT INTO `frete` VALUES (14,'57847709',16),(62,'93037392',20),(105,'72963913',14),(185,'63050964',45),(202,'64070400',27),(229,'34981700',18),(257,'67225211',40),(292,'10929970',40),(317,'83248527',16),(371,'44263193',40),(385,'16918824',42),(394,'58102687',30),(414,'33955506',38),(465,'94335002',32),(535,'31793065',18),(536,'86051618',22),(625,'40528630',27),(651,'58883872',19),(671,'25832506',44),(682,'99433637',40),(695,'19773112',15),(716,'71446110',26),(802,'24584566',23),(888,'16699229',48),(894,'34156739',19),(942,'65770032',22),(956,'45059372',36),(963,'66053688',46),(988,'52166066',22);
/*!40000 ALTER TABLE `frete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id_pedido` int NOT NULL,
  `id_cliente` int NOT NULL,
  `id_frete` int NOT NULL,
  `descricao_pedido` varchar(45) DEFAULT NULL,
  `forma_pagamento` enum('Débito','Crédito','Pix','Boleto Bancário') DEFAULT NULL,
  `status_pagamento` enum('Pendente','Processando','Processado') DEFAULT (_utf8mb4'Pendente'),
  `status_pedido` enum('Pagamento Pendente','Em andamento','Processado','Entregue') DEFAULT NULL,
  `data_pedido` date NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_idclientepedido` (`id_cliente`),
  KEY `fk_fretepedido` (`id_frete`),
  CONSTRAINT `fk_fretepedido` FOREIGN KEY (`id_frete`) REFERENCES `frete` (`id_frete`),
  CONSTRAINT `fk_idclientepedido` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1410,11,716,NULL,'Crédito','Processado','Em andamento','2022-07-21'),(1587,2,465,NULL,'Débito','Processado','Em andamento','2022-12-07'),(2113,5,671,NULL,'Crédito','Processado','Em andamento','2022-11-20'),(2348,3,956,NULL,'Crédito','Processado','Entregue','2022-12-31'),(2608,4,942,NULL,'Crédito','Processado','Entregue','2022-06-24'),(2723,3,695,NULL,'Crédito','Processado','Entregue','2022-07-19'),(3251,4,988,NULL,'Crédito','Processado','Entregue','2022-12-14'),(3836,3,185,NULL,'Crédito','Processado','Entregue','2022-11-24'),(4269,4,682,NULL,'Crédito','Processado','Entregue','2022-07-23'),(4289,4,371,NULL,'Crédito','Processado','Entregue','2022-07-13'),(4406,10,394,NULL,'Crédito','Processado','Entregue','2022-08-09'),(5182,2,292,NULL,'Débito','Processado','Entregue','2022-10-18'),(5640,4,802,NULL,'Crédito','Processado','Entregue','2022-09-21'),(6116,12,888,NULL,'Débito','Processado','Entregue','2022-07-11'),(6305,5,625,NULL,'Crédito','Processado','Entregue','2022-07-09'),(6522,2,257,NULL,'Débito','Processado','Entregue','2022-08-24'),(6547,8,963,NULL,'Crédito','Processado','Entregue','2022-12-09'),(6708,11,414,NULL,'Crédito','Processado','Entregue','2022-08-13'),(6845,12,317,NULL,'Débito','Processado','Entregue','2022-10-14'),(7075,11,229,NULL,'Crédito','Processado','Entregue','2022-06-23'),(7142,4,62,NULL,'Crédito','Processado','Entregue','2022-09-04'),(7352,2,202,NULL,'Débito','Processado','Entregue','2022-10-17'),(7357,5,536,NULL,'Crédito','Processado','Entregue','2022-11-15'),(7384,11,14,NULL,'Crédito','Processado','Entregue','2023-01-21'),(7573,4,651,NULL,'Crédito','Processado','Entregue','2022-12-24'),(8556,4,894,NULL,'Crédito','Processado','Entregue','2022-12-26'),(8608,3,535,NULL,'Crédito','Processado','Entregue','2022-07-15'),(8737,9,105,NULL,'Crédito','Processado','Entregue','2023-01-23'),(9338,11,385,NULL,'Crédito','Processado','Entregue','2022-09-15');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `att_status_pedido` BEFORE UPDATE ON `pedido` FOR EACH ROW BEGIN 
		IF new.status_pagamento = 'Processado' THEN
			SET new.status_pedido = 'Em Andamento';
		END IF;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `categoria_produto` enum('Roupas','Celulares','Eletrodomesticos','Informatica','TV e Home','Moveis') DEFAULT NULL,
  `descricao_produto` varchar(45) NOT NULL,
  `valor_produto` float NOT NULL,
  `nome_produto` varchar(30) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Roupas','T-shirt G em algodão 100%',60,'T-Shirt A Vermelha G'),(2,'Roupas','T-shirt M em algodão 100%',60,'T-Shirt A Vermelha M'),(3,'Roupas','T-shirt P em algodão 100%',60,'T-Shirt A Vermelha P'),(4,'Roupas','T-shirt G em algodão 100%',60,'T-Shirt A Verde G'),(5,'Roupas','T-shirt M em algodão 100%',60,'T-Shirt A Verde M'),(6,'Roupas','T-shirt P em algodão 100%',60,'T-Shirt A Verde P'),(7,'Roupas','Bermuda G na cor preta',99.99,'Bermuda Moletom Black G'),(8,'Roupas','Bermuda M na cor preta',99.99,'Bermuda Moletom Black M'),(9,'Roupas','Bermuda G na cor branca',99.99,'Bermuda Moletom White G'),(10,'Roupas','Bermuda M na cor branca',99.99,'Bermuda Moletom White M'),(11,'Roupas','',139.99,'Calça Jeans Slim G'),(12,'Roupas','',139.99,'Calça Jeans Slim M'),(13,'Roupas','',139.99,'Calça Jeans Slim P'),(14,'Celulares','Iphone 64GB na cor branca',1999.99,'Iphone XR Branco'),(15,'Celulares','Iphone 64GB na cor preto',1999.99,'Iphone XR Preto'),(16,'Celulares','Iphone 11 64GB na cor branca',1999.99,'Iphone 11 Branco'),(17,'Celulares','Iphone 11 64GB na cor preto',1999.99,'Iphone 11 Preto'),(18,'Celulares','Iphone 14 128GB na cor blue',6000.99,'Iphone 14 Blue'),(19,'Celulares','Iphone 14 128GB na cor black',6000.99,'Iphone 14 Black'),(20,'Celulares','Iphone 14 PRO 128GB na cor blue',6599.99,'Iphone 14 PRO'),(21,'Celulares','Iphone 14 PRO 128GB na cor roxa',6599.99,'Iphone 14 PRO'),(22,'Eletrodomesticos','Air Fryer XPTO Bivolt Preta e Cinza',399.99,'Air Fryer Bivolt'),(23,'Eletrodomesticos','Ferro de Passar XPTO Bivolt Preta e Cinza',199.99,'Ferro de Passar'),(24,'Eletrodomesticos','Sanduicheira XPTO Bivolt Preta e Cinza',99.99,'Sanduicheira'),(25,'Informatica','Teclado Gamer XPTU Preto e Verde',399.99,'Teclado Gamer'),(26,'Informatica','Mouse Gamer XPTU Preto e Verde',199.99,'Mouse Gamer'),(27,'Informatica','Monitor XPTU 23pol Preto',699.99,'Monitor 23pol'),(28,'TV e Home','TV 55pol PRIZ',1999.99,'TV 55pol PRIZ'),(29,'Moveis','Guarda Roupa 100% MDF',999.99,'Guarda Roupa MDF Branco');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportadora`
--

DROP TABLE IF EXISTS `transportadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportadora` (
  `id_transportadora` int NOT NULL,
  `razaosocial_transp` varchar(50) NOT NULL,
  `cnpj_transp` char(12) NOT NULL,
  `nomefantasia_transp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_transportadora`),
  UNIQUE KEY `razaosocial_transp` (`razaosocial_transp`),
  UNIQUE KEY `cnpj_transp` (`cnpj_transp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportadora`
--

LOCK TABLES `transportadora` WRITE;
/*!40000 ALTER TABLE `transportadora` DISABLE KEYS */;
INSERT INTO `transportadora` VALUES (1,'Transportadora A','505050500001','A Logística'),(2,'Transportadora B','606060600001','B Logística'),(3,'Transportadora C','707070700001','C Logística');
/*!40000 ALTER TABLE `transportadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor_terceiro`
--

DROP TABLE IF EXISTS `vendedor_terceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor_terceiro` (
  `id_terceiro` int NOT NULL,
  `razaosocial_terceiro` varchar(45) NOT NULL,
  `cnpj_terceiro` char(12) NOT NULL,
  `uf_terceiro` char(2) NOT NULL,
  PRIMARY KEY (`id_terceiro`),
  UNIQUE KEY `razaosocial_terceiro` (`razaosocial_terceiro`),
  UNIQUE KEY `cnpj_terceiro` (`cnpj_terceiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor_terceiro`
--

LOCK TABLES `vendedor_terceiro` WRITE;
/*!40000 ALTER TABLE `vendedor_terceiro` DISABLE KEYS */;
INSERT INTO `vendedor_terceiro` VALUES (1,'JOAO ROUPAS','202020200001','MA'),(2,'JOHN ELETROS','303030300001','SP'),(3,'MARCENARIA DO RENATO','404040400001','BA');
/*!40000 ALTER TABLE `vendedor_terceiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedorter_produto`
--

DROP TABLE IF EXISTS `vendedorter_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedorter_produto` (
  `id_terceiro` int NOT NULL,
  `id_produto` int NOT NULL,
  KEY `fk_terceiro` (`id_terceiro`),
  KEY `fk_produtoterceiro` (`id_produto`),
  CONSTRAINT `fk_produtoterceiro` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`),
  CONSTRAINT `fk_terceiro` FOREIGN KEY (`id_terceiro`) REFERENCES `vendedor_terceiro` (`id_terceiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedorter_produto`
--

LOCK TABLES `vendedorter_produto` WRITE;
/*!40000 ALTER TABLE `vendedorter_produto` DISABLE KEYS */;
INSERT INTO `vendedorter_produto` VALUES (1,1),(1,2),(1,5),(1,7),(1,10),(1,12),(1,13),(2,14),(2,15),(2,16),(2,25),(2,26),(3,29);
/*!40000 ALTER TABLE `vendedorter_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `oficina`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `oficina` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `oficina`;

--
-- Table structure for table `av_maodeobra`
--

DROP TABLE IF EXISTS `av_maodeobra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `av_maodeobra` (
  `id_os` int NOT NULL,
  `id_refservico` int NOT NULL,
  KEY `fk_osserv` (`id_os`),
  KEY `fk_refserv` (`id_refservico`),
  CONSTRAINT `fk_osserv` FOREIGN KEY (`id_os`) REFERENCES `os` (`id_os`),
  CONSTRAINT `fk_refserv` FOREIGN KEY (`id_refservico`) REFERENCES `referencia_servico` (`id_refservico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `av_maodeobra`
--

LOCK TABLES `av_maodeobra` WRITE;
/*!40000 ALTER TABLE `av_maodeobra` DISABLE KEYS */;
INSERT INTO `av_maodeobra` VALUES (1,1),(1,2),(1,3),(1,5),(2,1),(2,2),(2,3),(2,5),(4,8),(5,8),(6,12),(7,1),(7,2),(7,3),(7,5),(9,12),(10,1),(10,2),(10,3),(10,5),(10,13),(11,1),(11,2),(11,3),(11,5),(12,8),(13,14),(14,1),(14,2),(14,3),(14,5),(14,13);
/*!40000 ALTER TABLE `av_maodeobra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao_os`
--

DROP TABLE IF EXISTS `avaliacao_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao_os` (
  `id_os` int NOT NULL,
  `id_mecanico` int NOT NULL,
  KEY `fk_idosmec` (`id_os`),
  KEY `fk_mecanico` (`id_mecanico`),
  CONSTRAINT `fk_idosmec` FOREIGN KEY (`id_os`) REFERENCES `os` (`id_os`),
  CONSTRAINT `fk_mecanico` FOREIGN KEY (`id_mecanico`) REFERENCES `mecanico` (`id_mecanico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao_os`
--

LOCK TABLES `avaliacao_os` WRITE;
/*!40000 ALTER TABLE `avaliacao_os` DISABLE KEYS */;
INSERT INTO `avaliacao_os` VALUES (14,4),(13,3),(6,2),(9,2),(1,2),(2,2),(7,2),(10,2),(11,2),(14,2),(1,2),(2,2),(7,2),(10,2),(11,2),(14,2),(4,2),(5,2),(12,2),(6,1),(9,1),(1,1),(2,1),(7,1),(10,1),(11,1),(14,1),(1,1),(2,1),(7,1),(10,1),(11,1),(14,1),(4,1),(5,1),(12,1),(1,4),(2,4),(7,4),(10,4),(11,4),(14,4),(1,2),(2,2),(7,2),(10,2),(11,2),(14,2),(1,1),(2,1),(7,1),(10,1),(11,1),(14,1);
/*!40000 ALTER TABLE `avaliacao_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL,
  `pnome` varchar(15) NOT NULL,
  `mnome` varchar(15) NOT NULL,
  `unome` varchar(15) NOT NULL,
  `cpf` char(11) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ryan','A.','Luz','42256082588','Rua Frederico Moura, 471'),(2,'Lucas','Gabriel','Moreira','59286963275','Avenida Desembargador Moreira, 751'),(3,'Kevin','A.','Nunes','25772149738','Rua Paracatu, 724'),(4,'Kamilly','N.','Almeida','32469307164','Praça da República, 201'),(5,'Fernanda','M.','Lima','43962194037','Travessa Antônio Ferreira, 435'),(6,'Raquel','S.','Barros','23214581798','Rodovia Raposo Tavares, 386'),(7,'Gabrielly','S.','Nunes','26220643646','Avenida Afonso Pena, 658'),(8,'Vitor','Hugo','Nascimento','22434713247','Rua Frederico Moura, 863'),(9,'Alexandre','O.','Moura','26745958685','Avenida Governador José Malcher, 111'),(10,'Luiz','Fernando','Correia','41518136764','Rua Arlindo Nogueira, 795');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esp_mecanico`
--

DROP TABLE IF EXISTS `esp_mecanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esp_mecanico` (
  `id_mecanico` int NOT NULL,
  `id_especialidade` int NOT NULL,
  KEY `fk_espmecanico` (`id_mecanico`),
  KEY `fk_especialidade` (`id_especialidade`),
  CONSTRAINT `fk_especialidade` FOREIGN KEY (`id_especialidade`) REFERENCES `especialidade` (`id_especialidade`),
  CONSTRAINT `fk_espmecanico` FOREIGN KEY (`id_mecanico`) REFERENCES `mecanico` (`id_mecanico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esp_mecanico`
--

LOCK TABLES `esp_mecanico` WRITE;
/*!40000 ALTER TABLE `esp_mecanico` DISABLE KEYS */;
INSERT INTO `esp_mecanico` VALUES (1,1),(1,2),(1,3),(1,4),(2,1),(2,2),(2,3),(2,4),(3,5),(4,6),(4,7);
/*!40000 ALTER TABLE `esp_mecanico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade` (
  `id_especialidade` int NOT NULL,
  `nome_especialidade` varchar(45) NOT NULL,
  PRIMARY KEY (`id_especialidade`),
  UNIQUE KEY `nome_especialidade` (`nome_especialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES (4,'Amortecedores e suspensões'),(1,'Elétrica e eletrônica'),(5,'Estética'),(7,'Motor'),(3,'Sistema de frenagem'),(2,'Sistemas de arrefecimento'),(6,'Sistemas de transmissão');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornece_peca`
--

DROP TABLE IF EXISTS `fornece_peca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornece_peca` (
  `id_fornecedor` int NOT NULL,
  `id_peca` int NOT NULL,
  KEY `fk_fornecedor` (`id_fornecedor`),
  KEY `fk_pecafornecedor` (`id_peca`),
  CONSTRAINT `fk_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`),
  CONSTRAINT `fk_pecafornecedor` FOREIGN KEY (`id_peca`) REFERENCES `peca` (`id_peca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornece_peca`
--

LOCK TABLES `fornece_peca` WRITE;
/*!40000 ALTER TABLE `fornece_peca` DISABLE KEYS */;
INSERT INTO `fornece_peca` VALUES (2,21),(2,15),(3,24),(3,18),(3,25),(4,11),(2,9),(2,26),(4,23),(4,10),(4,23),(1,5),(2,5),(2,1),(1,21),(1,6),(4,19),(4,8),(2,18),(2,7),(4,10),(3,13),(4,9),(4,6),(1,14),(3,11),(4,22),(1,19),(2,25),(3,3),(4,13),(2,7),(1,1),(3,13),(2,15),(1,14),(2,16),(3,7),(4,13),(2,1),(3,3),(2,7),(2,5),(2,22),(4,26),(1,9),(4,19),(2,4),(3,25),(4,24),(2,2),(1,12),(2,17),(3,20);
/*!40000 ALTER TABLE `fornece_peca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id_fornecedor` int NOT NULL,
  `razaosocial_fornecedor` varchar(45) NOT NULL,
  `cnpj_fornecedor` char(12) NOT NULL,
  `endereco_fornecedor` varchar(45) NOT NULL,
  PRIMARY KEY (`id_fornecedor`),
  UNIQUE KEY `razaosocial_fornecedor` (`razaosocial_fornecedor`),
  UNIQUE KEY `cnpj_fornecedor` (`cnpj_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Autopeças XPTO','966165950001','Rua A, 102'),(2,'Autopeças XPSN','927452470001','Rua B, 1010'),(3,'Autopeças SIAO','644781380001','Rua C, 2939'),(4,'Autopeças OSPA','874809640001','Rua D, 289');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mecanico`
--

DROP TABLE IF EXISTS `mecanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mecanico` (
  `id_mecanico` int NOT NULL,
  `nome_mecanico` varchar(45) NOT NULL,
  `endereco_mecanico` varchar(45) NOT NULL,
  PRIMARY KEY (`id_mecanico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mecanico`
--

LOCK TABLES `mecanico` WRITE;
/*!40000 ALTER TABLE `mecanico` DISABLE KEYS */;
INSERT INTO `mecanico` VALUES (1,'Claudemir A. Santos','Rua AXC, 230'),(2,'Valdemir Oliveira','Rua KSA, 249'),(3,'Cristian Silva','Rua OSP, 292'),(4,'Anderson Peixoto','Rua OKSA, 203');
/*!40000 ALTER TABLE `mecanico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os`
--

DROP TABLE IF EXISTS `os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `os` (
  `id_os` int NOT NULL,
  `data_emissao` date NOT NULL,
  `valor_os` float NOT NULL,
  `status_os` enum('Em avaliação','Em serviço','Concluído') NOT NULL DEFAULT 'Em avaliação',
  `id_cliente` int NOT NULL,
  PRIMARY KEY (`id_os`,`id_cliente`),
  KEY `fk_oscliente` (`id_cliente`),
  CONSTRAINT `fk_oscliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os`
--

LOCK TABLES `os` WRITE;
/*!40000 ALTER TABLE `os` DISABLE KEYS */;
INSERT INTO `os` VALUES (1,'2022-11-18',957,'Concluído',3),(2,'2022-10-20',966,'Concluído',1),(3,'2022-08-03',307,'Concluído',10),(4,'2023-01-07',902,'Concluído',1),(5,'2023-01-24',635,'Concluído',10),(6,'2022-06-21',528,'Concluído',6),(7,'2023-01-18',939,'Concluído',8),(8,'2022-07-10',328,'Concluído',5),(9,'2022-12-02',510,'Concluído',7),(10,'2022-08-17',949,'Concluído',4),(11,'2022-10-25',860,'Concluído',2),(12,'2022-08-16',439,'Concluído',9),(13,'2022-08-13',233,'Concluído',5),(14,'2022-12-21',939,'Concluído',3);
/*!40000 ALTER TABLE `os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peca`
--

DROP TABLE IF EXISTS `peca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peca` (
  `id_peca` int NOT NULL,
  `nome_peca` varchar(45) NOT NULL,
  `valor_peca` float NOT NULL,
  PRIMARY KEY (`id_peca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peca`
--

LOCK TABLES `peca` WRITE;
/*!40000 ALTER TABLE `peca` DISABLE KEYS */;
INSERT INTO `peca` VALUES (1,'Anel de pistão',129),(2,'Bomba elétrica de combustível',300),(3,'Bronzina',156),(4,'Buzina ou equipamento similar',150),(5,'Lâmpada para veículos automotivos',60),(6,'Pino e anel de trava (retenção)',103),(7,'Pistão de liga leve de alumínio',260),(8,'Baterias',500),(9,'Terminal de direção',126),(10,'Barra de direção',162),(11,'Barra de ligação',176),(12,'Terminal axial',150),(13,'Lonas de atrito',200),(14,'Rodas automotivas',300),(15,'Vidro de segurança laminado de para-brisas',1200),(16,'Vidro de segurança temperado',999),(17,'Fluído de freio',199),(18,'Catalisador',128),(19,'Pastilhas de Freio',165),(20,'Discos de Freio',150),(21,'Tensor',80),(22,'Correia Dentada',60),(23,'Vela de ignição',181),(24,'Kit Embreagem',350),(25,'Amortecedor dianteiro',205),(26,'Amortecedor traseiro',185);
/*!40000 ALTER TABLE `peca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencia_servico`
--

DROP TABLE IF EXISTS `referencia_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referencia_servico` (
  `id_refservico` int NOT NULL,
  `nome_servico` varchar(45) NOT NULL,
  `valor_servico` float NOT NULL,
  PRIMARY KEY (`id_refservico`),
  UNIQUE KEY `nome_servico` (`nome_servico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencia_servico`
--

LOCK TABLES `referencia_servico` WRITE;
/*!40000 ALTER TABLE `referencia_servico` DISABLE KEYS */;
INSERT INTO `referencia_servico` VALUES (1,'Troca de óleo e filtro',30),(2,'Troca de pastilhas de freio',40),(3,'Troca de amortecedor dianteiro',70),(4,'Troca de amortecedor traseiro',100),(5,'Troca de disco de freio',70),(6,'Troca de vela de ignição',70),(7,'Troca de tensor e correia dentada',140),(8,'Troca de embreagem',210),(9,'Higienização de ar-condicionado',30),(10,'Sangria do óleo de freio',70),(11,'Limpeza do TBI',70),(12,'Rastreamento com scanner',80),(13,'Limpeza do motor',120),(14,'Martelinho de ouro',150),(15,'Pintura por peça',190);
/*!40000 ALTER TABLE `referencia_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_peca`
--

DROP TABLE IF EXISTS `sub_peca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_peca` (
  `id_os` int NOT NULL,
  `id_peca` int NOT NULL,
  KEY `fk_ospeca` (`id_os`),
  KEY `fk_peca` (`id_peca`),
  CONSTRAINT `fk_ospeca` FOREIGN KEY (`id_os`) REFERENCES `os` (`id_os`),
  CONSTRAINT `fk_peca` FOREIGN KEY (`id_peca`) REFERENCES `peca` (`id_peca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_peca`
--

LOCK TABLES `sub_peca` WRITE;
/*!40000 ALTER TABLE `sub_peca` DISABLE KEYS */;
INSERT INTO `sub_peca` VALUES (1,19),(1,20),(2,19),(2,20),(3,15),(4,24),(4,15),(5,24),(6,8),(7,19),(7,20),(8,15),(9,8),(10,19),(10,20),(11,19),(11,20),(12,24),(14,19),(14,20);
/*!40000 ALTER TABLE `sub_peca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `id_veiculo` int NOT NULL,
  `modelo` varchar(40) NOT NULL,
  `fabricante` varchar(20) NOT NULL,
  `placa` char(7) NOT NULL,
  `renavam` char(11) NOT NULL,
  `id_cliente` int NOT NULL,
  PRIMARY KEY (`id_veiculo`),
  UNIQUE KEY `placa` (`placa`),
  UNIQUE KEY `renavam` (`renavam`),
  KEY `fk_cliente` (`id_cliente`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'Fiesta Sedan SE 1.0 8V Flex 4p','Ford','LXT1944','89161779648',3),(2,'H1 1.8 20V Turbo 180cv 2p','Lobini','NBU6746','51078838791',1),(3,'COOPER S 1.6 Aut.','Mini','MYE5388','18984753381',10),(4,'Vantage Roadster 4.7 V8 420cv','ASTON MART','MOK0967','90749959342',1),(5,'Ghibli 3.0 V6 330cv Aut.','Maserati','JTE9472','65712827344',10),(6,'Javali 3.0 4x4 Diesel','CBT Jipe','JSK1711','39165483917',6),(7,'Corolla WG','Toyota','JRA6394','51612256418',8),(8,'Hummer Hard-Top 6.5 4x4 Diesel TB','AM Gen','JQD9581','44561660524',5),(9,'B-2500 Pick-Up 2.5 Diesel','Mazda','JPC5867','98117842347',7),(10,'Way 1.6 Total Flex 8V Mec.','Wake','JLJ5584','38335316899',4),(11,'OUTLANDER 3.0/ GT 3.0 V6 Aut.','Mitsubishi','JSP8972','54521569582',2),(12,'147 2.0 16V 148cv 4p Semi-Aut.','Alfa Romeo','JLU9725','48637696853',9),(13,'Cayenne Turbo S 4.5/ 4.8 32V','Porsche','JNH7962','86293398590',5),(14,'Ram 2500 H.DUTY 5.9 SLT 24V CD 4x4 Dies.','Dodge','JPO6465','77762684427',3);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo_os`
--

DROP TABLE IF EXISTS `veiculo_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo_os` (
  `id_veiculo` int NOT NULL,
  `id_os` int NOT NULL,
  KEY `fk_veiculo` (`id_veiculo`),
  KEY `fk_osveiculo` (`id_os`),
  CONSTRAINT `fk_osveiculo` FOREIGN KEY (`id_os`) REFERENCES `os` (`id_os`),
  CONSTRAINT `fk_veiculo` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id_veiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo_os`
--

LOCK TABLES `veiculo_os` WRITE;
/*!40000 ALTER TABLE `veiculo_os` DISABLE KEYS */;
INSERT INTO `veiculo_os` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14);
/*!40000 ALTER TABLE `veiculo_os` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-01  9:44:02
