#!/bin/sh
# wait until MySQL is really available
ESC="\e["
ESCEND=m
COLOR_OFF=${ESC}${ESCEND}
maxcounter=45

counter=1
echo "Waiting for MySQL"
while ! mysql --protocol TCP -uroot -p"$MYSQL_ROOT_PASSWORD" -e "show databases;" > /dev/null 2>&1; do
    sleep 1
    printf "."
    counter=`expr $counter + 1`
    if [ $counter -gt $maxcounter ]; then
        >&2 echo "We have been waiting for MySQL too long already; failing."
        exit 1
    fi;
done
echo "${ESC}32${ESCEND}"
echo "\nMySQL ready!!"
echo "${COLOR_OFF}"