TEST

  
```sql
1.
-- Ustvarjanje vloge svet_delavec
CREATE ROLE svet_delavec;

-- Dodeljevanje pravic za posodabljanje in brisanje v tabeli students
GRANT UPDATE, DELETE ON students TO svet_delavec;

-- Dodeljevanje pravic za posodabljanje in brisanje v tabeli status
GRANT UPDATE, DELETE ON status TO svet_delavec;
```

```sql
2.
-- Ustvarjanje vloge svet_delavec
CREATE ROLE svet_delavec;

-- Dodeljevanje pravic za posodabljanje in brisanje v tabeli students
GRANT UPDATE, DELETE ON students TO svet_delavec;

-- Dodeljevanje pravic za posodabljanje in brisanje v tabeli status
GRANT UPDATE, DELETE ON status TO svet_delavec;
```

```sql
3.
-- Odvzem pravice do brisanja podatkov iz tabele student vlogi svet_delavec
REVOKE DELETE ON student FROM svet_delavec;
```

```sql
4.
-- Odvzem pravice do brisanja podatkov iz tabele student vlogi svet_delavec
REVOKE DELETE ON student FROM 'svet_delavec'@'localhost';
```

```sql
5.
-- Prijavite se v MySQL kot vojko
mysql -u vojko -p

-- Izberite bazo podatkov (zamenjajte 'your_database' z imenom vaše baze podatkov)
USE your_database;

-- Posodobite vrstico v tabeli student
UPDATE student
SET status = 7
WHERE student_number = 72643 AND status = 5;
```

```sql
6.
ALTER TABLE Izpit
ADD FOREIGN KEY (PredmetID) REFERENCES Predmet(PredmetID);

ALTER TABLE Opravljanje
DROP PRIMARY KEY;

ALTER TABLE Predmet MODIFY COLUMN ImePredmeta INT;

ALTER TABLE Students
ADD COLUMN PotekStatusa DATE NOT NULL;
```


