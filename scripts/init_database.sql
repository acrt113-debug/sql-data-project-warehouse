/*
===================================================
Create Database and Schemas
===================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exist.
  If the database exist , it is dropped and recreated. Additionally, the script sets up three schemas 
within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Running thi script will drop the entire 'Datawarehouse' database if it exist.
  All data in the database will be permentently deleted. Proceed with caution 
  and ensure you have proper backup before running this script.
*/

USE master;
GO
  
--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

--CREATE the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
