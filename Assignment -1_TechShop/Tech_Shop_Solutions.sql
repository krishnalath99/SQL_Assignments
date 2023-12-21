CREATE DATABASE TechShop;
USE [TechShop];

CREATE TABLE CUSTOMERS
(
CustomerID INT PRIMARY KEY,
FirstName VARCHAR(30),
LastName VARCHAR(30),
Email VARCHAR(50),
Phone CHAR(10) UNIQUE,
Address VARCHAR(50)
);

INSERT INTO [dbo].[CUSTOMERS] VALUES (101, 'Alex', 'Johnson', 'alex.carter@email.com', '555-1234', 'Rivertown');
INSERT INTO [dbo].[CUSTOMERS] VALUES (102, 'Jordan', 'Davis', 'jordan.anderson@email.com', '555-8765', 'Summitville');
INSERT INTO [dbo].[CUSTOMERS] VALUES (103, 'Morgan', 'Turner', 'morgan.r@email.com', '555-4321', 'Lakeside');
INSERT INTO [dbo].[CUSTOMERS] VALUES (104, 'Casey', 'Hayes', 'casey.t@email.com', '555-9876', 'Pineville');
INSERT INTO [dbo].[CUSTOMERS] VALUES (105, 'Riley', 'Martin', 'riley.p@email.com', '555-2345', 'Crestwood');
INSERT INTO [dbo].[CUSTOMERS] VALUES (106, 'Avery', 'Reed', 'avery.s@email.com', '555-6789', 'Brookside');
INSERT INTO [dbo].[CUSTOMERS] VALUES (107, 'Quinn ', 'Jackson', 'quinn.c@email.com', '555-3456', 'Ridgefield');
INSERT INTO [dbo].[CUSTOMERS] VALUES (108, 'Cameron', 'Fisher', 'cameron.w@email.com', '555-7890', 'Greenfield');
INSERT INTO [dbo].[CUSTOMERS] VALUES (109, 'Morgan', 'Robinson', 'morgan.b@email.com', '555-4567', 'Fairfield');
INSERT INTO [dbo].[CUSTOMERS] VALUES (110, 'Taylor', 'Walker', 'taylor.m@email.com', '555-5678', 'Harbor City');

SELECT * FROM [CUSTOMERS];

CREATE TABLE PRODUCTS
(
ProductID VARCHAR(10) PRIMARY KEY,
ProductName VARCHAR(30),
Description VARCHAR(150),
Price INT
);

INSERT INTO [dbo].[PRODUCTS] VALUES ('E001', 'Smart TV', '55-inch 4K Ultra HD Smart TV with HDR', 60499);
INSERT INTO [dbo].[PRODUCTS] VALUES ('E002', 'Laptop', '15.6-inch Full HD Laptop with Intel Core i7 processor', 89999);
INSERT INTO [dbo].[PRODUCTS] VALUES ('E003', 'Wireless Headphones', 'Over-ear Bluetooth headphones with noise cancellation', 10499);
INSERT INTO [dbo].[PRODUCTS] VALUES ('E004', 'Digital Camera', '24MP DSLR Camera with 18-55mm Lens Kit', 52999);
INSERT INTO [dbo].[PRODUCTS] VALUES ('E005', 'Smartwatch', 'Fitness tracker with heart rate monitor and GPS', 9999);
INSERT INTO [dbo].[PRODUCTS] VALUES ('E006', 'Gaming Console', 'Next-gen gaming console with 1TB storage', 36999);
INSERT INTO [dbo].[PRODUCTS] VALUES ('E007', 'Wireless Router', 'Dual-band gigabit router for high-speed internet', 5999);
INSERT INTO [dbo].[PRODUCTS] VALUES ('E008', 'Soundbar', '5.1 Surround Sound Soundbar with Subwoofer', 18499);
INSERT INTO [dbo].[PRODUCTS] VALUES ('E009', 'Fitness Tracker', 'Water-resistant fitness tracker with sleep monitoring', 3999);
INSERT INTO [dbo].[PRODUCTS] VALUES ('E010', 'Virtual Reality Headset', 'Immersive VR headset with motion tracking', 26999);

SELECT * FROM [PRODUCTS];

