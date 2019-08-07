-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- 생성 시간: 18-07-10 19:00
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
-- 테이블 구조 `Student`
--

CREATE TABLE `Student` (
  `name` varchar(50) NOT NULL,
  `stuId` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `pw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `Student`
--

INSERT INTO `Student` (`name`, `stuId`, `semester`, `pw`) VALUES
('김은숙', 16010960, 5, '16010960'),
('최지현', 16011008, 5, '16011008'),
('정주호', 16011016, 5, '16011016');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`stuId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
