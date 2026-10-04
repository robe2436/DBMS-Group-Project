# DBMS-Group-Project

## Team Members
- Harshwardhan Jejaria
- Nickolai Jalowiec
- Jacob Roberts

We are using Trello Board and the link is https://trello.com/invite/b/6ab9964d0fa7f6deec978def/ATTId9dc032568977e3b113f9e2ac5d3c8622B3742BB/dbms-group-project

# DBMS-Group-Project

## Team Members
- Harshwardhan Jejaria
- Nickolai Jalowiec
- Jacob Roberts

We are using Trello Board and the link is https://trello.com/invite/b/6ab9964d0fa7f6deec978def/ATTId9dc032568977e3b113f9e2ac5d3c8622B3742BB/dbms-group-p

## Project Proposal

Our project is a Farmers Market Database Application that will make it easier for customers to find farmers markets, vendors, and products. Users will be able to see what products are available before visiting a market and place pre orders for products they want to purchase.

## Features

- Browse a list of farmers markets
- View details about a specific farmers market
- View vendors that are located at each market
- Search for products across all farmers markets
- View product prices and availability
- Place pre-orders for products
- Keep track of customer orders
- Update product inventory when orders are placed

## Database

The database will store information about:

- Farmers Markets
- Vendors
- Products
- Customers
- Orders
- Order Items

A farmers market can have multiple vendors, and a vendor can participate in multiple farmers markets. Vendors can sell multiple products, and customers can place orders containing one or more products.

## Pre-Orders

When a customer places a pre-order, the application will use a database transaction. The transaction will create the order, add the selected products, and update the available product inventory. If part of the order fails, the transaction will be rolled back so incorrect information is not saved.

## Final Application

The final application will have a graphical user interface connected to the database. Users will be able to browse markets, view vendors, search for products, and place pre-orders through the application.
