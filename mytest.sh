#!/bin/bash

if [ "$1" == "" ];then
    echo "Usage: $0 DATABASE TABLE [MYSQL EXTRA COMMANDS]"
    exit
fi

DBNAME=$1
TABLE=$2
FNAME=$1.$2.csv
MCOMM=$3

#echo "MySQL password:"
#stty -echo
#read PASS
#stty echo

mysql -ucopydb -pCodeBoxx $MCOMM $DBNAME -B -e "SELECT * FROM $TABLE;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > $FNAME

#mysql -uroot -p$PASS $MCOMM $DBNAME -B -e "SELECT * FROM $TABLE;" | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > $FNAME

#mysql -ucopydbt -pCodeBoxx $MCOMM $DBNAME -B -e "SELECT * FROM $TABLE;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > $FNAME
