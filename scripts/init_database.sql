/*
===============================================================================
Script:       Create Database and Schemas
Purpose:      This script creates a new database named 'DataWarehouse'.
              - Creates three separate databases: 'bronze', 'silver', and 'gold'
              - bronze: Stores raw, unprocessed data
              - silver: Stores cleaned and validated data
              - gold: Stores aggregated, business-ready data
WARNING:      Running this script will DROP the 'DataWarehouse' database if it exists.
              ⚠️ All data will be permanently deleted.
              ⚠️ Ensure you have proper backups before executing this script.
===============================================================================
*/


DROP DATABASE IF EXISTS datawarehouse;

CREATE DATABASE datawarehouse;

USE datawarehouse;

-- Create the schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;