CREATE TABLE ORDERS
(
OrderID VARCHAR(10) PRIMARY KEY,
CustomerID INT,
FOREIGN KEY (CustomerID) REFERENCES [dbo].[CUSTOMERS]([CustomerID]) ON DELETE CASCADE,
OrderDate DATE,
TotalAmount INT
);

INSERT INTO [dbo].[ORDERS] VALUES ('TS0001', 107, '2023-11-15', 76999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0002', 103, '2023-10-28', 42499);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0003', 102, '2023-07-10', 15599);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0004', 105, '2023-04-05', 59999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0005', 108, '2023-12-22', 25499);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0006', 110, '2023-01-17', 32999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0007', 106, '2023-11-03', 8999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0008', 101, '2023-04-12', 12499);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0009', 104, '2023-01-28', 45999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0010', 109, '2023-06-09', 21999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0011', 104, '2023-11-15', 75999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0012', 107, '2023-10-28', 95499);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0013', 101, '2023-07-10', 43599);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0014', 103, '2023-04-05', 24999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0015', 102, '2023-12-22', 9999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0016', 101, '2023-01-17', 13999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0017', 109, '2023-11-03', 27999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0018', 103, '2023-04-12', 54999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0019', 106, '2023-01-28', 35999);
INSERT INTO [dbo].[ORDERS] VALUES ('TS0020', 110, '2023-06-09', 67999);

SELECT * FROM [ORDERS];

CREATE TABLE ORDER_DETAILS
(
OrderDetailID VARCHAR(10) PRIMARY KEY,
OrderID VARCHAR(10),
FOREIGN KEY (OrderID) REFERENCES [dbo].[ORDERS]([OrderID]) ON DELETE CASCADE,
ProductID VARCHAR(10),
FOREIGN KEY (ProductID) REFERENCES [dbo].[PRODUCTS]([ProductID]) ON DELETE CASCADE,
Quantity INT
);

INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD001', 'TS0002', 'E001', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD002', 'TS0004', 'E003', 2);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD003', 'TS0008', 'E005', 3);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD004', 'TS0006', 'E007', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD005', 'TS0012', 'E010', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD006', 'TS0016', 'E002', 2);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD007', 'TS0010', 'E008', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD008', 'TS0020', 'E006', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD009', 'TS0001', 'E004', 2);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD010', 'TS0007', 'E009', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD011', 'TS0018', 'E002', 3);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD012', 'TS0011', 'E010', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD013', 'TS0017', 'E003', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD014', 'TS0003', 'E005', 2);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD015', 'TS0005', 'E007', 2);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD016', 'TS0013', 'E009', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD017', 'TS0009', 'E001', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD018', 'TS0015', 'E004', 3);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD019', 'TS0019', 'E006', 1);
INSERT INTO [dbo].[ORDER_DETAILS] VALUES('OD020', 'TS0014', 'E008', 2);

SELECT * FROM [ORDER_DETAILS];

CREATE TABLE INVENTORY
(
InventoryID VARCHAR(10) PRIMARY KEY,
ProductID VARCHAR(10),
FOREIGN KEY (ProductID) REFERENCES [dbo].[PRODUCTS]([ProductID]) ON DELETE CASCADE,
QuantityInStock INT,
LastStockUpdate INT
);

INSERT INTO [dbo].[INVENTORY] VALUES ('INV01', 'E001', 5, 4);
INSERT INTO [dbo].[INVENTORY] VALUES ('INV02', 'E002', 3, 2);
INSERT INTO [dbo].[INVENTORY] VALUES ('INV03', 'E003', 8, 7);
INSERT INTO [dbo].[INVENTORY] VALUES ('INV04', 'E004', 5, 10);
INSERT INTO [dbo].[INVENTORY] VALUES ('INV05', 'E005', 20, 5);
INSERT INTO [dbo].[INVENTORY] VALUES ('INV06', 'E006', 2, 10);
INSERT INTO [dbo].[INVENTORY] VALUES ('INV07', 'E007', 25, 22);
INSERT INTO [dbo].[INVENTORY] VALUES ('INV08', 'E008', 4, 4);
INSERT INTO [dbo].[INVENTORY] VALUES ('INV09', 'E009', 10, 5);
INSERT INTO [dbo].[INVENTORY] VALUES ('INV10', 'E010', 20, 18);

