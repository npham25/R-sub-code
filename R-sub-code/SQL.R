
library(RSQLite)

connection <- dbConnect(SQLite(), "/Users/NganPham/Downloads/survey.db")

getName <- function(personID) {
  query <- paste0("SELECT personal || ' ' || family FROM Person WHERE id =='",
                  personID, "';")
  return(dbGetQuery(connection, query))
}

print(paste("full name for dyer:", getName('dyer')))

dbDisconnect(connection)

#CHECK INPUT CAREFULLY: using a prepared statement instead of formatting our statements as strings. 
#use dbGetPreparedQuery instead
library(RSQLite)
connection <- dbConnect(SQLite(), "survey.db")

getName <- function(personID) {
  query <- "SELECT personal || ' ' || family FROM Person WHERE id == ?"
  return(dbGetPreparedQuery(connection, query, data.frame(personID)))
}

print(paste("full name for dyer:", getName('dyer')))

dbDisconnect(connection)


#To view all tables in a database, we can use dbListTables()
#To view all column names of a table, use dbListFields():
#To read an entire table as a dataframe, use dbReadTable()
#To write an entire table to a database, you can use dbWriteTable() - Note: row.names = FALSE argument or R will write the row names as a separate column.

