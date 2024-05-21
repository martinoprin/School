```sql
SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index
```
```sql
SELECT * FROM Customers;
SELECT DISTINCT Country FROM Customers;
SELECT COUNT(DISTINCT Country) FROM Customers;

SELECT * FROM Customers
WHERE Country='Mexico' AND CustomerID > 80
ORDER BY Price ASC/DESC;  //ASC/DESC(OPTIONAL)  

SELECT *
FROM Customers
WHERE NOT Country = 'Spain' AND CustomerName NOT LIKE 'G%';

SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');
```
