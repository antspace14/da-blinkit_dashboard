-- SQL NOTEBOOK FOR E2E_PROJECT1
-- CREATING A DATABASE NAMED AS SUBQUERIES_DATABASE
CREATE DATABASE IF NOT EXISTS endtoend_project1;

-- USING THE DATABASE CREATED
USE endtoend_project1;

-- Creating the table for storing inventory data
CREATE TABLE `inventory` (
  `product_id` VARCHAR(255) DEFAULT NULL,
  `date` VARCHAR(255) DEFAULT NULL,
  `stock_received` VARCHAR(255) DEFAULT NULL,
  `damaged_stock` VARCHAR(255) DEFAULT NULL
);

-- Loading the data into inventory table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/blinkit_inventory.csv'
INTO TABLE `inventory`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

-- Checking the rows
SELECT * FROM `inventory`;

-- For checking if file loading doesn't happen
SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'secure_file_priv';