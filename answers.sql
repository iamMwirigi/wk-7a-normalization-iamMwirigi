-- question 1
SELECT 
    OrderID,
    CustomerName,
    TRIM(value) AS Product
FROM 
    ProductDetail,
    LATERAL STRING_SPLIT(Products, ',');

-- question 2
-- 1. Create the Orders table:
SELECT DISTINCT 
    OrderID, 
    CustomerName
FROM 
    OrderDetails;
-- 2. Create the OrderItems table:
SELECT 
    OrderID, 
    Product, 
    Quantity
FROM 
    OrderDetails;
