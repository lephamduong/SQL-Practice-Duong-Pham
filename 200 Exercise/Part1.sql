SELECT * FROM Manufacturers
SELECT * FROM Products;
SELECT Name FROM PRODUCTS
SELECT Name, Price FROM PRODUCTS
SELECT Name, Price 
FROM PRODUCTS
WHERE Price <=200
SELECT Name, Price 
FROM PRODUCTS
WHERE Price BETWEEN 60 and 120
SELECT Name, CONCAT(Price*100, ' cents') AS 'Price in Cent'
FROM Products
SELECT name, concat(price*100, ' cents') from products;
SELECT AVG(Price) AS Average FROM Products
SELECT AVG(Price) AS Average2
FROM Products
WHERE Manufacturer = 2
select count(*) from products where price>=180;
SELECT Name, Price FROM Products
WHERE Price>=180
ORDER BY PRICE DESC, NAME ASC

SELECT Products.*, Manufacturers.Name
FROM Products JOIN Manufacturers
ON (Products.Manufacturer = Manufacturers.code);

SELECT Products.Name, Price, Manufacturers.Name
FROM Products JOIN Manufacturers
ON Products.Manufacturer = Manufacturers.code

SELECT AVG(Price) AS AveragePrice, Manufacturer
FROM Products
GROUP BY Manufacturer

SELECT AVG(Products.Price) AS AveragePrice, Manufacturers.Name
FROM Products JOIN Manufacturers
ON Products.Code= Manufacturers.Code
GROUP BY Manufacturers.Name

SELECT AVG(Price), Manufacturers.Name
   FROM Products, Manufacturers
   WHERE Products.Manufacturer = Manufacturers.Code
   GROUP BY Manufacturers.Name
   HAVING AVG(Price) >= 150;

SELECT Name, Price FROM Products
WHERE Price=(SELECT MIN(Price) FROM PRODUCTS);


SELECT MAX(Price) Price, MAX(Name) Name, Manufacturer_Name
FROM (SELECT Products.Name, Products.Price, Manufacturers.Name as 'Manufacturer_Name' 
FROM Products INNER JOIN Manufacturers
ON Products.Manufacturer = Manufacturers.code) AS hello
GROUP BY Manufacturer_Name
ORDER BY Price

SELECT Products.Name, Products.Price, Manufacturers.Name
   FROM Products INNER JOIN Manufacturers
   ON Products.Manufacturer = Manufacturers.Code
     AND Products.Price =
     (
       SELECT MAX(Products.Price)
         FROM Products
         WHERE Products.Manufacturer = Manufacturers.Code
     )
	 ORDER BY Products.Price;
	
SELECT Manufacturers.Name, AVG(Products.Price), COUNT(Products.Manufacturer)
FROM Manufacturers, Products
WHERE Manufacturers.Code = Products.Manufacturer
GROUP BY Manufacturers.Name , Products.Manufacturer
HAVING AVG(Products.Price) >145 and COUNT(Products.Manufacturer) >=2

INSERT INTO Products
VALUES (11, 'Loudspeaker', 70, 2)

UPDATE Products
Set Name = 'Laser Printer'
Where Code = 8
UPDATE Products
Set Price = Price*9/10

UPDATE Products
Set = Price = Price*9/10
WHERE Price >=120
