create table clientes(
id_cliente serial primary key,
nombre varchar(50)not null,
correo varchar (50)not null unique, 
telefono varchar(15) 
);

create table productos(
id_producto serial primary key,
nombre varchar(50)not null,
precio integer not null check (precio>=0),
stock integer not null check (stock>=0)
);

create table ventas(
id_venta serial primary key,
fecha date not null,
total integer not null,
id_cliente integer not null,
foreign key (id_cliente) references clientes(id_cliente)
);

create table detalle_venta(
id_detalle serial primary key,
cantidad integer not null,
id_venta integer not null,
id_producto integer not null,
precio_unitario integer not null,
foreign key (id_venta) references ventas(id_venta),
foreign key (id_producto) references productos(id_producto),
foreign key (id_venta) references ventas(id_venta) on delete cascade

);


---------------------------------------------------
----indices--------
create index idx_productos_nombre on productos(nombre);

create index idx_ventas_fecha on ventas(fecha);

create index idx_detalle_venta_producto on detalle_venta(id_producto);


