create database mem;
USE mem;
CREATE TABLE IF NOT EXISTS member(
	id VARCHAR(20) PRIMARY KEY,
	pwd VARCHAR(20),
	name VARCHAR(20),
	birthday VARCHAR(20),
	email VARCHAR(50));
DESC members;
INSERT INTO member VALUES('111','1234','김현아', '2004-01-31', 'asdf@naver');
INSERT INTO member VALUES('222','3456','남궁설', '2003-10-21', 'qxcv@naver');
INSERT INTO member VALUES('333','3756','김채은', '2002-09-18', 'zxcv@naver');
INSERT INTO member VALUES('444','1489','박진아', '2006-05-15', 'uiop@naver');
INSERT INTO member VALUES('555','0842','이한결', '2001-12-11', 'lkjh@naver');
SELECT *FROM member;