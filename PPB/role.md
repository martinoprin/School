• DML ukazi so:
  – SELECT – poizvedovanje podatkov iz tabelah
  – INSERT – dodajanje zapisov v tabelo
  – UPDATE – spreminjanje podatkov na zapisih v tabeli
  – DELETE – brisanje zapisov iz tabele

```sql
CREATE USER 'username'@'host' IDENTIFIED BY 'password';
SHOW GRANTS FOR user-account;
DROP USER 'username';
ALTER USER 'username' IDENTIFIED BY 'new_password';
REVOKE DELETE ON mydb.mytable FROM 'username';
GRANT SELECT, INSERT ON mydb.* TO 'username';

```
