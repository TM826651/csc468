-- Description: Initialize the database
CREATE DATABASE csc468;

-- Switch to the database
USE csc468;

-- Create table
CREATE TABLE cattle
(
   types  VARCHAR(255) NOT NULL,
   breed  VARCHAR(255) NOT NULL,
   PRIMARY KEY (types)
);

-- Load data from CSV file
-- Put in the following location as we will copy it into the dockerfile
LOAD DATA INFILE '/var/lib/mysql-files/cattle.csv'
INTO TABLE cattle
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;