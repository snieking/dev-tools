FROM mcr.microsoft.com/mssql/server:2019-latest

ENV SA_PASSWORD P@ssw0rd
ENV ACCEPT_EULA Y

WORKDIR /usr/src/app
COPY init/. /usr/src/app

CMD /bin/bash ./entrypoint.sh