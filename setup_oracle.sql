# bin/setup_oracle.sql

CREATE BIGFILE TABLESPACE myproject_development DATAFILE 'myproject_development.dat' SIZE 100M AUTOEXTEND ON;
GRANT CONNECT, RESOURCE TO myproject_development IDENTIFIED BY myproject_development;
ALTER USER myproject_development DEFAULT TABLESPACE myproject_development TEMPORARY TABLESPACE temp;
ALTER USER myproject_development quota 100M on myproject_development;

CREATE BIGFILE TABLESPACE myproject_test DATAFILE 'myproject_test.dat' SIZE 100M AUTOEXTEND ON;
GRANT CONNECT, RESOURCE TO myproject_test IDENTIFIED BY myproject_test;
ALTER USER myproject_test DEFAULT TABLESPACE myproject_test TEMPORARY TABLESPACE temp;
ALTER USER myproject_test quota 100M on myproject_test;

CREATE BIGFILE TABLESPACE myproject_production DATAFILE 'myproject_production.dat' SIZE 100M AUTOEXTEND ON;
GRANT CONNECT, RESOURCE TO myproject_production IDENTIFIED BY myproject_production;
ALTER USER myproject_production DEFAULT TABLESPACE myproject_production TEMPORARY TABLESPACE temp;
ALTER USER myproject_production quota 100M on myproject_production;

ALTER SYSTEM SET open_cursors = 1000 scope=both;

QUIT;
/
