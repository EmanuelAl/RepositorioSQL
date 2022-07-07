
/* 1)-----------------------------------*/
Select CompanyName, Address,City, Phone FROM Customers 
WHERE Country = 'Spain' 
ORDER BY City

/* 2)-------------------------------*/

SELECT * FROM Orders 
WHERE CustomerID = 'QUICK' and YEAR(OrderDate) = '1996'
ORDER BY Freight DESC

/* 3)-----------------------------------*/
SELECT COUNT(*) as cantidad FROM  Products WHERE CategoryID = 1

/* 4)-----------------------------------*/

SELECT SUM(UnitsInStock) as TOTAL FROM Products WHERE Discontinued = 1

/* 5)-----------------------------------*/
SELECT O.OrderID,O.ShipName,E.FirstName, E.LastName ,O.Freight FROM Orders  O 
INNER JOIN Employees E ON O.EmployeeID = E.EmployeeID
WHERE ShipCity = 'Rio de Janeiro' and Freight > 60

/* 6)-----------------------------------*/

/* ME DORMI :(*/