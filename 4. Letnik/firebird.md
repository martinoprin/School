cd ../firebird>isql -user sysdba -password masterkey
CONNECT 'path_to_database.fdb' USER 'username' PASSWORD 'password';

```firebird
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

