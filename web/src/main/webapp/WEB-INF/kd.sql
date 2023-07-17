-- --------------------------------------------------------
-- 호스트:                          172.31.58.238
-- 서버 버전:                        11.0.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- kd 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `kd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `kd`;

-- 테이블 kd.board_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_info` (
  `BI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `BI_TITLE` varchar(100) NOT NULL,
  `BI_CONTENT` text NOT NULL,
  `BI_WRITER` varchar(30) NOT NULL,
  `BI_CREDAT` timestamp NOT NULL,
  `BI_CNT` int(11) NOT NULL,
  PRIMARY KEY (`BI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.board_info:~8 rows (대략적) 내보내기
INSERT INTO `board_info` (`BI_NUM`, `BI_TITLE`, `BI_CONTENT`, `BI_WRITER`, `BI_CREDAT`, `BI_CNT`) VALUES
	(17, '신혼일기', '이젠 갠플이 아니라 팀플이다!\r\n조별 과제와 차원이 다른 인생을 건 팀플이 시작된다.\r\n1인가구에서 2인가구로 성장한 자까 작가의 결혼 이야기', '자까', '2023-07-17 01:29:42', 0),
	(18, '마루는 강쥐', '우리 집 강아지 마루가 사람이 되었다, 그것도 5살 아이로!\r\n강아지 + 어린아이의 무한 에너지와 호기심을 지닌 사고뭉치 강쥐 탄생!\r\n마루야~! 또 어디가!!! 유쾌한 이웃들과 우당탕탕 즐거운 마루의 나날들', '모죠', '2023-07-17 01:30:06', 0),
	(19, '시한부인 줄 알았어요!', '3개월 시한부 진단을 받은 블랑셰 공작가의 공녀, 라리에트.\r\n어차피 죽을 몸, 버킷리스트(라 쓰고 미친 짓이라 읽는) 달성을 해보기로 했다.\r\n첫째. 사랑하지도 않는 나이 많은 약혼자 엿 먹이기.\r\n둘째. 괴물 공작 아스라한과 3개월 간 연애하기!\r\n그러나 그에게서 도망치고 나서야 깨닫고 말았다. 시한부 진단이 완벽한 오진이라는 사실을!', '혜용', '2023-07-17 01:30:34', 0),
	(20, '흑화한 노예남을 길들였다', '훗날 검술에 있어 일인자가 되는 남자를 빼돌려 남동생으로 입적시키는 데 성공했다.\r\n그는 전생에서 날 죽였던 빌어먹을 약혼자에게서 날 지켜줄 검이 될 터이니.\r\n"처음 본 순간부터 지금까지 단 한 번도 당신을 가족이라 생각한 적 없습니다. 사랑하는 내 누님."\r\n내가 동생이라고 거둔 남자는 한 마리 짐승이었다.', 'LICO', '2023-07-17 01:31:21', 0),
	(21, '북부 공작님을 유혹하겠습니다', '“내 애인인 척 사교계에 들어가.”\r\n전 세계에서 주목하는 톱스타, 셀리나는\r\n촬영 중 갑작스러운 사고로 북부 공작의 땅에 차원 이동한다.\r\n마수에게서 목숨을 구해준 북부 공작, 칼시온은\r\n셀리나에게 자신의 애인인 척 사교계에 들어가\r\n정보를 입수하라는 계약을 제시하는데..', '가천가', '2023-07-17 01:32:28', 0),
	(22, '나타나주세요!', '평소보다 특별했던 어느 날, 평범한 대학생 김지용의 꿈속에 정지혜가 나타나기 시작했다.\r\n정지혜에게 첫눈에 반한 김지용은 그녀를 찾아다니기 위해 노력하지만 알고 보니 그녀는.. 2년 전에 자살한 사람이었다?!\r\n그녀를 살리기 위해 고군분투하는 김지용의 달콤살벌 로맨스. 나타나주세요, 내 눈앞에!', '김기현', '2023-07-17 01:33:29', 0),
	(23, '소녀의 세계', '완벽해 보이지만 사실 외로웠던 백조들과 맘씨 착한 오리가 만나\r\n여러 갈등을 함께 겪으며 진짜 친구가 되어가는 소녀들의 찐 우정물', '모랑지', '2023-07-17 01:34:03', 0),
	(24, '66666년 만에 환생한 흑마법사', '강대했던 흑마법사 디아블로 볼피르.12신의 계략에 당해 억겁 속에 봉인되었지만, 그로부터 66666년이 흘러 다시금 이 땅에 강림한다!\r\n"응애!"\r\n웰턴 백작의 갓 태어난 장남으로.\r\n딥다크 매직 판타지 시작!', '팀 더 지크', '2023-07-17 01:36:24', 0);

-- 테이블 kd.class_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `class_info` (
  `CI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `CI_NAME` varchar(100) NOT NULL,
  `CI_DESC` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`CI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.class_info:~8 rows (대략적) 내보내기
INSERT INTO `class_info` (`CI_NUM`, `CI_NAME`, `CI_DESC`) VALUES
	(1, '유재석', '메뚜기'),
	(2, '박명수', '명수옹'),
	(3, '하하', '꼬마'),
	(6, '노홍철', '도라이'),
	(7, '정준하', '식신'),
	(8, '길', '문어'),
	(15, '정형돈', '도니'),
	(17, '전진', '금잔디');

-- 테이블 kd.user_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_info` (
  `UI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `UI_ID` varchar(30) NOT NULL,
  `UI_PWD` varchar(30) NOT NULL,
  `UI_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`UI_NUM`),
  UNIQUE KEY `UI_ID` (`UI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.user_info:~5 rows (대략적) 내보내기
INSERT INTO `user_info` (`UI_NUM`, `UI_ID`, `UI_PWD`, `UI_NAME`) VALUES
	(11, 'TEST1', 'TEST1', 'SAM'),
	(12, 'TEST2', 'TEST2', 'Bentely'),
	(14, 'TEST3', 'TEST3', 'William'),
	(18, '1234', '1234', '홍길동'),
	(19, '2345', '2345', '임꺽정');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
