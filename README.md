# Customer Consumption

## Instructions

1. If changes are made in the services, following command must be run to rebuild images

`docker-compose build`

2. Run containers of the services (Detach so you don't see output from the servers)

`docker-compose up -d`

3. Run this command to restore database (Need to wait until the database is running)

`docker exec customer-consumption-db /opt/sqlpackage/sqlpackage /a:Import /sf:db.bacpac /tdn:CustomerConsumption /tsn:localhost /tu:sa /tp:1Secure*Password1`

4. [http://localhost:8080/](http://localhost:8080/)

## Ports

Web App: 8080

API: 5001

DB: 5003
