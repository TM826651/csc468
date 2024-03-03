--Reference:
--https://blog.devgenius.io/building-a-mysql-docker-image-with-preloaded-data-step-by-step-guide-6d03c79edecf

CREATE DATABASE csc468;

USE csc468;

CREATE TABLE cattle
(
   types  VARCHAR(255) NOT NULL,
   breed  VARCHAR(255) NOT NULL,
   PRIMARY KEY (types)
);

LOAD DATA INFILE '/var/lib/mysql-files/cattle.csv'
INTO TABLE cattle
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;