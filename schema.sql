CREATE TABLE Suppliers (
  SupplierID INTEGER PRIMARY KEY,
  SupplierName TEXT,
  Country TEXT
);

CREATE TABLE Products (
  ProductID INTEGER PRIMARY KEY,
  ProductName TEXT,
  SupplierID INTEGER,
  Price REAL,
  FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
