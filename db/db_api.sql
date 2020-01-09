-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for db_api
CREATE DATABASE IF NOT EXISTS `db_api` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_api`;


-- Dumping structure for table db_api.tbl_admin_allowip
CREATE TABLE IF NOT EXISTS `tbl_admin_allowip` (
  `id_allowip` int(11) NOT NULL AUTO_INCREMENT,
  `list_allowip` text NOT NULL,
  `pemilik_allowip` varchar(50) NOT NULL,
  PRIMARY KEY (`id_allowip`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table db_api.tbl_admin_allowip: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_admin_allowip` DISABLE KEYS */;
INSERT INTO `tbl_admin_allowip` (`id_allowip`, `list_allowip`, `pemilik_allowip`) VALUES
	(1, '::1', 'Localhost');
/*!40000 ALTER TABLE `tbl_admin_allowip` ENABLE KEYS */;


-- Dumping structure for table db_api.tbl_test
CREATE TABLE IF NOT EXISTS `tbl_test` (
  `id_test` int(11) DEFAULT NULL,
  `nama_test` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_api.tbl_test: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_test` DISABLE KEYS */;
INSERT INTO `tbl_test` (`id_test`, `nama_test`) VALUES
	(1, '2'),
	(2, '3');
/*!40000 ALTER TABLE `tbl_test` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
