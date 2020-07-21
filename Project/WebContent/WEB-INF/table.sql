-- 사용자(회원) 정보를 저장할 테이블 
CREATE TABLE login(
	id VARCHAR2(100) PRIMARY KEY,
	pwd VARCHAR2(100) NOT NULL,
	email VARCHAR2(100),
	profile VARCHAR2(100), -- 프로필 이미지 경로를 저장할 칼럼
	saveFileName VARCHAR2(200), -- 프로필 이미지 실제 이름을 저장할 칼럼
	regdate DATE
);
