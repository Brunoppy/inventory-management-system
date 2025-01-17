-- Create Categories table
CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CategoryID INT NOT NULL,
    Quantity INT NOT NULL DEFAULT 0,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Create Inventory_Log table
CREATE TABLE Inventory_Log (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT NOT NULL,
    ChangeType ENUM('Addition', 'Removal', 'Adjustment') NOT NULL,
    QuantityChanged INT NOT NULL,
    LogDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert sample data into Categories
INSERT INTO Categories (CategoryName) VALUES
('Electronics'),
('Furniture'),
('Clothing');

-- Insert sample data into Products
INSERT INTO Products (ProductName, CategoryID, Quantity, UnitPrice) VALUES
('Laptop', 1, 10, 1200.00),
('Desk', 2, 5, 250.00),
('T-Shirt', 3, 50, 15.00);

-- Insert sample data into Inventory_Log
INSERT INTO Inventory_Log (ProductID, ChangeType, QuantityChanged) VALUES
(1, 'Addition', 10),
(2, 'Addition', 5),
(3, 'Addition', 50);

-- Query to calculate total inventory value
SELECT 
    Products.ProductName,
    Products.Quantity,
    Products.UnitPrice,
    (Products.Quantity * Products.UnitPrice) AS TotalValue
FROM Products;

-- Query to list low-stock items (less than 10 units)
SELECT 
    Products.ProductName,
    Products.Quantity
FROM Products
WHERE Products.Quantity < 10;
