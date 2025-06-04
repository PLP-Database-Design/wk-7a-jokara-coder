-- USE school;

-- INSERT INTO productdetail (OrderID, CustomerName, Products)
-- VALUES
-- (101, 'John Doe', 'Laptop, Mouse'),
-- (102, 'Jane Smith', 'Tablet, Keyboard, Mouse'),
-- (103, 'Emily Clark', 'Phone');

-- WITH RECURSIVE split_products AS (
--     SELECT
--         OrderID,
--         CustomerName,
--         SUBSTRING_INDEX(Products, ',', 1) AS Product,
--         SUBSTRING(Products, LENGTH(SUBSTRING_INDEX(Products, ',', 1)) + 2) AS Remaining
--     FROM ProductDetail
--     UNION ALL
--     SELECT
--         OrderID,
--         CustomerName,
--         SUBSTRING_INDEX(Remaining, ',', 1),
--         SUBSTRING(Remaining, LENGTH(SUBSTRING_INDEX(Remaining, ',', 1)) + 2)
--     FROM split_products
--     WHERE Remaining != ''
-- )
-- SELECT OrderID, CustomerName, TRIM(Product) AS Product
-- FROM split_products
-- ORDER BY OrderID;

-- CREATE TABLE OrderDetails (
-- OrderID INT PRIMARY KEY AUTO_INCREMENT,
-- CustomerName VARCHAR(100),
-- Product VARCHAR(100),
-- Quantity INT(50)
-- );orderdetails

-- CREATE TABLE Orders (
--     OrderID INT PRIMARY KEY,
--     CustomerName VARCHAR(100)
-- );

-- INSERT INTO Orders (OrderID, CustomerName)
-- SELECT DISTINCT OrderID, CustomerName
-- FROM OrderDetails;


-- CREATE TABLE OrderItems (
--     OrderID INT,
--     Product VARCHAR(100),
--     Quantity INT,
--     PRIMARY KEY (OrderID, Product),
--     FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
-- );

-- INSERT INTO OrderItems (OrderID, Product, Quantity)
-- SELECT OrderID, Product, Quantity
-- FROM OrderDetails;


