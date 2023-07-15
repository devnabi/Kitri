CREATE DATABASE fulltextdb;
USE fulltextdb;

DROP TABLE full_text;

CREATE TABLE full_text (
	id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(15) NOT NULL,
    description VARCHAR(1000)
);

INSERT INTO full_text VALUES
  (NULL, '광해, 왕이 된 남자','왕위를 둘러싼 권력 다툼과 당쟁으로 혼란이 극에 달한 광해군 8년'),
  (NULL, '간첩','남한 내에 고장간첩 5만 명이 암약하고 있으며 특히 권력 핵심부에도 침투해있다.'),
  (NULL, '피에타',' 더 나쁜 남자가 온다! 잔혹한 방법으로 돈을 뜯어내는 악마같은 남자 스토리.'),
  (NULL, '레지던트 이블 5','인류 구원의 마지막 퍼즐, 이 여자가 모든 것을 끝낸다.'),
  (NULL, '파괴자들','사랑은 모든 것을 파괴한다! 한 여자를 구하기 위한, 두 남자의 잔인한 액션 본능!'),
  (NULL, '킹콩을 들다',' 역도에 목숨을 건 시골소녀들이 만드는 기적 같은 신화.'),
  (NULL, '테드','지상최대 황금찾기 프로젝트! 500년 전 사라진 황금도시를 찾아라!'),
  (NULL, '타이타닉','비극 속에 침몰한 세기의 사랑, 스크린에 되살아날 영원한 감동'),
  (NULL, '8월의 크리스마스','시한부 인생 사진사와 여자 주차 단속원과의 미묘한 사랑'),
  (NULL, '늑대와 춤을','늑대와 친해져 모닥불 아래서 함께 춤을 추는 전쟁 영웅 이야기'),
  (NULL, '국가대표','동계올림픽 유치를 위해 정식 종목인 스키점프 국가대표팀이 급조된다.'),
  (NULL, '쇼생크 탈출','그는 누명을 쓰고 쇼생크 감옥에 감금된다. 그리고 역사적인 탈출.'),
  (NULL, '인생은 아름다워','귀도는 삼촌의 호텔에서 웨이터로 일하면서 또 다시 도라를 만난다.'),
  (NULL, '사운드 오브 뮤직','수녀 지망생 마리아는 명문 트랩가의 가정교사로 들어간다'),
  (NULL, '매트릭스',' 2199년.인공 두뇌를 가진 컴퓨터가 지배하는 세계.');
  
SELECT * FROM full_text;
  
SELECT * FROM full_text WHERE description LIKE '%남자%' OR title LIKE '%남자%';
-- 전체 텍스트 생성 --
CREATE FULLTEXT INDEX idx_description ON full_text(description);
SHOW INDEX FROM full_text;

SELECT * FROM full_text WHERE description LIKE '%남자%';

SELECT * FROM full_text
WHERE MATCH(description) AGAINST('남자*' IN BOOLEAN MODE); -- +, -, * --

SELECT * FROM full_text
WHERE MATCH(description) AGAINST('여자*' IN BOOLEAN MODE);

SELECT * FROM full_text
WHERE MATCH(description) AGAINST('+남자 + 여자*' IN BOOLEAN MODE); -- AND연산자와 같다고 보면 된다. (필수) --

SELECT * FROM full_text
WHERE MATCH(description) AGAINST('+남자* -여자*' IN BOOLEAN MODE);

SET GLOBAL innodb_ft_aux_table = 'fulltextdb/full_text'; -- 글로벌 시스템변수 --
SELECT word, doc_count, doc_id, position
	FROM INFORMATION_SCHEMA.INNODB_FT_INDEX_TABLE;

-- 중지 단어 --
DROP INDEX idx_description ON full_text;

CREATE TABLE user_stopword(
	value VARCHAR(30)
);

SELECT * FROM user_stopword;

INSERT INTO user_stopword VALUES ('그는'), ('그리고'), ('극에');

SET GLOBAL innodb_ft_server_stopword_table = 'fulltextdb/user_stopword';
SHOW GLOBAL VARIABLES LIKE 'innodb_ft_server_stopword_table';

CREATE FULLTEXT INDEX idx_description ON full_text(description);
SHOW INDEX FROM full_text;

SELECT * FROM full_text
WHERE MATCH(description) AGAINST('500년*' IN BOOLEAN MODE);


create database if not exists partDB ;
use partDB ;

drop table if exists partTbl ;

create table partTbl (
  userID char(8) not null,
  name varchar(10) not null,
  birthYear INT not null, -- 생일날짜가 파티션 범위 대로 정렬된다.
  addr char(2) not null
)

partition by range(birthYear) ( -- 출생년도를 기준으로 분할한다.
  partition part1 values less than (1970), -- 1970년 이하
  partition part2 values less than (1978), -- 1971 ~ 1978
  partition part3 values less than MAXVALUE -- 1979 ~
) ;

insert into partTbl select userID, name, birthYear, addr from sqlDB.userTbl ;
-- 테이블 데이터 복사

SELECT * FROM partTbl;
SELECT * FROM partTbl WHERE birthYear <= 2000;

CREATE INDEX idx_birthYear ON partTbl(birthYear);
SHOW TABLE STATUS;

select table_schema, table_name, partition_name, partition_ordinal_position, table_rows
from information_schema.partitions
where table_name = 'partTbl' ;

EXPLAIN SELECT * FROM partTbl WHERE birthYear <= 1965;


