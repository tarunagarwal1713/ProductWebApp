#Java ProductManagementSystem WebApp

Create_products_tables inside your MySQL Database :-
-- SQL script to create Products table for Product Management System

------------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS ProductDB; USE ProductDB;

CREATE TABLE IF NOT EXISTS Products ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100) NOT NULL, Category VARCHAR(50) NOT NULL, Price DECIMAL(10,2) NOT NULL, Quantity INT NOT NULL );

---------------------------------------------------------------------------
Here I used Apache server Tomacat9.0
----------------------------------------------------------------------------

Download the MySQL Connector JAR: Go to: https://dev.mysql.com/downloads/connector/j/ Download the Platform Independent ZIP file and extract it. You’ll find mysql-connector-java-8.x.x.jar (or newer version).

Inside your project, navigate to: Webapp/WEB-INF/lib (create lib if it doesn't exist). Copy and paste the JAR file(mysql-connector-java-8.x.x.jar (or newer version)) here.

------------------------------------------------------------------------------
MVC Architecture Structure:

Model (Java Classes) Product.java – A POJO with fields, constructors, getters & setters. ProductDAO.java – Handles all DB operations using JDBC.

View (JSP) addProduct.jsp, updateProduct.jsp, displayProducts.jsp, report.jsp, etc.

Controller (Servlets) AddProductServlet, UpdateProductServlet, DeleteProductServlet, DisplayProductsServlet, ReportByCategoryServlet.
