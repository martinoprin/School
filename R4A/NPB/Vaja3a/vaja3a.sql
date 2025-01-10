<<<<<<< HEAD
SELECT p.ImeProdajalca, p.PriimekProdajalca, AVG(pr.ProcPopusta) AS PovprecniPopust 
FROM Prodajalec p
INNER JOIN Prodaja pr ON (p.ProdajalecID = pr.ProdajalecID)
GROUP BY p.ImeProdajalca, p.PriimekProdajalca
HAVING AVG(pr.ProcPopusta) >= 0.07
ORDER BY PovprecniPopust DESC;

SELECT 'Prodajalec '||substring(p.ImeProdajalca FROM 1 FOR 1)|| '. ' ||p.PriimekProdajalca ||'se ni prodal nobenega vozila' as kratkoime, count(pr.VoziloID)
FROM Prodajalec p
LEFT OUTER JOIN Prodaja pr ON (p.ProdajalecID = pr.ProdajalecID)
WHERE VoziloID IS NULL
GROUP BY p.PriimekProdajalca, p.ImeProdajalca, p.ProdajalecID;

SELECT first 1 extract(month from pr.DatumProdaje) AS mesec, COUNT(pr.VoziloID) AS SteviloProdanihVozil
FROM Prodaja pr
GROUP BY extract(month from pr.DatumProdaje)
ORDER BY SteviloProdanihVozil desc;

SELECT v.Znamka FROM Vozilo v
JOIN Prodaja pr ON (pr.VoziloID = v.VoziloID)
JOIN Kupec k ON (k.DavSt = pr.DavSt)
WHERE UPPER(k.KrajKupca) = 'MARIBOR'
GROUP BY v.Znamka;



=======
SELECT p.ImeProdajalca, p.PriimekProdajalca, AVG(pr.ProcPopusta) AS PovprecniPopust 
FROM Prodajalec p
INNER JOIN Prodaja pr ON (p.ProdajalecID = pr.ProdajalecID)
GROUP BY p.ImeProdajalca, p.PriimekProdajalca
HAVING AVG(pr.ProcPopusta) >= 0.07
ORDER BY PovprecniPopust DESC;

SELECT 'Prodajalec '||substring(p.ImeProdajalca FROM 1 FOR 1)|| '. ' ||p.PriimekProdajalca ||'se ni prodal nobenega vozila' as kratkoime, count(pr.VoziloID)
FROM Prodajalec p
LEFT OUTER JOIN Prodaja pr ON (p.ProdajalecID = pr.ProdajalecID)
WHERE VoziloID IS NULL
GROUP BY p.PriimekProdajalca, p.ImeProdajalca, p.ProdajalecID;

SELECT first 1 extract(month from pr.DatumProdaje) AS mesec, COUNT(pr.VoziloID) AS SteviloProdanihVozil
FROM Prodaja pr
GROUP BY extract(month from pr.DatumProdaje)
ORDER BY SteviloProdanihVozil desc;

SELECT v.Znamka FROM Vozilo v
JOIN Prodaja pr ON (pr.VoziloID = v.VoziloID)
JOIN Kupec k ON (k.DavSt = pr.DavSt)
WHERE UPPER(k.KrajKupca) = 'MARIBOR'
GROUP BY v.Znamka;



>>>>>>> 1a8fd79c76eec120d9df217f096fe8028ab7940f
