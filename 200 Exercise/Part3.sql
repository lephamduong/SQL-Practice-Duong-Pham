SELECT * FROM Warehouses;

SELECT * FROM Boxes
WHERE Value >= 150;

SELECT DISTINCT Contents 
FROM Boxes;

SELECT AVG(Value)
FROM Boxes;

SELECT AVG(Value), Warehouse
FROM Boxes
GROUP BY Warehouse;

SELECT AVG(Value), Warehouse
FROM Boxes
GROUP BY Warehouse
HAVING AVG(Value) > 150;

SELECT Boxes.Code, Warehouses.Location
FROM Boxes INNER JOIN Warehouses
ON Boxes.Warehouse = Warehouses.Code;

SELECT Warehouses.Code, COUNT(Boxes.Code)
FROM Warehouses LEFT JOIN Boxes
ON Warehouses.Code = Boxes.Warehouse
GROUP BY Warehouses.Code;

SELECT Warehouses.Code, COUNT(Boxes.Code)
 FROM Warehouses LEFT JOIN Boxes
   ON Warehouses.Code = Boxes.Warehouse
 GROUP BY Warehouses.Code;

 SELECT Code FROM Warehouses
 WHERE Capacity < ( 
	SELECT COUNT(*) FROM Boxes
	WHERE Warehouse = Warehouses.Code);

SELECT Code FROM Boxes
WHERE Warehouse IN (
	SELECT Code FROM Warehouses
	WHERE Location = 'Chicago'
)

INSERT INTO Warehouses (Location, Capacity)
VALUES ('New York', 3);


INSERT INTO Boxes (Code, Value, Warehouse)
VALUES ('H5RT', 'Papers', 200, 2);

UPDATE Boxes 
SET Value = Value * 0.85;

UPDATE Boxes
SET Value = Value * 0.8
WHERE Value > (SELECT AVG(Value) FROM Boxes )

DELETE FROM Boxes
WHERE Value <100;

DELETE FROM Boxes
WHERE Warehouse IN (  SELECT Code FROM Warehouses
 WHERE Capacity < ( 
	SELECT COUNT(*) FROM Boxes
	WHERE Warehouse = Warehouses.Code)
)