SELECT * FROM [INVENTORY];

--BASIC QUERIES
--1. Write an SQL query to retrieve the names and emails of all customers.
SELECT CONCAT([FirstName], ' ', [LastName]) as NAMES, Email
FROM CUSTOMERS;

--2. Write an SQL query to list all orders with their order dates and corresponding customer names.
SELECT [OrderID], [OrderDate], CONCAT([FirstName], ' ', [LastName]) as NAMES
FROM ORDERS O, CUSTOMERS C
WHERE O.[CustomerID] = C.[CustomerID];

--3. Write an SQL query to insert a new customer record into the "Customers" table. Include customer information such as name, email, and address.
INSERT INTO [dbo].[CUSTOMERS] VALUES (111, 'Jim', 'Carey', 'JCarey.c@email.com', '555-9988', 'Brimhingam');

--4. Write an SQL query to update the prices of all electronic gadgets in the "Products" table by increasing them by 10%.
UPDATE [PRODUCTS] SET [Price] = [Price] + ([Price]*10/100);

--5. Write an SQL query to delete a specific order and its associated order details from the "Orders" and "OrderDetails" tables. Allow users to input the order ID as a parameter.
DELETE FROM [ORDERS] WHERE [OrderID] = 'TS0020';
--Since OrderID in ORDER_DETAILS table is the foreign key that references the OrderID in ORDERS table, deleting from a record from ORDERS table also deletes the corresonding record in ORDER_DETAILS table.

--6. Write an SQL query to insert a new order into the "Orders" table. Include the customer ID, order date, and any other necessary information.
INSERT INTO [dbo].[ORDERS] VALUES ('TS0020', 110, '2023-06-09', 67999);

--7. Write an SQL query to update the contact information (e.g., email and address) of a specific customer in the "Customers" table. Allow users to input the customer ID and new contact information.
DECLARE @cid INT;
SET @cid = 107;
DECLARE @email VARCHAR(50);
SET @email = 'jackson.q@email.com';
DECLARE @adres VARCHAR(50);
SET @adres = 'Princeland';
UPDATE [CUSTOMERS] SET [Email] = @email, [Address] = @adres WHERE [CustomerID] = @cid;

--8. Write an SQL query to recalculate and update the total cost of each order in the "Orders" table based on the prices and quantities in the "OrderDetails" table.
UPDATE [ORDERS] SET [TotalAmount] = (
SELECT SUM(od.[Quantity]*p.[Price])
FROM [ORDER_DETAILS] as od LEFT JOIN [PRODUCTS] as p 
ON od.[ProductID] = p.[ProductID] 
WHERE od.[OrderID] = [ORDERS].[OrderID]);

--9. Write an SQL query to delete all orders and their associated order details for a specific customer from the "Orders" and "OrderDetails" tables. Allow users to input the customer ID as a parameter.
DECLARE @custid INT = 107;
DELETE FROM [ORDER_DETAILS] WHERE [OrderID] IN (
SELECT [OrderID] FROM [ORDERS]
WHERE [CustomerID] = @custid);
DELETE FROM [ORDERS] WHERE [CustomerID] = @custid;

--10. Write an SQL query to insert a new electronic gadget product into the "Products" table, including product name, category, price, and any other relevant details.
INSERT INTO [PRODUCTS] VALUES ('E011', 'Harmony Bluetooth Speaker', 'Experience immersive sound with sleek design and long-lasting battery.', 5499);

--11. Write an SQL query to update the status of a specific order in the "Orders" table (e.g., from "Pending" to "Shipped"). Allow users to input the order ID and the new status.
ALTER TABLE [ORDERS] ADD OrderStatus VARCHAR(20) DEFAULT 'Pending';
UPDATE [ORDERS] SET [OrderStatus] = 'Pending' WHERE [OrderStatus] IS NULL;
DECLARE @oidup VARCHAR(10) = 'TS0007';
UPDATE [ORDERS] SET [OrderStatus] = 'Shipped' WHERE [OrderID] = @oidup;

