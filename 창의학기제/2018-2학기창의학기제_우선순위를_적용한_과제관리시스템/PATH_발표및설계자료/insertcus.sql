-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.20-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- homeworknotice 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `homeworknotice` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `homeworknotice`;

-- 테이블 homeworknotice.customer 구조 내보내기
CREATE TABLE IF NOT EXISTS `customer` (
  `licenseID` varchar(45) NOT NULL,
  `cusName` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `ku` varchar(45) DEFAULT NULL,
  `dong` varchar(45) DEFAULT NULL,
  `cusPhoneNum` varchar(45) DEFAULT NULL,
  `cusMail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`licenseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 homeworknotice.customer:~12 rows (대략적) 내보내기
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`licenseID`, `cusName`, `city`, `ku`, `dong`, `cusPhoneNum`, `cusMail`) VALUES
	('RPS001', 'aashop', 'Seoul', 'Gwangjingu', 'Gungadong', '02-111-1111', 'Parkseojun'),
	('RPS002', 'bbshop', 'Seoul', 'Eunpyeonggu', 'Bulgwangdong', '02-222-2222', 'Choihongman'),
	('RPS003', 'ccshop', 'Daegu', 'Dalseogu', 'seongdangdong', '02-333-3333', 'Jeonghaein'),
	('RPS004', 'ddshop', 'Daegu', 'Suseonggu', 'Beomeodong', '02-444-4444', 'Yujeong'),
	('RPS005', 'eeshop', 'Busan', 'Yeongdogu', 'Cheonghagdong', '02-555-5555', 'Kimgoeun'),
	('RPS006', 'ffshop', 'Seoul', 'Dongjakgu', 'Sangdodong', '02-666-6666', 'Gongyu'),
	('RPS007', 'ggshop', 'Seoul', 'Gurogu', 'Sindorimdong', '02-777-7777', 'Joinseong'),
	('RPS008', 'hhshop', 'Busan', 'Dongraegu', 'Nagmindong', '02-888-8888', 'Chataehyeon'),
	('RPS009', 'iishop', 'Seoul', 'Gangnamgu', 'samsungdong', '02-999-9999', 'Sonnaeun'),
	('RPS010', 'jjshop', 'Seoul', 'Songpagu', 'Gamsildong', '02-123-1234', 'Sulhyeon'),
	('RPS011', 'kkshop', 'Busan', 'donggu', 'Cholyangdong', '02-456-4567', 'Kimjunhyeon'),
	('RPS012', 'llshop', 'Seoul', 'Jongrogu', 'Cheongundong', '02-789-7899', 'Seongdongil');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
