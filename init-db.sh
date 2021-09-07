#!/bin/sh

sleep 90s

printf "###################################################################\n"
printf "####################### INITIALIZE DATABASE #######################\n"
printf "###################################################################\n"

/opt/sqlpackage/sqlpackage /a:Import /sf:/opt/downloads/db.bacpac /tdn:CustomerConsumption /tsn:localhost /tu:sa /tp:1Secure*Password1
