/*TASK 2 - Database Migration*/


/*
1. Your instructor has given you four files that came from on obsolete database and it is your job to 
migrate this data into a sql server database. Once the data is added to sql server you need to check the data
and setup the relationships between the tables.
====> Import flat file is done for all TXT files
====> Built relational between tables. Diagram in JPG format.
*/
create database InternationalStore
use InternationalStore


/*
2. Once you have finished this, create a querty that displays: CompanyName, Address, of the Customer along with the
total for each order that the customer has made. Save this query as a sql script called Queston2.sql to your desktop.
*/

select * from Customers
select * from Orders
select * from OrderDetails
select * from Products

/*
SELECT 
	Customers.CompanyName, 
	Customers.Address, 
	Customers.CustomerID
FROM 
	Customers 
INNER JOIN 
	Orders on Orders.OrderID=Orders.OrderID order by Customers.CustomerID
INNER JOIN
	OrderDetails ON OrderDetails.OrderID = Orders.OrderID
*/

/*To display CompanyName, Address of the Customer*/
select * from Customers
select * from Orders
select * from OrderDetails


/*To display CompanyName, Address of the Customer*/
select * from Customers
select * from Orders
select * from OrderDetails
select Customers.CompanyName, Customers.Address, Customers.CustomerID from Customers inner join Orders on Customers.CustomerID=Orders.CustomerID order by Customers.CompanyName


/*To display CompanyName each order*/
select * from Orders
select * from OrderDetails
select Orders.OrderID, Orders.CustomerID, OrderDetails.UnitPrice, OrderDetails.Quantity from Orders right join OrderDetails on Orders.OrderID=OrderDetails.OrderID

/*
3. Create a View that joins the customers table to the orders table and have the view show CompanyName, Address, City and OrderDate.
Save the view as CustomersView
*/
select * from Customers
select * from Orders

Create view CustomersView as
select 
	Customers.CompanyName, 
		Customers.Address, 
		Customers.City, 
		Orders.OrderDate 
from 
		Customers 
right join 
		Orders on Orders.OrderID=Orders.OrderID

select * from CustomersView

/*
4. Once the CustomersView is created query the view to show only Customers from London
*/
select * from CustomersView
select * from CustomersView Where City='London'

/*
5. Create a stored procedure will return a list of products based on the parameteres values that you pass tp stored procedure. Save the stored procedure
as ProductSearch.
*/
select Products.ProductName from Products

CREATE PROCEDURE ProductSearch
AS
select Products.ProductName from Products
GO

<<<<<<< HEAD
EXEC ProductSearch

/*
6. Create a tabled valued function that takes allows you to pass Country name to the function. This function should join the customers table to the Orders Table and you should also be able
to filter by Order date (ie Show me a list of Customers from Germany who ordered product between 1996 and 1997).
*/

select * from Customers
select * from Orders

Create view GermanyOrder1996_1997 as
select 
	Customers.CompanyName, 
		Customers.City,
		Customers.Country,
		Orders.OrderDate 
from 
		Customers 
right join 
		Orders on Orders.OrderID=Orders.OrderID
WHERE
		 
		Customers.Country='Germany' and 
		Orders.OrderDate BETWEEN '1996' and '1997'


select * from GermanyOrder1996_1997


/*
7. Create a nonclustered index on the primary key for the Customers Table and Create a clustered index on the CompanyName field of the Customers table.
*/
=======
EXEC ProductSearch
>>>>>>> 92ea87d83c0ccd5f3d51014384afc894329f7c53
