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

Create user martin@localhodt;
show grants for martin@localjost;
create role dijak;
grant dijak to martin@localhost;
select host, user FROM mysql.user
grant select on sola.neki TO dijak;
GRANT INSERT ,UPDATE, DELETE ON sola.neki TO dijak;
SHOW GRANTS FOR dijak;
GRANT SELECT ON *.* TO dijak


mysqldump -u root -p --system=all --insert-ignore

