#!/bin/bash

QUERY=" select datname, pg_size_pretty(pg_database_size(datname)) from pg_database where datname not in ('template0', 'template1', 'postgres') "
echo " "
echo "========== DB SIZE =========="
echo "ADI SERVER "
asql -U usr_xxx -d adi -h xxx.xxx.xxx.xxx -p 5432 -c " $QUERY "
echo "BSI SERVER "
asql -U usr_xxx -d bsi -h xxx.xxx.xxx.xxx -p 5432 -c " $QUERY "
echo "DSR SERVER "
asql -U usr_xxx -d dsr -h xxx.xxx.xxx.xxx -p 5432 -c " $QUERY "
echo "GIS SERVER "
asql -U usr_xxx -d gis -h xxx.xxx.xxx.xxx -p 5432 -c " $QUERY "
echo "OPT SERVER "
asql -U usr_xxx -d opt -h xxx.xxx.xxx.xxx -p 5432 -c " $QUERY "

#echo " "
#echo "========== TABLESPACE SIZE =========="
#asql -U gis -d gis -c " select spcname, pg_size_pretty(pg_tablespace_size(spcname)) from pg_tablespace "