--12. Write an SQL query to calculate and update the number of orders placed by each customer in the "Customers" table based on the data in the "Orders" table.
ALTER TABLE [CUSTOMERS] ADD NumberOfOrders INT;
UPDATE [CUSTOMERS] SET [NumberOfOrders] = (
SELECT COUNT(*) FROM [ORDERS]
WHERE [ORDERS].[CustomerID] = [CUSTOMERS].[CustomerID]
);

---------------------------------------------------------------------------------------------------------------------------------

--JOINS
--1. Write an SQL query to retrieve a list of all orders along with customer information (e.g., customer name) for each order.
SELECT c.[CustomerID], CONCAT(c.[FirstName], ' ', c.[LastName]) as NAMES, o.[OrderID], o.[TotalAmount], o.[OrderDate]
FROM [CUSTOMERS] c FULL OUTER JOIN [ORDERS] o
ON c.[CustomerID] = o.[CustomerID];

-- 2. Write an SQL query to find the total revenue generated by each electronic gadget product.Include the product name and the total revenue.
SELECT p.[ProductName], SUM(od.[Quantity]*p.[Price]) AS TotAlRevenue
FROM [PRODUCTS] p INNER JOIN [ORDER_DETAILS] od
ON p.[ProductID] = od.[ProductID]
GROUP BY p.[ProductName];

--3. Write an SQL query to list all customers who have made at least one purchase. Include their names and contact information.
SELECT CONCAT(c.[FirstName], ' ', c.[LastName]) as NAMES, c.[Phone], o.[OrderID]
FROM [CUSTOMERS] c LEFT JOIN [ORDERS] o
ON c.CustomerID = o.CustomerID
WHERE o.[OrderID] IS NOT NULL;

--4. Write an SQL query to find the most popular electronic gadget, which is the one with the highest total quantity ordered. Include the product name and the total quantity ordered.
SELECT TOP 1 WITH TIES p.[ProductName], SUM(od.[Quantity]) AS QuantityOrdered
FROM [PRODUCTS] p INNER JOIN [ORDER_DETAILS] od
ON p.[ProductID] = od.[ProductID]
GROUP BY p.[ProductName]
ORDER BY SUM(od.[Quantity]) DESC;

--5. Write an SQL query to retrieve a list of electronic gadgets along with their corresponding categories.
--I didn't create the Category column so i'll assume to have the category column in [ORDER] table
--and i'll write this query in comments.
-----------------
--SELECT p.[ProductName], o.[Category]
--FROM [ORDERS] o INNER JOIN [ORDER_DETAILS] od 
--ON o.[OrderID] = od.[OrderID] INNER JOIN [PRODUCTS] p
--ON p.[ProductID] = od.[ProductID]
-----------------

--6. Write an SQL query to calculate the average order value for each customer. Include the customer's name and their average order value.
SELECT c.[CustomerID], CONCAT(c.[FirstName], ' ', c.[LastName]) as NAMES, AVG(o.[TotalAmount]) AS AverageOrderValue
FROM [CUSTOMERS] c LEFT JOIN [ORDERS] o
ON c.[CustomerID] = o.[CustomerID]
WHERE o.[CustomerID] IS NOT NULL
GROUP BY c.[CustomerID], c.[FirstName], c.[LastName];

----7. Write an SQL query to find the order with the highest total revenue. Include the order ID,customer information, and the total revenue.
SELECT TOP 1 WITH TIES o.[OrderID], CONCAT(c.[FirstName], ' ', c.[LastName]) as NAMES, c.[Phone], o.[TotalAmount]
FROM [CUSTOMERS] c INNER JOIN [ORDERS] o
ON c.[CustomerID] = o.[CustomerID]
ORDER BY o.[TotalAmount] DESC;

--8. Write an SQL query to list electronic gadgets and the number of times each product has been ordered.
SELECT p.[ProductName], COUNT(od.[ProductID]) AS NumberOfTimesOrdered
FROM [PRODUCTS] p INNER JOIN [ORDER_DETAILS] od
ON p.[ProductID] = od.[ProductID]
GROUP BY p.[ProductName];

