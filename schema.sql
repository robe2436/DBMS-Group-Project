
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
