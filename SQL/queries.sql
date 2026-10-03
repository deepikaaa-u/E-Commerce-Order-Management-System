SHOW TABLES;


-- Customer & Product
SELECT * FROM Customer;
SELECT * FROM Product;



-- Customer + Address JOIN
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.city,
    a.state,
    a.address_type
FROM Customer c
JOIN Address a
ON c.customer_id = a.customer_id;




-- Orders + Products JOIN
SELECT
    o.order_id,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    oi.quantity * oi.unit_price AS subtotal
FROM Orders o
JOIN Order_Item oi
ON o.order_id = oi.order_id
JOIN Product p
ON oi.product_id = p.product_id;




-- Aggregate Function
SELECT
    order_id,
    SUM(quantity * unit_price) AS total_amount
FROM Order_Item
GROUP BY order_id;




-- CRUD Operations
-- create
INSERT INTO Customer
(first_name, last_name, email)
VALUES
('Rahul', 'Kumar', 'rahul@mail.com');


-- read
SELECT * FROM Customer
WHERE email = 'rahul@mail.com';



-- update
UPDATE Customer
SET last_name = 'Sharma'
WHERE email = 'rahul@mail.com';
-- check updated data
SELECT * FROM Customer
WHERE email = 'rahul@mail.com';




-- delete
DELETE FROM Customer
WHERE email = 'rahul@mail.com';
-- Check whether the data was deleted
SELECT * FROM Customer
WHERE email = 'rahul@mail.com';
