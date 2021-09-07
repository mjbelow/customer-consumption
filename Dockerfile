FROM mcr.microsoft.com/mssql/server:2019-CU12-ubuntu-20.04

USER root

RUN apt update && \
    apt install unzip && \
    mkdir -p /opt/downloads

COPY db.bacpac sqlpackage-linux-x64-en-US-15.0.5164.1.zip /opt/downloads

RUN unzip /opt/downloads/sqlpackage-linux-x64-en-US-15.0.5164.1.zip -d /opt/sqlpackage && \
    chmod +x /opt/sqlpackage/sqlpackage

ENV ACCEPT_EULA=Y \
    SA_PASSWORD=1Secure*Password1

COPY entrypoint.sh init-db.sh .

CMD /bin/bash ./entrypoint.sh

ENTRYPOINT []
