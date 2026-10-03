INSERT INTO Customer
(first_name, last_name, email, registration_date)
VALUES
('Anita', 'Patel', 'anita@mail.com', '2023-01-15'),
('Ramesh', 'Nair', 'ramesh@mail.com', '2023-03-22'),
('Divya', 'Singh', 'divya@mail.com', '2023-05-10'),
('Arjun', 'Rao', 'arjun@mail.com', '2023-07-18'),
('Sneha', 'Sharma', 'sneha@mail.com', '2023-09-05'),
('Rahul', 'Kumar', 'rahul@mail.com', '2024-01-12'),
('Priya', 'Reddy', 'priya@mail.com', '2024-03-20'),
('Kiran', 'Das', 'kiran@mail.com', '2024-05-14'),
('Meena', 'Iyer', 'meena@mail.com', '2024-07-08'),
('Vikram', 'Joshi', 'vikram@mail.com', '2024-09-25');


INSERT INTO Address
(customer_id, street, city, state, pincode, address_type)
VALUES
(1, '12 MG Road', 'Hyderabad', 'Telangana', '500001', 'Home'),
(2, '45 Anna Salai', 'Chennai', 'Tamil Nadu', '600002', 'Home'),
(3, '9 Park Street', 'Kolkata', 'West Bengal', '700016', 'Home'),
(4, '22 Beach Road', 'Visakhapatnam', 'Andhra Pradesh', '530001', 'Home'),
(5, '18 Gandhi Nagar', 'Vijayawada', 'Andhra Pradesh', '520010', 'Home'),
(6, '33 FC Road', 'Pune', 'Maharashtra', '411004', 'Home'),
(7, '7 Banjara Hills', 'Hyderabad', 'Telangana', '500034', 'Office'),
(8, '15 MG Road', 'Bengaluru', 'Karnataka', '560001', 'Home'),
(9, '28 Marine Drive', 'Mumbai', 'Maharashtra', '400020', 'Home'),
(10, '6 Civil Lines', 'Delhi', 'Delhi', '110054', 'Home');

INSERT INTO Category
(category_name, parent_category_id)
VALUES
('Electronics', NULL),
('Apparel', NULL),
('Mobile Phones', 1),
('Laptops', 1),
('Headphones', 1),
('Men Clothing', 2),
('Women Clothing', 2),
('Footwear', 2),
('Accessories', 2),
('Smart Watches', 1);


INSERT INTO Product
(product_name, description, price, stock_quantity, category_id)
VALUES
('Samsung Galaxy S24', 'Latest Samsung smartphone', 65000.00, 50, 3),
('iPhone 15', 'Apple smartphone', 70000.00, 40, 3),
('HP Pavilion Laptop', 'HP performance laptop', 55000.00, 30, 4),
('Dell Inspiron', 'Dell everyday laptop', 60000.00, 25, 4),
('Sony Headphones', 'Wireless noise cancelling headphones', 8999.00, 60, 5),
('Mens Cotton Shirt', 'Comfortable cotton shirt', 999.00, 100, 6),
('Womens Kurti', 'Traditional cotton kurti', 1299.00, 80, 7),
('Running Shoes', 'Lightweight sports shoes', 2499.00, 70, 8),
('Leather Wallet', 'Premium leather wallet', 799.00, 90, 9),
('Apple Watch', 'Smart watch with fitness features', 39999.00, 35, 10);


INSERT INTO Orders
(customer_id, address_id, order_date, order_status)
VALUES
(1, 1, '2024-08-01', 'Delivered'),
(2, 2, '2024-08-05', 'Shipped'),
(3, 3, '2024-08-10', 'Pending'),
(4, 4, '2024-08-15', 'Delivered'),
(5, 5, '2024-08-20', 'Shipped'),
(6, 6, '2024-08-25', 'Pending'),
(7, 7, '2024-09-01', 'Delivered'),
(8, 8, '2024-09-05', 'Shipped'),
(9, 9, '2024-09-10', 'Pending'),
(10, 10, '2024-09-15', 'Delivered');



INSERT INTO Order_Item
(order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 65000.00),
(2, 2, 1, 70000.00),
(3, 3, 1, 55000.00),
(4, 4, 1, 60000.00),
(5, 5, 2, 8999.00),
(6, 6, 3, 999.00),
(7, 7, 2, 1299.00),
(8, 8, 1, 2499.00),
(9, 9, 2, 799.00),
(10, 10, 1, 39999.00);


INSERT INTO Payment
(order_id, payment_date, amount, method, status, transaction_id)
VALUES
(1, '2024-08-01', 65000.00, 'Card', 'Success', 'TXN10001'),
(2, '2024-08-05', 70000.00, 'UPI', 'Success', 'TXN10002'),
(3, '2024-08-10', 55000.00, 'COD', 'Pending', 'TXN10003'),
(4, '2024-08-15', 60000.00, 'Card', 'Success', 'TXN10004'),
(5, '2024-08-20', 17998.00, 'UPI', 'Success', 'TXN10005'),
(6, '2024-08-25', 2997.00, 'COD', 'Pending', 'TXN10006'),
(7, '2024-09-01', 2598.00, 'Card', 'Success', 'TXN10007'),
(8, '2024-09-05', 2499.00, 'UPI', 'Success', 'TXN10008'),
(9, '2024-09-10', 1598.00, 'COD', 'Pending', 'TXN10009'),
(10, '2024-09-15', 39999.00, 'Card', 'Success', 'TXN10010');
