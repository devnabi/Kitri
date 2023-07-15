DROP TABLE member1;
-- 자동으로 생성되는 인덱스 (PK, UNIQUE) --
CREATE TABLE member1 (
	memberID INT PRIMARY KEY,
    rrn INT UNIQUE,
    name CHAR(10),
    gender CHAR(1)
);

SELECT * FROM member1;
SHOW INDEX FROM member1; -- INDEX를 설정해줬더니 알아서 정렬이 됐다. --
DESCRIBE member1;

ALTER TABLE member1 MODIFY rrn CHAR(15);

-- name을 PK or UNIQUQU NOT NULL --
ALTER TABLE member1 DROP PRIMARY KEY;
ALTER TABLE member1
	CHANGE COLUMN `name` `name` CHAR(10) UNIQUE NOT NULL;

-- 클러스터드 인덱스 기준으로 정렬이 된다. --
-- 인덱스를 구성하는 자료구조 'B-tree'라고 한다. --
-- 데이터를 어떤 구조로 저장을 하느냐가 자료구조다. --
