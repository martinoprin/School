• DML ukazi so: <p>
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
