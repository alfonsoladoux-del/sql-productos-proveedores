-- Cantidad de productos por proveedor
SELECT s.SupplierName, COUNT(*) AS cantidad_productos
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierName
ORDER BY cantidad_productos DESC;

-- Precio promedio por proveedor mayor a 40
SELECT s.SupplierName, AVG(p.Price) AS precio_promedio
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierName
HAVING AVG(p.Price) > 40;
