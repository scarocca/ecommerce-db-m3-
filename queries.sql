-- 1. Búsqueda de productos por nombre
SELECT *
FROM productos
WHERE nombre ILIKE '%samsung%';

-- 2. Top N productos más vendidos (por cantidad)
SELECT p.nombre, SUM(dv.cantidad) AS total_vendido
FROM detalle_venta dv
JOIN productos p ON p.id_producto = dv.id_producto
GROUP BY p.nombre
ORDER BY total_vendido DESC
LIMIT 10;

-- 3. Ventas por mes (cantidad y monto)
SELECT DATE_TRUNC('month', v.fecha) AS mes,
       COUNT(v.id_venta) AS total_ventas,
       SUM(v.total) AS monto_total
FROM ventas v
GROUP BY mes
ORDER BY mes;

-- 4. Ticket promedio en un rango de fechas
SELECT AVG(total) AS ticket_promedio
FROM ventas
WHERE fecha BETWEEN '2025-01-01' AND '2025-12-31';

-- 5. Productos con stock bajo (umbral configurable)
SELECT *
FROM productos
WHERE stock < 10;

-- 6. Productos sin ventas
SELECT p.*
FROM productos p
LEFT JOIN detalle_venta dv ON dv.id_producto = p.id_producto
WHERE dv.id_producto IS NULL;

-- 7. Clientes frecuentes (al menos X compras)
SELECT c.nombre, COUNT(v.id_venta) AS compras
FROM clientes c
JOIN ventas v ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente
HAVING COUNT(v.id_venta) >= 2;

-- 8. Total gastado por cliente
SELECT c.nombre, SUM(v.total) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.nombre
ORDER BY total_gastado DESC;

-- 9. Detalle completo de todas las ventas
SELECT v.id_venta, v.fecha, c.nombre AS cliente,
       p.nombre AS producto, dv.cantidad, dv.precio_unitario,
       (dv.cantidad * dv.precio_unitario) AS subtotal
FROM detalle_venta dv
JOIN ventas v ON dv.id_venta = v.id_venta
JOIN productos p ON dv.id_producto = p.id_producto
JOIN clientes c ON v.id_cliente = c.id_cliente
ORDER BY v.id_venta;

-- 10. Ventas por producto (monto total generado)
SELECT p.nombre AS producto,
       SUM(dv.cantidad * dv.precio_unitario) AS monto_generado
FROM productos p
JOIN detalle_venta dv ON dv.id_producto = p.id_producto
GROUP BY p.nombre
ORDER BY monto_generado DESC;


select c.nombre as nombre ,v.id_venta as ventas,v.fecha as fecha
from clientes c
join ventas v
on v.id_cliente = c.id_cliente;

