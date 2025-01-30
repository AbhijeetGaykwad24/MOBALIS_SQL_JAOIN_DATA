CREATE DATABASE Aj_Mobail_Store;
USE Aj_Mobail_Store;


CREATE TABLE Mobail_Sales_Data(
Transaction_ID INT PRIMARY KEY,
Brand VARCHAR(100),
Customer_Name VARCHAR(100),
By_Year INT DEFAULT 2022
);

INSERT INTO Mobail_Sales_Data 
(Transaction_ID,Brand,Customer_Name)
VALUES
(0001,"Xiaomi","Lalita Ahuja"),
(0002,"Vivo","Sneha Sharma"),
(0003,"Vivo","Radha Srivastava"),
(0004,"Xiaomi","Bhavana Arora"),
(0005,"Oneplus","Sneha Mehta"),
(0006,"Samsung","Reena Mehta"),
(0007,"Oneplus","Pankaj Alva"),
(0008,"Apple","Mala Rawat"),
(0009,"Vivo","Pankaj Varma"),
(0010,"Samsung","Yogesh Sharma"),
(0011,"Samsung","Radha Sharma"),
(0012,"Apple","Namita Roy"),
(0013,"Apple","Ramesh Joshi"),
(0044,"Xiaomi","Arun Iyer"),
(0077,"Vivo","Manoj Siddiqui"),
(0088,"Vivo","Anjali Gupta"),
(0084,"Oneplus","Ramesh Rao"),
(0143,"Vivo","Anand Pillai");


SELECT * FROM Mobail_Sales_Data;

CREATE TABLE Customers (
Sal_ID INT PRIMARY KEY,
City VARCHAR(100),
Payment_Method VARCHAR(100),
Mobile_Model VARCHAR(100),
Age INT NOT NULL DEFAULT 25,
Customer_Ratings INT DEFAULT 4.5
);

INSERT INTO Customers
(Sal_ID,City,Payment_Method,Mobile_Model)
VALUES
(0001,"Ludhiana","UPI","Redmi Note 10"),
(0002,"Delhi","Credit Card","Vivo Y51"),
(0003,"Mumbai","UPI","Vivo S1"),
(0004,"Mumbai","Credit Card","MI 11"),
(0005,"Gorakhpur","Cash","OnePlus 9"),
(0006,"Jodhpur","UPI","Galaxy Note 20"),
(0007,"Delhi","Cash","OnePlus Nord"),
(0008,"Vadodara","Cash","iPhone 12"),
(0009,"Delhi","UPI","Vivo Y51"),
(0010,"Mumbai","Debit Card","Galaxy A51"),
(0011,"Mumbai","Credit Card","Galaxy A51"),
(0012,"Delhi","UPI","iPhone 12"),
(0013,"Mumbai","Cash","iPhone 12"),
(0044,"Hyderabad","Credit Card","Redmi Note 10"),
(0055,"Chennai","Cash","Vivo V20"),
(0066,"Mumbai","Credit Card","Vivo Y51"),
(0077,"Coimbatore","UPI","OnePlus Nord"),
(0047,"Delhi","Cash","Redmi Note 10"),
(0074,"Mumbai","Credit Card","Redmi Note 10"),
(0056,"Mumbai","Credit Card","Redmi Note 10"),
(0784,"Coimbatore","UPI","Mi 11"),
(0101,"Vadodara","Credit Card","Vivo S1"),
(0870,"Kolkata","Credit Card","Vivo S1"),
(0041,"Mumbai","Cash","Redmi Note 10"),
(0045,"Delhi","UPI","OnePlus Nord");

SELECT * FROM Customers;

/*JOINS*/

/* INNER JOIN */

SELECT *
FROM Mobail_Sales_Data AS M
INNER JOIN Customers AS C
ON M.Transaction_ID = C.Sal_ID;

/* LEFT JOIN */

SELECT *
FROM Mobail_Sales_Data AS M
LEFT JOIN Customers AS C
ON M.Transaction_ID = C.Sal_ID;

/* RIGHT JOIN */

SELECT *
FROM Mobail_Sales_Data AS M
RIGHT JOIN Customers AS C
ON M.Transaction_ID = C.Sal_ID;


/* FULL JION [UNION] */

SELECT *
FROM Mobail_Sales_Data AS M
LEFT JOIN Customers AS C
ON M.Transaction_ID = C.Sal_ID
UNION
SELECT *
FROM Mobail_Sales_Data AS M
RIGHT JOIN Customers AS C
ON M.Transaction_ID = C.Sal_ID;

/* LEFT EXCLUSIVE JOIN */ 

SELECT *
FROM Mobail_Sales_Data AS M
LEFT JOIN Customers AS C
ON M.Transaction_ID = C.Sal_ID
WHERE C.Sal_ID IS NULL;

/*  RIGHT EXCLUSIVE JOIN */

SELECT *
FROM Mobail_Sales_Data AS M
RIGHT JOIN Customers AS C
ON M.Transaction_ID = C.Sal_ID
WHERE  M.Transaction_ID  IS NULL;

/* SUB QUERIE */

SELECT City,Payment_Method
FROM Customers
WHERE Mobile_Model IN(
       SELECT Mobile_Model
       FROM Customers
       WHERE Mobile_Model = "iPhone 12");

/* MySQL VIEWS */

CREATE VIEW C1 AS
SELECT Payment_Method,Mobile_Model FROM Customers;

SELECT * FROM C1;



