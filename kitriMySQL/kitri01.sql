USE w3schools;
SELECT * FROM customers;
SELECT Country FROM customers;
-- row = recode --

SELECT * FROM orders;
SELECT * FROM order_details;

-- WHERE --
SELECT * FROM customers;
SELECT * FROM customers WHERE country = 'germany';
SELECT * FROM customers WHERE country = 'UK';
SELECT * FROM customers WHERE customerID <= 10;

SELECT * FROM products WHERE price = 21;
SELECT * FROM products WHERE price > 20;
SELECT * FROM products WHERE price < 20;
SELECT * FROM products WHERE price >= 15;
SELECT * FROM products WHERE price <= 15;

SELECT * FROM customers WHERE country != 'france'; -- <>도 가능 --

SELECT * FROM customers WHERE country = 'germany' AND city = 'berlin';
SELECT * FROM customers WHERE country = 'spain' OR country = 'france';
SELECT * FROM customers WHERE country = ('spain' OR 'france'); -- true라고 인식하기때문에 91개가 다 나온다. --
SELECT * FROM customers WHERE NOT country = 'france';

SELECT * FROM products WHERE price BETWEEN 10 AND 20;
SELECT * FROM customers WHERE city LIKE 's%'; -- s로 작하는 것 아무거나 --
SELECT * FROM customers WHERE city LIKE 's______'; -- 7글자 나오도록 --
SELECT * FROM customers WHERE country  IN ('frace', 'brazil', 'spain'); -- France, Brazil, Spain 중 하나인 Customer --
SELECT * FROM employees;
SELECT * FROM employees WHERE Notes LIKE '%BTS%'; -- Notes에 BTS가 포함된 Employee --

SELECT country FROM customers ORDER BY country; -- 오름차순 --
SELECT * FROM customers ORDER BY country DESC; -- 디센딩 내림차순(역순) --
DESC customers; -- DESCIBE와 다르다. --
SELECT * FROM customers ORDER BY country, city; -- country를 먼저 정렬하고 city --

SELECT * FROM order_details; -- 실무에서는 중간 테이블로 상세하게 표현해준다. --
SELECT * FROM products; -- productName 존재 --

SELECT productID FROM order_details WHERE Quantity = 10;
-- 내가 해본 것 (실패)--
-- SELECT porductName ,(SELECT productID FROM order_details WHERE Quantity = 10) FROM products WHERE productName;--

-- ANY --
SELECT productName
FROM products
WHERE productID = ANY
(
	SELECT productID
	FROM order_details
	WHERE Quantity = 10
);

-- IN --
SELECT productName
FROM products
WHERE productID IN
(
	SELECT productID
	FROM order_details
	WHERE (Quantity = 10)
);

-- ‘Wolski’ 라는 고객이 주문한 제품들(ProductName)을 조회하세요. --
SELECT * FROM customers; -- 고객 --
SELECT * FROM products; -- 상품 --
SELECT * FROM orders; -- 주문 --
SELECT * FROM order_details; -- 주문 상세 --
SELECT * FROM shippers;
SELECT * FROM suppliers; -- 공급자 --

SELECT productName FROM products
	WHERE productID = ANY (
	SELECT productID FROM order_details
	WHERE orderID = (
		SELECT orderID FROM orders
		WHERE customerID =
		(
			SELECT customerID FROM customers 
			WHERE customerName = 'Wolski')
		) 
	);
    
-- DISTNCT : 중복값 제거--
SELECT country FROM customers;
SELECT DISTINCT country FROM customers;
SELECT DISTINCT customerName FROM customers;

-- LIMIT : 레코드의 개수 제한--
SELECT country FROM customers LIMIT 10;
SELECT customerName, country FROM customers
ORDER BY country LIMIT 20; -- 국가 20개 오름차순 --

-- GROUP BY : 컬럼 묶기 , AS : 컬럼 별칭--
SELECT country AS '나라', COUNT(*) AS '고객 수' FROM customers
GROUP BY country;

-- 추가로, 고객수가 가장 많은 순서부터 나오도록 변경 --
SELECT country AS '나라', COUNT(*) AS '고객 수' FROM customers
GROUP BY country
HAVING COUNT(*) >= 5 -- HAVING은 WHERE와 같은 조건문이지만 집계함수를 쓸 때에 사용한다. 보통은 GROUP BY를 쓸 때 나온다. --
ORDER BY COUNT(*) DESC;

-- HAVING : WHERE와 같은 조건문이지만 집계함수를 쓸 때에 사용한다. 보통은 GROUP BY를 쓸 때 나온다. --
SELECT country AS '나라', COUNT(*) AS '고객 수' FROM customers
GROUP BY country
HAVING COUNT(*) >= 5 -- HAVING 써보기 --
ORDER BY COUNT(*) DESC;

-- INSERT INTO--
SELECT * FROM customers;
INSERT INTO customers VALUES (100, '이주희', '?', '서울 알마타길 6', 'Soul', '010812', 'Korea');

SELECT * FROM suppliers;

-- INSERT INTO SELECT~~ : Supplier 테이블 전체를 Customers에  data copy --
INSERT INTO customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country
FROM suppliers
WHERE SupplierID = 1;

-- UPDATE : 수정 --
UPDATE customers SET customerName = 'Ang' WHERE customerID = 3;

-- City명이 Frankfurt인 고객의 PostalCode를 11111로 수정 --
UPDATE customers SET PostalCode = 11111 WHERE City LIKE '%Frank%';
SELECT * FROM customers WHERE city LIKE '%Frank%'; -- 수정 확인 --

-- DELETE --
DELETE FROM customers WHERE city LIKE '%Frank%'; -- FK 제약 조건에 걸림 --

-- 해결방법 1
SET foreign_key_checks = 0; -- 0이 비활성화, 1이 활성화 / FK제약 조건에 넘어가지 않도록하는 세팅이다. 일시적이다. --
-- 해결방법 2
-- ON DELETE CASCADE; 검색해보기 --


SELECT * FROM orders WHERE customerID = 44; -- 44번을 조회 --
DELETE FROM orders WHERE customerID = 44; -- 삭제 시도 --

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM orders_details;

INSERT INTO customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country
FROM suppliers
WHERE SupplierID = 44;

USE example_db;
-- 트랜잭션 --
-- 모든 명령이 성공하면 commit(실제 반영) --
-- 하나라고 명령이 실패하면 rollback(반영하지 않음) --
START TRANSACTION;
SELECT * FROM member;
DELETE FROM member WHERE name = '이주희';
COMMIT; -- or ROLLBACK --

DROP TABLE lolUser;
DROP TABLE lolUser1;
DROP TABLE lolUser2;
DROP TABLE lolUser3;

-- 테이블 생성 해보기 --
CREATE TABLE lolUser (
userID varchar(45) NOT NULL,
userName char(10) NOT NULL,
userLevel tinyint NOT NULL,
 mainChampion char(15),
 PRIMARY KEY (userID));

-- 기존 테이블 복사하기 --
CREATE TABLE lolUser1 LIKE lolUser; -- 기존 테이블 전체 copy --
CREATE TABLE lolUser2 AS SELECT userID FROM lolUser; -- 기존테이블에서 userID만 copy --
CREATE TABLE lolUser3 SELECT * FROM lolUser; -- *으로 전체도 가능 --

SELECT * FROM lolUser;
SELECT * FROM lolUser1;
SELECT * FROM lolUser2;
SELECT * FROM lolUser3;

INSERT INTO lolUser VALUES('ljhee812', '카노죠', 50, '아리');
INSERT INTO lolUser VALUES('epikm', '카레시', '50', '티모');