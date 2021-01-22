-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 21-01-22 11:50
-- 서버 버전: 5.7.32
-- PHP 버전: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `sohye`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `w_member`
--
/* 테이블 이름 생성 : CREATE TABLE `테이블이름` */
CREATE TABLE `w_member` (
  `idx` int(11) NOT NULL, /* NOT NULL : 공백을 허용하지 않음., 반드시 입력하라 */
  `id` varchar(255) CHARACTER SET utf8 NOT NULL, /*  */
  `pw` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='회원관리 테이블';

--
-- 테이블의 덤프 데이터 `w_member`
--
/* 테이블에 입력 : INSERT INTO `` VALUES () */
INSERT INTO `w_member` (`idx`, `id`, `pw`, `name`, `phone`, `email`) VALUES
(1, 'sohye1', '1234', '박소혜', '010-2962-0395', 's1good@email.com');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `w_member`
--
ALTER TABLE `w_member` 
  ADD PRIMARY KEY (`idx`,`id`); 

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `w_member`
--
/* ALTER : 테이블 수정(변경) */
ALTER TABLE `w_member` 
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
