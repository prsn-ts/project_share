-- 사용자(회원) 정보를 저장할 테이블 
CREATE TABLE login(
	id VARCHAR2(100) PRIMARY KEY,
	pwd VARCHAR2(100) NOT NULL,
	email VARCHAR2(100),
	profile VARCHAR2(100), -- 프로필 이미지 경로를 저장할 칼럼
	regdate DATE
);



CREATE TABLE BBS (
    bbsID NUMBER PRIMARY KEY,
    bbsTitle VARCHAR(50),
    id VARCHAR(20),
    bbsDate DATE,
    bbsContent VARCHAR(2048),
    bbsAvailable NUMBER
);

