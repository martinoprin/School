c:\program files\mysql ali c:\...\xamp\mysql
Uporabniško ime = root
Geslo = 
<br>
```sql
--Izvoz
mysqldump --user=root --password= --databases ImeBaze > skripta.sql
--Uvoz
mysql --verbose --user= root --password= < skripta.sql
```
KREIRANJE PB
```sql
CREATE DATABASE ime_baze;
Create database hoteli;
Use hoteli;
show create database;
```
Povezovanje s PB
```sql
CONNECT  ime_baze ime_strežnika; ali le CONNECT;
Connect hoteli localhost;
USE  ime_baze;
```
Brisanje PB
```sql
DROP DATABASE ime_podatkovne_baze;
```
KREIRANJE PB in NASTAVITEV KODNE TABELE znakov
```sql
CREATE DATABASE ime_baze;
    [[DEFAULT] CHARACTER SET charset_name]
    [[DEFAULT] COLLATE collation_name]
--Primer:
	CREATE DATABASE ime_baze CHARACTER SET latin1 COLLATE latin1_swedish_ci;

--V zgornjem primeru smo kodno tabelo za celotno bazo nastavili na latin1, pravila za primerjavo znakov (collate) pa na latin1_swedish_ci. V kolikor ne navedemo collate opcije, se izberejo privzeta pravila, ki so določena za vsak kodno tabelo.

--Za uporabo slovenskih znakov je običajno dovolj, da napišemo:
  CREATE DATABASE ime_baze CHARACTER SET utf-8;
```
KREIRANJE TABELE
```sql
CREATE TABLE ime_tabele (
  Atribut1 tip [omejitve],
  Atribut2 tip [omejitve],
  ...
  Primary key (atribut,…)
  Foreign key (atribut,…) references …)
ENGINE = tip
-- dodatni atributi tabele
;
Omejitve
  auto_increment
  Default vrednost
  NOT NULL
  UNIQUE
  CHECK (pogoj)
  REFERENCES tabela (atribut) ON DELETE akcija ON UPDATE akcija; 
-- akcija = restrict| cascade | set default | set null
-- z akcijo določimo tip referencialne integritete 
```
PRIMER KREIRANJA
```sql
--Kraji(krajID:N, imeKraja:A20)
create table Kraji(
 krajID int not null auto_increment,
 imeKraja char(20) not null,
 opisKraja char(20),
 PRIMARY KEY(krajid))
 ENGINE = innoDB
 auto_increment=100
 character set utf8;

--najpogostejši vrednosti za ENGINE sta innoDB in MyISAM

--Hoteli(HotelID:N, imeHotela:A20, st_zvezdic:N, krajID:N->Kraji)

create table Hoteli(
	HotelID int not null auto_increment,
	ImeHotela char(20) not null,
	St_zvezdic ENUM('*','**','***','****','*****','******','*******'),
	krajID int not null,
	primary key(hotelID),
	constraint senahaja foreign key (krajID)
	references kraji(krajID) 
	on delete restrict on update cascade)
engine=innoDB
character set utf8;

pred vnosom vrednost v ENUM tip je pametno nastaviti:
set @@global.sql_mode='strict_all_tables'; // SUPB poskrbi za zavračanje vseh neveljavnih vnosov
previdno pri vnosu vrednosti v ENUM tip, katerega vrednosti so podobne številom, hitro pride do zamenjave vrednost <->indeks -> nepisano pravilo, da je ENUM tip namenjen stringom
```
DODAJANJE/BRISANJE ATRIBUTOV
```sql
ALTER TABLE  ime_tabele ADD  atribut1 tip [omejitve] [FIRST |AFTER atributx ];
ALTER TABLE  ime_tabele DROP  atribut;

alter table hoteli add opis char(20) after imehotela;;
alter table kraji drop opisKraja;
```
SPREMINJANJE STOLPCEV
```sql
ALTER TABLE ime_tabele MODIFY [COLUMN] atribut opis atributa [FIRST | AFTER atributx];
ALTER TABLE ime_tabele CHANGE [COLUMN] staro_ime1 novo_ime1 opis_atributa [FIRST|AFTER atributx]
alter table hoteli modify opis char(8) not null;
alter table hoteli change opis opisHotela char(8) not null;
```
SPREMINJANJE INTEGRITETNIH OMEJITEV
```sql
ALTER TABLE ime_tabele ADD CONSTRAINT ime_imejitve PRIMARY KEY (ime_atributa)
ALTER TABLE ime_tabele ADD CONSTRAINT ime_imejitve FOREIGN KEY (ime_atributa) referenc_integriteta
DROP PRIMARY KEY
DROP FOREIGN KEY ime_omejitve

alter table oseba add constraint pk_oseba primary key(emso);
alter table stranka add constraint ime_nn check (ime is not null) ;
alter table sola add constraint abc unique(naslov);
```
BRISANJE TABELE
```sql
DROP TABLE ime_tabele;
```
```sql
```
```sql
```
