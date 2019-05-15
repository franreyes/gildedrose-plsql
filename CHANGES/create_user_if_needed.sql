--DROP USER gildedrose CASCADE;
CREATE USER gildedrose IDENTIFIED BY pass
  DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp;
  GRANT RESOURCE TO gildedrose;
  GRANT CONNECT TO gildedrose;
  GRANT INHERIT PRIVILEGES ON USER gildedrose TO UT3;
  ALTER USER gildedrose quota unlimited on users;
/