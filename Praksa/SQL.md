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

MIN() - returns the smallest value within the selected column
MAX() - returns the largest value within the selected column
COUNT() - returns the number of rows in a set
SUM() - returns the total sum of a numerical column
AVG() - returns the average value of a numerical column
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
WHERE City NOT IN ('Paris', 'London') AND Address IS NULL;;
```
INSERT INTO
```sql
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
```
UPDATE
```sql
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;
```
DELETE
```sql
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
DROP TABLE Customers;
```
