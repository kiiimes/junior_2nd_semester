-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- 생성 시간: 18-07-10 18:56
-- 서버 버전: 5.7.22-0ubuntu0.16.04.1
-- PHP 버전: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `PATH`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `Subject`
--

CREATE TABLE `Subject` (
  `primaryKey` int(11) NOT NULL,
  `subNo` varchar(11) NOT NULL,
  `subName` varchar(50) NOT NULL,
  `day` varchar(50) DEFAULT NULL,
  `classroom` varchar(50) DEFAULT NULL,
  `profName` varchar(50) NOT NULL,
  `startHour` time DEFAULT NULL,
  `endHour` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `Subject`
--

INSERT INTO `Subject` (`primaryKey`, `subNo`, `subName`, `day`, `classroom`, `profName`, `startHour`, `endHour`) VALUES
(1, '009063', 'English for Professional Purposes 1', '화', '세204', '박선영', '12:00:00', '13:30:00'),
(2, '009064', 'English for Professional Purposes 2', '월', '세203', '옥성수', '15:00:00', '16:30:00'),
(3, '009067', '문제해결을위한글쓰기와발표', '월', '광705', '오현화', '10:30:00', '12:00:00'),
(4, '010353', 'English Listening Practice 2', '수', '세108', 'Michael John Stokes', '13:30:00', '15:00:00'),
(5, '008364', '세종사회봉사1', NULL, NULL, '박현선', NULL, NULL),
(6, '009068', '서양철학:쟁점과토론', '금', '광705', '송대현', '13:30:00', '15:00:00'),
(7, '004627', '채플2', '화', '애101', '이요섭', '09:30:00', '10:30:00'),
(8, '004794', '채플4', '수', '애101', '이요섭', '10:30:00', '11:30:00'),
(9, '006279', '정보사회의사이버윤리', NULL, NULL, '이상헌', NULL, NULL),
(10, '010360', '청년에게들려주는통일이야기', '화', '충B107', '전권천', '13:30:00', '15:00:00'),
(11, '004763', '과학사', '홤고', '군311', '정연철', '16:30:00', '18:00:00'),
(12, '008890', '천문학의세계', '월수', '율B04', 'Graziano Rossi', '10:30:00', '12:00:00'),
(13, '008937', '현대과학기술의이해', '화목', '군107', '정직한', '10:30:00', '12:00:00'),
(14, '009789', '프로그래밍입문-P', '목', '동401', '박태순', '13:30:00', '15:00:00'),
(15, '009791', '고급프로그래밍입문-C', '목', '동401', '송상훈', '15:00:00', '16:30:00'),
(16, '009799', '소프트웨어기초코딩', '목', '동415', '국형준', '15:00:00', '16:30:00'),
(17, '000304', '공업수학1', '수금', '충105A', '박상식', '15:00:00', '16:30:00'),
(18, '000304', '공업수학1', '화목', '충105A', '우형수', '16:30:00', '18:00:00'),
(19, '000304', '공업수학1', '월수', '충202A', '김태근', '12:00:00', '13:30:00'),
(20, '000304', '공업수학1', '월수', '충202A', '김종렬', '10:30:00', '12:00:00'),
(21, '000304', '공업수학1', '월수', '광203', '강우석', '09:00:00', '10:30:00'),
(22, '008377', '전산개론-I', NULL, NULL, '양효식', NULL, NULL),
(23, '008377', '전산개론-I', '금', '율401', 'Abolghasem Sadeghi-Niaraki', '09:00:00', '12:00:00'),
(24, '008378', '전산개론-O', NULL, NULL, '공성곤', NULL, NULL),
(25, '008379', '전산개론-C', NULL, NULL, '이종원', NULL, NULL),
(26, '008380', '전산개론-M', NULL, NULL, '이학성', NULL, NULL),
(27, '008932', '동양고전강독2', NULL, NULL, '정지욱', NULL, NULL),
(28, '008933', '서양고전강독2', NULL, NULL, '오현화', NULL, NULL),
(29, '009058', '서양고전강독4', NULL, NULL, '이태하', NULL, NULL),
(30, '009938', '동서양고전문학강독', NULL, NULL, '김우영', NULL, NULL),
(31, '010418', '자기주도창의전공Ⅰ', NULL, NULL, '김용국', NULL, NULL),
(32, '010418', '자기주도창의전공Ⅰ', NULL, NULL, '권기학', NULL, NULL),
(33, '010418', '자기주도창의전공Ⅰ', NULL, NULL, '김아정', NULL, NULL),
(34, '010419', '자기주도창의전공Ⅱ', NULL, NULL, '안용학', NULL, NULL),
(35, '010419', '자기주도창의전공Ⅱ', NULL, NULL, '오범수', NULL, NULL),
(36, '010420', '자기주도창의전공Ⅲ', NULL, NULL, '김용국', NULL, NULL),
(37, '010421', '자기주도창의전공Ⅳ', NULL, NULL, '권기학', NULL, NULL),
(38, '009065', 'English Writing 1', '월수', 'Lab-E/Lab-C', '변혜원', '11:00:00', '12:00:00'),
(39, '009065', 'English Writing 1', '월수', 'Lab-B', 'Timothy James Self', '18:00:00', '19:00:00'),
(40, '009066', 'English Writing 2', '월수', '세101', '박선영', '12:00:00', '13:00:00'),
(41, '009066', 'English Writing 2', '월수', 'Lab-A', '김훈밀', '18:00:00', '19:00:00'),
(42, '009489', '세계사:인간과문명', '화', '광712', '공수진', '09:00:00', '10:30:00'),
(43, '009489', '세계사:인간과문명', '화', '광712', '문종현', '12:00:00', '13:30:00'),
(44, '003276', '컴퓨터구조론', '월수', '율305A', '송상훈', '13:30:00', '15:00:00'),
(45, '003276', '컴퓨터구조론', '화목', '율305A', '박기호', '10:30:00', '12:00:00'),
(46, '001082', '마이크로컴퓨터', '월수', '율305A', '송상훈', '10:00:00', '12:00:00'),
(47, '005636', '멀티미디어', '화목', '율202', '안용학', '12:00:00', '13:30:00'),
(48, '009955', '이산수학및프로그래밍', '화목', '충103A', '임채훈', '12:00:00', '13:30:00'),
(49, '009956', '문제해결및실습:JAVA', '화목', '율301', '신동일', '10:30:00', '12:00:00');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `Subject`
--
ALTER TABLE `Subject`
  ADD PRIMARY KEY (`primaryKey`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `Subject`
--
ALTER TABLE `Subject`
  MODIFY `primaryKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
