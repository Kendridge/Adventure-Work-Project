CREATE DATABASE SCOPED CREDENTIAL cred_Ken
WITH 
    IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH ( LOCATION = 'https://storagedatalakeaw.blob.core.windows.net/silver',
        CREDENTIAL = cred_Ken ) 


CREATE EXTERNAL DATA SOURCE source_gold
WITH ( LOCATION = 'https://storagedatalakeaw.blob.core.windows.net/gold',
        CREDENTIAL = cred_Ken ) 



CREATE EXTERNAL FILE FORMAT format_parquet
WITH ( FORMAT_TYPE = PARQUET, 
       DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec' ) 



-- CREATING EXTERNAL TABLES
----------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH ( LOCATION = 'extsales',
       DATA_SOURCE = source_gold,
       FILE_FORMAT = format_parquet )
AS 
SELECT * 
FROM gold.sales 




CREATE EXTERNAL TABLE gold.extcalendar
WITH ( LOCATION = 'extcalendar',
       DATA_SOURCE = source_gold,
       FILE_FORMAT = format_parquet )
AS 
SELECT * 
FROM gold.calendar 


CREATE EXTERNAL TABLE gold.extcustomers
WITH ( LOCATION = 'extcustomers',
       DATA_SOURCE = source_gold,
       FILE_FORMAT = format_parquet )
AS 
SELECT * 
FROM gold.customers 


CREATE EXTERNAL TABLE gold.extproduct_subcategories
WITH ( LOCATION = 'extproduct_subcategories',
       DATA_SOURCE = source_gold,
       FILE_FORMAT = format_parquet )
AS 
SELECT * 
FROM gold.product_subcategories 


CREATE EXTERNAL TABLE gold.extproduct_territories
WITH ( LOCATION = 'extproduct_territories',
       DATA_SOURCE = source_gold,
       FILE_FORMAT = format_parquet )
AS 
SELECT * 
FROM gold.product_territories 


CREATE EXTERNAL TABLE gold.extproducts
WITH ( LOCATION = 'extproducts',
       DATA_SOURCE = source_gold,
       FILE_FORMAT = format_parquet )
AS 
SELECT * 
FROM gold.products 


CREATE EXTERNAL TABLE gold.extreturns
WITH ( LOCATION = 'extreturns',
       DATA_SOURCE = source_gold,
       FILE_FORMAT = format_parquet )
AS 
SELECT * 
FROM gold.returns