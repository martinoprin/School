start mysql v xamppu
```
mysql -u root -p  //gres notr v mariaDB
```
nardis database //CREATE DATABASE sola

gres nazaj //
```
exit
```
loh iz sola.sql fila ce mas narjenga importas v solo
```
mysql -u root -p sola < skola.sql;
SHOW DATABASES; // pokaze use baze

USE "Ime_database"; // gremo notr v bazo

SHOW TABLES; // pokaze tabele v bazi

SELECT * FROM dijak;
```

```
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
```
ce pozabs dodat primary key
```
ALTER TABLE Persons
ADD PRIMARY KEY (ID);
```