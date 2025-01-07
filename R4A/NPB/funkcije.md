```sql
Združevanje nizov (konkatenacija)
operator || oz. concat (mySQL)
SELECT d.Priimek || ', ' || d.Ime AS Kandidat
FROM Dijak d; /* izpiše Novak, Janez */

Pretvorba v male/velike črke
funkciji LOWER(atribut) / UPPER(atribut)
SELECT upper(d.Priimek) || ' ' || d.Ime
FROM Dijak d; /* izpiše NOVAK Janez */

Podniz niza
funkcija SUBSTRING (atribut FROM pozicija FOR dolžina)
SELECT SUBSTRING(d.Ime FROM 1 FOR 1) || '. ' || d.Priimek As Kandidat
FROM Dijak d; /* izpiše J. Novak */

CAST
SELECT d.Priimek || ' je rojen ' || CAST(d.datumRojstva AS CHAR(10)) As Kandidat
FROM Dijak d;

SELECT d.Priimek || ' je dosegel ' || CAST(Tocke as char(3)) || ' točk.'
FROM Dijak d;

DATE
  Izločanje dela datumske vrednosti
    funkcija EXTRACT (polje FROM atribut)
    polje = Year | Month | Day | Hour | Minute – vrne tip SMALLINT
    Polje = Second – vrne tip DECIMAL(6,4)
    Polje = WeekDay – vrne vrednosti 0 do 6
    Polje = YearDay – vrne vrednosti 1 do 366
  Vgrajene spremenljivke
    Current_date 
    Vrne sistemski datum
    Current_time
    Vrne sistemski čas
    Current_timestamp
    Vrne sistemski datum in čas

```
Aritmetične operacije in datumski podatki
```sql
Datumskem podatku (tip DATE) lahko
Prištejemo vrednost x, ki je tipa integer– izraz vrne datum, ki bo čez x dni
Odštejemo vrednost x, ki je tipa integer – izraz vrne datum, ki je bil pred x dni
Časovnemu podatku (tip TIME) lahko
Prištejemo vrednost x, ki je tipa float – izraz vrne čas, ki bo čez x sekund
Odštejemo vrednost x, ki je tipa float – izraz vrne čas, ki je bil pred x sekund
Datumsko/časovnemu podatku (tip TIMESTAMP) lahko 
Prištejemo vrednost x, ki je tipa float – izraz vrne čas, ki bo čez x dni
Odštejemo vrednost x, ki je tipa float – izraz vrne čas, ki je bil pred x dni

PRIMERI:
SELECT d.Priimek, d.Ime
FROM Dijak d
WHERE (extract(Year from d.datumRojstva)=2000);

SELECT d.Priimek ||' je rojen ' || cast(extract(Year from datumRojstva) as char(4))
FROM Dijak d
Where d.Razred='R1A';

SELECT extract(Year from datumRojstva) AS Letnik,
       count(DijakID) AS stevilo_dijakov
FROM Dijak d
GROUP BY Letnik;

SELECT * FROM Dijak where
(extract(day from DatumRojstva) = extract(day from current_date -1)) and
(extract(month from DatumRojstva) = extract(month from current_date - 1));
```
FIREBIRD DODATNE FUNKCIJE
```sql
  Imenujejo se UDF (user defined functions)
Nahajajo se v mapi Firebird\UDF
Po namestitvi SUPB so na voljo 3 knjižnice funkcij
Skripta za uvoz funkcij v PB so v datotekah
Ib_udf.sql
Ib_udf2.sql
Fbudf.sql
V PB jih uvozimo s stavkom 
in 'disk:\pot\ime_datoteke';
Primer: 
SQL> in 'c:\program files\firebird\firebird_2_5\fbudf.sql';

FBUDF
Dow(atribut) 
Dow('25.2.2011')  /* vrne 'petek' */
SDow(atribut) // 'short' oblika dneva
SDow('25.2.2011')  /* vrne 'pet' */
Right(atribut,st_znakov)
Right('Danes je petek.   ', 11) /* vrne 'e petek.   '*/
AddYear(atribut,st_let)
addYear('15.1.2011',1) /* vrne '15.1.2012' */
addYear('29.2.2008',1) /* vrne '1.3.2009' */
AddWeek(atribut,st_tednov)
AddMonth(atribut,st_mesecev)
AddDay(atribut,st_dni)
IsLeapYear(atribut)
IsLeapYear('15.1.2011') /* vrne 0 */
IsLeapYear('29.2.2008') /* vrne 1 */
Round(atribut)
Round(1.50) /* vrne 2 */
Round(1.49) /* vrne 1 */

IB_UDF2
Ascii_char(atribut)
Ascii_char(65) /* vrne 'A' */
Ascii_val(atribut)
Ascii_val('A') /* vrne 65 */
Strlen(atribut)
Strlen('Dober dan') /* vrne 9 */
Div (stevec,imenovalec)
Div (7,5) /* vrne 1.00 */
Mod(stevec,imenovalec)
Mod (7,5) /* vrne 2 */
Rtrim(atribut)
Rtrim('Danes je petek.   ')  /* vrne 'Danes je petek.' */
Ltrim(atribut)
Ltrim(' Danes je petek.   ') /* vrne 'Danes je petek.   ' */
Substr(atribut, zacetek,konec)
substr('Danes je petek.',3,7) /* vrne 'nes j' */
Srand()
Srand() /* vrne naključno realno število iz intervala [0..1] */
Udf_frac(atribut)
Udf_frac(3.75) /* vrne 0.75 */
Truncate(atribut)
Truncate(3.75) /* vrne 3 */

```
