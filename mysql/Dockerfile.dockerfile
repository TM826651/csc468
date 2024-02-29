#https://www.baeldung.com/ops/docker-mysql-container
#https://jojozhuang.github.io/architecture/creating-mysql-image-with-docker-file/ 
#should be able to hit the cloudlab node with <IP ADDRESS>:<PORT> since the port is exposed USE THIS
#https://dockerlabs.collabnix.com/beginners/dockerfile/ADD-command.html
#https://annaz4.medium.com/how-to-load-a-csv-file-into-a-remote-docker-mysql-container-fba89cf42880

FROM mysql/mysql-server:latest

#run sql command from bash
#RUN/SHELL CREATE DATABASE csc468
#COPY  cattle.csv 
#RUN INSERT add items to to database

#start from just one step, bring up - then history commands on the exact things you did, rebuilt and try again

#REMEMBER docker build 0t <IMAGE> .

#CLUTCH
#docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag
#sudo docker run --name mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql/mysql-server:latest

MAINTAINER root

RUN chown -R mysql:root /var/lib/mysql/

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

#database name = csc468
ENV MYSQL_DATABASE=$MYSQL_DATABASE
ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

#RUN docker inspect for mySQL container to expose IP
#RUN docker logs on container to expose IP

#update for cattle.csv - ADD data.sql /etc/mysql/data.sql
#cattle will be pulled from github, copied into dir on container, and then loaded from there into database

EXPOSE 3306