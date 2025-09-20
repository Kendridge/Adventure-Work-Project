-------------------
-- CREATE VIEW CALENDAR 
--------------------
CREATE VIEW gold.Calendar 
AS
SELECT * 
FROM OPENROWSET(BULK 'https://storagedatalakeaw.blob.core.windows.net/silver/AdventureWorks_Calendar/',
                FORMAT = 'PARQUET') as Query1


-------------------
-- CREATE VIEW CUSTOMERS
--------------------
CREATE VIEW gold.Customers 
AS
SELECT * 
FROM OPENROWSET(BULK 'https://storagedatalakeaw.blob.core.windows.net/silver/AdventureWorks_Customers/',
                FORMAT = 'PARQUET') as Query1 


-------------------
-- CREATE VIEW Product_Subcategories 
--------------------
CREATE VIEW gold.Product_Subcategories 
AS
SELECT * 
FROM OPENROWSET(BULK 'https://storagedatalakeaw.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
                FORMAT = 'PARQUET') as Query1


-------------------
-- CREATE VIEW Territories 
--------------------
CREATE VIEW gold.Territories
AS
SELECT * 
FROM OPENROWSET(BULK 'https://storagedatalakeaw.blob.core.windows.net/silver/AdventureWorks_Product_Territories/',
                FORMAT = 'PARQUET') as Query1


-------------------
-- CREATE VIEW Products
--------------------
CREATE VIEW gold.Products
AS
SELECT * 
FROM OPENROWSET(BULK 'https://storagedatalakeaw.blob.core.windows.net/silver/AdventureWorks_Products/',
                FORMAT = 'PARQUET') as Query1 


-------------------
-- CREATE VIEW Returns 
--------------------
CREATE VIEW gold.Returns 
AS
SELECT * 
FROM OPENROWSET(BULK 'https://storagedatalakeaw.blob.core.windows.net/silver/AdventureWorks_Returns/',
                FORMAT = 'PARQUET') as Query1 



-------------------
-- CREATE VIEW Sales
--------------------
CREATE VIEW gold.Sales 
AS
SELECT * 
FROM OPENROWSET(BULK 'https://storagedatalakeaw.blob.core.windows.net/silver/AdventureWorks_Sales/',
                FORMAT = 'PARQUET') as Query1