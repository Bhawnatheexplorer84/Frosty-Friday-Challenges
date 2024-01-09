##Code below to create a SNOWFLAKE_WH virtual environment with the smallest size which auto suspends after 60 seconds of idle time.We get Compute_wh by default but below is the way to create another one.
  // Creating a Warehouse
CREATE WAREHOUSE SNOWFLAKE_WH
WITH
  WAREHOUSE_SIZE = XSMALL
  AUTO_SUSPEND = 60
  AUTO_RESUME = TRUE
  INITIALLY_SUSPENDED = TRUE
  STATEMENT_QUEUED_TIMEOUT_IN_SECONDS = 300
  STATEMENT_TIMEOUT_IN_SECONDS = 600;

// Creating a Database
CREATE DATABASE Frosty_DB
COMMENT = 'Frosty Friday Challenges Tables and Views';

// Creating a Schema
CREATE SCHEMA FrostyCHALLENG
COMMENT = 'Schema for Frosty Friday Challenges';

At the end,lets use the below code to start with the challenges:
 // Environment Configuration
USE DATABASE Frosty_DB;
USE WAREHOUSE COMPUTE_WH;

Note:SNOWFLAKE_WH as created above can be used as well.Don't confuse with compute_wh which is the default warehouse Snowflake provides.
USE SCHEMA FrostyCHALLENG;
