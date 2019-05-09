DROP USER dojo CASCADE;
CREATE USER dojo IDENTIFIED BY pass
  DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp;
  GRANT RESOURCE TO dojo;
  GRANT CONNECT TO dojo;
  GRANT INHERIT PRIVILEGES ON USER dojo TO UT3;
  ALTER USER dojo quota unlimited on users;
/

-- ALTER USER <user> quota unlimited on <tablespace name>;?
