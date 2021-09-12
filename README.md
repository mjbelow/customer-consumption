# Customer Consumption

## Instructions

1. If changes are made in the services, following command must be run to rebuild images

`docker-compose build`

2. Run containers of the services (Detach so you don't see output from the servers)

`docker-compose up -d`

3. Wait 3 minutes for the database to start up and for data to be restored

4. http://localhost:4200/

## Ports

Web App: 4200

API: 5001

DB: 5003
