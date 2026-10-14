-- 1. Cantidad de productos por proveedor
SELECT s.SupplierName, COUNT(*) AS cantidad_productos
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierName
ORDER BY cantidad_productos DESC;

-- 2. Proveedores con precio promedio mayor a 40
SELECT s.SupplierName, AVG(p.Price) AS precio_promedio
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierName
HAVING AVG(p.Price) > 40;

-- 3. Productos con precio mayor al promedio general (subconsulta)
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products)
ORDER BY Price DESC;

-- 4. Los 5 productos más caros con su proveedor
SELECT p.ProductName, s.SupplierName, p.Price
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
ORDER BY p.Price DESC
LIMIT 5;

-- 5. Cantidad de proveedores y productos por país
SELECT s.Country,
       COUNT(DISTINCT s.SupplierID) AS proveedores,
       COUNT(p.ProductID) AS productos
FROM Suppliers s
LEFT JOIN Products p ON p.SupplierID = s.SupplierID
GROUP BY s.Country
ORDER BY productos DESC;
