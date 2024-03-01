FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=hello

COPY ./init.sql /docker-entrypoint-initdb.d/

COPY ./cattle.csv /var/lib/mysql-files/cattle.csv