FROM samuelmarks/mssql-server-fts-sqlpackage-linux

ENV ACCEPT_EULA=Y \
    SA_PASSWORD=1Secure*Password1

COPY db.bacpac .

RUN chmod 755 /opt/sqlpackage/sqlpackage
