CREATE DATABASE Market_Manager;

CREATE TABLE Farmers_Market(
  MarketID INT PRIMARY KEY AUTO_INCREMENT,
  MarketName VARCHAR(30) NOT NULL,
  Address varchar(30) NOT NULL
  );

CREATE TABLE Vendor(
  VendorID INT PRIMARY KEY AUTO_INCREMENT,
  VendorName VARCHAR(15) NOT NULL,
  VendorWebsite VARCHAR(30)
  );

CREATE TABLE Vendor_Market(
  MarketID INT PRIMARY KEY,
  VendorID INT PRIMARY KEY,
  StallNumber INT NOT NULL,
  FOREIGN KEY (MarketID) REFERENCES Farmers_Market(MarketID),
  FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID)
  );



CREATE TABLE `Order` (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderCost DECIMAL(4,2) NOT NULL,
    DeliveryAddress VARCHAR(30) NOT NULL
);

CREATE TABLE Customer_Order (
    CustomerID INT NOT NULL,
    OrderID INT NOT NULL,
    PRIMARY KEY (CustomerID, OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID)
);

CREATE TABLE Order_Contents (
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    ProductCost DECIMAL(3,2) NOT NULL,
    VendorID INT NOT NULL,
    QuantityOrdered INT NOT NULL,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID)
);
