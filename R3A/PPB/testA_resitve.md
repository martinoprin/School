TEST A

```sql
1.
ALTER TABLE Izpit
ADD FOREIGN KEY (PredmetID) REFERENCES Predmet(PredmetID);

ALTER TABLE Opravljanje
DROP PRIMARY KEY;

ALTER TABLE Predmet
MODIFY COLUMN ImePredmeta INT;

ALTER TABLE Students
ADD COLUMN PotekStatusa DATE NOT NULL;
```

```sql
2.
-- Ustvarite vlogo 'ucitelj'
CREATE ROLE ucitelj;

-- Dodelite pravice za prikaz, vstavljanje in posodabljanje podatkov v tabeli 'Izpit'
GRANT SELECT, INSERT, UPDATE ON Izpit TO ucitelj;

-- Dodelite pravice za prikaz, vstavljanje in posodabljanje podatkov v tabeli 'Opravljanje'
GRANT SELECT, INSERT, UPDATE ON Opravljanje TO ucitelj;

-- Dodelite vlogo 'ucitelj' uporabniku
GRANT ucitelj TO uporabnik@localhost
```

```sql
3.
-- Ustvarite uporabniški račun 'Nada'@'localhost'
CREATE USER Nada@localhost IDENTIFIED BY 'your_password';

-- Dodelite vlogo 'ucitelj' uporabniku 'Nada'
GRANT ucitelj TO Nada;

-- Dodelite pravice za izpis podatkov iz tabele 'Student' uporabniku 'Nada'
GRANT SELECT ON Student TO Nada;
```

```sql
4.
ALTER USER 'Nada'@'localhost' IDENTIFIED BY 'nada1234';
```

```sql
5.
SHOW GRANTS FOR 'Nada'@'localhost';
```

```sql
6.
-- Prijavite se v MySQL kot 'Nada'
mysql -u Nada -p

-- Ko ste pozvani, vnesite geslo 'nada1234'

-- Izberite bazo podatkov, ki vsebuje tabelo 'Izpit'
USE ime_baze_podatkov;

-- Vnesite novo vrstico v tabelo 'Izpit'
INSERT INTO Izpit (IzpitID, Predmet, Datum, Opombe)
VALUES (1, 'KEM', '03-05-2024', 'prazno');
```
