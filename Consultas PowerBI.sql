



SELECT *
FROM SalesLT.Customer


SELECT *--distinct(AddressType)
FROM SalesLT.CustomerAddress

SELECT *
FROM SalesLT.Address


CREATE VIEW CUSTOMER_COMPLETE AS
SELECT c.CustomerID, c.Title + c.FirstName + c.MiddleName + c.LastName as Nombre,
c.CompanyName, c.EmailAddress, c.Phone, ca.AddressType, a.AddressLine1, 
a.City, a.StateProvince, a.CountryRegion
FROM 
SalesLT.Customer c,
SalesLT.CustomerAddress ca,
SalesLT.Address a 
WHERE c.CustomerID = ca.CustomerID and ca.AddressID = a.AddressID



SELECT *
FROM CUSTOMER_COMPLETE



SELECT *
FROM PRODUCT_COMPLETE





-----------------



--SELECT *
--FROM [NOMBRE_TABLA]
--
SELECT ProductID, Name, ProductNumber, Color 
FROM SalesLT.Product
--
SELECT Name, ProductCategoryID
FROM SalesLT.Product
--
SELECT *
FROM SalesLT.ProductCategory
--
SELECT 
PRO.Name, 
PRO.ProductCategoryID, 
CAT.Name
FROM SalesLT.Product PRO, SalesLT.ProductCategory CAT
WHERE 
PRO.ProductCategoryID = CAT.ProductCategoryID
and
PRO.ProductCategoryID > 10 
and
PRO.ProductCategoryID <> 41




--
SELECT 
PC.ProductCategoryID, 
PC.ParentProductCategoryID,
PC.Name
FROM SalesLT.ProductCategory PC
WHERE PC.ProductCategoryID = (
	PC.ParentProductCategoryID
)












