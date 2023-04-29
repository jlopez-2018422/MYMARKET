Drop database if exists DBMyMarket;
Create database DBMyMarket;

Use DBMyMarket;

Create Table Categorias(
	codigoCategoria int not null auto_increment,
    nombreCategoria VARCHAR(50) not null,
        primary key PK_codigoCategoria (codigoCategoria)

);

Create Table Proveedor(
	codigoProveedor int not null auto_increment,
    nombreProveedor VARCHAR(45) not null,
    direccionProveedor varchar(50) not null,
    telefonoProveedor varchar(8) not null,
	primary key PK_codigoProveedor (codigoProveedor)
  
);

Create table Clientes(
	dpiCliente int not null,
    nombresCliente Varchar(45) not null,
    apellidosCliente Varchar(55) not null,
    nitCliente Varchar(15) ,
    telefonoCliente varchar(8) not null,
	primary key PK_dpiCliente (dpiCliente)

);

Create table Cargo(
	codigoCargo int not null auto_increment,
    nombreCargo Varchar(20) not null,
    descripcionCargo Varchar(50)not null,
	primary key PK_codigoCargo (codigoCargo)
);
Create table Empleados(
	codigoEmpleado int not null auto_increment,
	nombresEmpleado Varchar(45) not null,
    apellidosEmpleado Varchar(50) not null,
    dpiEmpleado Varchar(15)not null,
    fechaNacimiento date not null,
    sexo Varchar(10) not null,
    usuario varchar(45) not null,
    direccionEmpleado varchar(55)not null,
    telefonoEmpleado varchar(18) not null,
    codigoCargo int not null,
	primary key PK_codigoEmpleado (codigoEmpleado),
    constraint FK_Empleado_Cargo foreign key (codigoCargo)
		references Cargo(codigoCargo)
);
Create table Factura(
	codigoFactura int not null auto_increment,
    fechaFactura date not null,
    dpiCliente int not null,
    codigoEmpleado int not null,
 	primary key PK_codigoFactura (codigoFactura),
    constraint FK_Factura_Clientes foreign key (dpiCliente)
		references Clientes(dpiCliente),
     constraint FK_Factura_Empleados foreign key (codigoEmpleado)
		references Empleados(codigoEmpleado)    
);


Create table Productos(
	codigoProducto int not null auto_increment,
    nombreProducto Varchar(45) not null,
    precioProducto Double not null,
    stock int not null,
    descripcionProducto Varchar(45) not null,
    codigoCategoria int not null,
  	primary key PK_codigoProducto (codigoProducto),
	constraint FK_Producto_Categorias foreign key (codigoCategoria)
		references Categorias(codigoCategoria)     
);

Create table Ofertas(
	codigoOferta int not null auto_increment,
    porcentajeDescuento int not null,
    codigoProducto int not null,
    primary key PK_codigoOferta (codigoOferta),
	constraint FK_Oferta_Productos foreign key (codigoProducto)
		references Productos(codigoProducto)    
);
Create table Pedidos(
	codigoPedido int not null auto_increment,
    descripcionPedido varchar(45)not null,
    fechaEntrada date not null,
    codigoProducto int not null,
     primary key PK_codigoPedido (codigoPedido),
		constraint FK_Pedido_Productos foreign key (codigoProducto)
		references Productos(codigoProducto)    
);

Create table DetalleFactura(
	codigoDetalleFactura int not null auto_increment,
    cantidad int not null,
    codigoFactura int not null,
    codigoProducto int not null,
     primary key PK_codigoDetalleFactura (codigoDetalleFactura),
   constraint FK_DetalleFactura_Factura foreign key (codigoFactura)
		references Factura(codigoFactura),   
    constraint FK_DetalleFactura_Productos foreign key (codigoProducto)
		references Productos(codigoProducto)     
);

Create table Productos_has_Proveedor(
	codigoProducto int not null,
    codigoProveedor int not null,
    primary key PK_codigoProducto (codigoProducto),
	constraint FK_Productos_has_Proveedor_Proveedor foreign key (codigoProveedor)
		references Proveedor(codigoProveedor),   
    constraint FK_Productos_has_Proveedor_Productos foreign key (codigoProducto)
		references Productos(codigoProducto)    
);


