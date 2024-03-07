#neki
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
