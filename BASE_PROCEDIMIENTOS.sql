use practica

create procedure sp_consulta_producto
(
	@nom_categoria varchar(100),
	@nom_modelo varchar(100),
	@Stock_Producto int
) 
as 
begin
Select pro.id_Producto,ca.nom_categoria,mo.nom_modelo,pro.Imagen_Producto,pro.Talla_Producto,pro.Stock_Producto,pro.Color_Producto,pro.Precio_Producto,pro.Material_Producto,pro.Estado_Producto
from producto pro inner join Categoria ca on pro.id_Categoria=ca.id_categoria
				  inner join Modelo mo on pro.id_Modelo=mo.id_Modelo 
where ca.nom_categoria like '%'+@nom_categoria+'%' and mo.nom_modelo like '%'+@nom_modelo+'%' and pro.Stock_Producto>=@Stock_Producto
end 

create procedure sp_consulta_producto_categoria
(
	@nom_categoria varchar(100)
) 
as 
begin
Select pro.id_Producto,ca.nom_categoria,mo.nom_modelo,pro.Imagen_Producto,pro.Talla_Producto,pro.Stock_Producto,pro.Color_Producto,pro.Precio_Producto,pro.Material_Producto,pro.Estado_Producto
from producto pro inner join Categoria ca on pro.id_Categoria=ca.id_categoria
				  inner join Modelo mo on pro.id_Modelo=mo.id_Modelo 
where ca.nom_categoria like '%'+@nom_categoria+'%' Order by mo.nom_modelo
end 
	
create procedure sp_agrega_produco(
	@id_Categoria int ,
	@id_Modelo int  ,
	@Imagen_Producto varchar(200) ,
	@Talla_Producto char(1),
	@Stock_Producto int ,
	@Color_Producto varchar(50) ,
	@Precio_Producto numeric(9,2),
	@Material_Producto varchar(100),
	@Estado_Producto bit
)
	as begin
	insert into Producto (id_Categoria,id_Modelo,Imagen_Producto,Talla_Producto,Stock_Producto,Color_Producto,Precio_Producto,Material_Producto,Estado_Producto)
	values(@id_Categoria,@id_Modelo,@Imagen_Producto,@Talla_Producto,@Stock_Producto,@Color_Producto,@Precio_Producto,@Material_Producto,Estado_Producto)
	end


create procedure sp_consulta_productoId
(
	@id_Categoria int

) 
as 
begin
Select pro.id_Producto,ca.nom_categoria,mo.nom_modelo,pro.Imagen_Producto,pro.Talla_Producto,pro.Stock_Producto,pro.Color_Producto,pro.Precio_Producto,pro.Material_Producto,pro.Estado_Producto
from producto pro inner join Categoria ca on pro.id_Categoria=ca.id_categoria
				  inner join Modelo mo on pro.id_Modelo=mo.id_Modelo 
where ca.id_categoria=@id_Categoria
end 

exec sp_consulta_productoId 2