--1
SELECT s.ime, s.priimek, n.DATUM_NAJEMA, p.POREKLO FROM STRANKA s
INNER JOIN NAJEM n on (s.EMSO = n.EMSO)
INNER JOIN PROIZVAJALEC p ON (p.PROIZVAJALECID = n.PROIZVAJALECID)
WHERE EXTRACT(YEAR FROM (n.DATUM_NAJEMA)) = '2012' 
AND p.POREKLO = 'Italija' AND s.EMSO IN
    (SELECT n.EMSO 
    FROM Najem n 
    INNER JOIN Proizvajalec p 
    ON (n.PROIZVAJALECID = p.PROIZVAJALECID)
    WHERE p.POREKLO = 'Nemcija'); 




--2
SELECT s.ime, s.priimek, s.EMSO FROM STRANKA s
INNER JOIN NAJEM n on (s.EMSO = n.EMSO)
INNER JOIN VOZILO v ON (v.serstev = n.serstev)
WHERE pogon = 'Vsa kolesa' 
AND s.EMSO NOT IN
(SELECT n.EMSO FROM NAJEM n 
INNER JOIN Proizvajalec p ON (n.PROIZVAJALECID = p.PROIZVAJALECID) 
WHERE p.POREKLO = 'Vsa kolesa');




--3
SELECT s.EMSO FROM STRANKA s
INNER JOIN NAJEM n on (s.EMSO = n.EMSO)
INNER JOIN VOZILO v ON (n.serstev = v.serstev)
WHERE EXTRACT(YEAR FROM (n.DATUM_NAJEMA)) = '2011' 
AND EXTRACT(MONTH FROM (n.DATUM_NAJEMA)) <= '11'
AND EXTRACT(MONTH FROM (n.DATUM_NAJEMA)) >= '2'
GROUP BY s.EMSO
HAVING COUNT(n.serstev) = COUNT(v.serstev);



--4.1
CREATE TABLE KriticneStranke(
emso int not null primary key,
ime varchar(20) not null,
priimek varchar(20) not null,
letnik int not null);

--4.2
INSERT INTO KriticneStranke(emso, ime, priimek, letnik)
SELECT s.EMSO, s.ime, s.priimek, s.letnik FROM STRANKA s
INNER JOIN voznisko_dovoljenje v ON (s.EMSO = v.EMSO)
WHERE v.kazenske_tocke > 10;




--5.1
SELECT FIRST 1 p.znamka, p.poreklo
FROM Proizvajalec p
INNER JOIN Najem n 
ON n.proizvajalecid = p.proizvajalecid
GROUP BY p.znamka, p.poreklo
ORDER BY COUNT(n.serstev) DESC;

--5.2
SELECT p.znamka, p.poreklo
FROM Proizvajalec p
INNER JOIN Najem n 
ON n.proizvajalecid = p.proizvajalecid
GROUP BY p.znamka, p.poreklo
HAVING COUNT(N.SerStev) = 
(SELECT FIRST 1 COUNT(N.SerStev) AS koliko FROM Najem N
GROUP BY ProizvajalecID
ORDER BY Koliko DESC);




--6
SELECT s.ime, s.priimek, sum(cena_na_dan * stev_dni - (cena_na_dan * stev_dni * popust))
FROM STRANKA s
LEFT JOIN placilo p
ON s.emso = p.emso
group by ime, priimek
having sum(cena_na_dan * stev_dni - (cena_na_dan * stev_dni * popust)) >= 500;




--7
CREATE VIEW NajvecIzposojenProizvajalec AS
SELECT p.znamka, p.poreklo, COUNT(n.serstev) AS koliko
FROM Proizvajalec p
INNER JOIN Najem n 
ON n.proizvajalecid = p.proizvajalecid
GROUP BY p.znamka, p.poreklo;

SELECT znamka || ' je izposojen največkrat!' AS rezultat
FROM NajvecIzposojenProizvajalec
ORDER BY koliko DESC
FETCH FIRST 1 ROWS ONLY;




--8
CREATE VIEW SteviloIzposoj AS
SELECT s.ime || ' ' || SUBSTR(s.priimek, 1, 1) || '. se je izposodila ' || COUNT(n.serstev) || ' vozil.' AS rezultat
FROM STRANKA s
INNER JOIN NAJEM n ON s.EMSO = n.EMSO
GROUP BY s.ime, s.priimek;

UPDATE STRANKA
SET priimek = UPPER(priimek);

