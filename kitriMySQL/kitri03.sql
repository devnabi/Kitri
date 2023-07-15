SELECT * FROM orders;
SELECT * FROM order_details;

SELECT * FROM orders AS o1
INNER JOIN order_details AS o2
ON o1.orderID = o2.orderID
WHERE o1.orderID = 10248;

SELECT * FROM orders AS o1
LEFT JOIN order_details AS o2
ON o1.orderID = o2.orderID;

SELECT * FROM orders AS o1
CROSS JOIN order_details AS o2;

-- UNION --
SELECT city FROM customers
UNION ALL
SELECT city FROM suppliers
ORDER BY city;

-- 뷰 생성 1--
CREATE VIEW brazil_customers AS
SELECT customerName, contactName, city, country FROM customers
WHERE country = 'Brazil'
WITH CHECK OPTION; -- 뷰가 변경되면 테이블도 변경, 아무런 작업이 없다면 테이블도 없다. --

-- 뷰 생성 2--
CREATE VIEW products_above_avg AS
SELECT productName, price FROM products
WHERE Price > (SELECT AVG(Price) FROM Products);

-- 뷰 조회 --
SELECT * FROM brazil_customers;
SELECT * FROM products_above_avg;

-- 뷰 삭제 --
DROP VIEW brazil_customers;
DROP VIEW products_above_avg;

-- 뷰 수정? --
SELECT * FROM customers;
INSERT INTO brazil_customers (customerName, contactName, city) VALUES('kitri', 'kotra', 'seoul'); -- 조건이 맞지 않아서 뷰에서는 보이지 않는다. country를 추가하면 보인다.--
INSERT INTO brazil_customers (customerName, contactName, city, country) VALUES('kitri', 'kotra', 'seoul','korea'); -- 'Brazil'이어야 뷰에 보인다. --
INSERT INTO products_above_avg (productName, price) VALUES('kitriProduct', 25000);

SELECT * FROM INFORMATION_SCHEMA.VIEWS;

