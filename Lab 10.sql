


use AdventureWorks_UCB

--Total 295 productos
select * from SalesLT.Product 

--GRUPO 1
--Total 89 productos
select * from SalesLT.Product
where ListPrice > 1000 AND Color = 'Black'

--GRUPO 2
--Total 11 productos (ListPrice > 9.50)
select * from SalesLT.Product
where ListPrice < 1000 AND ProductCategoryID > 2
and [Name] like '%L%' and Color IS NOT NULL and Size = 'L'
AND Color <> 'Black'




select * from SalesLT.Product
where ListPrice > 1000 AND Color = 'Black'
UNION
select * from SalesLT.Product
where ListPrice < 1000 AND ProductCategoryID > 2
and [Name] like '%L%' and Color IS NOT NULL and Size = 'L'
AND Color <> 'Black'







----------

--//////////////////////////////////////////UNION
select * from SalesLT.Product
where ListPrice > 9.50
UNION
select * from SalesLT.Product
where ListPrice < 9.50








--//////////////////////////////////////////INTERSECCION
--430 no tienen address
--Total 847
select * from SalesLT.Customer

--417
select * from SalesLT.CustomerAddress

--417
select * 
from SalesLT.CustomerAddress ca, SalesLT.Customer c
where ca.CustomerID = c.CustomerID










--------/////////////////////PRODUCTO CARTESIANO
--450
Select * from SalesLT.Address

--847
select * from SalesLT.Customer
---------------
--381.150
Select * 
from SalesLT.Address, SalesLT.Customer






--------------------------- DIFERENCIA (LEFT)
--Conjunto A: CustomerAddress  --417
--Conjunto B: Customer		   --847
-- outer 417
-- inner 417 (es por defecto)
select * 
from SalesLT.CustomerAddress ca 
left outer join 
SalesLT.Customer c 
on ca.CustomerID = c.CustomerID

--------------------------- DIFERENCIA (RIGHT)
--417
select *
from SalesLT.Customer c 
right outer join 
SalesLT.CustomerAddress ca
on c.CustomerID = ca.CustomerID






--847
select c.*
from SalesLT.CustomerAddress ca
right outer join 
SalesLT.Customer c 
on ca.CustomerID = c.CustomerID
and
ca.CustomerID not in
			(select c.CustomerID from SalesLT.CustomerAddress ca 
			left outer join 
			SalesLT.Customer c on ca.CustomerID = c.CustomerID)




