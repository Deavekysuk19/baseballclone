-- ID : BASEBALL
-- PW : BSB
CREATE USER BASEBALL IDENTIFIED BY BSB;
GRANT CONNECT, RESOURCE TO BASEBALL;

--회원정보
CREATE TABLE MEMBERSHIP(
    USERNO NUMBER PRIMARY KEY,
    USERID VARCHAR2(30) NOT NULL,
    PASSWD VARCHAR2(100) NOT NULL,
    NAME VARCHAR2(30),
    PHONE VARCHAR2(13),
    EMAIL VARCHAR2(30),
    ADDRESS VARCHAR2(500),
    AGE NUMBER,
    GENDER CHAR(1) CHECK(GENDER IN ('M','F'))
);

--응원 게시판
CREATE TABLE CHEER_BOARD(
    BNO NUMBER PRIMARY KEY,
    BTITLE VARCHAR2(500),
    BTEAMNAME VARCHAR2(50),
    BCONTENT VARCHAR2(3000),
    BWRITER VARCHAR2(30),
    BCOUNT NUMBER,
    BDATE DATE DEFAULT SYSDATE,
    BOARDFILE VARCHAR2(300)    
);

ALTER TABLE CHEER_BOARD ADD FOREIGN KEY (USERNO) REFERENCES MEMBERSHIP(USERNO);

--응원 게시판 댓글
CREATE TABLE CHEER_BOARD_TAG(
    BCNO NUMBER PRIMARY KEY,
    USERNO NUMBER NOT NULL,
    BCCONTENT VARCHAR2(3000),
    BCWRITER VARCHAR2(30),
    BCDATE DATE,
    BCLEVEL NUMBER,
    REFBCNO NUMBER
);

ALTER TABLE CHEER_BOARD_TAG ADD FOREIGN KEY (USERNO) REFERENCES MEMBERSHIP(USERNO);

--Q&A 게시판
CREATE TABLE QA_BOARD(
    QNO NUMBER PRIMARY KEY,
    QTITLE VARCHAR2(500),
    QCONTENT VARCHAR2(3000),
    QWRITER VARCHAR2(30),
    QCOUNT NUMBER,
    QDATE DATE DEFAULT SYSDATE
);

ALTER TABLE QA_BOARD ADD FOREIGN KEY (USERNO) REFERENCES MEMBERSHIP(USERNO);

--Q&A 게시판 댓글
CREATE TABLE QA_BOARD_TAG(
    QCNO NUMBER PRIMARY KEY,
    USERNO NUMBER NOT NULL,
    QCCONTENT VARCHAR2(3000),
    QCWRITER VARCHAR2(30),
    QCDATE DATE,
    QCLEVEL NUMBER,
    REFQCNO NUMBER
);

ALTER TABLE QA_BOARD_TAG ADD FOREIGN KEY (USERNO) REFERENCES MEMBERSHIP(USERNO);

--리뷰 게시판
CREATE TABLE REVIEW_BOARD(
    RNO NUMBER PRIMARY KEY,
    SNO VARCHAR2(15) NOT NULL,
    RTITLE VARCHAR2(500),
    RCONTENT VARCHAR2(3000),
    RWRITER VARCHAR2(30),
    RCOUNT NUMBER,
    RDATE DATE  DEFAULT SYSDATE,
    RTEAMNAME VARCHAR2(30),
    REVIEWFILE VARCHAR2(40)
);

-- DROP TABLE REVIEW_BOARD;


--리뷰 게시판 댓글
CREATE TABLE REVIEW_BOARD_TAG(
    RCNO NUMBER PRIMARY KEY,
    USERNO NUMBER NOT NULL,
    RCCONTENT VARCHAR2(3000),
    RCWRITER VARCHAR2(30),
    RCDATE DATE,
    RCLEVEL NUMBER,
    REFRCNO NUMBER
);

ALTER TABLE REVIEW_BOARD_TAG ADD FOREIGN KEY (USERNO) REFERENCES MEMBERSHIP(USERNO);

--첨부
CREATE TABLE ATTACHMENT(
    FNO NUMBER PRIMARY KEY,
    RNO NUMBER NOT NULL ,
    ORIGINNAME VARCHAR2(100),
    FILEPATH VARCHAR2(500),
    FLEVEL NUMBER,
    UPLOADDATE DATE DEFAULT SYSDATE
);

ALTER TABLE ATTACHMENT ADD FOREIGN KEY (RNO) REFERENCES REVIEW_BOARD(RNO);
ALTER TABLE ATTACHMENT ADD FOREIGN KEY (USERNO) REFERENCES MEMBERSHIP(USERNO);


--예매 페이지
CREATE TABLE RESERVATION_PAGE(
    TICKETNO NUMBER PRIMARY KEY,
    SEAT VARCHAR2(15) DEFAULT 'B11',
    USERNO NUMBER DEFAULT 0,
    DAY VARCHAR2(50),
    STADIUMID NUMBER DEFAULT 1,
    PRICE NUMBER,
    SOLDOUT VARCHAR2(10) DEFAULT 'N',
    STADIUM VARCHAR2(90) DEFAULT 'ANIMALSTADIUM'
);


--일정
CREATE TABLE SCHEDULE(
    DAY DATE NOT NULL UNIQUE,
    STADIUMID NUMBER PRIMARY KEY,
    HOMETEAM VARCHAR2(100),
    AWAYTEAM VARCHAR2(100),    
    HOMESCORE NUMBER,
    AWAYSCORE NUMBER,
    STADIUM VARCHAR2(100)
);