----9. Write an SQL query to find customers who have purchased a specific electronic gadget product.Allow users to input the product name as a parameter.
DECLARE @pname VARCHAR(30) = 'Wireless Headphones';
SELECT c.[CustomerID], CONCAT(c.[FirstName], ' ', c.[LastName]) as NAMES
FROM [CUSTOMERS] c INNER JOIN [ORDERS] o
ON c.[CustomerID] = o.[CustomerID] INNER JOIN [ORDER_DETAILS] od
ON o.[OrderID] = od.[OrderID] INNER JOIN [PRODUCTS] p
ON od.[ProductID] = p.[ProductID]
WHERE p.[ProductName] = @pname;

--10. Write an SQL query to calculate the total revenue generated by all orders placed within a specific time period. Allow users to input the start and end dates as parameters.
DECLARE @startdate DATE = '2023-01-01';
DECLARE @enddate DATE = '2023-05-15';
SELECT SUM(od.[Quantity]*p.[Price]) AS RevenueGeneratedInGivenPeriod
FROM [ORDERS] o INNER JOIN [ORDER_DETAILS] od
ON o.[OrderID] = od.[OrderID] INNER JOIN [PRODUCTS] p
ON od.[ProductID] = p.[ProductID]
WHERE o.[OrderDate] BETWEEN @startdate AND @enddate;

--------------------------------------------------------------------------------------------------------------------------------


--AGGREGATE FUNCTIONS
--1. Write an SQL query to find out which customers have not placed any orders.
SELECT c.[CustomerID], CONCAT(c.[FirstName], ' ', c.[LastName]) as NAMES
FROM [dbo].[CUSTOMERS] AS c LEFT JOIN [ORDERS] AS o
ON c.[CustomerID] = o.[CustomerID]
WHERE o.OrderID IS NULL;

--2. Write an SQL query to find the total number of products available for sale.
SELECT COUNT(*) AS TotalNumberOfProducts
FROM [PRODUCTS];

--3. Write an SQL query to calculate the total revenue generated by TechShop.
SELECT SUM([TotalAmount]) AS TotalRevenue
FROM [ORDERS];

--4. Write an SQL query to calculate the average quantity ordered for products in a specific category. Allow users to input the category name as a parameter
--Since I didn't create the category column at the start , I couldn't attempt this question.


--5. Write an SQL query to calculate the total revenue generated by a specific customer. Allow users to input the customer ID as a parameter.
DECLARE @cuid INT = 109;
SELECT SUM([TotalAmount]) AS RevenueOfSelectedCustomer
FROM [ORDERS]
WHERE [CustomerID] = @cuid

--6. Write an SQL query to find the customers who have placed the most orders. List their names and the number of orders they've placed
SELECT TOP 1 WITH TIES CONCAT([FirstName], ' ', [LastName]) as NAMES, [NumberOfOrders]
FROM [CUSTOMERS]
ORDER BY [NumberOfOrders] DESC;

--7. Write an SQL query to find the most popular product category, which is the one with the highest total quantity ordered across all orders
--Since I didn't create the category column at the start , I couldn't attempt this question.


--8. Write an SQL query to find the customer who has spent the most money (highest total revenue) on electronic gadgets. List their name and total spending
SELECT TOP 1 WITH TIES c.[CustomerID], CONCAT(c.[FirstName], ' ', c.[LastName]) as NAMES,  SUM(o.[TotalAmount]) as TotalSpending
FROM [CUSTOMERS] AS c JOIN [ORDERS] AS o ON c.[CustomerID] = o.[CustomerID]
GROUP BY c.[CustomerID], c.[FirstName], c.[LastName]
ORDER BY TotalSpending;


--9. Write an SQL query to calculate the average order value (total revenue divided by the number of orders) for all customers.
SELECT SUM(o.[TotalAmount])/SUM(od.[Quantity]) AS AverageOrderValue
FROM [Orders] o INNER JOIN [ORDER_DETAILS] od
ON o.[OrderID] = od.[OrderID];

--10. Write an SQL query to find the total number of orders placed by each customer and list their names along with the order count.
SELECT  CONCAT(c.[FirstName], ' ', c.[LastName]) as NAMES, COUNT(o.[CustomerID]) AS NumberOfOrders
FROM [Customers] AS c INNER JOIN [Orders] AS o
ON c.[CustomerID] = o.[CustomerID]
GROUP BY c.[FirstName], c.[LastName];
