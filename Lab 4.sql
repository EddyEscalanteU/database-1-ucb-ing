

use UCB_VERDULEROS

--Mostrar los productos con precio mayor a 1bs
select *
from Productos
where Precio >= 1

--Obtener los productos que sean de grupo Fruta
select Productos.*, Grupos.*
from Productos, Grupos
where Productos.IdGrupo = Grupos.IdGrupo and Grupos.NombreGrupo = 'Frutas'

--Obtener los grupos donde el precio del producto sea mayor a 2bs
select Productos.*, Grupos.*
from Productos, Grupos
where Productos.IdGrupo = Grupos.IdGrupo and Productos.Precio >= 2


--Mostrar toda la lista de vendedores
Select *
from Vendedores

--Mostrar los vendedores Casado
select *
from Vendedores
where EstalCivil = 'Casado'

--Mostrar la lista de vendedores mas viejos de mayor a menor
select *
from Vendedores
order by FechaNac asc 

--Mostrar solo el nombre, fechaAlta, FechaNac de los vendedores
Select NombreVendedor, FechaAlta, FechaNac
from Vendedores


--Mostrar todas las ventas
Select 
Vendedores.NombreVendedor, 
Productos.NomProducto, 
Ventas.Fecha, 
Ventas.Kilos
from Ventas, Productos, Vendedores
where Ventas.[Cod Producto] = Productos.IdProducto
and Ventas.[Cod Vendedor] = Vendedores.IdVendedor
--Obtener las ventas solo de productos (Tomates)
--Obtener las ventas del vendedor (Federico)