--공지사항
CREATE TABLE ANNOUNCEMENT(
    NNO NUMBER PRIMARY KEY,
    NTITLE VARCHAR2(500),
    NCONTENT VARCHAR2(3000),
    NWRITER VARCHAR2(30),
    NCOUNT NUMBER,
    NDATE DATE DEFAULT SYSDATE
);

--SELECT * 
--FROM (SELECT  NO.*  
--        FROM(SELECT ROWNUM RNUM, N.*  
--                FROM (SELECT * FROM ANNOUNCEMENT  
--                        ORDER BY NNO DESC) N  
--                        WHERE ROWNUM <= 30) NO 
--                WHERE RNUM >= 1)
--WHERE NWRITER LIKE '%' || 'd' || '%';

--SELECT * 
--FROM (SELECT  NO.*  
--        FROM(SELECT ROWNUM RNUM, N.*  
--                FROM (SELECT * FROM ANNOUNCEMENT  
--                        ORDER BY NNO DESC) N  
--                        WHERE ROWNUM <= ?) NO 
--                WHERE RNUM >= ?)
--WHERE NWRITER LIKE '%' || ? || '%';

--SELECT *  
--									FROM (SELECT  NO.*  
--													FROM(SELECT ROWNUM RNUM, N.* 
--																FROM (SELECT * FROM ANNOUNCEMENT 
--																			ORDER BY NNO DESC) N  
--																			WHERE ROWNUM <= 33) NO  
--																WHERE RNUM >= 1)  
--									WHERE NTITLE LIKE '%' || 1 || '%';
                                    
/*                                    
SELECT  NO.*  
FROM(SELECT ROWNUM RNUM, N.* 
            FROM (SELECT * FROM ANNOUNCEMENT 
                        ORDER BY NNO DESC) N  
            WHERE ROWNUM <= 31) NO  
WHERE RNUM >= 1 and NTITLE LIKE '%' || 1 || '%';
*/

/*
SELECT COUNT(*)  
FROM(SELECT ROWNUM RNUM, N.* 
FROM (SELECT * FROM ANNOUNCEMENT 
WHERE NTITLE LIKE '%' || 0 || '%' 
ORDER BY NNO DESC) N
WHERE ROWNUM <= 40) NO
WHERE RNUM >= 1;                
*/

ALTER TABLE RESERVATION_PAGE MODIFY(SOLDOUT VARCHAR2(10));


CREATE SEQUENCE SEQ_RNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE SEQ_FNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE SEQ_QNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE SEQ_SNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE SEQ_UNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE SEQ_BNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE SEQ_NNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

CREATE SEQUENCE SEQ_TICKETNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;


CREATE OR REPLACE PROCEDURE TEST_NOTICE_DATA
AS
BEGIN
  FOR CNT IN 1..150 LOOP
        INSERT INTO ANNOUNCEMENT VALUES(SEQ_NNO.NEXTVAL,
                                        'TEST-SAMPLE ' || SEQ_NNO.CURRVAL,
                                        'TEST 게시글 입니다. - ' || SEQ_NNO.CURRVAL,
                                        'admin', 0,
                                        TO_DATE('19/01/01') + SEQ_NNO.CURRVAL);
  END LOOP;
  COMMIT;
END;
/

EXEC TEST_NOTICE_DATA;

COMMIT;

CREATE OR REPLACE PROCEDURE TEST_BOARD_DATA
AS
BEGIN
  FOR CNT IN 1..150 LOOP
        INSERT INTO CHEER_BOARD VALUES(SEQ_BNO.NEXTVAL,
                                        'TEST-SAMPLE ' || SEQ_BNO.CURRVAL,
                                        'SK 와이번스',
                                        'TEST 게시글 입니다. - ' || SEQ_BNO.CURRVAL,
                                        'admin', 0,
                                        TO_DATE('19/01/01') + SEQ_BNO.CURRVAL, DEFAULT);
  END LOOP;
  COMMIT;
END;
/

EXEC TEST_BOARD_DATA;

COMMIT;


CREATE OR REPLACE PROCEDURE TEST_QA_BOARD_DATA
AS
BEGIN
  FOR CNT IN 1..150 LOOP
        INSERT INTO QA_BOARD VALUES(SEQ_QNO.NEXTVAL,
                                        'TEST-SAMPLE ' || SEQ_QNO.CURRVAL,
                                        'TEST 게시글 입니다. - ' || SEQ_QNO.CURRVAL,
                                        'admin', 0,
                                        TO_DATE('19/01/01') + SEQ_QNO.CURRVAL);
  END LOOP;
  COMMIT;
END;
/

EXEC TEST_QA_BOARD_DATA;

COMMIT;

/*
DROP TABLE MEMBERSHIP;
DROP TABLE CHEER_BOARD;
DROP TABLE CHEER_BOARD_TAG;
DROP TABLE QA_BOARD;
DROP TABLE QA_BOARD_TAG;
DROP TABLE REVIEW_BOARD;
DROP TABLE REVIEW_BOARD_TAG;
DROP TABLE ATTACHMENT;
DROP TABLE RESERVATION_PAGE;
DROP TABLE SCHEDULE;
DROP TABLE ANNOUNCEMENT;
*/