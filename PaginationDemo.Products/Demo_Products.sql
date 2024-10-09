-- Create the Demo database (if it doesn't exist)
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Demo')
BEGIN
    CREATE DATABASE Demo;
END;

-- Use the Demo database
USE Demo;

-- Drop the Products table if it already exists (optional)
DROP TABLE IF EXISTS Products;

-- Create Products table with CreatedBy and DateAdded columns
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Category NVARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT,
    CreatedBy NVARCHAR(100) NOT NULL,
    DateAdded DATETIME NOT NULL
);

-- Insert sample data into Products table with varied DateAdded values
INSERT INTO Products (ProductName, Category, Price, Stock, CreatedBy, DateAdded)
VALUES
('Laptop', 'Electronics', 1000.00, 50, 'Admin', '2024-01-05 10:30:00'),
('Smartphone', 'Electronics', 700.00, 150, 'Admin', '2024-02-10 09:15:00'),
('Headphones', 'Electronics', 100.00, 200, 'Admin', '2024-02-15 14:45:00'),
('Desk Chair', 'Furniture', 150.00, 30, 'Admin', '2024-03-01 08:30:00'),
('Office Desk', 'Furniture', 350.00, 10, 'Admin', '2024-03-01 09:00:00'),
('Monitor', 'Electronics', 300.00, 75, 'Admin', '2024-03-15 16:00:00'),
('Tablet', 'Electronics', 400.00, 120, 'Admin', '2024-04-01 10:00:00'),
('Wireless Mouse', 'Electronics', 25.00, 500, 'Admin', '2024-04-10 13:45:00'),
('Keyboard', 'Electronics', 50.00, 250, 'Admin', '2024-04-12 11:30:00'),
('Bookshelf', 'Furniture', 200.00, 15, 'Admin', '2024-05-01 09:00:00'),
('Sofa', 'Furniture', 600.00, 5, 'Admin', '2024-05-10 12:30:00'),
('Dining Table', 'Furniture', 450.00, 7, 'Admin', '2024-05-15 15:30:00'),
('Smartwatch', 'Electronics', 200.00, 100, 'Admin', '2024-06-01 10:15:00'),
('Blender', 'Home Appliances', 80.00, 80, 'Admin', '2024-06-15 14:00:00'),
('Coffee Maker', 'Home Appliances', 120.00, 60, 'Admin', '2024-07-01 09:30:00'),
('Refrigerator', 'Home Appliances', 1200.00, 20, 'Admin', '2024-07-15 11:45:00'),
('Air Conditioner', 'Home Appliances', 600.00, 15, 'Admin', '2024-08-01 08:00:00'),
('Washing Machine', 'Home Appliances', 900.00, 25, 'Admin', '2024-08-15 10:45:00'),
('Vacuum Cleaner', 'Home Appliances', 150.00, 40, 'Admin', '2024-08-25 13:00:00'),
('Microwave Oven', 'Home Appliances', 300.00, 35, 'Admin', '2024-09-01 14:30:00');

-- Query to confirm insertion
SELECT * FROM Products;
