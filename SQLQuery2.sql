INSERT INTO Shippers( CompanyName, Phone) 
VALUES ( 'Artech Transportes SA', '(549) 444-3333')

UPDATE Shippers SET CompanyName = 'Artech Ships'
WHERE ShipperID = 5 


DELETE FROM Shippers WHERE ShipperID = 13

select * from Shippers

/*************************************/

SELECT * FROM Customers

SELECT CustomerID,CompanyName, Country FROM Customers 
ORDER BY Country DESC, CompanyName /* ORDENA POR PAIS EN FORMA DESCENDENTE DE LA Z A LA A */


SELECT TOP 5 *FROM Customers /* LOS PRIMEROS */


SELECT  DISTINCT  Country FROM Customers /* trae paises sin duplilcar*/


SELECT  DISTINCT  Country, City FROM Customers /*  sin duplilcar*/


SELECT *FROM Customers WHERE Country = 'USA' AND Region = 'WA'

SELECT *FROM Products WHERE SupplierID IN (5,7,8,15)


SELECT *FROM Products WHERE SupplierID != 7 /* todo menos el id 7*/

SELECT *FROM Products WHERE SupplierID > 8

SELECT *FROM Products WHERE SupplierID NOT IN( 8) /* trae todo menos el id 8*/

SELECT *FROM Products WHERE SupplierID <=6 OR SupplierID >= 8

SELECT *FROM Employees


SELECT *FROM Employees WHERE HireDate = '1993-10-17' 

SELECT *FROM Employees WHERE HireDate BETWEEN '1993-01-01' AND '1993-12-31'


SELECT *FROM Employees WHERE YEAR(HireDate )= '1993' /* filtramos solo por año*/

SELECT *FROM Employees WHERE YEAR(HireDate )= '1993' AND MONTH(HireDate)= 10 /* filtramos por año y mes */


SELECT *FROM Employees WHERE (YEAR(HireDate )= '1993' OR YEAR(HireDate )= '1994') AND MONTH(HireDate)= 10
 
SELECT *FROM Employees WHERE Region IS NOT NULL /* ME TRAE LOS EMPLEADOS CON REGION NO NULL*/



SELECT *FROM Employees WHERE Region IS NULL /*  me trae los que sean de region NULL*/


SELECT *FROM Products

SELECT COUNT(*)FROM Products /* ME TRAE LA CANTIDAD DE PRODUCTOS, TODOS*/

SELECT COUNT(ProductID) AS cantidad  FROM Products 


SELECT SUM(UnitsInStock) AS unidades  FROM Products 


SELECT max(UnitPrice) masCaro, 
min(UnitPrice) masBarato ,
avg(UnitPrice) Promedio
FROM Products


SELECT OrderID , ShippedDate, ShipCity, ShipPostalCode, ShipCountry 
FROM Orders WHERE (YEAR(ShippedDate) = '1997' AND MONTH(ShippedDate) = 01)
AND (ShipCountry = 'Brazil' OR ShipCountry = 'Argentina' OR ShipCountry = 'Venezuela')
ORDER BY ShipCountry, ShippedDate















