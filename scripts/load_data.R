## SSMS CONNECTION AND LOADING DATA ## 
###### DB CONNECTOR AND QUERY #######


# Libraries -- 
library(DBI)
library(odbc)
library(tidyverse)

## Database connection --

SSMS_connection <- dbConnect(odbc::odbc(),
                             Driver = "SQL Server",
                             Server = "LAPTOP-73T11QD1\\SQLEXPRESS",
                             Database = "ab_db",
                             Trusted_Connection = "Yes")

## Loading data into tibble -- 

ab_tbl  <- dbGetQuery(SSMS_connection, "SELECT userid, version, 
                      gamerounds, retention_1 FROM ab_data")
ab_tbl <- as_tibble(ab_tbl)

dbDisconnect(SSMS_connection)
