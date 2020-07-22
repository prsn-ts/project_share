-- 사용자(회원) 정보를 저장할 테이블 
CREATE TABLE login(
	id VARCHAR2(100) PRIMARY KEY,
	pwd VARCHAR2(100) NOT NULL,
	email VARCHAR2(100),
	profile VARCHAR2(100), -- 프로필 이미지 경로를 저장할 칼럼
	saveFileName VARCHAR2(200), -- 프로필 이미지 실제 이름을 저장할 칼럼
	regdate DATE
);


CREATE TABLE bbs_cafe (
    num NUMBER PRIMARY KEY, -- 글 번호
    title VARCHAR2(100) NOT NULL, -- 글 제목
    writer VARCHAR2(100) NOT NULL,
    content CLOB, --글 내용
    viewCount NUMBER
    regdate DATE -- 작성일  
);

CREATE SEQUENCE bbs_cafe_seq;  -- bbs 테이블의 num에서 사용할 시퀀스

