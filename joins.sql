USE PaulsDB

CREATE TABLE suppliers(
	SupplierID varchar(4),
	SupplierName varchar(20)
)

CREATE TABLE orders(
	OrderID int,
	SupplierID varchar(4),
	OrderDate int
)

INSERT INTO suppliers(SupplierID, SupplierName)
VALUES
('S1', 'supplier_1'),
('S2', 'supplier_2'),
('S3', 'supplier_3'),
('S4', 'supplier_4')

INSERT INTO orders(OrderID, SupplierID, OrderDate)
VALUES
(1001, 'S1', 2023),
(1002, 'S2', 2024),
(1003, 'S5', 2025)

