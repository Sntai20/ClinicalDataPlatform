# Clinical Data Platform
A simple Java Database Calls (JDBC) Application to query the clinical lab management database.

### Description
The Clinical Data Platform consists of the front-end and the QueryRunner. The QueryRunner
takes a list of Queries that are initialized in it's constructor and provides functions
that will call the various functions in the QueryJDBC class which will enable MYSQL
queries to be executed. It also has functions to provide the returned data from the
Queries. Currently, the eventHandlers in QueryFrame call these functions to run the Queries.

### Development Team
* Kristen Klimisch (Group Lead)
* Ying-Chu (Troy) Chen
* Antonio Santana

