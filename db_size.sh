
QUERY=" select datname, pg_size_pretty(pg_database_size(datname)) from pg_database where datname not in ('template0', 'template1', 'postgres') "
echo " "
echo "========== DB SIZE =========="
echo "ADI SERVER "
asql -U usr_adi -d adi -h 172.26.20.50 -p 5333 -c " $QUERY "
echo "BSI SERVER "
asql -U usr_bsi -d bsi -h 172.26.20.81 -p 5333 -c " $QUERY "
echo "DSR SERVER "
asql -U usr_dsr -d dsr -h 172.26.20.80 -p 5333 -c " $QUERY "
echo "GIS SERVER "
asql -U usr_gis -d gis -h 172.26.20.41 -p 5333 -c " $QUERY "
echo "OPT SERVER "
asql -U usr_opt -d opt -h 172.26.20.110 -p 5333 -c " $QUERY "

#echo " "
#echo "========== TABLESPACE SIZE =========="
#asql -U gis -d gis -c " select spcname, pg_size_pretty(pg_tablespace_size(spcname)) from pg_tablespace "

