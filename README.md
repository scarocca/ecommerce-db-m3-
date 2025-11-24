

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------



# &nbsp;Sistema de Gestión de Ventas 



Este repositorio contiene todos los scripts SQL necesarios para inicializar, poblar y consultar la base de datos de un sistema básico de gestión de ventas.





El proyecto está diseñado para manejar información de Clientes, Productos, Ventas y el Detalle de cada Venta.



### 

### Estructura del Proyecto



El repositorio se divide en tres archivos principales, cada uno con un propósito claro en el ciclo de vida de la base de datos:



Archivo	Propósito	Contenido

schema.sql	Estructura (Schema)	Contiene las sentencias CREATE TABLE para construir la base de datos, incluyendo constraints (PRIMARY/FOREIGN KEY) e índices.



seed.sql	Datos (Seed/Ingreso)	Contiene las sentencias INSERT INTO para poblar las tablas con datos de prueba iniciales (clientes, productos y transacciones de venta).



queries.sql	Consultas (Queries)	Contiene una colección de consultas SELECT predefinidas para análisis y reportes (ej., top ventas, ticket promedio, stock bajo).











#### Consultas de Reporte Clave (queries.sql)





El archivo queries.sql contiene las siguientes consultas de utilidad:



Top 10 Productos más Vendidos: Clasificación por la cantidad total vendida.



Ventas por Mes: Agregado de cantidad de ventas y monto total por cada mes.



Ticket Promedio: Cálculo del valor promedio de las transacciones de venta.



Stock Bajo: Lista de productos con stock inferior a 10 unidades (umbral configurable).



Clientes Frecuentes: Lista de clientes con al menos 2 compras en el sistema.



Total Gastado por Cliente: Reporte del monto acumulado total de compras por cada cliente.



Detalle Completo de Ventas: Consulta que une todas las tablas para obtener el detalle (ID de venta, fecha, cliente, producto, cantidad, subtotal).



### 

### Estructura de la Base de Datos





Tabla            Descripción                                                 Clave Foránea

&nbsp;

clientes         Información personal de los compradores                             -

&nbsp;

productos        Catálogo de artículos disponibles, incluyendo precio y stock        -

&nbsp;

ventas           Registra la transacción principal (fecha y monto total).        id\_cliente



detalle\_venta    Desglose de cada producto dentro de una venta                id\_venta, id\_producto"







### 

### Consultas de Reporte Clave (queries.sql)



El archivo queries.sql contiene las siguientes consultas de utilidad:



Top 10 Productos más Vendidos: Clasificación por la cantidad total vendida.



Ventas por Mes: Agregado de cantidad de ventas y monto total por cada mes.



Ticket Promedio: Cálculo del valor promedio de las transacciones de venta.



Stock Bajo: Lista de productos con stock inferior a 10 unidades (umbral configurable).



Clientes Frecuentes: Lista de clientes con al menos 2 compras en el sistema.



Total Gastado por Cliente: Reporte del monto acumulado total de compras por cada cliente.



Detalle Completo de Ventas: Consulta que une todas las tablas para obtener el detalle (ID de venta, fecha, cliente, producto, cantidad, subtotal).



### 

### Índices





Los siguientes índices han sido creados en schema.sql para mejorar el rendimiento de las búsquedas y reportes:



idx\_productos\_nombre



idx\_ventas\_fecha



idx\_detalle\_venta\_producto



---------------------------------------------------------------------------------------------------------------------------------------------------------



enlace al repositorio github https://github.com/scarocca/ecommerce-db-m3-























