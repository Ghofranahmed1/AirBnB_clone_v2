-- prepares a MySQL server for the project
-- create database
-- create use named 'hbnb_dev' and grant all his/her privilages
-- set a password to the user 'hbnb_dev_pwd'
CREATE DATABASE IF NOT EXIST hbnb_dev_db;
CREATE USER 
    IF NOT EXISTS 'hbnb_dev'@'localhost'
    IDENTIFIED BY 'hbnb_dev_pwd';
GRANT ALL PRIVILEGES 
   ON `hbnb_dev_db`.*
   TO 'hbnb_dev'@'localhost'
   IDENTIFIED BY 'hbnb_dev_pwd';
GRANT SELECT
   ON `performance_schema`.*
   TO 'hbnb_dev'@'localhost'
   IDENTIFIED BY 'hbnb_dev_pwd';
FLUSH PRIVILEGES;
