-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para biblioteca_cesar
CREATE DATABASE IF NOT EXISTS `biblioteca_cesar` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `biblioteca_cesar`;

-- Copiando estrutura para tabela biblioteca_cesar.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `cod` smallint(6) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela biblioteca_cesar.admin: ~1 rows (aproximadamente)
INSERT INTO `admin` (`cod`, `login`, `nome`) VALUES
	(1, 'admin', 'cesar');

-- Copiando estrutura para tabela biblioteca_cesar.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `cod` smallint(6) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) DEFAULT NULL,
  `nome` varchar(50) NOT NULL DEFAULT '0',
  `idade` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela biblioteca_cesar.cliente: ~3 rows (aproximadamente)
INSERT INTO `cliente` (`cod`, `login`, `nome`, `idade`) VALUES
	(1, 'cesar', 'cesar silva', 22),
	(2, 'sergio', 'sergio freitas', 17),
	(3, 'ASaia?rsrs', 'Diego Que lava', 18);

-- Copiando estrutura para tabela biblioteca_cesar.livro
CREATE TABLE IF NOT EXISTS `livro` (
  `cod` smallint(6) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(50) NOT NULL DEFAULT '0',
  `edicao` varchar(20) NOT NULL,
  `publicacao` char(10) NOT NULL DEFAULT '',
  `reservado` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela biblioteca_cesar.livro: ~3 rows (aproximadamente)
INSERT INTO `livro` (`cod`, `titulo`, `autor`, `edicao`, `publicacao`, `reservado`) VALUES
	(1, 'O Nome do Vento', 'Patrick Rothfuss', '3', '04/11/2012', 0),
	(2, 'Hobbit', 'JR Tolkien', '2', '11/04/1972', 0),
	(3, 'O estrangeiro', 'Albert Camus', '5', '15/07/2007', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