insert into Categorias(nombreCategoria)
		values('Cuidado Personal');
	insert into Categorias(nombreCategoria)
		values('Alimentos');
    insert into Categorias(nombreCategoria)
		values(' Ropa');
    insert into Categorias(nombreCategoria)
		values('Lacteos');
    insert into Categorias(nombreCategoria)
		values('Higiene');    
        
        insert into Proveedor(nombreProveedor,direccionProveedor,telefonoProveedor)
		values('Gran Dia','Zona 6','56456786');    
        insert into Proveedor(nombreProveedor,direccionProveedor,telefonoProveedor)
		values('Del Monte','Zona 5','34354354');    
        insert into Proveedor(nombreProveedor,direccionProveedor,telefonoProveedor)
		values('Nivea','Zona 7','76867835');    
        insert into Proveedor(nombreProveedor,direccionProveedor,telefonoProveedor)
		values('Bremen','Zona 8','56567345');    
        insert into Proveedor(nombreProveedor,direccionProveedor,telefonoProveedor)
		values('Kellogs','Zona 9','24353455');    
       
       insert into Clientes(dpiCliente,nombresCliente,apellidosCliente,nitCliente,telefonoCliente)
		values(1,'Juan','Lopez','56456786676565','43543123');    
        insert into Clientes(dpiCliente,nombresCliente,apellidosCliente,nitCliente,telefonoCliente)
		values(2,'Julia','Enriquez','989789678567','85423432');    
        insert into Clientes(dpiCliente,nombresCliente,apellidosCliente,nitCliente,telefonoCliente)
		values(3,'Julio','Fernandez','9808345234534','65757565');    
        insert into Clientes(dpiCliente,nombresCliente,apellidosCliente,nitCliente,telefonoCliente)
		values(4,'Josue','Godinez','13242345546453','43345634');    
        insert into Clientes(dpiCliente,nombresCliente,apellidosCliente,nitCliente,telefonoCliente)
		values(5,'Hernan','Hernandez','6545646456','43655467');  
          
         insert into Cargo(nombreCargo,descripcionCargo)
		values('Administrador','Administra parte de la empresa');   
		insert into Cargo(nombreCargo,descripcionCargo)
		values('Seguridad','Seguridad'); 
        insert into Cargo(nombreCargo,descripcionCargo)
		values('Limpieza','Limpieza'); 
        insert into Cargo(nombreCargo,descripcionCargo)
		values('Cajero','Cajero'); 
        insert into Cargo(nombreCargo,descripcionCargo)
		values('Empleado','Empleado'); 
        
        
        insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('Alan','López','123','23-12-02','Masculino','alopez','zona 9','33442211',1); 
        insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('Carlos','Mendez','976452342432','20-08-02','Masculino','cmendez','zona 4','7686745645',5); 
        insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('N','Juarez','456456454456','23-10-00','Masculino','njuarez','zona 6','43534575',4); 
        insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('E','Hernandez','34534534543','22-12-02','Masculino','ehernandez','zona 9','5865456546',2);  
        insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('J','Hernandez','55934523432443','10-11-05','Masculino','jhernandez','zona 10','45674575',1);
        insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('J','Garcia','43534523432443','10-11-05','Masculino','jgarcia','zona 12','45674575',1);
        insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('E','Garcia','2234523432443','10-11-05','Masculino','egarcia','zona 1','45674575',1);
		insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('C','López','37284523432443','10-11-05','Masculino','clopez','zona 9','45674575',1);
		insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('S','Lopez','98764523432443','10-11-05','Masculino','slopez','zona 7','45674575',1);
        insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('J','López','34535532432443','10-11-05','Masculino','jlopez','zona 3','45674575',1);
        insert into Empleados(nombresEmpleado,apellidosEmpleado,dpiEmpleado,fechaNacimiento,sexo,usuario,direccionEmpleado,telefonoEmpleado,codigoCargo)
		values('Jair','Gomez','87564523432443','10-11-05','Masculino','jgomez','zona 5','45674575',1);


        
        
          insert into Factura(fechaFactura,dpiCliente,codigoEmpleado)
		values('02-12-02','2',5);  
        insert into Factura(fechaFactura,dpiCliente,codigoEmpleado)
		values('03-12-00','1',3);  
        insert into Factura(fechaFactura,dpiCliente,codigoEmpleado)
		values('04-12-20','3',3);  
        insert into Factura(fechaFactura,dpiCliente,codigoEmpleado)
		values('03-12-22','2',4);  
        insert into Factura(fechaFactura,dpiCliente,codigoEmpleado)
		values('20-11-20','3',2);
        
         insert into Productos(nombreProducto,precioProducto,stock,descripcionProducto,codigoCategoria)
		values('Shampoo',20.00,1,'Shampoo para el pelo',1);  
           insert into Productos(nombreProducto,precioProducto,stock,descripcionProducto,codigoCategoria)
		values('Jabon',30.00,45,'Jabon de olor',3);  
           insert into Productos(nombreProducto,precioProducto,stock,descripcionProducto,codigoCategoria)
		values('Desodorante',30.00,1,'Desodorante',2);  
           insert into Productos(nombreProducto,precioProducto,stock,descripcionProducto,codigoCategoria)
		values('Yogurt',20.00,89,'Yogurt de Fresa',4);  
           insert into Productos(nombreProducto,precioProducto,stock,descripcionProducto,codigoCategoria)
		values('Cereal',40.00,90,'Cereal de Chocolate',1);  
        
         insert into Ofertas(porcentajeDescuento,codigoProducto)
		values(25,1); 
         insert into Ofertas(porcentajeDescuento,codigoProducto)
		values(34,5); 
        insert into Ofertas(porcentajeDescuento,codigoProducto)
		values(50,4); 
        
          insert into Pedidos(descripcionPedido,fechaEntrada,codigoProducto)
		values('Cereales','20-06-22',2); 
          insert into Pedidos(descripcionPedido,fechaEntrada,codigoProducto)
		values('Shampoo','23-06-22',1); 
          insert into Pedidos(descripcionPedido,fechaEntrada,codigoProducto)
		values('Yogurt','24-06-22',4);
        
         insert into DetalleFactura(codigoFactura,cantidad,codigoProducto)
		values(2,3,3);
         insert into DetalleFactura(codigoFactura,cantidad,codigoProducto)
		values(3,1,1);
         insert into DetalleFactura(codigoFactura,cantidad,codigoProducto)
		values(2,5,5);
        
        