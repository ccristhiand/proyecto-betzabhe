--create database practica

use practica
create table Categoria(id_categoria int identity primary key NOT NULL,nom_categoria varchar(100)NOT NULL)
create table Modelo(id_Modelo int identity primary key NOT NULL,nom_modelo varchar(100)NOT NULL)

create table Producto
(
	id_Producto int identity primary key NOT NULL,
	id_Categoria int NOT NULL,
	id_Modelo int NOT NULL ,
	Imagen_Producto varchar(200) NOT NULL,
	Talla_Producto char(1) NOT NULL,
	Stock_Producto int NOT NULL,
	Color_Producto varchar(50) NOT NULL,
	Precio_Producto numeric(9,2) NOT NULL,
	Material_Producto varchar(100),
	Estado_Producto bit NOT NULL,
	FOREIGN KEY (id_Categoria) REFERENCES Categoria(id_Categoria),
	FOREIGN KEY (id_Modelo) REFERENCES Modelo(id_Modelo)
)

create table Cliente
(
id_Cliente int identity primary key NOT NULL ,
Nom_Cliente varchar(100) NOT NULL,
Ape_Cliente varchar(100) NOT NULL,
Fecha_Nac varchar(20) NOT NULL,
DocumIden_Cliente char(8) NOT NULL,
Departamento_Cliente varchar(100) NOT NULL, 
Provincia_Cliente varchar(100) NOT NULL,
Distrito_Cliente varchar(100) NOT NULL,
Dirección_Cliente varchar(200) NOT NULL,
Usuario_Cliente varchar(30) NOT NULL,
Contraseña_Cliente varchar(30) NOT NULL,
Telefono_Cliente char(9) NOT NULL,
Correo_Cliente varchar(100) NOT NULL,
Estado_Cliente bit NOT NULL,
)

create table Pedido
(
id_Pedi<do int identity primary key NOT NULL ,
id_Cliente int NOT NULL,
Fecha_Pedido varchar(30) NOT NULL,
Monto_Pedido numeric(9,2) NOT NULL,
Estado_Pedido varchar(100) NOT NULL,
Etapa_Pedido varchar(100) NOT NULL,
Comprobante_Pago varchar(100) NOT NULL,
FOREIGN KEY (id_Cliente) REFERENCES Cliente(id_Cliente)
)

create table DetallePedido 
(
id_Pedido int NOT NULL,
id_Producto int NOT NULL,
Cantidad int NOT NULL,
Precio_Unitario numeric(9,2) NOT NULL,
Precio_Total numeric(9,2) NOT NULL,
FOREIGN KEY (id_Pedido) REFERENCES Pedido(id_Pedido),
FOREIGN KEY (id_Producto) REFERENCES Producto(id_Producto)
)


select * from Categoria



delete categoria where id_categoria=5