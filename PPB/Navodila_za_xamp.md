start mysql v xamppu
```sql
mysql -u root -p  //gres notr v mariaDB
```
nardis database //CREATE DATABASE sola

gres nazaj //
```sql
exit
```
loh iz sola.sql fila ce mas narjenga importas v solo
```sql
mysql -u root -p sola < skola.sql;
SHOW DATABASES; // pokaze use baze

USE "Ime_database"; // gremo notr v bazo

SHOW TABLES; // pokaze tabele v bazi

SELECT * FROM dijak;
```

```sql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
```
ce pozabs dodat primary key
```sql
ALTER TABLE Persons
ADD PRIMARY KEY (ID);
```

```sql
mysqldump -u root -p imebaze > imedatoteke.sql
```
