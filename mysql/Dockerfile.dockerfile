#References: 
#https://pythontic.com/database/mysql/describe
#https://github.com/docker-library/mysql/issues/527

FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=hello
ENV MYSQL_ROOT_HOST=%

COPY ./init.sql /docker-entrypoint-initdb.d/

COPY ./cattle.csv /var/lib/mysql-files/cattle.csv

EXPOSE 3306