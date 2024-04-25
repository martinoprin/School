* DML ukazi so: <p>
  – SELECT – poizvedovanje podatkov iz tabelah <p>
  – INSERT – dodajanje zapisov v tabelo <p>
  – UPDATE – spreminjanje podatkov na zapisih v tabeli <p>
  – DELETE – brisanje zapisov iz tabele <p>

```sql
CREATE USER 'username'@'host' IDENTIFIED BY 'password';
SHOW GRANTS FOR user-account;
DROP USER 'username';
ALTER USER 'username' IDENTIFIED BY 'new_password';
REVOKE DELETE ON mydb.mytable FROM 'username';
GRANT SELECT, INSERT ON mydb.* TO 'username';

```
<br>
<br>
<br>

# **DDL** - Data Definition Language

1. CREATE - This command is used to create a new table in the database.
```sql
CREATE TABLE students (
student_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
enrollment_date DATE
last_update CAST(GETDATE() AS DATE)
);
```

2. ALTER - Used to modify an existing table, such as adding a new column or changing a data type:
```sql
ALTER TABLE students ADD email VARCHAR(255);
```

3. DROP - Removes the existing table and its data:
```sql
DROP TABLE students;
```

4. TRUNCATE - Deletes all data from a table without removing the table itself:
```sql
TRUNCATE TABLE students;
```

5. RENAME - Changes the name of a table
```sql
RENAME TABLE students TO alumni;
```
<br>
<br>
<br>

# **DML** - Data Manipulation Language

1. INSERT - Adds new rows of data to a table:
```sql
INSERT INTO students (name, enrollment_date) VALUES ('Author Name', '1984-09-01');
```

2. UPDATE - Modifies existing data in a table:
```sql
UPDATE students SET email = 'john.doe@example.com' WHERE student_id = 1;
```

3. DELETE - Removes rows from a table:
```sql
DELETE FROM students WHERE student_id = 1;
```

4. DELETE, multiple students - Removes multiple rows from a table:
```sql
DELETE FROM students WHERE student_id between 2 and 6;
```

5. SELECT - Retrieves all data from one table:
```sql
SELECT * FROM students;
```

6.  SELECT - Select data between the student_id:
```sql
SELECT * FROM students where student_id between 5 and 8;
```

<br>
<br>
<br>

# **DCL** - Data Control Language


1. GRANT - Gives a user permission to perform specific actions on database objects:
```sql
GRANT SELECT, INSERT ON students TO 'author@email.com';
```

2. REVOKE - Removes specific permissions from a user:
```sql
REVOKE INSERT ON students FROM 'author@email.com';
```

VAJA
```SQL
INSERT INTO Gosti(ime, priimek, kraj_bivanja, datum_rojstva)
VALUES('Danica', 'Jesenicnik', NULL, NULL)
```

```sql
DELETE FROM Gosti
WHERE st_hotela IN(7232, 5478, 2984)
OR cena=0
OR datum_do < 1991-5-25;
```

```sql
UPDATE TABLE Gosti
SET cena = cena*0.85
WHERE ID_gosta=54832
AND hotel_st IN(672, 341);
```

```sql
CREATE TABLE Soba(St_hotela INT, St_sobe INT, Vrsta_sobe varchar(50) NOT NUll,
Nadstropje INT NOT NULL, Pogled VARCHAR(50) NOT NULL, Razpolozljivost DATE NOT NULL, Opombe varchar(200),
PRIMARY KEY (St_hotela, ST_sobe), FOREIGN KEY (St_hotela) REFERENCES Hotel(Hotel_ID));
```
