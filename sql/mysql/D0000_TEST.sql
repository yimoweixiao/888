-- DEMO表
DROP TABLE IF EXISTS DEMO_TABLE;
CREATE TABLE DEMO_TABLE(
	ID	VARCHAR(32) NOT NULL,
	NAME VARCHAR(50) UNIQUE,
	NOTE VARCHAR(200),
	PRIMARY KEY(ID)
);

INSERT INTO DEMO_TABLE(ID, NAME)
VALUES(1001, '测试一');

INSERT INTO DEMO_TABLE(ID, NAME)
VALUES(1002, '测试二');

INSERT INTO DEMO_TABLE(ID, NAME)
VALUES(1003, '测试三');
