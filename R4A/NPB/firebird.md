cd ../firebird>isql -user sysdba -password masterkey
CONNECT 'path_to_database.fdb' USER 'username' PASSWORD 'password';

```sql
create database 'c:\vaje\hoteli.fdb' user 'sysdba' password 'masterkey' default character set ISO8859_2;
connect 'c:\vaje\hoteli.fdb' user 'sysdba' password 'masterkey‘; 

SHOW TABLES;
SHOW TABLE table_name;
DESCRIBE table_name;

CREATE TABLE table_name (
    column1_name datatype [constraints],
    column2_name datatype [constraints],
    ...
);
DROP TABLE table_name;
SELECT * FROM table_name;
INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);
UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;
DELETE FROM table_name WHERE condition;

CREATE USER username PASSWORD 'password';
ALTER USER username SET PASSWORD 'new_password';
DROP USER username;

SHOW DOMAIN;
SHOW DOMAIN domain_name;

```
KREIRANJE DOMENE
```sql
CREATE DOMAIN ime_domene tip_domene
[DEFAULT literal |NULL |USER]
[NOT NULL] [CHECK (pogoji)];

CREATE DOMAIN Ocena_univerza INTEGER DEFAULT 1 NOT NULL CHECK (VALUE between 1 and 10);
CREATE DOMAIN DTelefon char(20)
CHECK (VALUE like '(0%)%');
CREATE DOMAIN DSpol CHAR(1) NOT NULL
CHECK (VALUE IN ('M','Ž'));
```
SPREMINJANJE DOMENE
```sql
ALTER DOMAIN { ime | staro_ime TO novo_ime }{
[SET DEFAULT {literal | NULL | USER | ….}]
| [DROP DEFAULT]
| [ADD [CONSTRAINT] CHECK (<pogoji>)]
| [DROP CONSTRAINT]
|TYPE tip_domene };
Primeri:
ALTER DOMAIN DTip_davka TO Domena_DDV;
ALTER DOMAIN Dspol SET DEFAULT 'M';
```
BRISANJE DOMENE
```sql
DROP DOMAIN ime_domene;
```
KREIRANJE TABELE
```sql
CREATE TABLE ime_tabele (
Atribut1 tip [omejitve],
Atribut2 tip [omejitve],
...
Primary key (atribut,…)
Foreign key (atribut,…) references …);
--OMEJITVE
Default vrednost
NOT NULL
UNIQUE
CHECK (pogoj)
REFERENCES tabela (atribut) ON DELETE akcija ON UPDATE akcija; 
-- akcija = no action | cascade | set default | set null
-- z akcijo določimo tip referencialne integritete 

```
PRIMER KREIRANJA <br>
CD(<u>CDID:N</u>, Naslov:A30,Cena:N) <br>
Posnetek (<u>CDID->CD,ZapSt:N</u>,NaslovPosnetka:C30,Trajanje:D)

```sql
CREATE TABLE cd (
cdid INTEGER NOT NULL CHECK (cdid>0),
naslov CHAR(30) NOT NULL,
cena DECIMAL(6,2) NOT NULL,
PRIMARY KEY(cdid));

CREATE TABLE posnetek(
cdid INTEGER NOT NULL REFERENCES cd(cdid),
zapst INTEGER NOT NULL CHECK (zapst>0),
naslovposnetka CHAR(30) NOT NULL,
trajanje TIME NOT NULL,
PRIMARY KEY(cdid,zapst));

```
DODAJANJE/BRISANJE ATRIBUTOV
```sql
ALTER TABLE  ime_tabele ADD  atribut  tip [omejitve];
ALTER TABLE  ime_tabele DROP  atribut;

alter table stranka add davSt bigint not null primary key;
alter table stranka drop ZacasniNaslov;

```
SPREMINJANJE STOLPCEV
```sql
ALTER TABLE ime_tabele  ALTER [COLUMN] ime_atributa sprememba;
Spremembe:
    TO novo_ime
    TYPE novi_tip
    POSITION nova_pozicija
alter table stranka alter column priimek type char(50);
alter table stranka alter column davcnast position 1;
```
SPREMINJANJE INTEGRITETNIH OMEJITEV
```sql
ALTER TABLE ime_tabele ADD [CONSTRAINT ime_omejitve] opis_omejitve;
Možne omejitve: PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK

alter table oseba add constraint pk_oseba primary key(emso);
alter table stranka add constraint ime_nn check (ime is not null) ;
```
BRISANJE TABELE
```sql
DROP TABLE ime_tabele;
```
