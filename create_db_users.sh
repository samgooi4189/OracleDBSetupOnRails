#!/bin/bash
docker cp ./setup_oracle.sql Oracle12c:/tmp 
sleep 5

DB_NAME="(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=0.0.0.0)(PORT=1521))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCLPDB1.localdomain)))"
docker exec -it Oracle12c 'sqlplus sys/Oradoc_db1@"$DB_NAME" as sysdba @/tmp/setup_oracle.sql'
