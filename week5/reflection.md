# Task 5 — Reflection

**Name:** Ira R. Palabay  
**Student ID:** 2510994  
**Section:** BSIT-ll  

SELECT statements are safe for checking information because they only read data from the database. They do not normally change or delete the records. I can use SELECT to view the data, check specific columns, and find records that match a condition. This is different from DML commands such as INSERT, UPDATE, and DELETE, which can add, change, or remove data. DDL commands such as CREATE, ALTER, and DROP can also change the structure of the database.

For the debugging part, my working query used `WHERE species = 'Dog'`. I then deliberately removed the single quotes and used `WHERE species = Dog`. MySQL returned the error `ERROR 1054 (42S22): Unknown column 'Dog' in 'where clause'`. This happened because MySQL treated Dog as a column name instead of a text value. I diagnosed the problem by comparing the working and incorrect queries. Adding the single quotes around Dog fixed the problem and the query returned the expected dog records.