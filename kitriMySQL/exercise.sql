USE w3schools;

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM order_details;
SELECT * FROM shippers;
SELECT * FROM suppliers;


SELECT orderID FROM orders;
SELECT customerName FROM customers;

-- 실습1 : 주문별 고객명을 출력해보세요. --
SELECT orderID, customerName FROM orders
INNER JOIN customers
ON orders.customerID = customers.customerID;

-- 실습2 : EX1에서 SELECT 절에 ShipperName을 포함하여 추가적으로 조회해보세요. --
SELECT orderID, customerName, shipperName FROM orders
INNER JOIN customers
ON orders.customerID = customers.customerID
LEFT JOIN shippers
ON shippers.shipperID = orders.shipperID;

-- 기본부터 찾아봤다. --
SELECT shipperName FROM orders
INNER JOIN shippers
ON shippers.shipperID = orders.shipperID;

-- 실습3 : 주문별 고객명을 출력하되 LEFT JOIN으로 출력하세요. --
SELECT customerName, orderID FROM orders
LEFT JOIN customers
ON orders.customerID = customers.customerID;

-- 실습4 : customers와 orders 테이블을 CROSS JOIN 하세요. -- 
SELECT customerName, orderID FROM customers
CROSS JOIN orders;

-- 실습5 : city가 같은 두 쌍 고객들의 가지 수를 나열하세요. --
-- City가 같은 고객을 출력하는 것을 먼저 해보자. (중복 데이터 추출) --
SELECT city, COUNT(city) FROM customers
GROUP BY city
HAVING COUNT(city) > 1;

-- 실습6 : 제품 가지 수를 가장 많이 공급하는 업체를 1위부터 5위까지 나열해보세요. --
-- 공급자 : suppliers, 운송업체 : shippers --
SELECT * FROM products;
SELECT * FROM suppliers;
SELECT * FROM shippers;

