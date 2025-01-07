SINTAKSA FIREBIRD
```sql
SELECT
[FIRST (m)] [SKIP (n)] [[ALL] | DISTINCT]
[* | [atribut | izraz | konstanta ] AS alias]
FROM ime_tabele1 [, ime_tabele2, …]
[{[[INNER] | [{LEFT | RIGHT | FULL} [OUTER]] JOIN} <ime_tabelen>] 
ON (pogoj_povezovanja) [{JOIN..]
[WHERE <pogoj_iskanja ali pogoj_povezovanja>]
[GROUP BY <seznam atributov za združevanje>]
[HAVING <pogoj_za_vrednost_funkcije>]
[UNION <stavek_select> [ALL]]
[ORDER BY <sezna_atributov_za_razvrščanje>];
```

SINTAKSA MySQL
```sql
SELECT
[[ALL] | DISTINCT]
[* | [atribut | izraz | konstanta ] AS alias]
FROM ime_tabele1 [, ime_tabele2, …]
[{[[INNER] | [{LEFT | RIGHT } [OUTER]] JOIN} <ime_tabelen>] 
ON (pogoj_povezovanja) [{JOIN..]
[WHERE <pogoj_iskanja ali pogoj_povezovanja>]
[GROUP BY <seznam atributov za združevanje>]
[HAVING <pogoj_za_vrednost_funkcije>]
[UNION <stavek_select> [ALL]]
[ORDER BY <sezna_atributov_za_razvrščanje>]
[LIMIT {[odmik,] št_vrstic];
```

BRANJE PODATKOV IZ ENE TABELE
```sql
SELECT * FROM tabela;
SELECT atr1,atr2,… FROM tabela;
SELECT tabela.atr1,tabela.atr2,… FROM tabela;
Značilnost: vrstice v odgovoru so lahko podvojene!!!

SELECT DISTINCT atr1,atr2,… FROM tabela;
Značilnost: vrstice odgovor niso nikoli podvojene!

SELECT T.atr1,T.atr2,… FROM tabela T;

SELECT atr1,atr2,… FROM tabela 
ORDER BY atrx [ASC|DESC],atry [ASC|DESC],…;
```
SLO sortiranje Firebird
```sql
Create table Primer(
  kljuc integer not null, 
  Priimek char(20) Character set dos852 collate pdox_slo,
  Primary key (kljuc)
);
```
OMEJITVE ST. ZAPISOV
```sql
--firebird
SELECT FIRST n atr1,atr2,… FROM tabela;
SELECT FIRST n SKIP k atr1,atr2,… FROM tabela;
--mysql
SELECT atr1, atr2 FROM tabela LIMIT 10;
SELECT atr1, atr2 FROM tabela LIMIT 5, 10;
```
POGOJNO BRANJE PODATKOV
```sql
SELECT atr1,atr2,… 
FROM tabela 
WHERE (pogoj);
Pogoj je lahko enostaven ali sestavljen iz več pogojev
V pogoju lahko uporabljamo:
primerjalne operatorje : =, <, <=, >, >=, <>, !=
logične operatorje: AND, OR, NOT
operator LIKE v kombinaciji z %  oz. _ (SQL92)
Pogoji, ki se sklicujejo na znake so občutljivi na velike / male črke
Operatorja STARTING WITH, CONTAINIG
Operator BETWEEN spodnja_meja AND zgornja_meja
Operator IN  v kombinaciji z množico elementov ali množico konstant
Operatorje EXISTS, SINGULAR, ALL, ANY, SOME v kombinaciji le ze množico elementov (ANY in SOME sta sinonima, delata enako)
Null vrednost preverjamo z operatorjem IS (IS NULL)
```
PRIMERI:
```sql
Select * from dijak where (priimek='Novak');

Select * from dijak 
where ((razred='R1A') and (priimek like 'M%'));

Select * from dijak 
where razred in ('R1A','R1B','R1C');

Select * from dijak 
where datumrojstva between '1.1.1990' and '31.12.1990';

Select * from dijak where (ime  CONTAINING ‘an'); /* Ivana, Ivan, Janko, …*/

Select * from dijak 
where ((razred LIKE‘_3_') and (vzdevek is null);

Select * from dijak 
where ((razred NOT LIKE 'R%‘) and datumrojstva < '18.2.2000');

Select priimek as ucenec, datumrojstva as rojen from dijak 
where ((datumrojstva like ‘%1995‘) and (vzdevek is NULL) and (priimek starting with ‘A‘));
--se odsvetuje %1995
```
JOIN
```sql
Zunanje povezovanje omogoča povezovanje
Vseh vrstic prve tabele z ustreznimi vrsticami druge tabele (LEFT OUTER JOIN)
če za nek zapis prve tabele ni ustreznega v drugi tabeli, so vrednosti atributov druge tabele NULL
Vseh vrstic druge tabele z ustreznimi vrsticami prve tabele (RIGHT OUTER JOIN)
če za nek zapis druge tabele ni ustreznega v prvi tabeli, so vrednosti atributov prve tabele NULL
Vseh vrstic prve in druge tabele (FULL OUTER JOIN)
pri zapisih, ki nimajo ustreznega v drugi tabeli so vrednosti atributov le-teh NULL
SELECT atributi
FROM tabela1 
LEFT | RIGHT | FULL [OUTER] JOIN tabela2 ON pogoj;
```
