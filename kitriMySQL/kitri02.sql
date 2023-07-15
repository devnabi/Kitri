DROP TABLE Persons;

CREATE TABLE Persons (
	personID TINYINT,
    lastName char(5),
    firstName char(3),
    birth DATE,
    city varchar(10)
);

SELECT * FROM persons;

INSERT INTO persons VALUES (127, 'Harry', 'Pot', '2023-07-11', 'Seoul');
INSERT INTO persons VALUES (-128, 'Carry', 'pot','2023-07-11', 'Seoul');
INSERT INTO persons VALUES (100, 'Sarry', 'pot','2023.07.11', 'Seoul'); -- 예전 방식을 사용하여 경고 표시 --
INSERT INTO persons VALUES (-128, 'Warry', 'pot','20230711', 'Seoul');
INSERT INTO persons VALUES (-128, 'Zarry', 'pot','2023/07/11', 'Seoul'); -- 경고 표시 --

-- 변수 --
SET @Ang = 10;
SET @Ang2 = 20;

SELECT @Ang;
SELECT @Ang2;
SELECT @Ang3;

SET @Ang3 = @Ang + @Ang2;

-- 리터럴 = 표기법 --
SET @countryName = '나라 이름';
SELECT @countryName;
SELECT @countryName, country FROM customers;

-- 실수 -> 정수 --
	-- 1.75 -> 1
-- 정수 -> 실수 --
	-- 2 -> 2.0
    
SELECT * FROM products;

-- 형변환 --
SELECT AVG(price) AS '제품들의 평균 가격' FROM products;

-- CAST는 AS --
SELECT CAST( AVG(price) AS UNSIGNED INTEGER )
	AS '제품들의 평균 가격' FROM products;

-- CONVERT는 , --
SELECT CONVERT( AVG(price), UNSIGNED INTEGER )
	AS '제품들의 평균 가격' FROM products;
    
SELECT CAST( AVG(price) AS SIGNED INTEGER )
	AS '제품들의 평균 가격' FROM products;

SELECT CAST( AVG(price) AS CHAR )
	AS '제품들의 평균 가격' FROM products; -- 문자 --
    
SELECT CONCAT('100', '200');
SELECT CONCAT('Hello', ' World!');
SELECT CONCAT(100, '200'); -- 숫자 + 문자 / 암시적(자동) 형변환 : 100200 --
	SELECT CONCAT(100, '200');
SELECT 180 > 170; -- true : 1 --
SELECT 180 < 170; -- false : 0 --
SELECT 180 > '170'; -- '170'을 정수로 형변환 해줘서 true : 1 --
SELECT 180 > '170_Hello'; --  '170_Hello' 을 정수로 형변환 / 말이 되지 않지만 언어마다 처리하는 것이 다르다. SQL에서는 true : 1 --

SELECT CAST('170_Hello' AS UNSIGNED INTEGER); -- 170 --
SELECT CAST('Hello_170' AS UNSIGNED INTEGER); -- false : 0 --

-- 내장 함수 --
SELECT IF(100 > 200, 'True', 'False'); -- 파라미터 --
SELECT ifnull('Hello', 'Hello World!'); -- Hello --
SELECT ifnull(Null, 'Hello World!'); -- Hello World! --

SELECT CASE (2 + 3)
		WHEN 4 THEN '오답'
        WHEN 5 THEN '정답'
        WHEN 6 THEN '오답'
        ELSE '몰라요'
	END AS '정답입니까?';

-- 찾고 싶은 것 정해서 찾기 --
SELECT FIELD('Three', 'One', 'Two', 'Three'); -- 3 --
SELECT FORMAT(150000.123456, 0); -- 150000 --
SELECT BIN(32), HEX(32), OCT(31); -- 10진수 / 16진수 / 8진수 --

-- 2진수 : 0, 1로 숫자표현 / 2진수 세기 : 0, 1, 10(2), 11(3), 100(4), 101(5), 110(6), 111(7), 1000(8) ... --
-- 10진수는 : 10가지의 숫자로 표현한다는 뜻이다. --

SELECT INSERT('I hate you', 3, 4, 'love'); -- 'I hte you'에서 3번째 자리(h)에서 4글자 'love'를 넣겠다는 뜻 --
SELECT LEFT('www.naver.com', 7); -- 7번째까지 --

SELECT LOWER('I LOVE YOU');
SELECT UPPER('well done!');

SELECT LPAD('Why', 6, '?');
SELECT REPEAT('Hey!', 3);
SELECT  REPLACE(`I don't like you`, `don't like`,`love`);
SELECT  SUBSTRING('You are a good student', 11, 20);
SELECT  CEILING(7.7), FLOOR(7.7), ROUND(7.49);
SELECT MOD(157, 10), 157 % 10, 157 MOD 10;
SELECT POW(2, 3), SQRT(9);

SELECT DATE(NOW()); -- 현재 날짜 --
SELECT NOW(); -- 현재 날짜와 시간 --
SELECT LAST_DAY('2024-02-01'); -- 2월의 마지막 날 : 2024-02-29 --
SELECT QUARTER('2023-07-11'); -- 분기 --

SELECT VERSION();


